-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `play_history`
--

DROP TABLE IF EXISTS `play_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_history` (
  `user_id` int DEFAULT NULL,
  `artist_name` varchar(200) DEFAULT NULL,
  `album_name` varchar(300) DEFAULT NULL,
  `play_date` date DEFAULT NULL,
  `playing_duration` int DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  `total_listens` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_history`
--

LOCK TABLES `play_history` WRITE;
/*!40000 ALTER TABLE `play_history` DISABLE KEYS */;
INSERT INTO `play_history` VALUES (101,'Anuv Jain','Single','2026-01-10',220,NULL,NULL),(101,'Anuv Jain','Single','2026-01-10',220,NULL,NULL),(102,'Arijit Singh','Metro In Dino','2026-01-12',340,NULL,NULL),(103,'Badshah','Single','2026-01-14',177,NULL,NULL),(104,'Chaar Diwaari','Single','2026-01-05',235,NULL,NULL),(105,'Diljit Dosanjh','Single','2026-01-11',190,NULL,NULL),(106,'DIVINE','Walking on Water','2026-01-08',184,NULL,NULL),(107,'Emiway Bantai','Big Stepper','2026-01-02',210,NULL,NULL),(108,'Hanumankind','Monsoon Season','2026-01-13',174,NULL,NULL),(109,'Jubin Nautiyal','Saiyaara','2026-01-07',195,NULL,NULL),(110,'Karan Aujla','P-POP CULTURE','2026-01-14',244,NULL,NULL),(111,'King','Single','2026-01-09',150,NULL,NULL),(112,'KR$NA','Yours Truly','2026-01-04',224,NULL,NULL),(113,'MC Stan','Insaan','2026-01-15',180,NULL,NULL),(114,'Mrunal Shankar','Single','2026-01-10',168,NULL,NULL),(115,'Raftaar','Hard Drive Vol. 2','2026-01-01',202,NULL,NULL),(116,'Seedhe Maut','DL91 FM','2026-01-06',237,NULL,NULL),(117,'Shreya Ghoshal','Dhadak 2','2026-01-12',215,NULL,NULL),(118,'Sidhu Moose Wala','Legacy','2026-01-11',230,NULL,NULL),(119,'Tsumyoki','Single','2026-01-03',179,NULL,NULL),(120,'Yo Yo Honey Singh','Glory','2026-01-14',173,NULL,NULL),(101,'Hanumankind','Monsoon Season','2026-01-10',174,98,125000000),(102,'Karan Aujla','P-POP CULTURE','2026-01-12',244,95,92000000),(103,'Arijit Singh','Metro In Dino','2026-01-14',348,94,85000000),(104,'Yo Yo Honey Singh','Glory','2026-01-15',173,96,110000000),(105,'Diljit Dosanjh','Single','2025-12-20',195,94,76000000),(106,'DIVINE','Walking on Water','2025-12-25',184,92,45000000),(107,'Anuv Jain','Single','2026-01-05',220,92,33000000),(108,'Chaar Diwaari','Single','2026-01-08',235,91,38000000),(109,'Jubin Nautiyal','Saiyaara','2025-11-30',195,93,29000000),(110,'Sidhu Moose Wala','Legacy','2026-01-02',230,96,150000000),(111,'KR$NA','Yours Truly','2026-01-11',224,89,22000000),(112,'Seedhe Maut','DL91 FM','2026-01-13',237,90,15000000),(113,'Badshah','Single','2025-12-15',177,88,65000000),(114,'Shreya Ghoshal','Dhadak 2','2026-01-16',215,91,54000000),(115,'Raftaar','Hard Drive Vol. 2','2025-10-10',202,90,42000000),(116,'Emiway Bantai','Big Stepper','2025-09-05',210,89,31000000),(117,'King','Single','2026-01-01',156,86,27000000),(118,'MC Stan','Insaan','2025-08-20',180,87,19000000),(119,'Tsumyoki','Single','2025-11-12',179,87,12000000),(120,'Mrunal Shankar','Single','2026-01-09',168,84,8500000),(101,'Hanumankind','Monsoon Season','2026-01-10',174,98,125000000),(102,'Karan Aujla','P-POP CULTURE','2026-01-12',244,95,92000000),(103,'Arijit Singh','Metro In Dino','2026-01-14',348,94,85000000),(104,'Yo Yo Honey Singh','Glory','2026-01-15',173,96,110000000),(105,'Diljit Dosanjh','Single','2025-12-20',195,94,76000000),(106,'DIVINE','Walking on Water','2025-12-25',184,92,45000000),(107,'Anuv Jain','Single','2026-01-05',220,92,33000000),(108,'Chaar Diwaari','Single','2026-01-08',235,91,38000000),(109,'Jubin Nautiyal','Saiyaara','2025-11-30',195,93,29000000),(110,'Sidhu Moose Wala','Legacy','2026-01-02',230,96,150000000),(111,'KR$NA','Yours Truly','2026-01-11',224,89,22000000),(112,'Seedhe Maut','DL91 FM','2026-01-13',237,90,15000000),(113,'Badshah','Single','2025-12-15',177,88,65000000),(114,'Shreya Ghoshal','Dhadak 2','2026-01-16',215,91,54000000),(115,'Raftaar','Hard Drive Vol. 2','2025-10-10',202,90,42000000),(116,'Emiway Bantai','Big Stepper','2025-09-05',210,89,31000000),(117,'King','Single','2026-01-01',156,86,27000000),(118,'MC Stan','Insaan','2025-08-20',180,87,19000000),(119,'Tsumyoki','Single','2025-11-12',179,87,12000000),(120,'Mrunal Shankar','Single','2026-01-09',168,84,8500000);
/*!40000 ALTER TABLE `play_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-20 23:18:23
