-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: hmc_scm
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `bid_applications`
--

DROP TABLE IF EXISTS `bid_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid_applications` (
  `app_id` int NOT NULL AUTO_INCREMENT,
  `bid_id` int NOT NULL,
  `vendor_id` int NOT NULL,
  `quote_price` int DEFAULT '0',
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'PENDING' COMMENT 'PENDING/APPROVED/REJECTED',
  `apply_dt` datetime DEFAULT CURRENT_TIMESTAMP,
  `production_capacity` int DEFAULT NULL COMMENT '월 생산능력',
  `current_inventory` int DEFAULT NULL COMMENT '현재 재고량',
  `lead_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '리드타임',
  `moq` int DEFAULT NULL COMMENT '최소주문수량',
  `risk_grade` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Low/Medium/High',
  PRIMARY KEY (`app_id`),
  KEY `bid_id` (`bid_id`),
  KEY `vendor_id` (`vendor_id`),
  CONSTRAINT `bid_applications_ibfk_1` FOREIGN KEY (`bid_id`) REFERENCES `bids` (`bid_id`),
  CONSTRAINT `bid_applications_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_applications`
--

LOCK TABLES `bid_applications` WRITE;
/*!40000 ALTER TABLE `bid_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `bid_applications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-17  9:06:29
