-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: glycus
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
-- Table structure for table `glycus1`
--

DROP TABLE IF EXISTS `glycus1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glycus1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `timestamp` int(8) NOT NULL,
  `source` varchar(32) NOT NULL,
  `bg_reading` int(11) DEFAULT NULL,
  `used_in_calibration` varchar(10) DEFAULT NULL,
  `isig_value` decimal(7,3) DEFAULT NULL,
  `sensor_glucose` int(11) DEFAULT NULL,
  `sensor_event` varchar(50) DEFAULT NULL,
  `meal_size` varchar(30) DEFAULT NULL,
  `carb_amount` varchar(30) DEFAULT NULL,
  `insulin_type` varchar(30) DEFAULT NULL,
  `insulin_units` varchar(30) DEFAULT NULL,
  `medication` varchar(30) DEFAULT NULL,
  `exercise_level` varchar(30) DEFAULT NULL,
  `sleep_start` varchar(30) DEFAULT NULL,
  `sleep_wakeup` varchar(30) DEFAULT NULL,
  `notes` varchar(30) DEFAULT NULL,
  `excluded` varchar(5) DEFAULT NULL,
  `rawtype` varchar(30) DEFAULT NULL,
  `rawvalues` varchar(256) DEFAULT NULL,
  KEY `index2` (`id`,`patient_id`,`timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=1976 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-23  9:54:07
