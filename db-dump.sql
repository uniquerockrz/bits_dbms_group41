-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: bits41
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Category` (
  `Category_Id` int NOT NULL,
  `Category_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES (67576,'RAW MATERIAL'),(67576,'FINISHED GOODS'),(77487,'CONSUMABLES');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `EmpID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`EmpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Joe'),(2,'Bob'),(3,'Mary');
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY_ON_HAND`
--

DROP TABLE IF EXISTS `INVENTORY_ON_HAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVENTORY_ON_HAND` (
  `ORG_ID` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `LOCATOR` varchar(45) NOT NULL,
  `QTY_ONHAND` varchar(45) NOT NULL,
  `LOT_NUMBER` int NOT NULL,
  PRIMARY KEY (`ORG_ID`,`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY_ON_HAND`
--

LOCK TABLES `INVENTORY_ON_HAND` WRITE;
/*!40000 ALTER TABLE `INVENTORY_ON_HAND` DISABLE KEYS */;
INSERT INTO `INVENTORY_ON_HAND` VALUES (1001,355453,'A1.01.01','20',1),(1001,664684,'A1.01.02','10',2),(1002,355453,'A1.01.01','30',1);
/*!40000 ALTER TABLE `INVENTORY_ON_HAND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY_TRANSACTION`
--

DROP TABLE IF EXISTS `INVENTORY_TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVENTORY_TRANSACTION` (
  `TRX_ID` int NOT NULL,
  `ORG_ID` int NOT NULL,
  `TRX_DATE` date NOT NULL,
  `ITEM_ID` int NOT NULL,
  `TRX_QTY` int NOT NULL,
  `TRX_LOCATOR` varchar(45) NOT NULL,
  `LOT_NUMBER` int NOT NULL,
  `TRX_TYPE` varchar(45) NOT NULL,
  PRIMARY KEY (`TRX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY_TRANSACTION`
--

LOCK TABLES `INVENTORY_TRANSACTION` WRITE;
/*!40000 ALTER TABLE `INVENTORY_TRANSACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `INVENTORY_TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Locator`
--

