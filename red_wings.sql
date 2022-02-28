-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: 35.239.81.122    Database: red_wings
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `goalie_stats`
--

DROP TABLE IF EXISTS `goalie_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goalie_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people_id` int DEFAULT NULL,
  `games_played` int DEFAULT NULL,
  `games_started` int DEFAULT NULL,
  `wins` int DEFAULT NULL,
  `losses` int DEFAULT NULL,
  `goals_against` int DEFAULT NULL,
  `shots_against` int DEFAULT NULL,
  `saves` int DEFAULT NULL,
  `save_pct` float DEFAULT NULL,
  `goals_against_avg` float DEFAULT NULL,
  `shut_outs` int DEFAULT NULL,
  `quality_starts` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goalie_stats_people_id_fk` (`people_id`),
  CONSTRAINT `goalie_stats_people_id_fk` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goalie_stats`
--

LOCK TABLES `goalie_stats` WRITE;
/*!40000 ALTER TABLE `goalie_stats` DISABLE KEYS */;
INSERT INTO `goalie_stats` VALUES (1,26,43,40,27,9,84,976,892,0.914,2.09,4,26),(2,13,41,40,27,10,84,855,771,0.902,2.14,5,19),(3,16,4,2,0,2,7,95,88,0.926,2.13,0,1);
/*!40000 ALTER TABLE `goalie_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number` int DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `position` varchar(10) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `shoots` varchar(10) DEFAULT NULL,
  `years_exp` int DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,8,'Justin','Abdelkader','US','LW',20,74,213,'L',0,'1987-02-25'),(2,24,'Chris','Chelios','US','D',46,72,191,'R',23,'1962-01-25'),(3,11,'Dan','Cleary','CA','RW',29,73,205,'L',9,'1978-12-18'),(4,13,'Pavel','Datsyuk','SU','C',29,71,194,'L',5,'1978-07-20'),(5,20,'Aaron','Downey','CA','RW',33,73,215,'R',7,'1974-08-27'),(6,17,'Dallas','Drake','CA','RW',38,73,186,'L',14,'1969-02-04'),(7,33,'Kris','Draper','CA','C',36,70,188,'L',16,'1971-05-24'),(8,8,'Matt','Ellis','CA','LW',26,72,208,'L',1,'1981-08-31'),(9,52,'Jonathan','Ericsson','SE','D',23,76,218,'L',0,'1984-03-02'),(10,51,'Valtteri','Filppula','FI','C',23,72,189,'L',2,'1984-03-20'),(11,93,'Johan','Franzen','SE','C',28,76,232,'L',2,'1979-12-23'),(12,44,'Mark','Hartigan','CA','C',30,72,196,'L',5,'1977-10-15'),(13,39,'Dominik','Hasek','CS','G',43,73,166,'L',15,'1965-01-29'),(14,43,'Darren','Helm','CA','C',21,72,192,'L',0,'1987-01-21'),(15,96,'Tomas','Holmstrom','SE','RW',35,72,198,'L',10,'1973-01-23'),(16,35,'Jimmy','Howard','US','G',23,73,218,'L',1,'1984-03-26'),(17,26,'Jiri','Hudler','CS','RW',24,70,190,'L',3,'1984-01-04'),(18,82,'Tomas','Kopecky','CS','RW',25,75,210,'L',2,'1982-02-05'),(19,55,'Niklas','Kronwall','SE','D',27,72,194,'L',3,'1981-01-12'),(20,22,'Brett','Lebda','US','D',26,69,195,'L',2,'1982-01-15'),(21,5,'Nicklas ','Lindstrom','SE','D',37,73,192,'L',15,'1970-04-28'),(22,3,'Andreas','Lilja','SE','D',32,75,220,'L',6,'1975-07-13'),(23,18,'Kirk','Maltby','CA','LW',35,72,195,'R',13,'1972-12-22'),(24,25,'Darren','McCarty','CA','RW',35,73,210,'R',13,'1972-04-01'),(25,14,'Derek','Meech','CA','D',23,71,200,'L',1,'1984-04-21'),(26,30,'Chris','Osgood','CA','G',35,70,180,'L',13,'1972-11-26'),(27,4,'Kyle','Quincey','CA','D',22,74,210,'L',2,'1985-08-12'),(28,28,'Brian','Rafalski','US','D',34,70,194,'R',7,'1973-09-28'),(29,42,'Mattias','Ritola','SE','C',20,72,192,'L',0,'1987-03-14'),(30,37,'Mikael','Samuelsson','SE','RW',31,74,218,'R',6,'1976-12-23'),(31,36,'Garrett','Stafford','US','D',28,73,207,'R',0,'1980-01-28'),(32,23,'Brad','Stuart','CA','D',28,74,215,'L',7,'1979-11-06'),(33,40,'Henrik','Zetterberg','SE','LW',27,72,197,'L',4,'1980-10-09');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playoff_record`
--

DROP TABLE IF EXISTS `playoff_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playoff_record` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `opponent_id` int DEFAULT NULL,
  `goals_for` int DEFAULT NULL,
  `goals_against` int DEFAULT NULL,
  `outcome` varchar(1) DEFAULT NULL,
  `num_ot` int DEFAULT NULL,
  `w_count` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `playoff_record_teams_id_fk` (`opponent_id`),
  CONSTRAINT `playoff_record_teams_id_fk` FOREIGN KEY (`opponent_id`) REFERENCES `teams` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playoff_record`
--

LOCK TABLES `playoff_record` WRITE;
/*!40000 ALTER TABLE `playoff_record` DISABLE KEYS */;
INSERT INTO `playoff_record` VALUES (1,'2008-04-10','home',2,3,1,'W',NULL,1),(2,'2008-04-12','home',2,4,2,'W',NULL,2),(3,'2008-04-14','away',2,3,5,'L',NULL,2),(4,'2008-04-16','away',2,2,3,'L',NULL,2),(5,'2008-04-18','home',2,2,1,'W',1,3),(6,'2008-04-20','away',2,3,0,'W',NULL,4),(7,'2008-04-24','home',3,4,3,'W',NULL,5),(8,'2008-04-26','home',3,5,1,'W',NULL,6),(9,'2008-04-29','away',3,4,3,'W',NULL,7),(10,'2008-05-01','away',3,8,2,'W',NULL,8),(11,'2008-05-08','home',4,4,1,'W',NULL,9),(12,'2008-05-10','home',4,2,1,'W',NULL,10),(13,'2008-05-12','away',4,5,2,'W',NULL,11),(14,'2008-05-14','away',4,1,3,'L',NULL,11),(15,'2008-05-17','home',4,1,2,'L',NULL,11),(16,'2008-05-19','away',4,4,1,'W',NULL,12),(17,'2008-05-24','home',5,4,0,'W',NULL,13),(18,'2008-05-26','home',5,3,0,'W',NULL,14),(19,'2008-05-28','away',5,2,3,'L',NULL,14),(20,'2008-05-31','away',5,2,1,'W',NULL,15),(21,'2008-06-02','home',5,3,4,'L',3,15),(22,'2008-06-04','away',5,3,2,'W',NULL,16);
/*!40000 ALTER TABLE `playoff_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skater_stats`
--

DROP TABLE IF EXISTS `skater_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skater_stats` (
  `id` int NOT NULL AUTO_INCREMENT,
  `people_id` int DEFAULT NULL,
  `games_played` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `points` int DEFAULT NULL,
  `plus_minus` int DEFAULT NULL,
  `pim` int DEFAULT NULL,
  `even_goals` int DEFAULT NULL,
  `pp_goals` int DEFAULT NULL,
  `sh_goals` int DEFAULT NULL,
  `gw_goals` int DEFAULT NULL,
  `shot_percent` float DEFAULT NULL,
  `ice_time` int DEFAULT NULL,
  `blocks` int DEFAULT NULL,
  `hits` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `skater_stats_people_id_fk` (`people_id`),
  CONSTRAINT `skater_stats_people_id_fk` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skater_stats`
--

LOCK TABLES `skater_stats` WRITE;
/*!40000 ALTER TABLE `skater_stats` DISABLE KEYS */;
INSERT INTO `skater_stats` VALUES (1,4,82,31,66,97,41,20,20,10,1,6,11.7,1753,42,40),(2,33,75,43,49,92,30,34,26,16,1,7,12,1655,16,31),(3,21,76,10,60,70,40,40,5,5,0,4,5.3,2031,70,23),(4,28,73,13,42,55,27,34,3,10,0,1,7.4,1757,70,38),(5,3,63,20,22,42,21,33,15,5,0,3,11.3,1095,14,82),(6,17,81,13,29,42,11,26,10,3,0,2,9.9,1067,8,25),(7,15,59,20,20,40,9,58,9,11,0,5,14.6,1035,7,58),(8,30,73,11,29,40,21,26,8,3,0,1,4.4,1187,21,74),(9,11,72,27,11,38,12,51,13,14,0,8,13.6,1276,24,89),(10,10,78,19,17,36,16,28,16,3,0,3,15.6,1323,26,35),(11,19,65,7,28,35,25,44,7,0,0,0,6.5,1372,79,93),(12,7,65,9,8,17,-2,68,7,0,2,2,9.3,1016,25,90),(13,20,78,3,11,14,-1,48,3,0,0,1,2.7,1285,38,46),(14,18,77,5,7,12,2,43,5,0,0,1,5.7,740,17,111),(15,2,69,3,9,12,11,36,3,0,0,1,5,1170,46,56),(16,22,79,2,10,12,-2,93,2,0,0,2,2.8,1440,114,133),(17,23,61,6,4,10,-8,32,6,0,0,1,8.6,736,17,92),(18,6,65,3,3,6,-12,41,2,0,1,0,6.5,696,25,92),(19,8,35,2,4,6,1,12,2,0,0,1,7.1,188,2,15),(20,12,23,3,1,4,-2,16,3,0,0,0,15.8,165,0,25),(21,5,56,0,3,3,0,116,0,0,0,0,0,257,6,79),(22,25,32,0,3,3,-5,6,0,0,0,0,0,388,18,22),(23,26,43,0,3,3,0,0,0,0,0,0,NULL,2409,0,0),(24,32,9,1,1,2,6,2,1,0,0,0,4.8,187,13,30),(25,9,8,1,0,1,-3,4,0,1,0,0,5.3,128,3,9),(26,13,41,0,1,1,0,12,0,0,0,0,NULL,2350,0,0),(27,24,3,0,1,1,2,2,0,0,0,0,0,23,1,4),(28,29,2,0,1,1,0,0,0,0,0,0,0,12,0,0),(29,1,2,0,0,0,0,2,0,0,0,0,0,24,0,5),(30,14,7,0,0,0,-2,2,0,0,0,0,0,49,0,3),(31,16,4,0,0,0,0,0,0,0,0,0,NULL,197,0,0),(32,27,6,0,0,0,-3,4,0,0,0,0,0,84,7,12),(33,31,2,0,0,0,0,0,0,0,0,0,0,14,0,1);
/*!40000 ALTER TABLE `skater_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `arena_name` varchar(100) DEFAULT NULL,
  `conference` varchar(100) DEFAULT NULL,
  `division` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Detroit','Red Wings','Joe Louis Arena','Western','Central'),(2,'Nashville','Predators','Sommet Center','Western','Central'),(3,'Colorado','Avalanche','Pepsi Center','Western','Northwest'),(4,'Dallas','Stars','American Airlines Center','Western','Pacific'),(5,'Pittsburgh','Penguins','Mellon Arena','Eastern','Atlantic');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-02 19:32:28
