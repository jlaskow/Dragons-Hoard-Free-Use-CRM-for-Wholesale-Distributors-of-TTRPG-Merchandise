-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dragons_hoard_2
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderitems` (
  `OrderItemID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Discount` decimal(10,2) DEFAULT NULL,
  `Tax` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`),
  KEY `FK_OrderItems_Orders_idx` (`OrderID`),
  KEY `FK_OrderItems_Products_idx` (`ProductID`),
  CONSTRAINT `FK_OrderItems_Orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `FK_OrderItems_Products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (1,1,5,2,19.99,0.00,1.50),(2,2,10,1,29.99,0.00,2.25),(3,3,15,3,9.99,0.00,0.75),(4,4,20,2,14.99,0.00,1.00),(5,5,25,1,39.99,0.00,3.00),(6,6,30,2,24.99,0.00,1.75),(7,7,5,3,19.99,0.00,1.50),(8,8,10,1,29.99,0.00,2.25),(9,9,15,2,9.99,0.00,0.75),(10,10,20,1,14.99,0.00,1.00),(11,11,25,1,39.99,0.00,3.00),(12,12,30,3,24.99,0.00,1.75),(13,13,5,1,19.99,0.00,1.50),(14,14,10,2,29.99,0.00,2.25),(15,15,15,2,9.99,0.00,0.75),(16,16,20,1,14.99,0.00,1.00),(17,17,25,1,39.99,0.00,3.00),(18,18,30,2,24.99,0.00,1.75),(19,19,5,2,19.99,0.00,1.50),(20,20,10,1,29.99,0.00,2.25),(21,21,15,3,9.99,0.00,0.75),(22,22,20,2,14.99,0.00,1.00),(23,23,25,1,39.99,0.00,3.00),(24,24,30,1,24.99,0.00,1.75),(25,25,5,2,19.99,0.00,1.50),(26,26,10,1,29.99,0.00,2.25),(27,27,15,2,9.99,0.00,0.75),(28,28,20,1,14.99,0.00,1.00),(29,29,25,1,39.99,0.00,3.00),(30,30,30,3,24.99,0.00,1.75),(31,31,5,1,19.99,0.00,1.50),(32,32,10,2,29.99,0.00,2.25),(33,33,15,2,9.99,0.00,0.75),(34,34,20,1,14.99,0.00,1.00),(35,35,25,1,39.99,0.00,3.00),(36,36,30,2,24.99,0.00,1.75),(37,37,5,2,19.99,0.00,1.50),(38,38,10,1,29.99,0.00,2.25),(39,39,15,3,9.99,0.00,0.75),(40,40,20,2,14.99,0.00,1.00),(41,41,25,1,39.99,0.00,3.00),(42,42,30,1,24.99,0.00,1.75),(43,43,5,2,19.99,0.00,1.50),(44,44,10,1,29.99,0.00,2.25),(45,45,15,2,9.99,0.00,0.75),(46,46,20,1,14.99,0.00,1.00),(47,47,25,1,39.99,0.00,3.00),(48,48,30,2,24.99,0.00,1.75),(49,49,5,2,19.99,0.00,1.50),(50,50,10,1,29.99,0.00,2.25),(51,6,30,2,24.99,0.00,1.75),(52,12,30,1,24.99,0.00,1.75),(53,18,30,2,24.99,0.00,1.75),(54,24,30,1,24.99,0.00,1.75),(55,30,30,3,24.99,0.00,1.75),(56,36,30,2,24.99,0.00,1.75),(57,42,30,1,24.99,0.00,1.75),(58,48,30,2,24.99,0.00,1.75),(59,5,25,1,39.99,0.00,3.00),(60,11,25,1,39.99,0.00,3.00),(61,17,25,1,39.99,0.00,3.00),(62,23,25,1,39.99,0.00,3.00),(63,29,25,1,39.99,0.00,3.00),(64,35,25,1,39.99,0.00,3.00),(65,41,25,1,39.99,0.00,3.00),(66,47,25,1,39.99,0.00,3.00),(67,3,15,2,9.99,0.00,0.75),(68,9,15,2,9.99,0.00,0.75),(69,15,15,2,9.99,0.00,0.75),(70,21,15,3,9.99,0.00,0.75),(71,27,15,2,9.99,0.00,0.75),(72,33,15,2,9.99,0.00,0.75),(73,39,15,3,9.99,0.00,0.75),(74,45,15,2,9.99,0.00,0.75),(75,7,5,3,19.99,0.00,1.50),(76,13,5,1,19.99,0.00,1.50),(77,19,5,2,19.99,0.00,1.50),(78,25,5,2,19.99,0.00,1.50),(79,31,5,1,19.99,0.00,1.50),(80,37,5,2,19.99,0.00,1.50),(81,43,5,2,19.99,0.00,1.50),(82,49,5,2,19.99,0.00,1.50),(83,4,20,2,14.99,0.00,1.00),(84,10,20,1,14.99,0.00,1.00),(85,16,20,1,14.99,0.00,1.00),(86,22,20,2,14.99,0.00,1.00),(87,28,20,1,14.99,0.00,1.00),(88,34,20,1,14.99,0.00,1.00),(89,40,20,2,14.99,0.00,1.00),(90,46,20,1,14.99,0.00,1.00),(91,1,1,5,19.99,0.00,1.50),(92,8,1,1,19.99,0.00,1.50),(93,14,1,2,19.99,0.00,1.50),(94,20,1,1,19.99,0.00,1.50),(95,26,1,1,19.99,0.00,1.50),(96,32,1,2,19.99,0.00,1.50),(97,38,1,2,19.99,0.00,1.50),(98,44,1,1,19.99,0.00,1.50),(99,50,1,1,19.99,0.00,1.50),(100,2,2,1,29.99,0.00,2.25),(101,3,3,2,9.99,0.00,0.75),(102,9,3,1,9.99,0.00,0.75),(103,15,3,2,9.99,0.00,0.75),(104,21,3,1,9.99,0.00,0.75),(105,27,3,3,9.99,0.00,0.75),(106,33,3,1,9.99,0.00,0.75),(107,39,3,2,9.99,0.00,0.75),(108,45,3,3,9.99,0.00,0.75),(109,8,8,2,29.99,0.00,2.25),(110,14,8,1,29.99,0.00,2.25),(111,20,8,2,29.99,0.00,2.25),(112,26,8,1,29.99,0.00,2.25),(113,32,8,2,29.99,0.00,2.25),(114,38,8,1,29.99,0.00,2.25),(115,44,8,2,29.99,0.00,2.25),(116,50,8,1,29.99,0.00,2.25),(117,7,7,3,29.99,0.00,2.25),(118,13,7,2,29.99,0.00,2.25),(119,19,7,3,29.99,0.00,2.25),(120,25,7,1,29.99,0.00,2.25),(121,31,7,2,29.99,0.00,2.25),(122,37,7,1,29.99,0.00,2.25),(123,43,7,2,29.99,0.00,2.25),(124,49,7,3,29.99,0.00,2.25),(125,6,6,3,14.99,0.00,1.00),(126,12,6,2,14.99,0.00,1.00),(127,18,6,3,14.99,0.00,1.00),(128,24,6,1,14.99,0.00,1.00),(129,30,6,2,14.99,0.00,1.00),(130,36,6,1,14.99,0.00,1.00),(131,42,6,3,14.99,0.00,1.00),(132,48,6,1,14.99,0.00,1.00),(133,5,5,2,19.99,0.00,1.50),(134,11,5,1,19.99,0.00,1.50),(135,17,5,3,19.99,0.00,1.50),(136,23,5,2,19.99,0.00,1.50),(137,29,5,1,19.99,0.00,1.50),(138,35,5,2,19.99,0.00,1.50),(139,41,5,1,19.99,0.00,1.50),(140,47,5,3,19.99,0.00,1.50),(141,4,4,3,39.99,0.00,3.00),(142,10,4,2,39.99,0.00,3.00),(143,16,4,1,39.99,0.00,3.00),(144,22,4,3,39.99,0.00,3.00),(145,28,4,1,39.99,0.00,3.00),(146,34,4,2,39.99,0.00,3.00),(147,40,4,3,39.99,0.00,3.00),(148,46,4,1,39.99,0.00,3.00),(149,1,1,1,19.99,0.00,1.50),(150,8,1,1,19.99,0.00,1.50);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-22  7:40:29