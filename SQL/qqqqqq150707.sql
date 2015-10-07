CREATE DATABASE  IF NOT EXISTS `jobapp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jobapp`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: PC30116.catalystsolves.com    Database: jobapp
-- ------------------------------------------------------
-- Server version	5.7.6-m16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applicationstate`
--

DROP TABLE IF EXISTS `applicationstate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicationstate` (
  `applicationStateID` int(11) NOT NULL AUTO_INCREMENT,
  `applicationStateName` varchar(45) NOT NULL,
  PRIMARY KEY (`applicationStateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicationstate`
--

LOCK TABLES `applicationstate` WRITE;
/*!40000 ALTER TABLE `applicationstate` DISABLE KEYS */;
INSERT INTO `applicationstate` VALUES (1,'APPLIED'),(2,'INTERVIEWED'),(3,'HIRED'),(4,'NOT QUALIFIED');
/*!40000 ALTER TABLE `applicationstate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `educationID` int(11) NOT NULL AUTO_INCREMENT,
  `educationName` varchar(45) NOT NULL,
  PRIMARY KEY (`educationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'PHD'),(2,'Masters'),(3,'Associate'),(4,'Bachelor '),(5,'GED');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `jobID` int(11) NOT NULL AUTO_INCREMENT,
  `jobTitle` varchar(45) NOT NULL,
  `jobDescription` varchar(5000) NOT NULL,
  `jobCount` int(11) NOT NULL,
  PRIMARY KEY (`jobID`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (4,'Dev4','testLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',0),(34,'newJob','my job',12),(35,'somjob','save some resources',12),(36,'somjob','save some resources',12),(47,'toomany','yet another f job',99),(51,'newJob','my job',12);
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skill`
--

DROP TABLE IF EXISTS `job_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_skill` (
  `jobSkillID` int(11) NOT NULL AUTO_INCREMENT,
  `jobID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `jobSkillRate` int(11) NOT NULL,
  PRIMARY KEY (`jobSkillID`),
  KEY `jobSkill_skill_idx` (`skillID`),
  KEY `jobSkill_job` (`jobID`),
  CONSTRAINT `jobSkill_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `jobSkill_skill` FOREIGN KEY (`skillID`) REFERENCES `skill` (`skillID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skill`
--

LOCK TABLES `job_skill` WRITE;
/*!40000 ALTER TABLE `job_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profileID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `stateID` int(11) NOT NULL,
  `zip` int(5) NOT NULL,
  `educationID` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` int(10) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`profileID`),
  KEY `profile_education_idx` (`educationID`),
  KEY `profile_state_idx` (`stateID`),
  KEY `profile_user_idx` (`userID`),
  CONSTRAINT `profile_education` FOREIGN KEY (`educationID`) REFERENCES `education` (`educationID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `profile_state` FOREIGN KEY (`stateID`) REFERENCES `state` (`stateID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `profile_user` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (2,2,'employer','test','1991-03-21','123 Spring Street',1,21113,1,'abc@abc.com',1234567890,'here is a description'),(3,3,'Joseph','Smith','1999-01-01','24257 Rolling Hill Circle',3,24547,5,'jsmith@jsmith.com',1234567890,'Here is another description as follows: a b c d e f g h i j k l m n o p q r s t u v w x y z.');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(45) NOT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill` (
  `skillID` int(11) NOT NULL AUTO_INCREMENT,
  `skillName` varchar(45) NOT NULL,
  PRIMARY KEY (`skillID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1,'java'),(2,'javascript'),(3,'HTML'),(4,'CSS'),(5,'Hibernate'),(6,'Spring Framework'),(7,'Project Manager'),(8,'TA');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `stateID` int(11) NOT NULL AUTO_INCREMENT,
  `stateName` varchar(45) NOT NULL,
  `stateInitials` varchar(2) NOT NULL,
  PRIMARY KEY (`stateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Maryland','MD'),(2,'New York','NY'),(3,'New Jersey','NJ'),(4,'Virginia','VA');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `roleID` int(11) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName_UNIQUE` (`userName`),
  KEY `user_role_idx` (`roleID`),
  CONSTRAINT `user_role` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'emp','123456',2,1),(3,'user','123456',1,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_job`
--

DROP TABLE IF EXISTS `user_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_job` (
  `userJobID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `jobID` int(11) NOT NULL,
  `applicationStateID` int(11) NOT NULL,
  PRIMARY KEY (`userJobID`),
  KEY `userJob_job_idx` (`jobID`),
  KEY `userJob_user` (`userID`),
  KEY `userJob_applicationState_idx` (`applicationStateID`),
  CONSTRAINT `userJob_applicationState` FOREIGN KEY (`applicationStateID`) REFERENCES `applicationstate` (`applicationStateID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userJob_job` FOREIGN KEY (`jobID`) REFERENCES `job` (`jobID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userJob_user` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_job`
--

LOCK TABLES `user_job` WRITE;
/*!40000 ALTER TABLE `user_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skill`
--

DROP TABLE IF EXISTS `user_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skill` (
  `userSkillID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `skillID` int(11) NOT NULL,
  `userSkillRate` int(11) NOT NULL,
  PRIMARY KEY (`userSkillID`),
  KEY `userSkill_skill_idx` (`skillID`),
  KEY `userSkill_user` (`userID`),
  CONSTRAINT `userSkill_skill` FOREIGN KEY (`skillID`) REFERENCES `skill` (`skillID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `userSkill_user` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skill`
--

LOCK TABLES `user_skill` WRITE;
/*!40000 ALTER TABLE `user_skill` DISABLE KEYS */;
INSERT INTO `user_skill` VALUES (4,2,4,1),(5,2,3,2),(6,2,2,3),(7,3,1,1),(8,3,2,2),(9,3,3,3);
/*!40000 ALTER TABLE `user_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-07 15:59:07
