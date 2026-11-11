# Data Warehouse & ETL with Pentaho: PHI Minimart

Star-schema data warehouse for **PHI Minimart**, a minimarket chain. The warehouse is loaded from its MySQL transactional database with **Pentaho Data Integration (PDI / Kettle)** and explored with Python visualizations. Data Warehouse course work.

## Architecture

```
phi_minimart (MySQL, OLTP)  ──►  Pentaho ETL (.ktr / .kjb)  ──►  phi_dwh (MySQL, star schema)  ──►  Python visualizations
```

## ETL pipelines

| File | Type | What it does |
|---|---|---|
| `etl/dim_product.ktr` | Dimension | Reads products, looks up category names, assigns surrogate keys, loads the product dimension (`dim_produk`) |
| `etl/dim_branch.ktr` | Dimension | Joins branch, city and province master tables into a denormalized branch dimension |
| `etl/dim_time.ktr` | Dimension | Generates a date dimension (row generator, date calculations, day-of-week normalization, insert/update) |
| `etl/fact_product_purchase.ktr` | Fact | Joins sales transactions with the product dimension to load the product fact table |
| `etl/00-getting-started/` | Intro | First PDI transformation and jobs (data grid, Janino expressions) |

## SQL and notebooks

| File | Description |
|---|---|
| `sql/phi_dwh_schema.sql` | DDL for the product dimension table |
| `sql/phi_dwh_product_fact.sql` | DDL for the product fact table |
| `notebooks/dwh_visualization.ipynb` | Python visualizations of the warehouse data (reads an Excel export, `phi_minimart.xlsx`) |

## How to run

1. Install [Pentaho Data Integration](https://pentaho.com/pentaho-data-integration/) (Spoon) and Java.
2. Create two MySQL databases: `phi_minimart` (source, from the course-provided dump) and `phi_dwh` (target). Run the scripts in `sql/` on `phi_dwh`.
3. Open each `.ktr` in Spoon and edit the database connections (host, user, **password**).
4. Run the dimension transformations first, then the fact transformation.
5. Notebook: `pip install pandas numpy matplotlib seaborn openpyxl jupyter`, put `phi_minimart.xlsx` next to the notebook, and run it.

> Database passwords were removed from all `.ktr` files. Set your own credentials in the connection settings before running. The source database dump is not included.

## Concepts demonstrated

Star schema design · surrogate keys · date dimension generation · lookups and denormalization · fact-table loading · ETL job orchestration

## Tech stack

Pentaho Data Integration (Kettle) · MySQL · SQL · Python (pandas, Matplotlib, Seaborn)
