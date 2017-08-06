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
-- Table structure for table `Labs`
--

DROP TABLE IF EXISTS `Labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Labs` (
  `mrn` int(11) NOT NULL,
  `enroll_start_dt` int(11) DEFAULT NULL,
  `enroll_end_dt` int(11) DEFAULT NULL,
  `ENROLL_STATUS` varchar(11) DEFAULT NULL,
  `order_proc_id` int(11) DEFAULT NULL,
  `line` int(11) DEFAULT NULL,
  `order_time` int(11) DEFAULT NULL,
  `result_time` int(11) DEFAULT NULL,
  `proc_start_time` int(11) DEFAULT NULL,
  `obsv_time` int(11) DEFAULT NULL,
  `panel_id` int(11) DEFAULT NULL,
  `panel_description` varchar(58) DEFAULT NULL,
  `component_id` int(11) DEFAULT NULL,
  `component_name` varchar(55) DEFAULT NULL,
  `ord_value` varchar(78) DEFAULT NULL,
  `ord_numerical_value` varchar(7) DEFAULT NULL,
  `reference_low` varchar(5) DEFAULT NULL,
  `reference_high` varchar(5) DEFAULT NULL,
  `reference_unit` varchar(14) DEFAULT NULL,
  `COMPONENT_COMMENT` varchar(56) DEFAULT NULL
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
