-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: communityservicesystem
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity` (
  `No.Activity` int(10) NOT NULL,
  `activityTime` date DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`No.Activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `committee`
--

DROP TABLE IF EXISTS `committee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `committee` (
  `meetId` varchar(20) NOT NULL,
  `eDate` date DEFAULT NULL,
  `seasonDate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`meetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `committee`
--

LOCK TABLES `committee` WRITE;
/*!40000 ALTER TABLE `committee` DISABLE KEYS */;
/*!40000 ALTER TABLE `committee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electricityconsumption`
--

DROP TABLE IF EXISTS `electricityconsumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `electricityconsumption` (
  `hid` int(10) NOT NULL,
  `record_Start_date` date DEFAULT NULL,
  `record_End_date` date DEFAULT NULL,
  `cosumption` int(100) DEFAULT NULL,
  `electricityConsumptioncol` varchar(45) DEFAULT NULL,
  `floor` int(2) DEFAULT NULL,
  `zone` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electricityconsumption`
--

LOCK TABLES `electricityconsumption` WRITE;
/*!40000 ALTER TABLE `electricityconsumption` DISABLE KEYS */;
/*!40000 ALTER TABLE `electricityconsumption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `householder`
--

DROP TABLE IF EXISTS `householder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `householder` (
  `hId` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `phone` int(15) DEFAULT NULL,
  `cId` int(10) NOT NULL,
  `pId` int(10) NOT NULL,
  `floor` int(2) DEFAULT NULL,
  `room` varchar(2) DEFAULT NULL,
  `zone` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`hId`,`cId`,`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `householder`
--

LOCK TABLES `householder` WRITE;
/*!40000 ALTER TABLE `householder` DISABLE KEYS */;
INSERT INTO `householder` VALUES (180,'Hie',183413538,1413516,141,5,'1','A'),(205,'Hoie',714918515,914104,458,13,'2','B'),(245,'Jim',914451643,6573255,673,13,'3','C'),(250,'Upeo',131985153,1051814,891,8,'1','A'),(345,'Frenda',975702265,9911541,922,2,'2','B'),(347,'Mark',911342902,1415164,245,7,'3','C'),(413,'Kor',913418755,9091351,777,6,'1','A'),(431,'Heo',174195711,9305153,444,4,'2','B'),(435,'Mammel',713421902,6254143,245,14,'3','C'),(451,'Gjioe',145451455,4013500,198,1,'1','C'),(452,'Gkgi',189584955,1135484,109,16,'2','B'),(456,'Koe',157115185,4960453,84,3,'3','A'),(463,'Simmon',913441686,3135622,457,9,'1','A'),(485,'Eili',145891551,1448144,149,9,'2','B'),(490,'Jilla',135195845,1515801,144,17,'3','C'),(561,'Kate',913415413,6835621,722,2,'1','A'),(621,'EHio',918349151,134134,108,5,'2','B'),(670,'Hpwe',134151458,134151,108,12,'3','C'),(701,'Jipie',148594855,4058051,101,1,'1','B'),(801,'Fewl',154515455,913401,145,1,'2','C'),(802,'Wpiw',134154541,813513,904,15,'1','A'),(803,'Hli',913514594,804151,141,8,'2','B'),(804,'Pklwe',153918459,914914,490,14,'3','C'),(809,'Peq',977141490,9013413,666,18,'3','A'),(891,'Flora',974781456,7891341,546,10,'1','A'),(901,'Peli',913151515,810414,450,45,'2','B'),(989,'Lion',913454151,5546782,345,2,'3','C');
/*!40000 ALTER TABLE `householder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `news` (
  `news_no` int(11) NOT NULL,
  `notice` varchar(400) DEFAULT NULL,
  `date` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`news_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (20171225,'請各位住戶自行抄寫電表','二零一七十二月二十五'),(20180109,'本週回收物品請放在一樓門口','二零一八一 月九'),(20181016,'本月底將繳交管委會費','二零一八十月十六');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `security` (
  `pId` int(10) DEFAULT NULL,
  `cId` int(10) DEFAULT NULL,
  `entryTime` datetime DEFAULT NULL,
  `departTime` datetime DEFAULT NULL,
  `dutyId` int(10) NOT NULL,
  `dutyPeriod` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waterconsumption`
--

DROP TABLE IF EXISTS `waterconsumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `waterconsumption` (
  `hid` int(10) NOT NULL,
  `record_Start_date` date DEFAULT NULL,
  `record_End_date` date DEFAULT NULL,
  `consumption` int(100) DEFAULT NULL,
  `floor` int(2) DEFAULT NULL,
  `zone` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waterconsumption`
--

LOCK TABLES `waterconsumption` WRITE;
/*!40000 ALTER TABLE `waterconsumption` DISABLE KEYS */;
INSERT INTO `waterconsumption` VALUES (180,NULL,NULL,NULL,5,'A'),(205,NULL,NULL,NULL,13,'B'),(245,NULL,NULL,NULL,13,'C'),(250,NULL,NULL,NULL,NULL,NULL),(345,NULL,NULL,NULL,NULL,NULL),(347,NULL,NULL,NULL,NULL,NULL),(413,NULL,NULL,NULL,NULL,NULL),(431,NULL,NULL,NULL,NULL,NULL),(435,NULL,NULL,NULL,NULL,NULL),(801,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `waterconsumption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-03 20:46:11
