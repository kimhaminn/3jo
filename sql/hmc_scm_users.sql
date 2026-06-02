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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin/vendor/scm',
  `company_id` int DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `biz_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '사업자등록번호',
  `corp_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '법인등록번호',
  `tech_cert` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '기술인증',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'APPROVED' COMMENT 'PENDING/APPROVED/REJECTED',
  `approved_by_scm` tinyint DEFAULT '0',
  `approved_by_admin` tinyint DEFAULT '0',
  PRIMARY KEY (`user_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `vendors` (`vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','1234','관리자','scm',NULL,NULL,NULL,'2026-04-14 16:04:21',NULL,NULL,NULL,'APPROVED',1,1),('hyundai_admin','hmc2024!','관리자','admin',1,'admin@hyundai.com','010-1234-5678','2024-01-01 00:00:00',NULL,NULL,NULL,'APPROVED',1,1),('scm_manager','scm2024!','SCM담당자','scm',3,'scm@hyundai.com','010-3456-7890','2024-01-01 00:00:00',NULL,NULL,NULL,'APPROVED',1,1),('vendor_mgr','v1pass!','모비스담당자','vendor',2,'vendor@mobis.com','010-2345-6789','2024-01-01 00:00:00',NULL,NULL,NULL,'APPROVED',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-17  9:06:28
