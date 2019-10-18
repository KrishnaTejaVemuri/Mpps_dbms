-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: localhost    Database: dbms3
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `authoritiesvisit`
--

DROP TABLE IF EXISTS `authoritiesvisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authoritiesvisit` (
  `auid` int(11) NOT NULL AUTO_INCREMENT,
  `authname` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `dov` date NOT NULL,
  `remarks` varchar(255) DEFAULT '',
  PRIMARY KEY (`auid`),
  CONSTRAINT `authoritiesvisit_chk_1` CHECK ((`authname` <> _utf8mb4'')),
  CONSTRAINT `authoritiesvisit_chk_2` CHECK ((`designation` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authoritiesvisit`
--

LOCK TABLES `authoritiesvisit` WRITE;
/*!40000 ALTER TABLE `authoritiesvisit` DISABLE KEYS */;
INSERT INTO `authoritiesvisit` VALUES (1,'Krishna Teja','Deo','1999-11-05','some improvements needed on teacher plan'),(2,'Krishna Teja','Deo','1999-11-05',''),(3,'Krishna Teja','Deo','1999-11-05','Awesome'),(8,'Krishna Teja','Deo','1999-11-10','Awesome');
/*!40000 ALTER TABLE `authoritiesvisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashssa`
--

DROP TABLE IF EXISTS `cashssa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cashssa` (
  `sgid` int(11) NOT NULL AUTO_INCREMENT,
  `maintainancegrant` float NOT NULL,
  `month` varchar(255) NOT NULL,
  `schoolgrant` float NOT NULL,
  PRIMARY KEY (`sgid`),
  CONSTRAINT `cashssa_chk_1` CHECK ((`month` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashssa`
--

LOCK TABLES `cashssa` WRITE;
/*!40000 ALTER TABLE `cashssa` DISABLE KEYS */;
INSERT INTO `cashssa` VALUES (2,23,'july',34);
/*!40000 ALTER TABLE `cashssa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classmdmrel`
--

DROP TABLE IF EXISTS `classmdmrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classmdmrel` (
  `classid` int(11) NOT NULL,
  `mdmid` int(11) NOT NULL,
  PRIMARY KEY (`classid`,`mdmid`),
  KEY `mdmid` (`mdmid`),
  CONSTRAINT `classmdmrel_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `mppsclass` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `classmdmrel_ibfk_2` FOREIGN KEY (`mdmid`) REFERENCES `middaymeals` (`mdmid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classmdmrel`
--

LOCK TABLES `classmdmrel` WRITE;
/*!40000 ALTER TABLE `classmdmrel` DISABLE KEYS */;
INSERT INTO `classmdmrel` VALUES (1,6);
/*!40000 ALTER TABLE `classmdmrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examsubjectrel`
--

DROP TABLE IF EXISTS `examsubjectrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examsubjectrel` (
  `examid` int(11) NOT NULL,
  `subid` int(11) NOT NULL,
  PRIMARY KEY (`examid`,`subid`),
  KEY `subid` (`subid`),
  CONSTRAINT `examsubjectrel_ibfk_1` FOREIGN KEY (`examid`) REFERENCES `mppsexam` (`examid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `examsubjectrel_ibfk_2` FOREIGN KEY (`subid`) REFERENCES `mppssubject` (`subid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examsubjectrel`
--

LOCK TABLES `examsubjectrel` WRITE;
/*!40000 ALTER TABLE `examsubjectrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `examsubjectrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaurdian`
--

DROP TABLE IF EXISTS `gaurdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gaurdian` (
  `mppssid` int(11) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `mppsgid` int(11) NOT NULL,
  `relation` varchar(255) DEFAULT '',
  PRIMARY KEY (`mppssid`,`mppsgid`),
  CONSTRAINT `gaurdian_ibfk_1` FOREIGN KEY (`mppssid`) REFERENCES `mppsstudent` (`mppssid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gaurdian_chk_1` CHECK ((`gname` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaurdian`
--

LOCK TABLES `gaurdian` WRITE;
/*!40000 ALTER TABLE `gaurdian` DISABLE KEYS */;
/*!40000 ALTER TABLE `gaurdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `healthlog`
--

DROP TABLE IF EXISTS `healthlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `healthlog` (
  `checkupid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `problem` varchar(255) DEFAULT '',
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`checkupid`),
  KEY `fk1` (`sid`),
  CONSTRAINT `healthlog_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `mppsstudent` (`mppssid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `healthlog`
--

LOCK TABLES `healthlog` WRITE;
/*!40000 ALTER TABLE `healthlog` DISABLE KEYS */;
INSERT INTO `healthlog` VALUES (5,'2019-10-17','sadsd',124);
/*!40000 ALTER TABLE `healthlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messstock`
--

DROP TABLE IF EXISTS `messstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messstock` (
  `msid` int(11) NOT NULL AUTO_INCREMENT,
  `month` varchar(255) DEFAULT NULL,
  `noeggs` int(11) NOT NULL,
  `ricekgs` int(11) NOT NULL,
  PRIMARY KEY (`msid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messstock`
--

LOCK TABLES `messstock` WRITE;
/*!40000 ALTER TABLE `messstock` DISABLE KEYS */;
INSERT INTO `messstock` VALUES (2,'july',20,20);
/*!40000 ALTER TABLE `messstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `middaymeals`
--

DROP TABLE IF EXISTS `middaymeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `middaymeals` (
  `mdmid` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `msid` int(11) NOT NULL,
  `noofstudentsate` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`mdmid`),
  KEY `fk1` (`msid`),
  CONSTRAINT `middaymeals_ibfk_1` FOREIGN KEY (`msid`) REFERENCES `messstock` (`msid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `middaymeals`
--

LOCK TABLES `middaymeals` WRITE;
/*!40000 ALTER TABLE `middaymeals` DISABLE KEYS */;
INSERT INTO `middaymeals` VALUES (6,'2019-10-17',2,34,1);
/*!40000 ALTER TABLE `middaymeals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppsclass`
--

DROP TABLE IF EXISTS `mppsclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppsclass` (
  `classid` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  PRIMARY KEY (`classid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppsclass`
--

LOCK TABLES `mppsclass` WRITE;
/*!40000 ALTER TABLE `mppsclass` DISABLE KEYS */;
INSERT INTO `mppsclass` VALUES (1,24),(3,54);
/*!40000 ALTER TABLE `mppsclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppsexam`
--

DROP TABLE IF EXISTS `mppsexam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppsexam` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examname` varchar(255) DEFAULT NULL,
  `marksobtained` float NOT NULL,
  `maxmarks` float NOT NULL,
  `mppssid` int(11) NOT NULL,
  PRIMARY KEY (`examid`),
  KEY `fk1` (`mppssid`),
  CONSTRAINT `mppsexam_ibfk_1` FOREIGN KEY (`mppssid`) REFERENCES `mppsstudent` (`mppssid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppsexam_chk_1` CHECK ((`marksobtained` <= `maxmarks`))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppsexam`
--

LOCK TABLES `mppsexam` WRITE;
/*!40000 ALTER TABLE `mppsexam` DISABLE KEYS */;
/*!40000 ALTER TABLE `mppsexam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppsstaff`
--

DROP TABLE IF EXISTS `mppsstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppsstaff` (
  `staffid` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT '',
  `staffphone` varchar(255) DEFAULT '',
  `stname` varchar(255) NOT NULL,
  `work` varchar(255) NOT NULL,
  PRIMARY KEY (`staffid`),
  CONSTRAINT `mppsstaff_chk_1` CHECK ((`stname` <> _utf8mb4'')),
  CONSTRAINT `mppsstaff_chk_2` CHECK ((`work` <> _utf8mb4'')),
  CONSTRAINT `mppsstaff_chk_3` CHECK ((length(`staffphone`) = 10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppsstaff`
--

LOCK TABLES `mppsstaff` WRITE;
/*!40000 ALTER TABLE `mppsstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `mppsstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppsstudent`
--

DROP TABLE IF EXISTS `mppsstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppsstudent` (
  `mppssid` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `caste` varchar(255) DEFAULT '',
  `classid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT '',
  `lastname` varchar(255) DEFAULT '',
  `schoolid` int(11) NOT NULL,
  PRIMARY KEY (`mppssid`),
  KEY `fk1` (`classid`),
  KEY `fk2` (`schoolid`),
  CONSTRAINT `mppsstudent_ibfk_1` FOREIGN KEY (`classid`) REFERENCES `mppsclass` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppsstudent_ibfk_2` FOREIGN KEY (`schoolid`) REFERENCES `prevschool` (`schoolid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppsstudent_chk_1` CHECK ((`age` > 0)),
  CONSTRAINT `mppsstudent_chk_2` CHECK ((`firstname` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppsstudent`
--

LOCK TABLES `mppsstudent` WRITE;
/*!40000 ALTER TABLE `mppsstudent` DISABLE KEYS */;
INSERT INTO `mppsstudent` VALUES (124,50,'Bc',1,'Acni','male','sama',3);
/*!40000 ALTER TABLE `mppsstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppssubject`
--

DROP TABLE IF EXISTS `mppssubject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppssubject` (
  `subid` int(11) NOT NULL AUTO_INCREMENT,
  `classid` int(11) NOT NULL,
  `mppstid` int(11) NOT NULL,
  `subjectname` varchar(255) NOT NULL,
  PRIMARY KEY (`subid`),
  KEY `fk1` (`mppstid`),
  KEY `fk2` (`classid`),
  CONSTRAINT `fk2` FOREIGN KEY (`classid`) REFERENCES `mppsclass` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppssubject_ibfk_1` FOREIGN KEY (`mppstid`) REFERENCES `mppsteacher` (`mppstid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppssubject_chk_1` CHECK ((`subjectname` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppssubject`
--

LOCK TABLES `mppssubject` WRITE;
/*!40000 ALTER TABLE `mppssubject` DISABLE KEYS */;
/*!40000 ALTER TABLE `mppssubject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mppsteacher`
--

DROP TABLE IF EXISTS `mppsteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mppsteacher` (
  `mppstid` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `caste` varchar(255) DEFAULT '',
  `cat` varchar(255) NOT NULL,
  `edq` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT '',
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mppstid`),
  KEY `fk1` (`userid`),
  CONSTRAINT `fk1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mppsteacher_chk_1` CHECK ((`firstname` <> _utf8mb4'')),
  CONSTRAINT `mppsteacher_chk_2` CHECK ((`cat` <> _utf8mb4'')),
  CONSTRAINT `mppsteacher_chk_3` CHECK ((`edq` <> _utf8mb4''))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mppsteacher`
--

LOCK TABLES `mppsteacher` WRITE;
/*!40000 ALTER TABLE `mppsteacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `mppsteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prevschool`
--

DROP TABLE IF EXISTS `prevschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prevschool` (
  `schoolid` int(11) NOT NULL AUTO_INCREMENT,
  `contactno` varchar(255) DEFAULT NULL,
  `schoolname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schoolid`),
  CONSTRAINT `prevschool_chk_1` CHECK ((length(`contactno`) = 10))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prevschool`
--

LOCK TABLES `prevschool` WRITE;
/*!40000 ALTER TABLE `prevschool` DISABLE KEYS */;
INSERT INTO `prevschool` VALUES (3,'9848567823','kkrs'),(4,'9826496498','dav school');
/*!40000 ALTER TABLE `prevschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scholarship`
--

DROP TABLE IF EXISTS `scholarship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scholarship` (
  `aplid` int(11) NOT NULL AUTO_INCREMENT,
  `appliedamount` float NOT NULL,
  `grantamount` float NOT NULL,
  `mppssid` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`aplid`),
  KEY `fk1` (`mppssid`),
  CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`mppssid`) REFERENCES `mppsstudent` (`mppssid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scholarship_chk_1` CHECK ((`status` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scholarship`
--

LOCK TABLES `scholarship` WRITE;
/*!40000 ALTER TABLE `scholarship` DISABLE KEYS */;
/*!40000 ALTER TABLE `scholarship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherleave`
--

DROP TABLE IF EXISTS `teacherleave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherleave` (
  `tlid` int(11) NOT NULL AUTO_INCREMENT,
  `fromdate` date NOT NULL,
  `tid` int(11) NOT NULL,
  `todate` date NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`tlid`),
  KEY `fk1` (`tid`),
  CONSTRAINT `teacherleave_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `mppsteacher` (`mppstid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacherleave_chk_1` CHECK ((`type` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherleave`
--

LOCK TABLES `teacherleave` WRITE;
/*!40000 ALTER TABLE `teacherleave` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacherleave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `role` varchar(255) DEFAULT 'ROLE_DEFAULT',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  CONSTRAINT `user_chk_1` CHECK ((`username` <> _utf8mb4'')),
  CONSTRAINT `user_chk_2` CHECK ((`password` <> _utf8mb4''))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ADMIN','$2a$12$xlD5p/pnV25Uw4dbjYKx.uvUSFB7MvbCqm8HNqhErOEGoMNQdKYdG',1,'ROLE_EMPLOYEE',4),('krishna','$2a$12$2lpBGQ1cxlUZie6vwNRKSOOEBo/KDuboa/AARYkJ8lGSEXDlJSSPu',1,'ROLE_ADMIN',5);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-18 21:35:17
