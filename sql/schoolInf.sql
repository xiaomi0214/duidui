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
-- Table structure for table `schoolInf`
--

DROP TABLE IF EXISTS `schoolInf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schoolInf` (
  `schoolId` int(11) NOT NULL,
  `schoolName` varchar(40) NOT NULL,
  `schoolSort` int(11) NOT NULL,
  `schoolHead` varchar(40) NOT NULL,
  `school_local` varchar(40) NOT NULL,
  `schooltype` varchar(15) NOT NULL,
  `professionAnPai` varchar(15) NOT NULL,
  PRIMARY KEY (`schoolId`),
  UNIQUE KEY `schoolName` (`schoolName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolInf`
--

LOCK TABLES `schoolInf` WRITE;
/*!40000 ALTER TABLE `schoolInf` DISABLE KEYS */;
INSERT INTO `schoolInf` VALUES (43,'空军军医大学',0,'解放军空军','西安市','211/X','分数优先'),(1001,'北京大学',3,'教育部','北京市','985/A','极差5分内'),(1002,'中国人民大学',19,'教育部','北京市','985/A','级差1分'),(1003,'清华大学',1,'教育部','北京市','985/A','分数优先'),(1004,'北京交通大学',56,'教育部','北京市','211/X','2-1-0-0-0'),(1006,'北京航空航天大学',25,'工信部','北京市','985/A','分数优先'),(1007,'北京理工大学',30,'工信部','北京市','985/A','分数优先'),(1008,'北京科技大学',49,'教育部','北京市','211/X','1-1-0-0-0'),(1009,'北方工业大学',299,'北京市','北京市','省重点/X','分数优先'),(1010,'北京化工大学',51,'教育部','北京市','211/X','1-0-0-0-0'),(1011,'北京工商大学',221,'北京市','北京市','省重点','分数优先'),(1013,'北京邮电大学',77,'教育部','北京市','211/X','1-1-0-0-0'),(1014,'北京印刷学院',405,'北京市','北京市','','分数优先'),(1015,'北京建筑大学',346,'北京市','北京市','','分数优先'),(1018,'中国农业大学',34,'教育部','北京市','985/A','分数优先'),(1020,'北京林业大学 ',89,'教育部','北京市','211/X','3-1-0-0-0'),(1022,'首都医科大学',72,'北京市','北京市','省重点','分数优先'),(1023,'北京中医药大学',186,'教育部','北京市','211/X','分数优先'),(1024,'北京师范大学',23,'教育部','北京市','985/A','分数优先'),(1027,'北京外国语大学',173,'教育部','北京市','211/X','分数优先'),(1028,'北京第二外国语学院',324,'北京市','北京市','省重点','分数优先'),(1030,'中国传媒大学',105,'教育部','北京市','211/X','2-2-0-0-0'),(1031,'中央财经大学',114,'教育部','北京市','211/X','1-1-1-1-1'),(1032,'对外经济贸易大学',103,'教育部','北京市','211/X','分数优先'),(1034,'首都经济贸易大学',214,'北京市','北京市','省重点','分数优先'),(1038,'北京体育大学',261,'国家体育总局','北京市','211/X','分数优先'),(1045,'中央民族大学',148,'国家民委','北京市','985/A','分数优先'),(1046,'中国政法大学',123,'教育部','北京市','211/X','分数优先'),(1047,'华北电力大学（北京）',60,'教育部','北京市','211/X','分数优先'),(1048,'北京信息科技大学',365,'北京市','北京市','','分数优先'),(1050,'中国矿业大学（北京）',168,'教育部','北京市','211/X','分数优先'),(1051,'中国石油大学(北京）',112,'教育部','北京市','211/X','分数优先'),(1052,'中国地质大学（北京）',118,'教育部','北京市','211/X','分数优先'),(1063,'北京大学医学部',3,'教育部','北京市','985/A','极差5分内'),(1065,'北京邮电大学（宏福校区）',77,'教育部','北京市','211/X','1-1-0-0-0'),(1066,'中国科学院大学',0,'中国科学院','北京市','X','分数优先'),(1070,'北京交通大学（威海校区）',56,'教育部','威海市','211/X','2-1-0-0-0'),(1071,'中国社会科学院大学',0,'中国社科院','北京市','','分数优先'),(1201,'南开大学',21,'教育部','天津市','985/A','分数优先'),(1202,'天津大学',20,'教育部','天津市','985/A','分数优先'),(1204,'天津工业大学',166,'天津市','天津市','省重点/X','分数优先'),(1205,'中国民航大学',307,'交通运输部','天津市','','分数优先'),(1206,'天津理工大学',201,'天津市','天津市','省重点','分数优先'),(1208,'天津医科大学',124,'天津市','天津市','211/X','分数优先'),(1209,'天津中医药大学',269,'天津市','天津市','省重点/X','分数优先'),(1212,'天津外国语大学',360,'天津市','天津市','省重点','分数优先'),(1214,'天津财经大学',263,'天津市','天津市','省重点','分数优先'),(1218,'河北工业大学',167,'河北省','天津市','211/X','分数优先'),(1404,'华北电力大学（保定）',60,'教育部','保定市','211/X','分数优先'),(1409,'河北医科大学',199,'河北省','石家庄市','小211','分数优先'),(1421,'石家庄铁道大学',322,'河北省','石家庄市','小211','分数优先'),(1422,'燕山大学',84,'河北省','秦皇岛市','小211','分数优先'),(1450,'东北大学秦皇岛分校',50,'教育部','秦皇岛市','985/B','分数优先'),(1601,'山西大学',100,'山西省','太原市','小211','分数优先'),(1603,'中北大学',156,'山西省','太原市','小211','分数优先'),(1604,'太原理工大学',110,'山西省','太原市','211/X','分数优先'),(1606,'山西医科大学',272,'山西省','太原市','省重点','分数优先'),(1615,'山西财经大学',313,'山西省','太原市','小211','分数优先'),(1801,'内蒙古大学',189,'内蒙古','呼和浩特市','211/X','分数优先'),(2001,'辽宁大学',159,'辽宁省','沈阳市','211/X','分数优先'),(2002,'大连理工大学',27,'教育部','大连市','985/A','分数优先'),(2003,'沈阳工业大学',290,'辽宁省','沈阳市','','分数优先'),(2006,'东北大学',50,'教育部','沈阳市','985/B','分数优先'),(2008,'辽宁工程技术大学',178,'辽宁省','阜新市','小211','分数优先'),(2011,'大连交通大学',379,'辽宁省','大连市','','分数优先'),(2012,'大连海事大学',153,'交通运输部','大连市','211/X','分数优先'),(2014,'沈阳建筑大学',351,'辽宁省','沈阳市','小211','分数优先'),(2016,'沈阳农业大学',240,'辽宁省','沈阳市','小211','分数优先'),(2018,'中国医科大学',90,'辽宁省','沈阳市','省重点','分数优先'),(2020,'大连医科大学',217,'辽宁省','大连市','小211','分数优先'),(2021,'沈阳药科大学',205,'辽宁省','沈阳市','省重点','分数优先'),(2027,'大连外国语大学',318,'辽宁省','大连市','','分数优先'),(2028,'东北财经大学',128,'辽宁省','大连市','省重点','分数优先'),(2066,'大连理工大学（盘锦校区）',27,'教育部','盘锦市','985/A','分数优先'),(2201,'吉林大学',10,'教育部','长春市','985/A','分数优先'),(2202,'延边大学',211,'吉林省','延吉市','211/X','专业优先'),(2203,'长春理工大学',209,'吉林省','长春市','小211','分数优先'),(2204,'东北电力大学',319,'吉林省','吉林市','小211','3-2-1-0-0'),(2210,'东北师范大学',59,'教育部','长春市','211/X','5-3-0-0-0'),(2401,'黑龙江大学',108,'黑龙江省','哈尔滨市','小211','分数优先'),(2402,'哈尔滨工业大学',13,'工信部','哈尔滨市','985/A','分数优先'),(2403,'哈尔滨理工大学',172,'黑龙江省','哈尔滨市','小211','分数优先'),(2404,'哈尔滨工程大学',48,'工信部','哈尔滨市','211/X','分数优先'),(2406,'东北石油大学',254,'黑龙江省','大庆市','省重点','分数优先'),(2409,'东北农业大学',144,'黑龙江省','哈尔滨市','211/X','分数优先'),(2410,'东北林业大学',120,'教育部','哈尔滨市','211/X','分数优先'),(2411,'哈尔滨医科大学',109,'黑龙江省','哈尔滨市','小211','分数优先'),(2412,'黑龙江中医药大学',259,'黑龙江省','哈尔滨市','省重点','1-1-0-0-0'),(2420,'哈尔滨商业大学',279,'黑龙江省','哈尔滨市','小211','分数优先'),(3001,'南京大学',6,'教育部','南京市','985/A','分数优先'),(3002,'苏州大学',24,'江苏省','苏州市','211/X','分数优先'),(3003,'东南大学',14,'教育部','南京市','985/A','分数优先'),(3004,'南京航空航天大学',38,'工信部','南京市','211/X','分数优先'),(3005,'南京理工大学',45,'工信部','南京市','211/X','分数优先'),(3006,'江苏科技大学',198,'江苏省','镇江市','省重点','1-1-0-0-0'),(3007,'中国矿业大学',63,'教育部','徐州市','211/X','分数优先'),(3008,'南京工业大学',76,'江苏省','南京市','省重点','级差5分内'),(3009,'常州大学',184,'江苏省','常州市','省重点','分数优先'),(3010,'南京邮电大学',96,'江苏省','南京市','省重点/X','专业优先'),(3011,'河海大学',58,'教育部','南京市','211/X','级差2分内'),(3012,'江南大学',47,'教育部 ','无锡市','211/X','分数优先'),(3013,'南京林业大学',145,'江苏省','南京市','省重点/X','分数优先'),(3014,'江苏大学',39,'江苏省','镇江市','省重点','分数优先'),(3015,'南京信息工程大学',88,'江苏省','南京市','省重点/X','分数优先'),(3018,'南京农业大学',43,'教育部','南京市','211/X','2-1-0-0-0'),(3019,'南京医科大学',66,'江苏省','南京市','省重点','2-1-1-1-1'),(3022,'中国药科大学',104,'教育部','南京市','211/X','分数优先'),(3023,'南京师范大学',54,'江苏省','南京市','211/X','分数优先'),(3037,'扬州大学',68,'江苏省','扬州市','省重点','分数优先'),(3040,'南京审计大学',273,'江苏省','南京市','','分数优先'),(3070,'西交利物浦大学',0,'江苏教育厅','苏州市','中外合作','分数优先'),(3081,'中国人民大学(苏州校区)',19,'教育部','苏州市','985/A','1-1-1-1-1'),(3201,'安徽大学',98,'安徽省','合肥市','211/X','分数优先'),(3202,'中国科学技术大学',16,'中国科学院','合肥市','985/A','分数优先'),(3203,'合肥工业大学',69,'  教育部','合肥市','211/X','分数优先'),(3204,'安徽工业大学',202,'安徽省','马鞍山市','小211','分数优先'),(3205,'安徽理工大学',242,'安徽省','淮南市','小211','分数优先'),(3219,'安徽财经大学',250,'安徽省','','小211','分数优先'),(3242,'合肥工业大学（宣城校区）',69,'教育部','宣城市','211/X','分数优先'),(3401,'山东大学',12,'教育部','济南市','985/A','2-1-1-0-0'),(3402,'中国海洋大学',64,'教育部','青岛市','985/A','专业优先'),(3403,'山东科技大学',137,'山东省','青岛市','省重点','3-2-0-0-0'),(3404,'中国石油大学(华东）',79,'教育部','青岛市','211/X','3-2-0-0-0'),(3405,'青岛科技大学',154,'山东省','青岛市','省重点','分数优先'),(3406,'济南大学',115,'山东省','济南市','省重点','分数优先'),(3418,'山东师范大学',131,'山东省','济南市','省重点','分数优先'),(3434,'青岛大学',94,'山东省','青岛市','省重点','分数优先'),(3456,'山东大学威海分校',12,'教育部','威海市','985/A','2-1-1-0-0'),(3457,'哈尔滨工业大学（威海）',13,'工信部','威海市','985/A','分数优先'),(4001,'复旦大学',5,'教育部','上海市','985/A','分数优先'),(4002,'同济大学',18,'教育部','上海市','985/A','分数优先'),(4003,'上海交通大学',4,'教育部','上海市','985/A','分数优先'),(4004,'华东理工大学',35,'教育部','上海市','211/X','分数优先'),(4005,'上海理工大学',80,'上海市','上海市','省重点','分数优先'),(4007,'东华大学',74,'教育部','上海市','211/X','分数优先'),(4012,'华东师范大学',33,'教育部','上海市','985/A','2-1-1-0-0'),(4014,'上海外国语大学',170,'教育部','上海市','211/X','分数优先'),(4015,'上海财经大学',91,'教育部','上海市','211/X','3-3-1-1-1'),(4016,'上海对外经贸大学',305,'上海市','上海市','省重点','分数优先'),(4018,'华东政法大学',162,'上海市','上海市','省重点','2-1-1-0-0'),(4022,'上海大学',40,'上海市','上海市','211/X','分数优先'),(4024,'上海立信会计金融学院',330,'上海市','上海市','','分数优先'),(4028,'上海政法学院',460,'上海市','上海市','','分数优先'),(4036,'上海交通大学医学院',4,'教育部','上海市','985/A','分数优先'),(4039,'复旦大学医学部',5,'教育部','上海市','985/A','1-1-1-0-0'),(4201,'浙江大学',2,'教育部','杭州市','985/A','分数优先'),(4202,'杭州电子科技大学',142,'浙江省','杭州市','省重点','1-1-1-1-1'),(4203,'浙江工业大学',62,'浙江省','杭州市','省重点','分数优先'),(4204,'浙江理工大学',113,'浙江省','杭州市','','分数优先'),(4208,'浙江中医药大学',249,'浙江省','杭州市','','分数优先'),(4209,'浙江师范大学',78,'浙江省','金华市','省重点','分数优先'),(4219,'中国计量大学',196,'浙江省','杭州市','','分数优先'),(4225,'宁波大学',86,'浙江省','宁波市','省重点/X','分数优先'),(4251,'宁波诺丁汉大学',0,'浙江教育厅','宁波市','中外合作','分数优先'),(4401,'南昌大学',67,'江西省','南昌市','211/X','分数优先'),(4402,'华东交通大学',255,'江西省','南昌市','小211','分数优先'),(4403,'东华理工大学',311,'江西省','抚州市','','分数优先'),(4405,'江西理工大学',287,'江西省','赣州市','省重点','专业优先'),(4414,'江西财经大学',136,'江西省','南昌市','小211','3-1-0-0-0'),(4601,'厦门大学',26,'教育部','厦门市','985/A','2-1-1-1-0'),(4602,'华侨大学',125,'国务院侨办','泉州市','省重点','分数优先'),(4603,'福州大学',61,'福建省','福州市','211/X','一专再分'),(4605,'福建农林大学',150,'福建省','福州市','省重点','专业优先'),(5001,'武汉大学',7,'教育部','武汉市','985/A','分数优先'),(5002,'华中科技大学',8,'教育部','武汉市','985/A','分数优先'),(5003,'武汉科技大学',155,'湖北省','武汉市','小211','分数优先'),(5004,'长江大学',203,'湖北省','荆州市','小211','分数优先'),(5005,'武汉工程大学',257,'湖北省','武汉市','小211','专业优先'),(5006,'中国地质大学（武汉）',82,'教育部','武汉市','211/X','专业优先'),(5009,'武汉理工大学',42,'教育部','武汉市','211/X','分数优先'),(5010,'湖北工业大学',262,'湖北省','武汉市','小211','分数优先'),(5011,'华中农业大学',55,'教育部','武汉市','211/X','分数优先'),(5014,'湖北大学',174,'湖北省','武汉市','小211','分数优先'),(5019,'中南财经政法大学',81,'教育部','武汉市','211/X','分数优先'),(5028,'三峡大学',151,'湖北省','宜昌市','小211','分数优先'),(5201,'湘潭大学',92,'湖南省','湘潭市','小211','分数优先'),(5203,'湖南大学',28,'教育部','长沙市','985/B','分数优先'),(5204,'中南大学',17,'教育部','长沙市','985/A','分数优先'),(5205,'湖南科技大学',171,'湖南省','湘潭市','小211','分数优先'),(5206,'长沙理工大学',169,'湖南省','长沙市','小211','分数优先'),(5207,'湖南农业大学',175,'湖南省','长沙市','小211','级差2分内'),(5208,'中南林业科技大学',230,'湖南省','长沙市','小211','分数优先'),(5209,'湖南中医药大学',367,'湖南省','长沙市','省重点','专业优先'),(5210,'湖南师范大学',87,'湖南省','长沙市','211/X','分数优先'),(5220,'南华大学',182,'湖南省','衡阳市','小211','分数优先'),(5226,'湖南工业大学',238,'湖南省','株洲市','小211','专业优先'),(5402,'郑州大学',36,'河南省','郑州市','211/B','分数优先'),(5412,'河南大学',71,'河南省','开封市','小211/X','分数优先'),(6001,'中山大学',11,'教育部','广州市','985/A','2-1-1-1-1'),(6002,'暨南大学',57,'国务院侨办','广州市','211/X','分数优先'),(6004,'华南理工大学',22,'教育部','广州市','985/A','分数优先'),(6008,'广东医科大学',251,'广东省','东莞市','蚌埠市','分数优先'),(6009,'广州中医药大学',208,'广东省','广州市','省重点/X','分数优先'),(6011,'华南师范大学',65,'广东省','广州市','211/X','一专再分'),(6022,'深圳大学',106,'广东省','深圳市','','分数优先'),(6033,'广东工业大学',121,'广东省','广州市','省重点','分数优先'),(6034,'广东外语外贸大学',151,'广东省','广州市','省重点','分数优先'),(6037,'南方医科大学',97,'广东省','广州市','省重点','分数优先'),(6054,'北师大-香港浸会大学联合国际学院',0,'广东教育厅','珠海市','内港合作','分数优先'),(6058,'广东以色列理工学院',0,'广东省','汕头市','中外合作','分数优先'),(6201,'广西大学',107,'广西','南宁市','211/X','分数优先'),(6205,'广西医科大学',241,'广西','南宁市','小211','分数优先'),(7001,'重庆大学',29,'教育部','重庆市','985/A','分数优先'),(7002,'重庆邮电大学',193,'重庆市','重庆市','小211','分数优先'),(7003,'重庆交通大学',243,'重庆市','重庆市','小211','分数优先'),(7004,'重庆医科大学',116,'重庆市','重庆市','小211','分数优先'),(7005,'西南大学',41,'教育部','重庆市','211/X','2-1-1-0-0'),(7010,'四川外国语大学',293,'重庆市','重庆市','省重点','分数优先'),(7011,'西南政法大学',141,'重庆市','重庆市','小211','分数优先'),(7015,'重庆工商大学',210,'重庆市','重庆市','小211','分数优先'),(7201,'四川大学',9,'教育部','成都市','985/A','3-1-1-1-1'),(7202,'西南交通大学',53,'教育部','成都市','211/X','分数优先'),(7203,'电子科技大学',37,'教育部','成都市','985/A','分数优先'),(7204,'西南石油大学',187,'四川省','成都市','小211/X','5-0-0-0-0'),(7209,'西华大学',281,'四川省','成都市','小211','5-3-2-1-1'),(7211,'四川农业大学',101,'四川省','雅安市','211/X','级差5分内'),(7214,'成都中医学大学',296,'四川省','成都市','省重点/X','2-1-0-0-0'),(7216,'四川师范大学',164,'四川省','成都市','小211','分数优先'),(7223,'西南财经大学',99,'教育部','成都市','211/X','3-2-1-0-0'),(7226,'西南民族大学',215,'国家民委','成都市','','分数优先'),(7244,'电子科技大学（沙河校区)',37,'教育部','成都市','985/A','2-1-1-0-0'),(7401,'贵州大学',129,'贵州省','贵阳市','211/X','分数优先'),(7601,'云南大学',102,'云南省','昆明市','211/B','分数优先'),(7602,'昆明理工大学',93,'云南省','昆明市','小211','分数优先'),(8002,'西安交通大学（医学部）',15,'教育部','西安市','985/A','分数优先'),(8003,'西北工业大学',32,'工信部','西安市','985/A','分数优先'),(8004,'西安电子科技大学',52,'教育部','西安市','211/X','分数优先'),(8005,'陕西师范大学',70,'教育部','西安市','211/X','分数优先'),(8006,'西北农林科技大学',44,'教育部','杨凌区','985/B','分数优先'),(8007,'长安大学',117,'教育部','西安市','211/X','分数优先'),(8008,'西北大学',75,'陕西省','西安市','211/X','分数优先'),(8009,'陕西科技大学',183,'陕西省','西安市','小211','一专再分'),(8010,'西安建筑科技大学',163,'陕西省','西安市','小211','分数优先'),(8011,'西安理工大学',149,'陕西省','西安市','小211','分数优先'),(8012,'西北政法大学',366,'陕西省','西安市','省重点','分数优先'),(8013,'西安外国语大学',295,'陕西省','西安市','省重点','分数优先'),(8014,'西安石油大学',353,'陕西省','西安市','省重点','分数优先'),(8015,'西安工业大学',320,'陕西省','西安市','省重点','分数级差'),(8016,'西安工程大学',342,'陕西省','西安市','省重点','分数优先'),(8018,'西安科技大学',264,'陕西省','西安市','小211','分数优先'),(8019,'西安邮电大学',347,'陕西省','西安市','','分数优先'),(8023,'延安大学',433,'陕西省','延安市','省重点','分数优先'),(8201,'兰州大学',31,'教育部','兰州市','985/A','1-1-0-0-0'),(8202,'兰州理工大学',190,'甘肃省','兰州市','小211','级差5分内'),(8203,'兰州交通大学',253,'甘肃省','兰州市','小211','分数优先'),(8401,'宁夏大学',224,'宁夏','银川市','211/X','1-1-1-1-1'),(8402,'宁夏医科大学',421,'宁夏','银川市','小211','分数优先'),(8601,'青海大学',282,'青海省','西宁市','211/X','专业优先'),(8801,'新疆大学',139,'新疆','乌鲁木齐市','211/B','5-2-0-0-0'),(8804,'石河子大学',160,'建设兵团','石河子市','211/X','分数优先'),(8805,'新疆医科大学',256,'新疆','乌鲁木齐市','省重点','分数优先'),(8820,'中国石油大学(北京）克拉玛校区',112,'教育部','克拉玛依市','211/X','分数优先'),(9303,'西北工业大学（中外合作）',32,'工信部','西安市','985/A','分数优先'),(9304,'西安电子科技大学(中外合作）',52,'教育部','西安市','211/B','分数优先'),(9306,'西北农林科技大学（中外合作）',44,'教育部','杨凌区','985/B','分数优先'),(9307,'长安大学（中外合作）',117,'教育部','西安市','211','分数优先'),(9308,'西北大学（中外合作）',75,'陕西省','西安市','211/B','分数优先'),(9310,'西安建筑科技大学（中外合作）',163,'陕西省','西安市','小211','分数优先'),(9313,'西安外国语大学（中外合作）',295,'陕西省','西安市','省重点','分数优先'),(9318,'西安科技大学（中外合作）',264,'陕西省','西安市','小211','分数优先'),(9319,'西安邮电大学（中外合作）',347,'陕西省','西安市','','分数优先');
/*!40000 ALTER TABLE `schoolInf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-19 12:58:27