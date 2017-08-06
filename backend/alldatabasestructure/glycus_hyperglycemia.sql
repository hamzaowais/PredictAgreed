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
-- Table structure for table `hyperglycemia`
--

DROP TABLE IF EXISTS `hyperglycemia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hyperglycemia` (
  `patient_id` int(11) NOT NULL,
  `mrn` int(11) DEFAULT NULL,
  `consent_date` decimal(13,2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(3) DEFAULT NULL,
  `height` decimal(8,1) DEFAULT NULL,
  `weight` decimal(8,1) DEFAULT NULL,
  `bmi` decimal(8,1) DEFAULT NULL,
  `hx_diabetes` varchar(13) DEFAULT NULL,
  `icu` varchar(18) DEFAULT NULL,
  `reason_for_admission` varchar(67) DEFAULT NULL,
  `procedure_dx` varchar(58) DEFAULT NULL,
  `icu_admission` int(11) DEFAULT NULL,
  `icu_discharge` int(11) DEFAULT NULL,
  `los_icu` int(11) DEFAULT NULL,
  `hosp_admision` int(11) DEFAULT NULL,
  `hosp_discharge` int(11) DEFAULT NULL,
  `los_hospital` int(11) DEFAULT NULL,
  `device_placement_time` int(11) DEFAULT NULL,
  `removal_time` int(11) DEFAULT NULL,
  `coments` varchar(64) DEFAULT NULL,
  `notes` varchar(132) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
