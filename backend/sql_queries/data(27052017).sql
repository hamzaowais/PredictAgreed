-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: iEXPLORECC
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `ADMISSIONS`
--

DROP TABLE IF EXISTS `ADMISSIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADMISSIONS` (
  `ROW_ID` smallint(5) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned NOT NULL,
  `ADMITTIME` datetime NOT NULL,
  `DISCHTIME` datetime DEFAULT NULL,
  `DEATHTIME` datetime DEFAULT NULL,
  `ADMISSION_TYPE` varchar(255) DEFAULT NULL,
  `ADMISSION_LOCATION` varchar(255) DEFAULT NULL,
  `DISCHARGE_LOCATION` varchar(255) DEFAULT NULL,
  `INSURANCE` varchar(255) DEFAULT NULL,
  `LANGUAGE` varchar(255) DEFAULT NULL,
  `RELIGION` varchar(255) DEFAULT NULL,
  `MARITAL_STATUS` varchar(255) DEFAULT NULL,
  `ETHNICITY` varchar(255) DEFAULT NULL,
  `EDREGTIME` datetime DEFAULT NULL,
  `EDOUTTIME` datetime DEFAULT NULL,
  `DIAGNOSIS` text,
  `HOSPITAL_EXPIRE_FLAG` tinyint(3) unsigned DEFAULT NULL,
  `HAS_CHARTEVENTS_DATA` tinyint(3) unsigned DEFAULT NULL,
  UNIQUE KEY `ADMISSIONS_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `ADMISSIONS_HADM_ID` (`HADM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CHARTEVENTS`
--

DROP TABLE IF EXISTS `CHARTEVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHARTEVENTS` (
  `ROW_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned DEFAULT NULL,
  `ICUSTAY_ID` mediumint(8) unsigned DEFAULT NULL,
  `ITEMID` mediumint(8) unsigned NOT NULL,
  `CHARTTIME` datetime NOT NULL,
  `STORETIME` datetime DEFAULT NULL,
  `CGID` smallint(5) unsigned DEFAULT NULL,
  `VALUE` text,
  `VALUENUM` float DEFAULT NULL,
  `VALUEUOM` varchar(255) DEFAULT NULL,
  `WARNING` tinyint(3) unsigned DEFAULT NULL,
  `ERROR` tinyint(3) unsigned DEFAULT NULL,
  `RESULTSTATUS` varchar(255) DEFAULT NULL,
  `STOPPED` varchar(255) DEFAULT NULL,
  UNIQUE KEY `CHARTEVENTS_ROW_ID` (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `D_ITEMS`
--

DROP TABLE IF EXISTS `D_ITEMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `D_ITEMS` (
  `ROW_ID` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ITEMID` mediumint(8) unsigned NOT NULL,
  `LABEL` text,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  `DBSOURCE` varchar(255) DEFAULT NULL,
  `LINKSTO` varchar(255) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `UNITNAME` varchar(255) DEFAULT NULL,
  `PARAM_TYPE` varchar(255) DEFAULT NULL,
  `CONCEPTID` varchar(255) DEFAULT NULL,
  UNIQUE KEY `D_ITEMS_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `D_ITEMS_ITEMID` (`ITEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ICUSTAYS`
--

DROP TABLE IF EXISTS `ICUSTAYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICUSTAYS` (
  `ROW_ID` smallint(5) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `HADM_ID` mediumint(8) unsigned NOT NULL,
  `ICUSTAY_ID` mediumint(8) unsigned NOT NULL,
  `DBSOURCE` varchar(255) DEFAULT NULL,
  `FIRST_CAREUNIT` varchar(255) DEFAULT NULL,
  `LAST_CAREUNIT` varchar(255) DEFAULT NULL,
  `FIRST_WARDID` tinyint(3) unsigned DEFAULT NULL,
  `LAST_WARDID` tinyint(3) unsigned DEFAULT NULL,
  `INTIME` datetime NOT NULL,
  `OUTTIME` datetime DEFAULT NULL,
  `LOS` float DEFAULT NULL,
  UNIQUE KEY `ICUSTAYS_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `ICUSTAYS_ICUSTAY_ID` (`ICUSTAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PATIENTS`
--

DROP TABLE IF EXISTS `PATIENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PATIENTS` (
  `ROW_ID` smallint(5) unsigned NOT NULL,
  `SUBJECT_ID` mediumint(8) unsigned NOT NULL,
  `GENDER` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `DOD` datetime DEFAULT NULL,
  `DOD_HOSP` datetime DEFAULT NULL,
  `DOD_SSN` datetime DEFAULT NULL,
  `EXPIRE_FLAG` tinyint(3) unsigned NOT NULL,
  UNIQUE KEY `PATIENTS_ROW_ID` (`ROW_ID`),
  UNIQUE KEY `PATIENTS_SUBJECT_ID` (`SUBJECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `REPORT`
--

DROP TABLE IF EXISTS `REPORT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REPORT` (
  `REPORT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARENT_ID` varchar(30) DEFAULT NULL,
  `SQL_QUERY` text,
  `REPORT_PARAM` text,
  `DATABASE_NAME` varchar(30) DEFAULT NULL,
  `VIEWS` int(11) NOT NULL DEFAULT '0',
  `CREATED_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`REPORT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=316 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-27 20:37:27
