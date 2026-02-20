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
-- Table structure for table `spotify_artist`
--

DROP TABLE IF EXISTS `spotify_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spotify_artist` (
  `artist_id` int DEFAULT NULL,
  `artist_name` varchar(200) DEFAULT NULL,
  `album_name` varchar(300) DEFAULT NULL,
  `track_name` varchar(300) DEFAULT NULL,
  `popularity` int DEFAULT NULL,
  `time_duration` int DEFAULT NULL,
  `release_year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spotify_artist`
--

LOCK TABLES `spotify_artist` WRITE;
/*!40000 ALTER TABLE `spotify_artist` DISABLE KEYS */;
INSERT INTO `spotify_artist` VALUES (101,'Hanumankind','Monsoon Season','Run It Up',98,174,2025),(101,'Anuv Jain','Single','Arz Kiya Hai',92,220,2025),(102,'Arijit Singh','Metro In Dino','Zamaana Lage',94,348,2025),(103,'Badshah','Single','Galiyon Ke Ghalib',88,177,2025),(104,'Chaar Diwaari','Single','Farebi',91,235,2025),(105,'Diljit Dosanjh','Single','Ruthless',94,195,2025),(106,'DIVINE','Walking on Water','Triple OG',92,184,2025),(107,'Emiway Bantai','Big Stepper','King of Streets',89,210,2025),(108,'Hanumankind','Monsoon Season','Run It Up',98,174,2025),(109,'Jubin Nautiyal','Saiyaara','Barbaad',93,195,2025),(110,'Karan Aujla','P-POP CULTURE','7.7 Magnitude',95,244,2025),(111,'King','Single','Alpha Goodbye',86,156,2025),(112,'KR$NA','Yours Truly','Sensitive',89,224,2025),(113,'MC Stan','Insaan','Regret',87,180,2022),(114,'Mrunal Shankar','Single','Bawra',84,168,2025),(115,'Raftaar','Hard Drive Vol. 2','Gangnum',90,202,2025),(116,'Seedhe Maut','DL91 FM','Capital Rap',90,237,2025),(117,'Shreya Ghoshal','Dhadak 2','Bas Ek Dhadak',91,215,2025),(118,'Sidhu Moose Wala','Legacy','Watch Out',96,230,2024),(119,'Tsumyoki','Single','Don\'t Even Text',87,179,2025),(120,'Yo Yo Honey Singh','Glory','Maniac',96,173,2025),(1101,'Anuv Jain','Single','Arz Kiya Hai',92,220,2025),(1102,'Arijit Singh','Metro In Dino','Zamaana Lage',94,348,2025),(1103,'Badshah','Single','Galiyon Ke Ghalib',88,177,2025),(1104,'Chaar Diwaari','Single','Farebi',91,235,2025),(1105,'Diljit Dosanjh','Single','Ruthless',94,195,2025),(1106,'DIVINE','Walking on Water','Triple OG',92,184,2025),(1107,'Emiway Bantai','Big Stepper','King of Streets',89,210,2025),(1108,'Hanumankind','Monsoon Season','Run It Up',98,174,2025),(1109,'Jubin Nautiyal','Saiyaara','Barbaad',93,195,2025),(1110,'Karan Aujla','P-POP CULTURE','7.7 Magnitude',95,244,2025),(2111,'King','Single','Alpha Goodbye',86,156,2025),(2112,'KR$NA','Yours Truly','Sensitive',89,224,2025),(2113,'MC Stan','Insaan','Regret',87,180,2022),(2114,'Mrunal Shankar','Single','Bawra',84,168,2025),(2115,'Raftaar','Hard Drive Vol. 2','Gangnum',90,202,2025),(2116,'Seedhe Maut','DL91 FM','Capital Rap',90,237,2025),(2117,'Shreya Ghoshal','Dhadak 2','Bas Ek Dhadak',91,215,2025),(2118,'Sidhu Moose Wala','Legacy','Watch Out',96,230,2024),(2119,'Tsumyoki','Single','Don\'t Even Text',87,179,2025),(2120,'Yo Yo Honey Singh','Glory','Maniac',96,173,2025),(1101,'Anuv Jain','Single','Arz Kiya Hai',92,220,2025),(1102,'Arijit Singh','Metro In Dino','Zamaana Lage',94,348,2025),(1103,'Badshah','Single','Galiyon Ke Ghalib',88,177,2025),(1104,'Chaar Diwaari','Single','Farebi',91,235,2025),(1105,'Diljit Dosanjh','Single','Ruthless',94,195,2025),(1106,'DIVINE','Walking on Water','Triple OG',92,184,2025),(1107,'Emiway Bantai','Big Stepper','King of Streets',89,210,2025),(1108,'Hanumankind','Monsoon Season','Run It Up',98,174,2022),(1109,'Jubin Nautiyal','Saiyaara','Barbaad',93,195,2025),(1110,'Karan Aujla','P-POP CULTURE','7.7 Magnitude',95,244,2022),(2111,'King','Single','Alpha Goodbye',86,156,2024),(2112,'KR$NA','Yours Truly','Sensitive',89,224,2022),(2113,'MC Stan','Insaan','Regret',87,180,2021),(2114,'Mrunal Shankar','Single','Bawra',84,168,2022),(2115,'Raftaar','Hard Drive Vol. 2','Gangnum',90,202,2021),(2116,'Seedhe Maut','DL91 FM','Capital Rap',90,237,2022),(2117,'Shreya Ghoshal','Dhadak 2','Bas Ek Dhadak',91,215,2023),(2118,'Sidhu Moose Wala','Legacy','Watch Out',96,230,2024),(2119,'Tsumyoki','Single','Don\'t Even Text',87,179,2022),(2120,'Yo Yo Honey Singh','Glory','Maniac',96,173,2023);
/*!40000 ALTER TABLE `spotify_artist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-20 23:18:24
