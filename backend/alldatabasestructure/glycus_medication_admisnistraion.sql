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
-- Table structure for table `medication_admisnistraion`
--

DROP TABLE IF EXISTS `medication_admisnistraion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medication_admisnistraion` (
  `mrn` int(11) DEFAULT NULL,
  `enroll_start_dr` int(11) DEFAULT NULL,
  `enroll_end_dr` int(11) DEFAULT NULL,
  `enroll_status` varchar(20) DEFAULT NULL,
  `ordering_date` int(11) DEFAULT NULL,
  `order_med_id` int(11) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `mar_action_time` int(11) DEFAULT NULL,
  `mar_action` varchar(28) DEFAULT NULL,
  `medication_id` int(11) DEFAULT NULL,
  `medication` varchar(120) DEFAULT NULL,
  `generic` varchar(120) DEFAULT NULL,
  `mar_result` varchar(60) DEFAULT NULL,
  `med_route` varchar(30) DEFAULT NULL,
  `med_site` varchar(50) DEFAULT NULL,
  `dosage` varchar(24) DEFAULT NULL,
  `dosage_unit` varchar(24) DEFAULT NULL,
  `infusion_rate` varchar(24) DEFAULT NULL,
  `infusion_units` varchar(24) DEFAULT NULL,
  `mar_duration` varchar(24) DEFAULT NULL,
  `duration_units` varchar(24) DEFAULT NULL
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

-- Dump completed on 2017-06-23  9:54:06
