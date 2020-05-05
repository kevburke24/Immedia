-- MySQL dump 10.11
--
-- Host: localhost    Database: Project_Kevin_Huguens
-- ------------------------------------------------------
-- Server version	5.0.95

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
-- Table structure for table `Advertising_co`
--

DROP TABLE IF EXISTS `Advertising_co`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Advertising_co` (
  `Name` varchar(20) default NULL,
  `media_type` varchar(15) default NULL,
  `Country` varchar(20) default NULL,
  `State` varchar(20) default NULL,
  `City` varchar(20) default NULL,
  `Street` varchar(20) default NULL,
  `Street_no` int(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Advertising_co`
--

LOCK TABLES `Advertising_co` WRITE;
/*!40000 ALTER TABLE `Advertising_co` DISABLE KEYS */;
INSERT INTO `Advertising_co` VALUES ('Robinhood Inc','Trailer','United States','Los Angeles','California','Stark',7),('Slide Star','Poster','United States','Denver','Colorodo','State',2),('Genkins Adv','Trailer','United States','Las Vegas','Nevada','Korver',9),('Lola Pop Media','Trailer','United States','New York City','New York','Ford',6),('Alexis Adv','Poster','United States','Gotham City','D.C','Ford',6);
/*!40000 ALTER TABLE `Advertising_co` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Award`
--

DROP TABLE IF EXISTS `Award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Award` (
  `Organization` varchar(20) default NULL,
  `Category` varchar(100) default NULL,
  `Date_Received` date default NULL,
  `EntID` int(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Award`
--

LOCK TABLES `Award` WRITE;
/*!40000 ALTER TABLE `Award` DISABLE KEYS */;
INSERT INTO `Award` VALUES ('Academy Awards','Best Period Drama','2018-02-03',394569234),('Academy Awards','Best Film','2018-02-03',493459699),('Emmys','Best Thriller Series','2018-03-10',662288151),('Houston Film Critics','Best Orig Screenplay','2016-07-19',739515340),('Iowa Film Critics','Best Documentary','2016-12-11',662290151),('Iowa Film Critics','Best Costume Design','2019-09-01',493459699);
/*!40000 ALTER TABLE `Award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Basic_sponsor`
--

DROP TABLE IF EXISTS `Basic_sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Basic_sponsor` (
  `CustID` int(10) default NULL,
  `Sponsor_name` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Basic_sponsor`
--

LOCK TABLES `Basic_sponsor` WRITE;
/*!40000 ALTER TABLE `Basic_sponsor` DISABLE KEYS */;
INSERT INTO `Basic_sponsor` VALUES (134876009,'Redbull'),(378060128,'Dove'),(456789123,'Dove'),(778760098,'Kellogs');
/*!40000 ALTER TABLE `Basic_sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cable_provider`
--

DROP TABLE IF EXISTS `Cable_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cable_provider` (
  `Cable_provider_name` varchar(20) default NULL,
  `Country` varchar(20) default NULL,
  `State` varchar(20) default NULL,
  `City` varchar(20) default NULL,
  `Street` varchar(35) default NULL,
  `Street_no` int(4) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cable_provider`
--

LOCK TABLES `Cable_provider` WRITE;
/*!40000 ALTER TABLE `Cable_provider` DISABLE KEYS */;
INSERT INTO `Cable_provider` VALUES ('Spectrum','United States','New York','Schenectady','Blake',65),('Comcast','United States','New York','Albany','Creek',5),('RCN','United States','Massachusetts','Boston','Main',975),('Optimum','United States','Pennsylvania','Milford','Center',1285),('Midco','United States','Kansas','Kansas City','Grove',45);
/*!40000 ALTER TABLE `Cable_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cable_provider_phone`
--

DROP TABLE IF EXISTS `Cable_provider_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cable_provider_phone` (
  `Phone` bigint(20) default NULL,
  `Cable_provider_name` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cable_provider_phone`
--

LOCK TABLES `Cable_provider_phone` WRITE;
/*!40000 ALTER TABLE `Cable_provider_phone` DISABLE KEYS */;
INSERT INTO `Cable_provider_phone` VALUES (2147483647,'Comcast'),(8574359100,'RCN'),(4165199920,'Optimum'),(7880991234,'Midco'),(5667894434,'Spectrum');
/*!40000 ALTER TABLE `Cable_provider_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `Username` varchar(15) default NULL,
  `Password` varchar(15) default NULL,
  `Streaming_console` varchar(15) default NULL,
  `no_of_profiles` int(1) default NULL,
  `Country` varchar(20) default NULL,
  `State` varchar(20) default NULL,
  `City` varchar(20) default NULL,
  `Street` varchar(20) default NULL,
  `Street_no` int(4) default NULL,
  `birthdate` date default NULL,
  `Payment_card_no` bigint(20) default NULL,
  `sex` char(1) default NULL,
  `CustID` int(9) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES ('hsaint','union','Laptop',2,'United States','Pennsylvania','Philadelphia','Hill',12,'1992-03-12',1234567890123456,'m',134876009),('smoove21','wheelock','Smartphone',1,'United States','New York','Schenectady','Broadway',452,'1982-12-12',1534568890723456,'m',378060128),('maryjane','hamilton','Smartphone',1,'United States','Massachusetts','Lynn','First',78,'2002-01-10',1334568090773456,'f',456789123),('carie458','Reamer44','Laptop',4,'United States','Massachusetts','Boston','Elm',45,'2000-10-31',1394068890773458,'f',778760098),('JohnnyDoe','YulmanTHEA','Xbox',4,'United States','Nevada','Las Vegas','Third',45,'1998-04-18',4119406889077395,'m',789101112);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `Genre` varchar(20) default NULL,
  `Kids_adult` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES ('Comedy','Both'),('Horror','Adult'),('Romance','Adult'),('Action','Adult'),('Animated','Kids'),('Drama','Adult');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Leased`
--

DROP TABLE IF EXISTS `Leased`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Leased` (
  `EntID` int(10) default NULL,
  `Production_Company_Name` varchar(40) default NULL,
  `Genre` varchar(15) default NULL,
  `Release_date` date default NULL,
  `Title` varchar(40) default NULL,
  `Months_leased` int(10) default NULL,
  `Lease_cost` int(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Leased`
--

LOCK TABLES `Leased` WRITE;
/*!40000 ALTER TABLE `Leased` DISABLE KEYS */;
INSERT INTO `Leased` VALUES (123456789,'MGM','Romance','1998-01-19','Mad Dash',40,1200),(394596748,'Baelor Prod','Action','1998-01-19','Mission Impossible',1,2000),(495867298,'MGM','Horror','2013-07-13','The Conjuring',10,1500),(294856734,'Harvey Weinstein','Horror','2017-09-08','IT',6,2300),(569345823,'A24','Drama','2017-11-03','Lady Bird',14,1500),(756389432,'Paramount','Romance','1997-12-19','Titanic',40,1350),(495694935,'Freedom Road','Drama','2018-01-07','The Chi',50,10000),(475620091,'Sony Pictures','Fantasy','2019-04-26','Avengers: Endgame',3,2100),(870013491,'Century Fox','Mystery/Sci-fi','1997-07-01','Men in Black',2,1200),(667014593,'Paramount Pictures','Drama/Comedy','1994-07-06','Forrest Gump',2,1300);
/*!40000 ALTER TABLE `Leased` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Main_Actors`
--

DROP TABLE IF EXISTS `Main_Actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Main_Actors` (
  `Actors` varchar(20) default NULL,
  `EntID` int(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Main_Actors`
--

LOCK TABLES `Main_Actors` WRITE;
/*!40000 ALTER TABLE `Main_Actors` DISABLE KEYS */;
INSERT INTO `Main_Actors` VALUES ('Zac Efron',662290151),('Dwayne Johnson',493459699),('Brad Pitt',344515066),('Gwenyth Paltrow',344515066),('George Clooney',662290151),('Maryl Streep',344515066),('Denzel Washington',344515066),('Denzel Washington',739515340),('Tom Hanks',739515340),('Kevin Hart',163384990),('Johnny Depp',739515340),('Chris Evans',662288151),('Scarlett Johansson',662288151),('Robert Downey Jr',662288151),('Will Smith',344515066);
/*!40000 ALTER TABLE `Main_Actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Media_mentioned_in`
--

DROP TABLE IF EXISTS `Media_mentioned_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Media_mentioned_in` (
  `EntID` int(10) default NULL,
  `Publisher` varchar(20) default NULL,
  `Media_title` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Media_mentioned_in`
--

LOCK TABLES `Media_mentioned_in` WRITE;
/*!40000 ALTER TABLE `Media_mentioned_in` DISABLE KEYS */;
INSERT INTO `Media_mentioned_in` VALUES (495693945,'The New York Times','Ratings for Sisters '),(456234045,'The Los Angeles Time','Critics Rave about S'),(456234045,'Fox News','Seven Wars criticize'),(593954938,'The Washington Post','A Fine Line sees hig'),(495693945,'CNN','Sisters actor Rebecc');
/*!40000 ALTER TABLE `Media_mentioned_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Original`
--

DROP TABLE IF EXISTS `Original`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Original` (
  `EntID` int(10) default NULL,
  `Director` varchar(20) default NULL,
  `Production_cost` int(8) default NULL,
  `Genre` varchar(15) default NULL,
  `Release_date` date default NULL,
  `Title` varchar(40) default NULL,
  `Advertising_comp_name` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Original`
--

LOCK TABLES `Original` WRITE;
/*!40000 ALTER TABLE `Original` DISABLE KEYS */;
INSERT INTO `Original` VALUES (493459699,'Alex Franco',1000000,'Thriller','2015-02-09','Burrows','Genkins Adv'),(739515340,'Duffer Brothers',2000000,'Sci-fi','2016-07-16','Three Princes','Jenkins Adv'),(344515066,'Heidi Ewing',1500000,'Documentary','2017-10-20','One of Us','Robinhood Inc'),(662290151,'Ava DuVernay',1750000,'Documentary','2016-09-30','13th','Alexis Adv'),(662288151,'David Ayer',2100000,'Action','2017-12-13','Bright','Genkins Adv'),(163384990,'Matthew Vaughn',1000000,'Fantasy','2007-07-29','Stardust','Robinhood Inc');
/*!40000 ALTER TABLE `Original` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `PaymentNo` int(12) default NULL,
  `CustID` int(5) default NULL,
  `Payment_date` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
INSERT INTO `Payment` VALUES (1029349587,134876009,'2019-03-03'),(1029495712,378060128,'2020-05-12'),(2999333,456789123,'2021-12-11'),(2147483647,778760098,'2019-08-19'),(2233771,443220098,'2019-08-19');
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Press_release`
--

DROP TABLE IF EXISTS `Press_release`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Press_release` (
  `Publisher` varchar(20) default NULL,
  `Media_title` varchar(20) default NULL,
  `Date_published` date default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Press_release`
--

LOCK TABLES `Press_release` WRITE;
/*!40000 ALTER TABLE `Press_release` DISABLE KEYS */;
INSERT INTO `Press_release` VALUES ('The New York Times','Ratings for Sisters','2019-02-02'),('The Los Angeles Time','Critics Rave about S','2018-03-30'),('CNN','Sisters Actor Rebecc','2019-01-18'),('Arizona Sun','Burrows season revie','2017-09-11'),('The Los Angeles Time','Controversial Bright','2018-08-01');
/*!40000 ALTER TABLE `Press_release` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Producers`
--

DROP TABLE IF EXISTS `Producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Producers` (
  `Producers` varchar(20) default NULL,
  `Ent_ID` int(5) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Producers`
--

LOCK TABLES `Producers` WRITE;
/*!40000 ALTER TABLE `Producers` DISABLE KEYS */;
INSERT INTO `Producers` VALUES ('D.B Weiss',493459699),('David Benioff',493459699),('James Cameron',662288151),('Spike Lee',739515340),('Richard Donner',739515340),('Alex Burke',662290151),('Richard Gould',662290151);
/*!40000 ALTER TABLE `Producers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Production_co`
--

DROP TABLE IF EXISTS `Production_co`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Production_co` (
  `Prod_co_name` varchar(20) default NULL,
  `Country` varchar(20) default NULL,
  `State` varchar(20) default NULL,
  `City` varchar(20) default NULL,
  `Street` varchar(35) default NULL,
  `Street_no` int(5) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Production_co`
--

LOCK TABLES `Production_co` WRITE;
/*!40000 ALTER TABLE `Production_co` DISABLE KEYS */;
INSERT INTO `Production_co` VALUES ('Metro Goldwyn Meyer','United States','New York','New York','Sixth Avenue',1350),('A24','United States','New York','New York','27th Street',31),('20th Century Fox','United States','California','Los Angeles','West Pico Blvd',1211),('Paramount Pictures','United States','California','Los Angeles','Melrose Ave',5555),('Sony Pictures','United States','California','Culver City','Washington Blvd',1020),('Viacom','United States','New York','New York','Astor Plaza',1),('New Line Cinema','United States','California','Burbank','Warner Blvd',4000);
/*!40000 ALTER TABLE `Production_co` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publisher`
--

DROP TABLE IF EXISTS `Publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publisher` (
  `Publisher` varchar(20) default NULL,
  `Publisher_country` varchar(15) default NULL,
  `State` varchar(15) default NULL,
  `City` varchar(15) default NULL,
  `Street_no` int(5) default NULL,
  `Street` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publisher`
--

LOCK TABLES `Publisher` WRITE;
/*!40000 ALTER TABLE `Publisher` DISABLE KEYS */;
INSERT INTO `Publisher` VALUES ('The New York Times','United States','New York','New York',498,'Bleeker St'),('The Los Angeles Time','United States','California','Los Angeles',3456,'Sunset Blvd'),('CNN','United States','New York','New York',4327,'State St'),('Fox News','United States','New York','New York',332,'Eleanor St'),('Boston Globe','United States','Massachusetts','Boston',321,'Lexington Ave');
/*!40000 ALTER TABLE `Publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publisher_phone`
--

DROP TABLE IF EXISTS `Publisher_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publisher_phone` (
  `Phone_no` int(12) default NULL,
  `Publisher` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publisher_phone`
--

LOCK TABLES `Publisher_phone` WRITE;
/*!40000 ALTER TABLE `Publisher_phone` DISABLE KEYS */;
INSERT INTO `Publisher_phone` VALUES (546432222,'The New York Times'),(439020123,'Los Angeles Times'),(433222123,'CNN'),(978501167,'Fox News'),(432654186,'The Washington Post'),(543567888,'The New York Times');
/*!40000 ALTER TABLE `Publisher_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sponsor`
--

DROP TABLE IF EXISTS `Sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sponsor` (
  `Sponsor_name` varchar(40) default NULL,
  `Contribution_amt` int(20) default NULL,
  `Contribution_tier` int(20) default NULL,
  `Country` varchar(20) default NULL,
  `State` varchar(20) default NULL,
  `City` varchar(20) default NULL,
  `Street` varchar(20) default NULL,
  `Street_no` int(5) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sponsor`
--

LOCK TABLES `Sponsor` WRITE;
/*!40000 ALTER TABLE `Sponsor` DISABLE KEYS */;
INSERT INTO `Sponsor` VALUES ('Redbull',100,1,'United States','California','Los Angeles','Atlantis Ave',12),('Dove',1200,6,'United States','Texas','Austin','Fourtieth St',234),('Kellogs',20000,10,'United States','California','San Francisco','Eerie Blvd',238),('Dunkin Donuts',2000,8,'United States','Massachusetts','Boston','Amy Ave',2300),('Bud Light',5000,8,'United States','Florida','Tallahassee','Gentry St',450);
/*!40000 ALTER TABLE `Sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sponsor_phone`
--

DROP TABLE IF EXISTS `Sponsor_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sponsor_phone` (
  `Phone_no` int(12) default NULL,
  `Sponsor_name` varchar(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sponsor_phone`
--

LOCK TABLES `Sponsor_phone` WRITE;
/*!40000 ALTER TABLE `Sponsor_phone` DISABLE KEYS */;
INSERT INTO `Sponsor_phone` VALUES (2147483647,'Redbull'),(2147483647,'Dove'),(2147483647,'Kellogs'),(2147483647,'Dunkin Donuts'),(2147483647,'CocaCola');
/*!40000 ALTER TABLE `Sponsor_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscriber_cable`
--

DROP TABLE IF EXISTS `Subscriber_cable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscriber_cable` (
  `CustID` int(10) default NULL,
  `Cable_provider_name` varchar(30) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscriber_cable`
--

LOCK TABLES `Subscriber_cable` WRITE;
/*!40000 ALTER TABLE `Subscriber_cable` DISABLE KEYS */;
INSERT INTO `Subscriber_cable` VALUES (234010333,'Verizon FIOS'),(134876009,'Comcast'),(378060128,'Comcast'),(456789123,'DirectTV'),(493331119,'Dish'),(789101112,'Verizon FIOS');
/*!40000 ALTER TABLE `Subscriber_cable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `CustID` int(10) default NULL,
  `Screen_limit` int(1) default NULL,
  `Hd_avail` char(1) default NULL,
  `Ads` char(1) default NULL,
  `LiveTV` char(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
INSERT INTO `Subscription` VALUES (394939111,3,'Y','N','N'),(134876009,4,'Y','N','Y'),(378060128,4,'Y','N','Y'),(456789123,3,'N','Y','N'),(493331119,3,'N','Y','N'),(789101112,4,'Y','N','N');
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04  9:54:54
