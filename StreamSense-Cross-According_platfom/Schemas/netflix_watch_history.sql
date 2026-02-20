-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: netflix
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
-- Table structure for table `watch_history`
--

DROP TABLE IF EXISTS `watch_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watch_history` (
  `user_id` int DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `Title` varchar(300) DEFAULT NULL,
  `watched_duration` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watch_history`
--

LOCK TABLES `watch_history` WRITE;
/*!40000 ALTER TABLE `watch_history` DISABLE KEYS */;
INSERT INTO `watch_history` VALUES (101,301,'Squid Game: Season 2',62),(101,303,'Pushpa 2: The Rule',120),(102,302,'Stranger Things 5',75),(102,305,'Wednesday: Season 2',55),(103,316,'The Night Agent: Season 2',48),(103,317,'Extraction 3',122),(104,309,'Peaky Blinders: The Movie',130),(104,311,'Black Mirror: Season 7',30),(105,319,'War 2',160),(105,320,'Beef: Season 2',35),(106,306,'One Piece (Live Action) S2',60),(106,304,'The Electric State',100),(107,308,'Avatar: The Last Airbender S2',52),(107,310,'Singham Again',155),(108,314,'Money Heist: Berlin S2',50),(108,313,'Goyo',107),(109,312,'Back to Action',114),(110,318,'Cobra Kai: The Finale',45),(110,315,'Carry on Jatta 4',70),(101,307,'Frankenstein (Guillermo del Toro)',142),(101,301,'Squid Game: Season 2',62),(101,303,'Pushpa 2: The Rule',120),(101,302,'Stranger Things 5',75),(101,305,'Wednesday: Season 2',55),(103,316,'The Night Agent: Season 2',48),(103,317,'Extraction 3',122),(104,309,'Peaky Blinders: The Movie',130),(104,311,'Black Mirror: Season 7',30),(104,319,'War 2',160),(105,320,'Beef: Season 2',35),(106,306,'One Piece (Live Action) S2',60),(106,304,'The Electric State',100),(107,308,'Avatar: The Last Airbender S2',52),(107,310,'Singham Again',155),(108,314,'Money Heist: Berlin S2',50),(108,313,'Goyo',107),(109,312,'Back to Action',114),(109,318,'Cobra Kai: The Finale',45),(110,315,'Carry on Jatta 4',70),(101,307,'Frankenstein (Guillermo del Toro)',142);
/*!40000 ALTER TABLE `watch_history` ENABLE KEYS */;
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
