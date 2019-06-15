-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: site_t
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB

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
-- Table structure for table `schoolInfEnPlanInf`
--

DROP TABLE IF EXISTS `schoolInfEnPlanInf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schoolInfEnPlanInf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `planNum` int(11) NOT NULL,
  `toudangNum` int(11) NOT NULL,
  `lowgrade` int(11) NOT NULL,
  `xiancha` int(11) NOT NULL,
  `lowlocal` int(11) NOT NULL,
  `schoolId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schoolInfEnPlanInf_schoolId_id_83694a4e_fk_schoolInf_schoolId` (`schoolId_id`),
  CONSTRAINT `schoolInfEnPlanInf_schoolId_id_83694a4e_fk_schoolInf_schoolId` FOREIGN KEY (`schoolId_id`) REFERENCES `schoolInf` (`schoolId`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolInfEnPlanInf`
--

LOCK TABLES `schoolInfEnPlanInf` WRITE;
/*!40000 ALTER TABLE `schoolInfEnPlanInf` DISABLE KEYS */;
INSERT INTO `schoolInfEnPlanInf` VALUES (220,2016,19,21,702,232,49,1001),(221,2017,20,20,699,225,48,1001),(222,2018,20,20,699,225,47,1001),(223,2016,32,33,701,231,59,1003),(224,2017,41,41,697,248,65,1003),(225,2018,41,41,696,222,68,1003),(226,2016,6,6,695,225,115,4001),(227,2017,6,7,691,242,101,4001),(228,2018,6,6,690,216,130,4001),(229,2016,14,14,693,223,151,4003),(230,2017,16,16,688,239,132,4003),(231,2018,19,19,685,211,250,4003),(232,2016,18,24,690,220,197,1063),(233,2017,20,24,685,236,183,1063),(234,2018,21,21,688,214,172,1063),(235,2016,5,5,687,217,243,4036),(236,2017,5,5,683,234,215,4036),(237,2018,5,5,685,211,226,4036),(238,2016,4,5,687,217,246,4039),(239,2017,3,3,683,234,221,4039),(240,2018,3,3,685,211,236,4039),(241,2016,14,14,685,215,295,1066),(242,2017,14,14,680,231,254,1066),(243,2018,14,14,680,206,355,1066),(244,2016,29,29,681,211,374,3202),(245,2017,33,33,675,266,374,3202),(246,2018,33,33,680,206,368,3202),(247,2016,62,62,683,213,388,4201),(248,2017,62,62,678,229,309,4201),(249,2018,62,62,680,206,384,4201),(250,2016,37,37,679,209,415,3001),(251,2017,40,40,673,224,416,3001),(252,2018,39,39,678,204,421,3001),(253,2016,24,24,680,210,387,1002),(254,2017,29,29,672,223,449,1002),(255,2018,28,28,678,204,426,1002),(256,2016,12,12,675,205,521,4015),(257,2017,12,12,670,221,447,4015),(258,2018,12,12,674,200,562,4015),(259,2016,111,118,668,198,742,1006),(260,2017,119,111,662,213,705,1006),(261,2018,96,96,672,198,643,1006),(262,2016,57,57,668,198,733,4002),(263,2017,58,65,660,211,791,4002),(264,2018,58,58,671,197,706,4002),(265,2016,2,2,659,189,1148,3081),(266,2017,2,2,661,212,743,3081),(267,2018,2,2,669,195,771,3081),(268,2016,42,46,663,193,984,1201),(269,2017,39,44,658,209,864,1201),(270,2018,40,42,665,191,962,1201),(271,2016,43,46,661,191,1051,1031),(272,2017,43,47,655,206,984,1031),(273,2018,41,43,664,190,1032,1031),(274,2016,23,25,656,186,1312,1024),(275,2017,23,23,648,199,1273,1024),(276,2018,23,25,663,189,1058,1024),(277,2016,16,16,660,190,1085,1032),(278,2017,15,15,653,204,1044,1032),(279,2018,16,16,662,188,1125,1032),(280,2016,67,67,651,181,1575,5001),(281,2017,70,68,649,200,1242,5001),(282,2018,71,69,662,188,1176,5001),(283,2016,49,49,657,187,1266,6001),(284,2017,49,49,644,195,1475,6001),(285,2018,45,45,659,185,1313,6001),(286,2016,81,81,639,169,2336,5002),(287,2017,81,85,636,187,1955,5002),(288,2018,84,84,656,182,1561,5002),(289,2016,46,46,590,120,7725,3457),(290,2017,48,48,580,131,7734,3457),(291,2018,48,48,609,135,6633,3457),(292,2016,132,142,595,125,7091,3004),(293,2017,144,152,586,137,6943,3004),(294,2018,148,147,608,134,6790,3004),(295,2016,35,35,587,117,8226,4022),(296,2017,30,30,583,134,7324,4022),(297,2018,30,30,608,134,6858,4022),(298,2016,6,6,598,128,6596,1034),(299,2017,6,6,584,135,7199,1034),(300,2018,6,6,606,132,7094,1034),(301,2016,1025,1098,593,123,7399,8004),(302,2017,1009,1020,573,124,8884,8004),(303,2018,1015,1038,605,131,7294,8004),(304,2016,66,64,595,125,7043,1018),(305,2017,66,66,578,129,8023,1018),(306,2018,64,65,604,130,7415,1018),(307,2016,9,9,594,124,7204,2028),(308,2017,10,10,583,134,7398,2028),(309,2018,9,9,598,124,8505,2028),(310,2016,75,83,591,121,7702,4004),(311,2017,72,76,578,129,8105,4004),(312,2018,73,77,603,129,7562,4004),(313,2016,131,128,587,117,8267,3005),(314,2017,130,123,577,128,8279,3005),(315,2018,124,128,602,128,7839,3005),(316,2016,56,59,592,122,7526,1047),(317,2017,57,57,553,104,12427,1047),(318,2018,57,57,599,125,8255,1047),(319,2016,208,222,585,115,8646,2201),(320,2017,212,232,562,113,10667,2201),(321,2018,211,211,599,125,8277,2201),(322,2016,132,125,585,115,8597,7202),(323,2017,131,127,573,124,8833,7202),(324,2018,127,127,599,125,8337,7202),(325,2016,69,69,591,121,7626,1008),(326,2017,79,81,565,116,10258,1008),(327,2018,79,82,599,125,8357,1008),(328,2016,15,15,571,101,11014,1065),(329,2017,16,16,572,123,9043,1065),(330,2018,16,16,599,125,8402,1065),(331,2016,35,38,578,108,9728,3456),(332,2017,35,36,570,121,9347,3456),(333,2018,33,34,598,124,8540,3456),(334,2016,19,19,592,122,7488,2018),(335,2017,19,19,567,118,9793,2018),(336,2018,19,19,597,123,8661,2018),(337,2016,31,38,584,114,8787,3002),(338,2017,31,38,571,122,9189,3002),(339,2018,31,37,597,123,8684,3002),(340,2016,79,80,580,110,9353,5009),(341,2017,79,84,568,119,9697,5009),(342,2018,81,82,596,122,8797,5009),(343,2016,33,33,592,122,7428,6002),(344,2017,34,34,575,126,8621,6002),(345,2018,35,35,595,121,8952,6002),(346,2016,10,11,563,93,12668,4018),(347,2017,13,13,566,117,9979,4018),(348,2018,11,11,595,121,9043,4018),(349,2016,12,12,597,127,6830,3019),(350,2017,22,22,557,108,11603,3019),(351,2018,22,22,595,121,9060,3019),(352,2016,28,28,563,93,12856,6022),(353,2017,28,29,560,111,11128,6022),(354,2018,29,29,594,120,9172,6022),(355,2016,4,4,585,115,8678,1606),(356,2017,4,4,573,124,8904,1606),(357,2018,5,5,594,120,9244,1606),(358,2016,19,19,584,114,8706,1409),(359,2017,17,17,573,124,8804,1409),(360,2018,17,17,591,117,9753,1409),(361,2016,28,28,590,120,7742,6037),(362,2017,28,28,557,108,11764,6037),(363,2018,28,28,593,119,9339,6037),(364,2016,13,13,585,115,8538,1028),(365,2017,13,13,566,117,9948,1028),(366,2018,13,13,592,118,9538,1028);
/*!40000 ALTER TABLE `schoolInfEnPlanInf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-19 12:58:53