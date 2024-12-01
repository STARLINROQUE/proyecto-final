CREATE DATABASE  IF NOT EXISTS`pubs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `pubs`;
-- MySQL dump 10.13  Distrib 5.1.40, for Win32 (ia32)
--
-- Host: localhost    Database: pubs
-- ------------------------------------------------------
-- Server version	5.5.12

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `au_id` varchar(11) NOT NULL,
  `au_lname` varchar(40) NOT NULL,
  `au_fname` varchar(20) NOT NULL,
  `phone` char(12) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  `contract` bit(1) NOT NULL,
  PRIMARY KEY (`au_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('172-32-1176','White','Johnson','408 496-7223','10932 Bigge Rd.','Menlo Park','CA','94025',''),('213-46-8915','Green','Marjorie','415 986-7020','309 63rd St. #411','Oakland','CA','94618',''),('238-95-7766','Carson','Cheryl','415 548-7723','589 Darwin Ln.','Berkeley','CA','94705',''),('267-41-2394','O\'Leary','Michael','408 286-2428','22 Cleveland Av. #14','San Jose','CA','95128',''),('274-80-9391','Straight','Dean','415 834-2919','5420 College Av.','Oakland','CA','94609',''),('341-22-1782','Smith','Meander','913 843-0462','10 Mississippi Dr.','Lawrence','KS','66044','\0'),('409-56-7008','Bennet','Abraham','415 658-9932','6223 Bateman St.','Berkeley','CA','94705',''),('427-17-2319','Dull','Ann','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',''),('472-27-2349','Gringlesby','Burt','707 938-6445','PO Box 792','Covelo','CA','95428',''),('486-29-1786','Locksley','Charlene','415 585-4620','18 Broadway Av.','San Francisco','CA','94130',''),('527-72-3246','Greene','Morningstar','615 297-2723','22 Graybar House Rd.','Nashville','TN','37215','\0'),('648-92-1872','Blotchet-Halls','Reginald','503 745-6402','55 Hillsdale Bl.','Corvallis','OR','97330',''),('672-71-3249','Yokomoto','Akiko','415 935-4228','3 Silver Ct.','Walnut Creek','CA','94595',''),('712-45-1867','del convertillo','Innes','615 996-8275','2286 Cram Pl. #86','Ann Arbor','MI','48105',''),('722-51-5454','DeFrance','Michel','219 547-9982','3 Balding Pl.','Gary','IN','46403',''),('724-08-9931','Stringer','Dirk','415 843-2991','5420 Telegraph Av.','Oakland','CA','94609','\0'),('724-80-9391','MacFeather','Stearns','415 354-7128','44 Upland Hts.','Oakland','CA','94612',''),('756-30-7391','Karsen','Livia','415 534-9219','5720 McAuley St.','Oakland','CA','94609',''),('807-91-6654','Panteley','Sylvia','301 946-8853','1956 Arlington Pl.','Rockville','MD','20853',''),('846-92-7186','Hunter','Sheryl','415 836-7128','3410 Blonde St.','Palo Alto','CA','94301',''),('893-72-1158','McBadden','Heather','707 448-4982','301 Putnam','Vacaville','CA','95688','\0'),('899-46-2035','Ringer','Anne','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152',''),('998-72-3567','Ringer','Albert','801 826-0752','67 Seventh Av.','Salt Lake City','UT','84152','');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `discounttype` varchar(40) NOT NULL,
  `stor_id` char(4) DEFAULT NULL,
  `lowqty` smallint(6) DEFAULT NULL,
  `highqty` smallint(6) DEFAULT NULL,
  `discount` decimal(4,2) NOT NULL,
  KEY `FK__discounts__stor` (`stor_id`),
  CONSTRAINT `FK__discounts__stor` FOREIGN KEY (`stor_id`) REFERENCES `stores` (`stor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES ('Initial Customer',NULL,NULL,NULL,'10.50'),('Initial Customer',NULL,NULL,NULL,'10.50'),('Volume Discount',NULL,100,1000,'6.70'),('Customer Discount','8042',NULL,NULL,'5.00'),('Initial Customer',NULL,NULL,NULL,'10.50'),('Volume Discount',NULL,100,1000,'6.70'),('Customer Discount','8042',NULL,NULL,'5.00'),('Initial Customer',NULL,NULL,NULL,'10.50'),('Volume Discount',NULL,100,1000,'6.70'),('Customer Discount','8042',NULL,NULL,'5.00');
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `emp_id` char(9) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(30) NOT NULL,
  `job_id` int(11) NOT NULL,
  `job_lvl` int(11) DEFAULT NULL,
  `pub_id` char(4) NOT NULL,
  `hire_date` datetime NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK__employee__job_id` (`job_id`),
  KEY `FK__employee__pub_id` (`pub_id`),
  CONSTRAINT `FK__employee__job_id` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`),
  CONSTRAINT `FK__employee__pub_id` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('A-C71970F','Aria','','Cruz',10,87,'1389','2011-05-09 00:00:00'),('A-R89858F','Annette','','Roulet',6,152,'9999','2011-05-09 00:00:00'),('AMD15433F','Ann','M','Devon',3,200,'9952','2011-05-09 00:00:00'),('ARD36773F','Anabela','R','Domingues',8,100,'0877','2011-05-09 00:00:00'),('CFH28514M','Carlos','F','Hernadez',5,211,'9999','2011-05-09 00:00:00'),('CGS88322F','Carine','G','Schmitt',13,64,'1389','2011-05-09 00:00:00'),('DBT39435M','Daniel','B','Tonini',11,75,'0877','2011-05-09 00:00:00'),('DWR65030M','Die','W','Roel',6,192,'1389','2011-05-09 00:00:00'),('ENL44273F','Elizabeth','N','Lincoln',14,35,'0877','2011-05-09 00:00:00'),('F-C16315M','Francisco','','Chang',4,227,'9952','2011-05-09 00:00:00'),('GHT50241M','Gary','H','Thomas',9,170,'0736','2011-05-09 00:00:00'),('H-B39728F','Helen','','Bennett',12,35,'0877','2011-05-09 00:00:00'),('HAN90777M','Helvetius','A','Nagy',7,120,'9999','2011-05-09 00:00:00'),('HAS54740M','Howard','A','Snyder',12,100,'0736','2011-05-09 00:00:00'),('JYL26161F','Janine','Y','Labrune',5,172,'9901','2011-05-09 00:00:00'),('KFJ64308F','Karin','F','Josephs',14,100,'0736','2011-05-09 00:00:00'),('KJJ92907F','Karla','J','Jablonski',9,170,'9999','2011-05-09 00:00:00'),('L-B31947F','Lesley','','Brown',7,120,'0877','2011-05-09 00:00:00'),('LAL21447M','Laurence','A','Lebihan',5,175,'0736','2011-05-09 00:00:00'),('M-L67958F','Maria','','Larsson',7,135,'1389','2011-05-09 00:00:00'),('M-P91209M','Manuel','','Pereira',8,101,'9999','2011-05-09 00:00:00'),('M-R38834F','Martine','','Rance',9,75,'0877','2011-05-09 00:00:00'),('MAP77183M','Miguel','A','Paolino',11,112,'1389','2011-05-09 00:00:00'),('MAS70474F','Margaret','A','Smith',9,78,'1389','2011-05-09 00:00:00'),('MFS52347M','Martin','F','Sommer',10,165,'0736','2011-05-09 00:00:00'),('MGK44605M','Matti','G','Karttunen',6,220,'0736','2011-05-09 00:00:00'),('MJP25939M','Maria','J','Pontes',5,246,'1756','2011-05-09 00:00:00'),('MMS49649F','Mary','M','Saveley',8,175,'0736','2011-05-09 00:00:00'),('PCM98509F','Patricia','C','McKenna',11,150,'9999','2011-05-09 00:00:00'),('PDI47470M','Palle','D','Ibsen',7,195,'0736','2011-05-09 00:00:00'),('PHF38899M','Peter','H','Franken',10,75,'0877','2011-05-09 00:00:00'),('PMA42628M','Paolo','M','Accorti',13,35,'0877','2011-05-09 00:00:00'),('POK93028M','Pirkko','O','Koskitalo',10,80,'9999','2011-05-09 00:00:00'),('PSA89086M','Pedro','S','Afonso',14,89,'1389','2011-05-09 00:00:00'),('PSP68661F','Paula','S','Parente',8,125,'1389','2011-05-09 00:00:00'),('PTC11962M','Philip','T','Cramer',2,215,'9952','2011-05-09 00:00:00'),('PXH22250M','Paul','X','Henriot',5,159,'0877','2011-05-09 00:00:00'),('R-M53550M','Roland','','Mendel',11,150,'0736','2011-05-09 00:00:00'),('RBM23061F','Rita','B','Muller',5,198,'1622','2011-05-09 00:00:00'),('SKO22412M','Sven','K','Ottlieb',5,150,'1389','2011-05-09 00:00:00'),('TPO55093M','Timothy','P','O\'Rourke',13,100,'0736','2011-05-09 00:00:00'),('VPA30890F','Victoria','P','Ashworth',6,140,'0877','2011-05-09 00:00:00'),('Y-L77953M','Yoshi','','Latimer',12,32,'1389','2011-05-09 00:00:00');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(11) NOT NULL,
  `job_desc` varchar(50) NOT NULL,
  `min_lvl` int(11) NOT NULL,
  `max_lvl` int(11) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'New Hire - Job not specified',10,10),(2,'Chief Executive Officer',200,250),(3,'Business Operations Manager',175,225),(4,'Chief Financial Officier',175,250),(5,'Publisher',150,250),(6,'Managing Editor',140,225),(7,'Marketing Manager',120,200),(8,'Public Relations Manager',100,175),(9,'Acquisitions Manager',75,175),(10,'Productions Manager',75,165),(11,'Operations Manager',75,150),(12,'Editor',25,100),(13,'Sales Representative',25,100),(14,'Designer',25,100);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id_noticias` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `noticia` text NOT NULL,
  PRIMARY KEY (`id_noticias`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'DiseÃƒÂ±o de la pagina #2','0000-00-00','<p>\r\n	vc4rbtt5rynt5yntyff fghtre hthehfnf fdj rfj trej t jt</p>\r\n'),(2,'segundo de prueba','25-Nov-11','<p>\r\n	vamos a ver si funciona manin</p>\r\n'),(3,'Tercero de prueba','25-Nov-2011','<p>\r\n	La <b>evoluci&oacute;n humana</b> (u <b>hominizaci&oacute;n</b>) explica el proceso de <a href=\"http://es.wikipedia.org/wiki/Evoluci%C3%B3n_biol%C3%B3gica\" title=\"EvoluciÃƒÂ³n biolÃƒÂ³gica\">evoluci&oacute;n biol&oacute;gica</a> de la <a class=\"mw-redirect\" href=\"http://es.wikipedia.org/wiki/Humano\" title=\"Humano\">especie humana</a> desde sus ancestros hasta el estado actual. El estudio de dicho proceso requiere un an&aacute;lisis interdisciplinar en el que se a&uacute;nen conocimientos procedentes de ciencias como la <a href=\"http://es.wikipedia.org/wiki/Gen%C3%A9tica\" title=\"GenÃƒÂ©tica\">gen&eacute;tica</a>, la <a href=\"http://es.wikipedia.org/wiki/Antropolog%C3%ADa_f%C3%ADsica\" title=\"AntropologÃƒÂ­a fÃƒÂ­sica\">antropolog&iacute;a f&iacute;sica</a>, la <a href=\"http://es.wikipedia.org/wiki/Paleontolog%C3%ADa\" title=\"PaleontologÃƒÂ­a\">paleontolog&iacute;a</a>, la <a href=\"http://es.wikipedia.org/wiki/Estratigraf%C3%ADa\" title=\"EstratigrafÃƒÂ­a\">estratigraf&iacute;a</a>, la <a href=\"http://es.wikipedia.org/wiki/Dataci%C3%B3n_radiom%C3%A9trica\" title=\"DataciÃƒÂ³n radiomÃƒÂ©trica\">geocronolog&iacute;a</a>, la <a href=\"http://es.wikipedia.org/wiki/Arqueolog%C3%ADa\" title=\"ArqueologÃƒÂ­a\">arqueolog&iacute;a</a> y la <a href=\"http://es.wikipedia.org/wiki/Ling%C3%BC%C3%ADstica\" title=\"LingÃƒÂ¼ÃƒÂ­stica\">ling&uuml;&iacute;stica</a>.</p>\r\n<p>\r\n	El t&eacute;rmino <i>humano</i>, en el contexto de su evoluci&oacute;n, se refiere a los individuos del g&eacute;nero <i><a class=\"mw-redirect\" href=\"http://es.wikipedia.org/wiki/Homo\" title=\"Homo\">Homo</a></i>. Sin embargo, los estudios de la evoluci&oacute;n humana incluyen otros <a href=\"http://es.wikipedia.org/wiki/Hominina\" title=\"Hominina\">homininos</a>, como <i><a href=\"http://es.wikipedia.org/wiki/Ardipithecus\" title=\"Ardipithecus\">Ardipithecus</a></i>, <i><a href=\"http://es.wikipedia.org/wiki/Australopithecus\" title=\"Australopithecus\">Australopithecus</a></i>, etc. Los cient&iacute;ficos han estimado que las l&iacute;neas evolutivas de los seres humanos y de los chimpanc&eacute;s se separaron hace entre 5 y 7 millones de a&ntilde;os. A partir de esta separaci&oacute;n la estirpe humana sigui&oacute; ramific&aacute;ndose originando nuevas especies, todas extintas actualmente a excepci&oacute;n del <i><a href=\"http://es.wikipedia.org/wiki/Homo_sapiens\" title=\"Homo sapiens\">Homo sapiens</a></i>.</p>\r\n');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pub_info`
--

DROP TABLE IF EXISTS `pub_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pub_info` (
  `pub_id` char(4) NOT NULL,
  `lo` binary(1) DEFAULT NULL,
  `pr_info` text,
  PRIMARY KEY (`pub_id`),
  CONSTRAINT `FK__pub_info__pub_id` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pub_info`
--

LOCK TABLES `pub_info` WRITE;
/*!40000 ALTER TABLE `pub_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pub_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pub_menu`
--

DROP TABLE IF EXISTS `pub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pub_menu` (
  `mnu_num` int(11) NOT NULL DEFAULT '0',
  `mnu_master` int(11) DEFAULT NULL,
  `MNU_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mnu_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pub_menu`
--

LOCK TABLES `pub_menu` WRITE;
/*!40000 ALTER TABLE `pub_menu` DISABLE KEYS */;
INSERT INTO `pub_menu` VALUES (1,0,'Menu01'),(2,0,'Menu02'),(3,0,'Menu03'),(4,1,'Menu14'),(5,1,'Menu15'),(6,5,'Menu56'),(7,4,'Menu47'),(8,3,'Menu47'),(9,3,'Menu47'),(10,3,'Menu47'),(11,10,'Menu47');
/*!40000 ALTER TABLE `pub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `pub_id` char(4) NOT NULL,
  `pub_name` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES ('0736','New Moon Books','Boston','MA','USA'),('0877','Binnet & Hardley','Washington','DC','USA'),('1389','Aldata Infosystems','Berkeley','CA','USA'),('1622','Five Lakes Publishing','Chica','IL','USA'),('1756','Ramona Publishers','Dallas','TX','USA'),('9901','GGG&G','MÃ¼nchen',NULL,'Germany'),('9952','Scootney Books','New York','NY','USA'),('9999','Lucerne Publishing','Paris',NULL,'France');
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roysched`
--

DROP TABLE IF EXISTS `roysched`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roysched` (
  `title_id` varchar(6) NOT NULL,
  `lorange` int(11) DEFAULT NULL,
  `hirange` int(11) DEFAULT NULL,
  `royalty` int(11) DEFAULT NULL,
  KEY `FK__roysched__title` (`title_id`),
  CONSTRAINT `FK__roysched__title` FOREIGN KEY (`title_id`) REFERENCES `titles` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roysched`
--

LOCK TABLES `roysched` WRITE;
/*!40000 ALTER TABLE `roysched` DISABLE KEYS */;
INSERT INTO `roysched` VALUES ('BU1032',0,5000,10),('BU1032',5001,50000,12),('PC1035',0,2000,10),('PC1035',2001,3000,12),('PC1035',3001,4000,14),('PC1035',4001,10000,16),('PC1035',10001,50000,18),('BU2075',0,1000,10),('BU2075',1001,3000,12),('BU2075',3001,5000,14),('BU2075',5001,7000,16),('BU2075',7001,10000,18),('BU2075',10001,12000,20),('BU2075',12001,14000,22),('BU2075',14001,50000,24),('PS2091',0,1000,10),('PS2091',1001,5000,12),('PS2091',5001,10000,14),('PS2091',10001,50000,16),('PS2106',0,2000,10),('PS2106',2001,5000,12),('PS2106',5001,10000,14),('PS2106',10001,50000,16),('MC3021',0,1000,10),('MC3021',1001,2000,12),('MC3021',2001,4000,14),('MC3021',4001,6000,16),('MC3021',6001,8000,18),('MC3021',8001,10000,20),('MC3021',10001,12000,22),('MC3021',12001,50000,24),('TC3218',0,2000,10),('TC3218',2001,4000,12),('TC3218',4001,6000,14),('TC3218',6001,8000,16),('TC3218',8001,10000,18),('TC3218',10001,12000,20),('TC3218',12001,14000,22),('TC3218',14001,50000,24),('PC8888',0,5000,10),('PC8888',5001,10000,12),('PC8888',10001,15000,14),('PC8888',15001,50000,16),('PS7777',0,5000,10),('PS7777',5001,50000,12),('PS3333',0,5000,10),('PS3333',5001,10000,12),('PS3333',10001,15000,14),('PS3333',15001,50000,16),('BU1111',0,4000,10),('BU1111',4001,8000,12),('BU1111',8001,10000,14),('BU1111',12001,16000,16),('BU1111',16001,20000,18),('BU1111',20001,24000,20),('BU1111',24001,28000,22),('BU1111',28001,50000,24),('MC2222',0,2000,10),('MC2222',2001,4000,12),('MC2222',4001,8000,14),('MC2222',8001,12000,16),('MC2222',12001,20000,18),('MC2222',20001,50000,20),('TC7777',0,5000,10),('TC7777',5001,15000,12),('TC7777',15001,50000,14),('TC4203',0,2000,10),('TC4203',2001,8000,12),('TC4203',8001,16000,14),('TC4203',16001,24000,16),('TC4203',24001,32000,18),('TC4203',32001,40000,20),('TC4203',40001,50000,22),('BU7832',0,5000,10),('BU7832',5001,10000,12),('BU7832',10001,15000,14),('BU7832',15001,20000,16),('BU7832',20001,25000,18),('BU7832',25001,30000,20),('BU7832',30001,35000,22),('BU7832',35001,50000,24),('PS1372',0,10000,10),('PS1372',10001,20000,12),('PS1372',20001,30000,14),('PS1372',30001,40000,16),('PS1372',40001,50000,18),('BU1032',0,5000,10),('BU1032',5001,50000,12),('PC1035',0,2000,10),('PC1035',2001,3000,12),('PC1035',3001,4000,14),('PC1035',4001,10000,16),('PC1035',10001,50000,18),('BU2075',0,1000,10),('BU2075',1001,3000,12),('BU2075',3001,5000,14),('BU2075',5001,7000,16),('BU2075',7001,10000,18),('BU2075',10001,12000,20),('BU2075',12001,14000,22),('BU2075',14001,50000,24),('PS2091',0,1000,10),('PS2091',1001,5000,12),('PS2091',5001,10000,14),('PS2091',10001,50000,16),('PS2106',0,2000,10),('PS2106',2001,5000,12),('PS2106',5001,10000,14),('PS2106',10001,50000,16),('MC3021',0,1000,10),('MC3021',1001,2000,12),('MC3021',2001,4000,14),('MC3021',4001,6000,16),('MC3021',6001,8000,18),('MC3021',8001,10000,20),('MC3021',10001,12000,22),('MC3021',12001,50000,24),('TC3218',0,2000,10),('TC3218',2001,4000,12),('TC3218',4001,6000,14),('TC3218',6001,8000,16),('TC3218',8001,10000,18),('TC3218',10001,12000,20),('TC3218',12001,14000,22),('TC3218',14001,50000,24),('PC8888',0,5000,10),('PC8888',5001,10000,12),('PC8888',10001,15000,14),('PC8888',15001,50000,16),('PS7777',0,5000,10),('PS7777',5001,50000,12),('PS3333',0,5000,10),('PS3333',5001,10000,12),('PS3333',10001,15000,14),('PS3333',15001,50000,16),('BU1111',0,4000,10),('BU1111',4001,8000,12),('BU1111',8001,10000,14),('BU1111',12001,16000,16),('BU1111',16001,20000,18),('BU1111',20001,24000,20),('BU1111',24001,28000,22),('BU1111',28001,50000,24),('MC2222',0,2000,10),('MC2222',2001,4000,12),('MC2222',4001,8000,14),('MC2222',8001,12000,16),('MC2222',12001,20000,18),('MC2222',20001,50000,20),('TC7777',0,5000,10),('TC7777',5001,15000,12),('TC7777',15001,50000,14),('TC4203',0,2000,10),('TC4203',2001,8000,12),('TC4203',8001,16000,14),('TC4203',16001,24000,16),('TC4203',24001,32000,18),('TC4203',32001,40000,20),('TC4203',40001,50000,22),('BU7832',0,5000,10),('BU7832',5001,10000,12),('BU7832',10001,15000,14),('BU7832',15001,20000,16),('BU7832',20001,25000,18),('BU7832',25001,30000,20),('BU7832',30001,35000,22),('BU7832',35001,50000,24),('PS1372',0,10000,10),('PS1372',10001,20000,12),('PS1372',20001,30000,14),('PS1372',30001,40000,16),('PS1372',40001,50000,18),('BU1032',0,5000,10),('BU1032',5001,50000,12),('PC1035',0,2000,10),('PC1035',2001,3000,12),('PC1035',3001,4000,14),('PC1035',4001,10000,16),('PC1035',10001,50000,18),('BU2075',0,1000,10),('BU2075',1001,3000,12),('BU2075',3001,5000,14),('BU2075',5001,7000,16),('BU2075',7001,10000,18),('BU2075',10001,12000,20),('BU2075',12001,14000,22),('BU2075',14001,50000,24),('PS2091',0,1000,10),('PS2091',1001,5000,12),('PS2091',5001,10000,14),('PS2091',10001,50000,16),('PS2106',0,2000,10),('PS2106',2001,5000,12),('PS2106',5001,10000,14),('PS2106',10001,50000,16),('MC3021',0,1000,10),('MC3021',1001,2000,12),('MC3021',2001,4000,14),('MC3021',4001,6000,16),('MC3021',6001,8000,18),('MC3021',8001,10000,20),('MC3021',10001,12000,22),('MC3021',12001,50000,24),('TC3218',0,2000,10),('TC3218',2001,4000,12),('TC3218',4001,6000,14),('TC3218',6001,8000,16),('TC3218',8001,10000,18),('TC3218',10001,12000,20),('TC3218',12001,14000,22),('TC3218',14001,50000,24),('PC8888',0,5000,10),('PC8888',5001,10000,12),('PC8888',10001,15000,14),('PC8888',15001,50000,16),('PS7777',0,5000,10),('PS7777',5001,50000,12),('PS3333',0,5000,10),('PS3333',5001,10000,12),('PS3333',10001,15000,14),('PS3333',15001,50000,16),('BU1111',0,4000,10),('BU1111',4001,8000,12),('BU1111',8001,10000,14),('BU1111',12001,16000,16),('BU1111',16001,20000,18),('BU1111',20001,24000,20),('BU1111',24001,28000,22),('BU1111',28001,50000,24),('MC2222',0,2000,10),('MC2222',2001,4000,12),('MC2222',4001,8000,14),('MC2222',8001,12000,16),('MC2222',12001,20000,18),('MC2222',20001,50000,20),('TC7777',0,5000,10),('TC7777',5001,15000,12),('TC7777',15001,50000,14),('TC4203',0,2000,10),('TC4203',2001,8000,12),('TC4203',8001,16000,14),('TC4203',16001,24000,16),('TC4203',24001,32000,18),('TC4203',32001,40000,20),('TC4203',40001,50000,22),('BU7832',0,5000,10),('BU7832',5001,10000,12),('BU7832',10001,15000,14),('BU7832',15001,20000,16),('BU7832',20001,25000,18),('BU7832',25001,30000,20),('BU7832',30001,35000,22),('BU7832',35001,50000,24),('PS1372',0,10000,10),('PS1372',10001,20000,12),('PS1372',20001,30000,14),('PS1372',30001,40000,16),('PS1372',40001,50000,18);
/*!40000 ALTER TABLE `roysched` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `stor_id` char(4) NOT NULL,
  `ord_num` varchar(20) NOT NULL,
  `ord_date` datetime NOT NULL,
  `qty` int(11) NOT NULL,
  `payterms` varchar(12) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  PRIMARY KEY (`stor_id`,`ord_num`,`title_id`),
  KEY `FK__sales__title_id` (`title_id`),
  CONSTRAINT `FK__sales__stor_id` FOREIGN KEY (`stor_id`) REFERENCES `stores` (`stor_id`),
  CONSTRAINT `FK__sales__title_id` FOREIGN KEY (`title_id`) REFERENCES `titles` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('6380','6871','2011-04-24 00:00:00',5,'Net 60','BU1032'),('6380','722a','2011-01-15 00:00:00',3,'Net 60','PS2091'),('7066','222','2010-09-26 00:00:00',20,'contado','PC1035'),('7066','224','2010-11-29 00:00:00',300,'contado','PC1035'),('7066','A2976','2010-05-16 00:00:00',50,'Net 30','PC8888'),('7066','QA7442.3','2009-05-27 00:00:00',75,'ON invoice','PS2091'),('7067','D4482','2009-09-01 00:00:00',10,'Net 60','PS2091'),('7067','P2121','2009-02-13 00:00:00',40,'Net 30','TC3218'),('7067','P2121','2009-08-14 00:00:00',20,'Net 30','TC4203'),('7067','P2121','2010-03-01 00:00:00',20,'Net 30','TC7777'),('7131','N914008','2010-04-16 00:00:00',20,'Net 30','PS2091'),('7131','N914014','2010-10-02 00:00:00',25,'Net 30','MC3021'),('7131','P3087a','2011-02-01 00:00:00',20,'Net 60','PS1372'),('7131','P3087a','2010-08-16 00:00:00',25,'Net 60','PS2106'),('7131','P3087a','2010-06-15 00:00:00',15,'Net 60','PS3333'),('7131','P3087a','2010-03-20 00:00:00',25,'Net 60','PS7777'),('7896','QQ2299','2010-04-29 00:00:00',15,'Net 60','BU7832'),('7896','TQ456','2010-03-26 00:00:00',10,'Net 60','MC2222'),('7896','X999','2010-10-09 00:00:00',35,'ON invoice','BU2075'),('8042','423LL922','2010-04-05 00:00:00',15,'ON invoice','MC3021'),('8042','423LL930','2010-04-16 00:00:00',10,'ON invoice','BU1032'),('8042','P723','2010-06-10 00:00:00',25,'Net 30','BU1111'),('8042','QA879.1','2010-03-21 00:00:00',30,'Net 30','PC1035');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_log` (
  `sales_log_id` int(11) NOT NULL,
  `stor_id` char(4) NOT NULL,
  `ord_num` varchar(20) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  `au_id` varchar(11) NOT NULL,
  `log_fecha` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  PRIMARY KEY (`sales_log_id`),
  KEY `FK_sales_log_authors` (`au_id`),
  KEY `FK_sales_log_sales` (`stor_id`,`ord_num`,`title_id`),
  CONSTRAINT `FK_sales_log_authors` FOREIGN KEY (`au_id`) REFERENCES `authors` (`au_id`),
  CONSTRAINT `FK_sales_log_sales` FOREIGN KEY (`stor_id`, `ord_num`, `title_id`) REFERENCES `sales` (`stor_id`, `ord_num`, `title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_log`
--

LOCK TABLES `sales_log` WRITE;
/*!40000 ALTER TABLE `sales_log` DISABLE KEYS */;
INSERT INTO `sales_log` VALUES (2,'7066','224','PC1035','238-95-7766','2011-05-09 00:00:00','22.95',300);
/*!40000 ALTER TABLE `sales_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `sales_title_view`
--

DROP TABLE IF EXISTS `sales_title_view`;
/*!50001 DROP VIEW IF EXISTS `sales_title_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `sales_title_view` (
  `stor_id` char(4),
  `ord_num` varchar(20),
  `ord_date` datetime,
  `qty` int(11),
  `payterms` varchar(12),
  `title_id` varchar(6),
  `price` decimal(10,2)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stores` (
  `stor_id` char(4) NOT NULL,
  `stor_name` varchar(40) DEFAULT NULL,
  `stor_address` varchar(40) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` char(5) DEFAULT NULL,
  PRIMARY KEY (`stor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES ('6380','Eric the Read Books','788 Catamaugus Ave.','Seattle','WA','98056'),('7066','Barnum\'s','567 Pasadena Ave.','Tustin','CA','92789'),('7067','News & Brews','577 First St.','Los Gatos','CA','96745'),('7131','Doc-U-Mat: Quality Laundry and Books','24-A Avogadro Way','Remulade','WA','98014'),('7896','Fricative Bookshop','89 Madison St.','Fremont','CA','90019'),('8042','Bookbeat','679 Carson St.','Portland','OR','89076');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `usr_id` int(11) NOT NULL,
  `usr_email` varchar(80) NOT NULL,
  `usr_fullName` varchar(120) NOT NULL,
  `usr_password` varchar(255) NOT NULL,
  `usr_fec_crea` datetime NOT NULL,
  `usr_status` char(1) NOT NULL,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `unx_sysuser_email` (`usr_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'silverio.delorbe@gmail.com','s.delorbe','020104030605','2011-08-24 00:00:00','A');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titleauthor`
--

DROP TABLE IF EXISTS `titleauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titleauthor` (
  `au_id` varchar(11) NOT NULL,
  `title_id` varchar(6) NOT NULL,
  `au_ord` int(11) DEFAULT NULL,
  `royaltyper` int(11) DEFAULT NULL,
  PRIMARY KEY (`au_id`,`title_id`),
  KEY `FK__titleauth__title` (`title_id`),
  CONSTRAINT `FK__titleauth__au_id` FOREIGN KEY (`au_id`) REFERENCES `authors` (`au_id`),
  CONSTRAINT `FK__titleauth__title` FOREIGN KEY (`title_id`) REFERENCES `titles` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titleauthor`
--

LOCK TABLES `titleauthor` WRITE;
/*!40000 ALTER TABLE `titleauthor` DISABLE KEYS */;
INSERT INTO `titleauthor` VALUES ('172-32-1176','PS3333',1,100),('213-46-8915','BU1032',2,40),('213-46-8915','BU2075',1,100),('238-95-7766','PC1035',1,100),('267-41-2394','BU1111',2,40),('267-41-2394','TC7777',2,30),('274-80-9391','BU7832',1,100),('409-56-7008','BU1032',1,60),('427-17-2319','PC8888',1,50),('472-27-2349','TC7777',3,30),('486-29-1786','PC9999',1,100),('486-29-1786','PS7777',1,100),('648-92-1872','TC4203',1,100),('672-71-3249','TC7777',1,40),('712-45-1867','MC2222',1,100),('722-51-5454','MC3021',1,75),('724-80-9391','BU1111',1,60),('724-80-9391','PS1372',2,25),('756-30-7391','PS1372',1,75),('807-91-6654','TC3218',1,100),('846-92-7186','PC8888',2,50),('899-46-2035','MC3021',2,25),('899-46-2035','PS2091',2,50),('998-72-3567','PS2091',1,50),('998-72-3567','PS2106',1,100);
/*!40000 ALTER TABLE `titleauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `title_id` varchar(6) NOT NULL,
  `title` varchar(80) NOT NULL,
  `type` char(12) NOT NULL,
  `pub_id` char(4) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `advance` decimal(10,2) DEFAULT NULL,
  `royalty` int(11) DEFAULT NULL,
  `ytd_sales` int(11) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  `pubdate` datetime NOT NULL,
  PRIMARY KEY (`title_id`),
  KEY `FK__titles__pub_id` (`pub_id`),
  CONSTRAINT `FK__titles__pub_id` FOREIGN KEY (`pub_id`) REFERENCES `publishers` (`pub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titles`
--

LOCK TABLES `titles` WRITE;
/*!40000 ALTER TABLE `titles` DISABLE KEYS */;
INSERT INTO `titles` VALUES ('BU1032','The Busy Executive\'s Database Guide','business','1389','19.99','5000.00',10,4095,'An overview of available database systems with emphasis on common business applications. Illustrated.','2011-05-09 00:00:00'),('BU1111','Cooking with Computers: Surreptitious Balance Sheets','business','1389','11.95','5000.00',10,3876,'Helpful hints on how to use your electronic resources to the best advantage.','2011-05-09 00:00:00'),('BU2075','You Can Combat Computer Stress!','business','0736','2.99','10125.00',24,18722,'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.','2011-05-09 00:00:00'),('BU7832','Straight Talk About Computers','business','1389','19.99','5000.00',10,4095,'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.','2011-05-09 00:00:00'),('MC2222','Silicon Valley Gastronomic Treats','mod_cook','0877','19.99','0.00',12,2032,'Favorite recipes for quick, easy, and elegant meals.','2011-05-09 00:00:00'),('MC3021','The urmet Microwave','mod_cook','0877','2.99','15000.00',24,22246,'Traditional French urmet recipes adapted for modern microwave cooking.','2011-05-09 00:00:00'),('MC3026','The Psychology of Computer Cooking','UNDECIDED','0877',NULL,NULL,NULL,NULL,NULL,'2011-05-09 00:00:00'),('PC1035','But Is It User Friendly?','popular_comp','1389','22.95','7000.00',16,8780,'A survey of software for the naive user, focusing on the \'friendliness\' of each.','2011-05-09 00:00:00'),('PC8888','Secrets of Silicon Valley','popular_comp','1389','20.00','8000.00',10,4095,'Muckraking reporting on the world\'s largest computer hardware and software manufacturers.','2011-05-09 00:00:00'),('PC9999','Net Etiquette','popular_comp','1389',NULL,NULL,NULL,NULL,'A must-read for computer conferencing.','2011-05-09 00:00:00'),('PS1372','Computer Phobic AND Non-Phobic Individuals: Behavior Variations','psychology','0877','21.59','7000.00',10,375,'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don\'t.','2011-05-09 00:00:00'),('PS2091','Is Anger the Enemy?','psychology','0736','10.95','2275.00',12,2045,'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.','2011-05-09 00:00:00'),('PS2106','Life Without Fear','psychology','0736','7.00','6000.00',10,111,'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.','2011-05-09 00:00:00'),('PS3333','Prolonged Data Deprivation: Four Case Studies','psychology','0736','19.99','2000.00',10,4072,'What happens when the data runs dry?  Searching evaluations of information-shortage effects.','2011-05-09 00:00:00'),('PS7777','Emotional Security: A New Alrithm','psychology','0736','7.99','4000.00',10,3336,'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.','2011-05-09 00:00:00'),('TC3218','Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean','trad_cook','0877','20.95','7000.00',10,375,'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.','2011-05-09 00:00:00'),('TC4203','Fifty Years in Buckingham Palace Kitchens','trad_cook','0877','11.95','4000.00',14,15096,'More anecdotes from the Queen\'s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.','2011-05-09 00:00:00'),('TC7777','Sushi, Anyone?','trad_cook','0877','14.99','8000.00',10,4095,'Detailed instructions on how to make authentic Japanese sushi in your spare time.','2011-05-09 00:00:00');
/*!40000 ALTER TABLE `titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `titleview`
--

DROP TABLE IF EXISTS `titleview`;
/*!50001 DROP VIEW IF EXISTS `titleview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `titleview` (
  `title` varchar(80),
  `au_ord` int(11),
  `au_lname` varchar(40),
  `price` decimal(10,2),
  `ytd_sales` int(11),
  `pub_id` char(4)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','campusano55',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `sales_title_view`
--

/*!50001 DROP TABLE IF EXISTS `sales_title_view`*/;
/*!50001 DROP VIEW IF EXISTS `sales_title_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_title_view` AS select `sales`.`stor_id` AS `stor_id`,`sales`.`ord_num` AS `ord_num`,`sales`.`ord_date` AS `ord_date`,`sales`.`qty` AS `qty`,`sales`.`payterms` AS `payterms`,`sales`.`title_id` AS `title_id`,`titles`.`price` AS `price` from (`sales` join `titles` on((`sales`.`title_id` = `titles`.`title_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `titleview`
--

/*!50001 DROP TABLE IF EXISTS `titleview`*/;
/*!50001 DROP VIEW IF EXISTS `titleview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `titleview` AS select `titles`.`title` AS `title`,`titleauthor`.`au_ord` AS `au_ord`,`authors`.`au_lname` AS `au_lname`,`titles`.`price` AS `price`,`titles`.`ytd_sales` AS `ytd_sales`,`titles`.`pub_id` AS `pub_id` from ((`authors` join `titles`) join `titleauthor`) where ((`authors`.`au_id` = `titleauthor`.`au_id`) and (`titles`.`title_id` = `titleauthor`.`title_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-18 20:00:33