DROP TABLE IF EXISTS `Locator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locator` (
  `Org_Id` int NOT NULL,
  `Locator` varchar(100) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locator`
--

LOCK TABLES `Locator` WRITE;
/*!40000 ALTER TABLE `Locator` DISABLE KEYS */;
/*!40000 ALTER TABLE `Locator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURCHASE_ORDER`
--

DROP TABLE IF EXISTS `PURCHASE_ORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PURCHASE_ORDER` (
  `PO_NUMBER` int NOT NULL,
  `SUPPLIER_ID` int NOT NULL,
  `SUPPLIER_SITE_ID` int NOT NULL,
  `SHIP_TO_LOCATION` varchar(45) NOT NULL,
  `CURRENCY` varchar(45) NOT NULL,
  `LINE_NUM` int NOT NULL,
  `ITEM_ID` int NOT NULL,
  `UOM` varchar(45) NOT NULL,
  `QUANTITY` int NOT NULL,
  `PRICE` varchar(45) NOT NULL,
  PRIMARY KEY (`PO_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE_ORDER`
--

LOCK TABLES `PURCHASE_ORDER` WRITE;
/*!40000 ALTER TABLE `PURCHASE_ORDER` DISABLE KEYS */;
INSERT INTO `PURCHASE_ORDER` VALUES (1,1,1,'Bangalore Main','Rupee',1,355453,'KG',2,'20'),(2,2,2,'Bangalore Hub','Rupee',2,664685,'DZ',1,'10'),(3,1,1,'Bangalore Main','Rupee',1,664689,'EA',5,'50'),(4,1,1,'Bangalore Main','Rupee',3,664687,'EA',3,'30'),(5,2,2,'Bangalore Hub','Rupee',2,355453,'KG',3,'30');
/*!40000 ALTER TABLE `PURCHASE_ORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUPPLIER`
--

DROP TABLE IF EXISTS `SUPPLIER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUPPLIER` (
  `SUPPLIER_ID` int NOT NULL,
  `SUPPLIER_NAME` varchar(45) NOT NULL,
  `TAX_NUMBER` int NOT NULL,
  `SUPPLIER_SITE_ID` int NOT NULL,
  `SUPPLIER_SITE_NAME` varchar(45) NOT NULL,
  `ADRRESS` varchar(45) NOT NULL,
  `PAYMENT_TERM` int NOT NULL,
  `BANK_ACCOUNT` int NOT NULL,
  PRIMARY KEY (`SUPPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUPPLIER`
--

LOCK TABLES `SUPPLIER` WRITE;
/*!40000 ALTER TABLE `SUPPLIER` DISABLE KEYS */;
INSERT INTO `SUPPLIER` VALUES (1,'Akash Systems Ltd',115678,1,'Bangalore Main','Majestic',30,11245678),(2,'Akash Systems Ltd',115678,2,'Bangalore Hub','23 Outer Ring Road',30,11245678);
/*!40000 ALTER TABLE `SUPPLIER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UNIT_OF_MEASUREMENT`
--

DROP TABLE IF EXISTS `UNIT_OF_MEASUREMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UNIT_OF_MEASUREMENT` (
  `INDEX` int NOT NULL AUTO_INCREMENT,
  `UOM` varchar(45) NOT NULL,
  `UOM_DESCRIPTION` varchar(45) NOT NULL,
  `UOM_CLASS` varchar(45) NOT NULL,
  PRIMARY KEY (`INDEX`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UNIT_OF_MEASUREMENT`
--

LOCK TABLES `UNIT_OF_MEASUREMENT` WRITE;
/*!40000 ALTER TABLE `UNIT_OF_MEASUREMENT` DISABLE KEYS */;
INSERT INTO `UNIT_OF_MEASUREMENT` VALUES (1,'EA','Each','Quantity'),(2,'DZ','Dozen','Quantity'),(3,'KG','Kilo Gram','Weight'),(4,'LBS','Pound','Weight'),(5,'LTR','Litre','Volume');
/*!40000 ALTER TABLE `UNIT_OF_MEASUREMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_org`
--

DROP TABLE IF EXISTS `company_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_org` (
  `ORG_ID` int NOT NULL,
  `ORG_NAME` varchar(45) NOT NULL,
  `ORG_LOCATION` varchar(45) NOT NULL,
  `ORG_TYPE` varchar(45) NOT NULL,
  PRIMARY KEY (`ORG_ID`),
  UNIQUE KEY `ORG_ID_UNIQUE` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_org`
--

LOCK TABLES `company_org` WRITE;
/*!40000 ALTER TABLE `company_org` DISABLE KEYS */;
INSERT INTO `company_org` VALUES (1001,'ABC Ltd. Hyderabad Factory','Hyderabad','Factory'),(1002,'ABC Ltd. Mumbai Warehouse','Mumbai','Warehouse'),(1003,'ABC Ltd. Chennai Sales Depot','Chennai','Depot');
/*!40000 ALTER TABLE `company_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ITEM_ID` int NOT NULL,
  `ITEM_NUMBER` varchar(45) NOT NULL,
  `DESCRIPTION` varchar(45) NOT NULL,
  `UOM` varchar(45) NOT NULL,
  `CATEGORY_ID` int NOT NULL,
  `PUR_PRICE` int NOT NULL,
  PRIMARY KEY (`ITEM_ID`),
  UNIQUE KEY `ITEM_ID_UNIQUE` (`ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (355453,'DCC0001','Metal Sheets','KG',67576,10),(664684,'DCC0001','Chemical','LTR',77487,10),(664685,'DCC0002','Books','DZ',77488,10),(664686,'DCC0003','Pen','EA',77489,10),(664687,'DCC0004','Box','EA',77490,10),(664688,'DCC0005','Copy','EA',77491,10),(664689,'DCC0006','Sheets','EA',77492,10);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-14 22:49:49
