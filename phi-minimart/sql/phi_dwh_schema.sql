-- MySQL dump 10.11
--
-- Host: localhost    Database: phi_minimart_dw
-- ------------------------------------------------------
-- Server version	5.0.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_produk`
--

DROP TABLE IF EXISTS `dim_produk`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `dim_produk` (
  `sk_produk` int(11) NOT NULL,
  `kode_kategori` varchar(7) default NULL,
  `nama_kategori` varchar(17) default NULL,
  `kode_item` varchar(7) default NULL,
  `kode_produk` varchar(12) default NULL,
  `nama_produk` varchar(100) default NULL,
  `unit` int(11) default NULL,
  `kode_satuan` varchar(4) default NULL,
  PRIMARY KEY  (`sk_produk`),
  KEY `kode_kategori` (`kode_kategori`),
  KEY `kode_produk` (`kode_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;
