CREATE DATABASE  IF NOT EXISTS `nypd_collisions_vehicles` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `nypd_collisions_vehicles`;
-- MySQL dump 10.13  Distrib 8.0.43, for macos15 (arm64)
--
-- Host: localhost    Database: nypd_collisions_vehicles
-- ------------------------------------------------------
-- Server version	9.4.0

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
-- Table structure for table `collisions`
--

DROP TABLE IF EXISTS `collisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collisions` (
  `collision_id` bigint NOT NULL,
  `date_id` int DEFAULT NULL,
  `time_id` int DEFAULT NULL,
  PRIMARY KEY (`collision_id`),
  KEY `fk_collisions_date` (`date_id`),
  KEY `fk_collisions_time` (`time_id`),
  CONSTRAINT `fk_collisions_date` FOREIGN KEY (`date_id`) REFERENCES `dates` (`date_id`),
  CONSTRAINT `fk_collisions_time` FOREIGN KEY (`time_id`) REFERENCES `times` (`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collisions`
--

LOCK TABLES `collisions` WRITE;
/*!40000 ALTER TABLE `collisions` DISABLE KEYS */;
INSERT INTO `collisions` VALUES (3682009,10,50),(3682048,10,62),(3682058,10,12),(3682213,10,15),(3682711,12,58),(3683323,22,28),(3683327,12,12),(3683701,17,22),(3683779,22,32),(3684288,12,44),(3684598,10,61),(3684844,6,7),(3685014,17,33),(3686037,11,59),(3686183,26,31),(3686523,21,37),(3686792,21,62),(3686891,21,27),(3687324,1,60),(3687767,6,73),(3687852,11,78),(3688161,15,81),(3688341,15,67),(3688389,15,53),(3688399,15,19),(3688806,1,1),(3689377,25,20),(3689467,25,13),(3689656,25,48),(3689731,15,69),(3689968,3,10),(3690021,3,3),(3690448,3,80),(3690496,3,65),(3690684,5,56),(3690839,25,65),(3691132,5,36),(3691236,5,30),(3691442,25,64),(3691541,5,5),(3691739,9,11),(3691897,9,68),(3691908,20,25),(3691960,9,6),(3692527,18,84),(3692860,29,37),(3693191,27,42),(3693620,3,71),(3693644,12,70),(3693822,29,36),(3693857,18,23),(3694843,11,13),(3694938,2,2),(3695199,2,52),(3695281,6,66),(3695384,9,41),(3695547,2,74),(3695794,2,25),(3695820,28,55),(3696044,2,72),(3696163,28,47),(3696411,28,38),(3696489,2,46),(3696517,2,49),(3696639,24,38),(3696811,24,48),(3696966,24,82),(3697465,14,31),(3697565,14,18),(3698382,8,9),(3698618,8,21),(3698721,16,20),(3698859,20,35),(3698908,14,83),(3699452,13,16),(3699734,14,40),(3700112,19,34),(3700537,19,24),(3700569,19,76),(3700681,13,39),(3700692,7,43),(3700701,19,79),(3700788,19,63),(3700936,7,21),(3701110,7,13),(3701127,7,8),(3701263,7,17),(3701883,7,54),(3702213,4,51),(3702386,7,14),(3702488,23,75),(3702598,23,29),(3702837,4,6),(3702851,4,26),(3703187,23,59),(3703190,4,4),(3703966,8,45),(3704149,4,10),(3704379,13,57),(4024362,12,77);
/*!40000 ALTER TABLE `collisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dates`
--

DROP TABLE IF EXISTS `dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dates` (
  `date_id` int NOT NULL AUTO_INCREMENT,
  `crash_date` date DEFAULT NULL,
  `day_of_week` tinyint DEFAULT NULL,
  `year` smallint DEFAULT NULL,
  PRIMARY KEY (`date_id`),
  UNIQUE KEY `crash_date` (`crash_date`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dates`
--

LOCK TABLES `dates` WRITE;
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` VALUES (1,'2017-06-09',6,2017),(2,'2017-06-20',3,2017),(3,'2017-06-13',3,2017),(4,'2017-06-29',5,2017),(5,'2017-06-14',4,2017),(6,'2017-06-05',2,2017),(7,'2017-06-28',4,2017),(8,'2017-06-25',1,2017),(9,'2017-06-15',5,2017),(10,'2017-06-01',5,2017),(11,'2017-06-06',3,2017),(12,'2017-06-02',6,2017),(13,'2017-06-26',2,2017),(14,'2017-06-23',6,2017),(15,'2017-06-11',1,2017),(16,'2017-06-24',7,2017),(17,'2017-06-03',7,2017),(18,'2017-06-17',7,2017),(19,'2017-06-27',3,2017),(20,'2017-06-16',6,2017),(21,'2017-06-08',5,2017),(22,'2017-06-04',1,2017),(23,'2017-06-30',6,2017),(24,'2017-06-22',5,2017),(25,'2017-06-12',2,2017),(26,'2017-06-07',4,2017),(27,'2017-06-10',7,2017),(28,'2017-06-21',4,2017),(29,'2017-06-18',1,2017);
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_sexes`
--

DROP TABLE IF EXISTS `driver_sexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_sexes` (
  `driver_sex_id` int NOT NULL AUTO_INCREMENT,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`driver_sex_id`),
  UNIQUE KEY `sex` (`sex`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_sexes`
--

LOCK TABLES `driver_sexes` WRITE;
/*!40000 ALTER TABLE `driver_sexes` DISABLE KEYS */;
INSERT INTO `driver_sexes` VALUES (2,'F'),(1,'M');
/*!40000 ALTER TABLE `driver_sexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factors`
--

DROP TABLE IF EXISTS `factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factors` (
  `factor_id` int NOT NULL AUTO_INCREMENT,
  `factor_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`factor_id`),
  UNIQUE KEY `factor_desc` (`factor_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factors`
--

LOCK TABLES `factors` WRITE;
/*!40000 ALTER TABLE `factors` DISABLE KEYS */;
INSERT INTO `factors` VALUES (13,'Backing Unsafely'),(1,'Driver Inattention/Distraction'),(3,'Driver Inexperience'),(7,'Failure to Yield Right-of-Way'),(18,'Fatigued/Drowsy'),(9,'Fell Asleep'),(4,'Following Too Closely'),(16,'Illnes'),(17,'Lost Consciousness'),(5,'Other Vehicular'),(8,'Passing or Lane Usage Improper'),(10,'Passing Too Closely'),(15,'Pedestrian/Bicyclist/Other Pedestrian Error/Confusion'),(12,'Turning Improperly'),(6,'Unsafe Lane Changing'),(14,'Unsafe Speed'),(2,'Unspecified'),(11,'View Obstructed/Limited');
/*!40000 ALTER TABLE `factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_jurisdictions`
--

DROP TABLE IF EXISTS `license_jurisdictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_jurisdictions` (
  `license_juris_id` int NOT NULL AUTO_INCREMENT,
  `license_jurisdiction` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`license_juris_id`),
  UNIQUE KEY `license_jurisdiction` (`license_jurisdiction`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_jurisdictions`
--

LOCK TABLES `license_jurisdictions` WRITE;
/*!40000 ALTER TABLE `license_jurisdictions` DISABLE KEYS */;
INSERT INTO `license_jurisdictions` VALUES (3,'CT'),(8,'FL'),(2,'NJ'),(1,'NY'),(7,'PA'),(5,'TX'),(6,'VA'),(4,'WA');
/*!40000 ALTER TABLE `license_jurisdictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_statuses`
--

DROP TABLE IF EXISTS `license_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_statuses` (
  `license_status_id` int NOT NULL AUTO_INCREMENT,
  `license_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`license_status_id`),
  UNIQUE KEY `license_status` (`license_status`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_statuses`
--

LOCK TABLES `license_statuses` WRITE;
/*!40000 ALTER TABLE `license_statuses` DISABLE KEYS */;
INSERT INTO `license_statuses` VALUES (1,'Licensed'),(2,'Unlicensed');
/*!40000 ALTER TABLE `license_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_years`
--

DROP TABLE IF EXISTS `model_years`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_years` (
  `year_id` int NOT NULL AUTO_INCREMENT,
  `model_year` smallint DEFAULT NULL,
  PRIMARY KEY (`year_id`),
  UNIQUE KEY `model_year` (`model_year`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_years`
--

LOCK TABLES `model_years` WRITE;
/*!40000 ALTER TABLE `model_years` DISABLE KEYS */;
INSERT INTO `model_years` VALUES (17,1999),(11,2000),(4,2001),(19,2002),(15,2003),(5,2004),(9,2005),(16,2006),(2,2007),(7,2008),(14,2009),(18,2010),(10,2011),(13,2012),(3,2013),(6,2014),(1,2015),(8,2016),(12,2017);
/*!40000 ALTER TABLE `model_years` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `state_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  UNIQUE KEY `state_code` (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (5,'AZ'),(7,'CT'),(3,'IN'),(2,'NJ'),(1,'NY'),(6,'PA'),(4,'WI');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times` (
  `time_id` int NOT NULL AUTO_INCREMENT,
  `crash_time` time DEFAULT NULL,
  PRIMARY KEY (`time_id`),
  UNIQUE KEY `crash_time` (`crash_time`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (24,'00:00:00'),(28,'00:10:00'),(84,'01:00:00'),(42,'01:30:00'),(49,'01:55:00'),(50,'02:00:00'),(18,'02:45:00'),(23,'04:00:00'),(57,'05:15:00'),(59,'06:30:00'),(55,'06:41:00'),(41,'07:40:00'),(43,'08:15:00'),(37,'08:20:00'),(15,'08:50:00'),(10,'09:00:00'),(82,'09:05:00'),(7,'09:20:00'),(25,'09:30:00'),(64,'09:45:00'),(79,'09:55:00'),(17,'10:35:00'),(75,'10:42:00'),(78,'11:06:00'),(19,'11:30:00'),(33,'11:35:00'),(54,'11:52:00'),(4,'12:00:00'),(65,'12:30:00'),(3,'12:50:00'),(71,'13:00:00'),(21,'13:20:00'),(77,'13:30:00'),(34,'13:39:00'),(48,'13:50:00'),(29,'13:51:00'),(35,'13:58:00'),(40,'14:08:00'),(66,'14:10:00'),(9,'14:15:00'),(2,'14:22:00'),(60,'14:30:00'),(53,'14:37:00'),(36,'15:00:00'),(72,'15:20:00'),(52,'15:30:00'),(26,'15:44:00'),(14,'15:50:00'),(13,'16:00:00'),(61,'16:02:00'),(32,'16:10:00'),(12,'16:15:00'),(76,'16:55:00'),(27,'17:00:00'),(81,'17:05:00'),(31,'17:15:00'),(73,'17:34:00'),(20,'17:50:00'),(62,'18:10:00'),(74,'18:12:00'),(67,'18:24:00'),(22,'18:25:00'),(30,'18:30:00'),(8,'18:38:00'),(38,'18:40:00'),(5,'19:29:00'),(6,'19:30:00'),(51,'19:39:00'),(83,'19:40:00'),(1,'19:49:00'),(11,'19:50:00'),(47,'19:55:00'),(46,'20:00:00'),(56,'20:20:00'),(44,'20:55:00'),(16,'21:00:00'),(80,'21:14:00'),(45,'21:40:00'),(58,'22:00:00'),(69,'22:39:00'),(63,'23:00:00'),(39,'23:35:00'),(70,'23:40:00'),(68,'23:50:00');
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travel_directions`
--

DROP TABLE IF EXISTS `travel_directions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_directions` (
  `travel_direction_id` int NOT NULL AUTO_INCREMENT,
  `travel_direction_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`travel_direction_id`),
  UNIQUE KEY `travel_direction_name` (`travel_direction_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_directions`
--

LOCK TABLES `travel_directions` WRITE;
/*!40000 ALTER TABLE `travel_directions` DISABLE KEYS */;
INSERT INTO `travel_directions` VALUES (4,'East'),(1,'North'),(9,'Northeast'),(8,'Northwest'),(2,'South'),(5,'Southeast'),(7,'Southwest'),(6,'Unknown'),(3,'West');
/*!40000 ALTER TABLE `travel_directions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_collisions_by_factor`
--

DROP TABLE IF EXISTS `v_collisions_by_factor`;
/*!50001 DROP VIEW IF EXISTS `v_collisions_by_factor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_collisions_by_factor` AS SELECT 
 1 AS `factor_desc`,
 1 AS `num_collisions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_collisions_by_state`
--

DROP TABLE IF EXISTS `v_collisions_by_state`;
/*!50001 DROP VIEW IF EXISTS `v_collisions_by_state`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_collisions_by_state` AS SELECT 
 1 AS `state_code`,
 1 AS `num_collisions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_collisions_by_vehicle_type`
--

DROP TABLE IF EXISTS `v_collisions_by_vehicle_type`;
/*!50001 DROP VIEW IF EXISTS `v_collisions_by_vehicle_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_collisions_by_vehicle_type` AS SELECT 
 1 AS `vehicle_type_name`,
 1 AS `num_collisions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_vehicles_by_make`
--

DROP TABLE IF EXISTS `v_vehicles_by_make`;
/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_make`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_vehicles_by_make` AS SELECT 
 1 AS `make_name`,
 1 AS `num_vehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_vehicles_by_type`
--

DROP TABLE IF EXISTS `v_vehicles_by_type`;
/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_type`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_vehicles_by_type` AS SELECT 
 1 AS `vehicle_type_name`,
 1 AS `num_vehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_vehicles_by_year`
--

DROP TABLE IF EXISTS `v_vehicles_by_year`;
/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_year`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_vehicles_by_year` AS SELECT 
 1 AS `model_year`,
 1 AS `num_vehicles`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vehicle_factors`
--

DROP TABLE IF EXISTS `vehicle_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_factors` (
  `vehicle_id` bigint NOT NULL,
  `factor_id` int NOT NULL,
  PRIMARY KEY (`vehicle_id`,`factor_id`),
  KEY `fk_vf_factor` (`factor_id`),
  CONSTRAINT `fk_vf_factor` FOREIGN KEY (`factor_id`) REFERENCES `factors` (`factor_id`),
  CONSTRAINT `fk_vf_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_factors`
--

LOCK TABLES `vehicle_factors` WRITE;
/*!40000 ALTER TABLE `vehicle_factors` DISABLE KEYS */;
INSERT INTO `vehicle_factors` VALUES (17496466,1),(17496912,1),(17534615,1),(17541718,1),(17545468,1),(17554306,1),(17561532,1),(17561556,1),(17563414,1),(17565641,1),(17565699,1),(17568424,1),(17570709,1),(17573935,1),(17574012,1),(17578545,1),(17587550,1),(17589008,1),(17463955,2),(17472879,2),(17477272,2),(17482024,2),(17488830,2),(17490123,2),(17490689,2),(17494416,2),(17494639,2),(17496506,2),(17502624,2),(17504670,2),(17504693,2),(17509887,2),(17512945,2),(17513737,2),(17521616,2),(17522106,2),(17526560,2),(17529388,2),(17530567,2),(17533094,2),(17534273,2),(17534615,2),(17538049,2),(17542665,2),(17543293,2),(17545468,2),(17546990,2),(17549594,2),(17552948,2),(17553069,2),(17553368,2),(17554867,2),(17556040,2),(17556519,2),(17557742,2),(17558053,2),(17558847,2),(17559320,2),(17559561,2),(17560746,2),(17562942,2),(17563414,2),(17563636,2),(17565352,2),(17565414,2),(17565641,2),(17566287,2),(17569421,2),(17570413,2),(17571968,2),(17572280,2),(17573503,2),(17574255,2),(17575444,2),(17577453,2),(17578734,2),(17581416,2),(17582856,2),(17582894,2),(17587550,2),(17589213,2),(17589232,2),(17589797,2),(17591007,2),(17591022,2),(17591245,2),(17591768,2),(17592855,2),(17595761,2),(17599913,2),(19650124,2),(17521616,3),(17541718,3),(17552834,3),(17591007,3),(17431685,4),(17533094,4),(17542665,4),(17552834,4),(17554306,4),(17560458,4),(17565699,4),(17574012,4),(17590382,4),(17556519,5),(17569421,5),(17577453,5),(17591245,6),(17530567,7),(17565352,7),(17567418,7),(17591022,7),(17494361,8),(17496466,8),(17581416,8),(17590011,8),(17568424,9),(17589008,9),(17472879,10),(17592794,10),(17495929,11),(17567418,11),(17494361,12),(17482024,13),(17557742,13),(17570709,13),(17573935,13),(17578545,13),(17590011,13),(17431685,14),(17560458,14),(17590382,14),(17433927,15),(17519439,16),(17519439,17),(17496912,18);
/*!40000 ALTER TABLE `vehicle_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_makes`
--

DROP TABLE IF EXISTS `vehicle_makes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_makes` (
  `make_id` int NOT NULL AUTO_INCREMENT,
  `make_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`make_id`),
  UNIQUE KEY `make_name` (`make_name`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_makes`
--

LOCK TABLES `vehicle_makes` WRITE;
/*!40000 ALTER TABLE `vehicle_makes` DISABLE KEYS */;
INSERT INTO `vehicle_makes` VALUES (12,'ACUR -CAR/SUV'),(27,'AUDI -CAR/SUV'),(28,'BMW -CAR/SUV'),(18,'CHEV -CAR/SUV'),(17,'DODG -CAR/SUV'),(24,'ford'),(8,'FORD -CAR/SUV'),(25,'FORD-TRUCK/BUS'),(6,'FRHT-TRUCK/BUS'),(14,'GMC -CAR/SUV'),(9,'GMC-TRUCK/BUS'),(21,'HOND -CAR/SUV'),(16,'HYUN -CAR/SUV'),(5,'INFI -CAR/SUV'),(3,'INTL-TRUCK/BUS'),(13,'ISU -CAR/SUV'),(19,'ISUZU'),(15,'JEEP -CAR/SUV'),(4,'LEXS -CAR/SUV'),(2,'LINC -CAR/SUV'),(23,'MAZD -CAR/SUV'),(20,'MERC -CAR/SUV'),(26,'N/A'),(7,'NISS -CAR/SUV'),(10,'PONT -CAR/SUV'),(11,'starc'),(1,'TOYT -CAR/SUV'),(22,'VOLK -CAR/SUV');
/*!40000 ALTER TABLE `vehicle_makes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_models`
--

DROP TABLE IF EXISTS `vehicle_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_models` (
  `model_id` int NOT NULL AUTO_INCREMENT,
  `make_id` int NOT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`model_id`),
  UNIQUE KEY `uk_make_model` (`make_id`,`model_name`),
  CONSTRAINT `fk_model_make` FOREIGN KEY (`make_id`) REFERENCES `vehicle_makes` (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_models`
--

LOCK TABLES `vehicle_models` WRITE;
/*!40000 ALTER TABLE `vehicle_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_types`
--

DROP TABLE IF EXISTS `vehicle_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_types` (
  `vehicle_type_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_type_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`vehicle_type_id`),
  UNIQUE KEY `vehicle_type_name` (`vehicle_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_types`
--

LOCK TABLES `vehicle_types` WRITE;
/*!40000 ALTER TABLE `vehicle_types` DISABLE KEYS */;
INSERT INTO `vehicle_types` VALUES (11,'ambul'),(8,'Armored Truck'),(7,'Bike'),(3,'Box Truck'),(4,'Bus'),(10,'firet'),(5,'Pick-up Truck'),(2,'Sedan'),(1,'Station Wagon/Sport Utility Vehicle'),(6,'Taxi'),(9,'Tractor Truck Diesel');
/*!40000 ALTER TABLE `vehicle_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` bigint NOT NULL,
  `collision_id` bigint NOT NULL,
  `vehicle_type_id` int DEFAULT NULL,
  `travel_direction_id` int DEFAULT NULL,
  `driver_sex_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `make_id` int DEFAULT NULL,
  `model_id` int DEFAULT NULL,
  `year_id` int DEFAULT NULL,
  `license_status_id` int DEFAULT NULL,
  `license_juris_id` int DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  KEY `fk_v_collision` (`collision_id`),
  KEY `fk_v_type` (`vehicle_type_id`),
  KEY `fk_v_travel_dir` (`travel_direction_id`),
  KEY `fk_v_sex` (`driver_sex_id`),
  KEY `fk_v_state` (`state_id`),
  KEY `fk_v_make` (`make_id`),
  KEY `fk_v_model` (`model_id`),
  KEY `fk_v_year` (`year_id`),
  KEY `fk_v_lic_status` (`license_status_id`),
  KEY `fk_v_lic_juris` (`license_juris_id`),
  CONSTRAINT `fk_v_collision` FOREIGN KEY (`collision_id`) REFERENCES `collisions` (`collision_id`),
  CONSTRAINT `fk_v_lic_juris` FOREIGN KEY (`license_juris_id`) REFERENCES `license_jurisdictions` (`license_juris_id`),
  CONSTRAINT `fk_v_lic_status` FOREIGN KEY (`license_status_id`) REFERENCES `license_statuses` (`license_status_id`),
  CONSTRAINT `fk_v_make` FOREIGN KEY (`make_id`) REFERENCES `vehicle_makes` (`make_id`),
  CONSTRAINT `fk_v_model` FOREIGN KEY (`model_id`) REFERENCES `vehicle_models` (`model_id`),
  CONSTRAINT `fk_v_sex` FOREIGN KEY (`driver_sex_id`) REFERENCES `driver_sexes` (`driver_sex_id`),
  CONSTRAINT `fk_v_state` FOREIGN KEY (`state_id`) REFERENCES `states` (`state_id`),
  CONSTRAINT `fk_v_travel_dir` FOREIGN KEY (`travel_direction_id`) REFERENCES `travel_directions` (`travel_direction_id`),
  CONSTRAINT `fk_v_type` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`vehicle_type_id`),
  CONSTRAINT `fk_v_year` FOREIGN KEY (`year_id`) REFERENCES `model_years` (`year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (17431685,4024362,2,2,2,1,1,NULL,13,1,1),(17433927,3691442,7,1,1,NULL,NULL,NULL,NULL,NULL,NULL),(17463955,3704149,5,2,1,1,13,NULL,5,1,1),(17472879,3695199,10,2,1,1,NULL,NULL,NULL,1,1),(17477272,3686037,5,3,1,1,26,NULL,11,1,1),(17482024,3695794,3,3,1,1,6,NULL,13,1,1),(17488830,3683701,2,2,2,1,7,NULL,2,1,1),(17490123,3684598,2,4,1,1,7,NULL,14,1,1),(17490689,3696966,5,8,1,1,17,NULL,3,1,1),(17494361,3702213,2,3,1,1,23,NULL,6,1,1),(17494416,3683327,1,1,NULL,1,1,NULL,10,NULL,NULL),(17494639,3693644,1,2,NULL,6,2,NULL,18,NULL,NULL),(17495929,3700681,2,1,1,2,1,NULL,8,1,2),(17496466,3689377,2,2,1,1,1,NULL,19,1,1),(17496506,3700692,2,1,1,1,8,NULL,6,1,1),(17496912,3688161,2,2,1,1,1,NULL,10,1,1),(17502624,3695384,2,2,1,1,21,NULL,1,1,1),(17504670,3693822,7,2,1,NULL,NULL,NULL,NULL,2,1),(17504693,3694938,2,2,1,1,2,NULL,2,1,1),(17509442,3703966,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17509887,3701883,4,2,1,1,6,NULL,2,1,1),(17512945,3699734,2,4,NULL,6,7,NULL,1,NULL,NULL),(17513737,3685014,2,5,1,1,7,NULL,9,1,1),(17519439,3687767,2,4,1,1,1,NULL,1,2,1),(17521616,3691132,2,3,NULL,1,20,NULL,9,NULL,NULL),(17522106,3691739,3,1,1,3,9,NULL,8,1,1),(17526560,3692527,6,2,1,1,18,NULL,3,1,2),(17529388,3693620,3,1,1,1,3,NULL,5,1,1),(17530567,3696411,2,9,1,2,18,NULL,12,1,2),(17533094,3686183,6,4,1,1,1,NULL,1,1,1),(17534273,3686891,2,3,1,1,12,NULL,5,1,1),(17534615,3702837,2,1,1,2,5,NULL,4,1,2),(17538049,3689968,1,3,1,1,8,NULL,7,1,1),(17541718,3682009,9,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17542665,3682213,1,3,2,4,2,NULL,1,1,3),(17543293,3689731,2,2,2,2,1,NULL,10,1,2),(17545468,3690684,4,7,2,1,25,NULL,15,1,1),(17546990,3691541,2,3,1,1,4,NULL,1,1,1),(17549594,3695281,2,1,1,2,1,NULL,7,1,2),(17552834,3701110,1,4,1,1,10,NULL,9,1,1),(17552948,3696811,1,3,NULL,1,18,NULL,5,NULL,NULL),(17553069,3699452,6,3,1,1,1,NULL,1,1,1),(17553368,3691236,2,4,1,1,1,NULL,6,1,2),(17554306,3686792,1,2,1,1,16,NULL,10,1,1),(17554867,3682711,2,4,NULL,1,7,NULL,9,NULL,NULL),(17556040,3703190,3,3,1,1,3,NULL,1,1,1),(17556519,3688389,2,2,1,2,7,NULL,17,1,1),(17557742,3700701,1,2,1,1,15,NULL,1,1,8),(17558053,3684288,2,1,NULL,1,5,NULL,15,NULL,NULL),(17558847,3698859,3,1,NULL,1,19,NULL,9,NULL,NULL),(17559320,3695820,11,1,1,1,24,NULL,6,1,1),(17559561,3687852,1,9,1,1,15,NULL,8,1,1),(17560458,3700788,6,2,1,1,1,NULL,3,1,1),(17560746,3702851,2,2,1,1,5,NULL,13,1,1),(17561532,3696163,2,1,2,1,16,NULL,6,1,1),(17561556,3702598,2,2,1,1,18,NULL,3,1,2),(17562942,3698618,1,2,2,1,15,NULL,3,1,1),(17563414,3688806,1,1,1,1,1,NULL,1,1,1),(17563636,3694843,4,3,1,1,11,NULL,6,1,1),(17565352,3697465,8,2,1,1,6,NULL,6,1,1),(17565414,3698908,2,7,NULL,1,16,NULL,18,NULL,NULL),(17565641,3686523,1,1,2,1,21,NULL,3,1,1),(17565699,3690496,2,8,1,1,8,NULL,5,1,1),(17566287,3693191,1,6,NULL,1,21,NULL,13,NULL,NULL),(17567418,3698721,1,2,2,1,15,NULL,7,1,1),(17568424,3691897,2,1,1,1,18,NULL,8,1,1),(17569333,3704379,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17569421,3689656,2,3,1,2,4,NULL,1,NULL,7),(17570413,3691908,5,3,1,1,17,NULL,8,1,1),(17570709,3695547,1,4,2,1,18,NULL,15,1,1),(17571968,3692860,1,2,NULL,1,21,NULL,10,NULL,NULL),(17572280,3682058,1,4,1,1,1,NULL,1,1,1),(17573503,3690448,2,4,NULL,1,17,NULL,19,NULL,NULL),(17573935,3696489,1,3,1,1,8,NULL,10,1,6),(17574012,3696044,2,3,2,1,4,NULL,7,1,1),(17574255,3700569,2,1,1,1,28,NULL,12,1,1),(17575444,3702488,6,3,1,1,1,NULL,8,1,1),(17577453,3701263,7,2,1,NULL,NULL,NULL,NULL,NULL,4),(17578545,3684844,3,4,1,1,6,NULL,2,1,1),(17578734,3698382,1,3,1,1,1,NULL,6,1,1),(17579535,3693857,NULL,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17581416,3700936,1,4,1,1,1,NULL,10,1,1),(17582856,3689467,2,3,2,1,21,NULL,14,1,1),(17582894,3702386,1,3,2,1,12,NULL,3,1,1),(17587550,3688341,1,1,1,1,21,NULL,1,1,1),(17589008,3683323,5,4,1,1,7,NULL,10,1,1),(17589213,3696639,2,4,2,1,21,NULL,11,1,1),(17589232,3697565,2,4,1,1,4,NULL,11,1,1),(17589797,3700537,2,3,2,1,16,NULL,6,1,1),(17590011,3682048,2,3,1,1,4,NULL,5,1,1),(17590382,3683779,2,2,1,1,5,NULL,3,1,1),(17591007,3696517,2,4,2,7,8,NULL,16,2,NULL),(17591022,3687324,1,2,2,1,7,NULL,1,1,1),(17591245,3688399,5,1,1,5,14,NULL,12,1,5),(17591768,3691960,1,2,2,1,22,NULL,8,1,1),(17592794,3700112,1,2,1,1,1,NULL,12,1,1),(17592855,3701127,2,2,2,1,7,NULL,5,1,1),(17595761,3703187,2,4,NULL,1,27,NULL,5,NULL,NULL),(17599913,3690839,2,2,1,1,8,NULL,8,1,1),(19650124,3690021,2,3,NULL,1,1,NULL,3,NULL,NULL);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `v_collisions_by_factor`
--

/*!50001 DROP VIEW IF EXISTS `v_collisions_by_factor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_collisions_by_factor` AS select `f`.`factor_desc` AS `factor_desc`,count(distinct `v`.`collision_id`) AS `num_collisions` from ((`vehicle_factors` `vf` join `factors` `f` on((`vf`.`factor_id` = `f`.`factor_id`))) join `vehicles` `v` on((`vf`.`vehicle_id` = `v`.`vehicle_id`))) group by `f`.`factor_desc` order by `num_collisions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_collisions_by_state`
--

/*!50001 DROP VIEW IF EXISTS `v_collisions_by_state`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_collisions_by_state` AS select `s`.`state_code` AS `state_code`,count(distinct `v`.`collision_id`) AS `num_collisions` from (`vehicles` `v` join `states` `s` on((`v`.`state_id` = `s`.`state_id`))) group by `s`.`state_code` order by `num_collisions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_collisions_by_vehicle_type`
--

/*!50001 DROP VIEW IF EXISTS `v_collisions_by_vehicle_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_collisions_by_vehicle_type` AS select `vt`.`vehicle_type_name` AS `vehicle_type_name`,count(distinct `v`.`collision_id`) AS `num_collisions` from (`vehicles` `v` join `vehicle_types` `vt` on((`v`.`vehicle_type_id` = `vt`.`vehicle_type_id`))) group by `vt`.`vehicle_type_name` order by `num_collisions` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_vehicles_by_make`
--

/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_make`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_vehicles_by_make` AS select `m`.`make_name` AS `make_name`,count(0) AS `num_vehicles` from (`vehicles` `v` join `vehicle_makes` `m` on((`v`.`make_id` = `m`.`make_id`))) group by `m`.`make_name` order by `num_vehicles` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_vehicles_by_type`
--

/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_vehicles_by_type` AS select `vt`.`vehicle_type_name` AS `vehicle_type_name`,count(0) AS `num_vehicles` from (`vehicles` `v` join `vehicle_types` `vt` on((`v`.`vehicle_type_id` = `vt`.`vehicle_type_id`))) group by `vt`.`vehicle_type_name` order by `num_vehicles` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_vehicles_by_year`
--

/*!50001 DROP VIEW IF EXISTS `v_vehicles_by_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_vehicles_by_year` AS select `y`.`model_year` AS `model_year`,count(0) AS `num_vehicles` from (`vehicles` `v` join `model_years` `y` on((`v`.`year_id` = `y`.`year_id`))) group by `y`.`model_year` order by `y`.`model_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22 12:45:08
