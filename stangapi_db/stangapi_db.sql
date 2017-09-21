-- MySQL dump 10.13  Distrib 5.5.31, for Linux (x86_64)
--
-- Host: localhost    Database: stangapi_db
-- ------------------------------------------------------
-- Server version	5.5.31

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
-- Table structure for table `am`
--

DROP TABLE IF EXISTS `am`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am` (
  `am_id` int(11) NOT NULL AUTO_INCREMENT,
  `am_user` varchar(250) NOT NULL,
  `am_pass` varchar(250) NOT NULL,
  PRIMARY KEY (`am_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am`
--

LOCK TABLES `am` WRITE;
/*!40000 ALTER TABLE `am` DISABLE KEYS */;
INSERT INTO `am` VALUES (1,'admin','e8a5a3f5aee7877019c68292353ea1a5');
/*!40000 ALTER TABLE `am` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `em`
--

DROP TABLE IF EXISTS `em`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `em` (
  `em_id` int(11) NOT NULL AUTO_INCREMENT,
  `em_name` varchar(100) NOT NULL,
  `em_user` varchar(50) NOT NULL,
  `em_pass` varchar(50) NOT NULL,
  `mt_id` varchar(11) NOT NULL,
  PRIMARY KEY (`em_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `em`
--

LOCK TABLES `em` WRITE;
/*!40000 ALTER TABLE `em` DISABLE KEYS */;
INSERT INTO `em` VALUES (1,'Chalermpon songsana','pon','e8a5a3f5aee7877019c68292353ea1a5','7'),(2,'stanghome','sthome','e8a5a3f5aee7877019c68292353ea1a5','1'),(3,'Stang Wifi','stang','e8a5a3f5aee7877019c68292353ea1a5','3'),(4,'Wimontip','wi','e8a5a3f5aee7877019c68292353ea1a5','3');
/*!40000 ALTER TABLE `em` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_config`
--

DROP TABLE IF EXISTS `mt_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_config` (
  `mt_id` int(11) NOT NULL AUTO_INCREMENT,
  `mt_user` varchar(250) NOT NULL,
  `mt_pass` varchar(250) NOT NULL,
  `mt_ip` varchar(250) NOT NULL,
  `mt_name` varchar(100) NOT NULL,
  `mt_location` varchar(255) NOT NULL,
  `mt_mail` varchar(100) NOT NULL,
  `mt_tel` varchar(20) NOT NULL,
  `mt_gps` varchar(30) NOT NULL,
  PRIMARY KEY (`mt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_config`
--

LOCK TABLES `mt_config` WRITE;
/*!40000 ALTER TABLE `mt_config` DISABLE KEYS */;
INSERT INTO `mt_config` VALUES (3,'admin','038444871','4caa04922acb.sn.mynetname.net','stangcomputer','stangcomputer','stangcomputer@gmail.com','0898318117','13.308984, 101.116252'),(5,'admin','038444871','4453011bced3.sn.mynetname.net','saptawan','saptawan','stangcomputer@gmail.com','0898318117','13.310232, 101.120641'),(7,'admin','038444871','614b054d826b.sn.mynetname.net','km2','km2','pon299@gmail.com','0815905098','13.272867, 100.929922'),(8,'admin','Rr8318117','6089054dd5ee.sn.mynetname.net','dsport','33','robot.connect.2012@gmail.com','0898318117','13.272867, 100.929922'),(9,'admin','038444871','469a02e35130.sn.mynetname.net','soleilde','pattaya','stangcomputer@gmail.com','0898318117','12.930932, 100.886571'),(10,'admin','038444871','202.29.230.161','technicsa','sakeaw','admin@thaigqsoft.com','038444871','13.765410, 102.326411');
/*!40000 ALTER TABLE `mt_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_gen`
--

DROP TABLE IF EXISTS `mt_gen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_gen` (
  `user` varchar(11) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `qrcode` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `mt_id` varchar(100) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_gen`
--

LOCK TABLES `mt_gen` WRITE;
/*!40000 ALTER TABLE `mt_gen` DISABLE KEYS */;
INSERT INTO `mt_gen` VALUES ('1dsjixpoh','707122','1Day','1dsjixpoh.png','2015-11-25 06:11:12','3'),('1dsrseapn','603830','1Day','1dsrseapn.png','2015-11-25 06:11:12','3'),('1dsbguupc','393543','1Day','1dsbguupc.png','2015-11-25 06:11:12','3'),('1dshhfazu','666203','1Day','1dshhfazu.png','2015-11-25 06:11:12','3'),('1dsebzwrh','326291','1Day','1dsebzwrh.png','2015-11-25 06:11:12','3'),('1dsuxspfe','005751','1Day','1dsuxspfe.png','2015-11-25 06:11:12','3'),('1dssvzdxx','682218','1Day','1dssvzdxx.png','2015-11-25 06:11:12','3'),('1dsgmofnn','889224','1Day','1dsgmofnn.png','2015-11-25 06:11:12','3'),('1dsicosev','199551','1Day','1dsicosev.png','2015-11-25 06:11:12','3'),('1dspijhiu','685860','1Day','1dspijhiu.png','2015-11-25 06:11:12','3'),('stcxsd','857','1h','stcxsd.png','2015-11-25 08:05:23','3'),('stcgio','936','1h','stcgio.png','2015-11-25 08:05:23','3'),('stcchv','187','1h','stcchv.png','2015-11-25 08:05:23','3'),('stcsxl','582','1h','stcsxl.png','2015-11-25 08:05:23','3'),('stcxtj','827','1h','stcxtj.png','2015-11-25 08:05:23','3'),('stcbag','531','1h','stcbag.png','2015-11-25 08:05:23','3'),('stcpos','198','1h','stcpos.png','2015-11-25 08:05:23','3'),('stcodl','540','1h','stcodl.png','2015-11-25 08:05:23','3'),('stclhg','776','1h','stclhg.png','2015-11-25 08:05:23','3'),('stcdsg','678','1h','stcdsg.png','2015-11-25 08:05:23','3'),('ponlcrcqu','608914','15Day','ponlcrcqu.png','2016-01-16 05:20:59','7'),('ponhdtxia','226195','15Day','ponhdtxia.png','2016-01-16 05:20:59','7'),('ponvrmhkz','301228','15Day','ponvrmhkz.png','2016-01-16 05:20:59','7'),('ponpjpxgh','102077','15Day','ponpjpxgh.png','2016-01-16 05:20:59','7'),('ponsfpcmv','193484','15Day','ponsfpcmv.png','2016-01-16 05:20:59','7'),('ponldgfwx','094128','15Day','ponldgfwx.png','2016-01-16 05:20:59','7'),('ponaarlzg','304194','15Day','ponaarlzg.png','2016-01-16 05:20:59','7'),('ponrccafk','191721','15Day','ponrccafk.png','2016-01-16 05:20:59','7'),('ponxzgwfx','149794','15Day','ponxzgwfx.png','2016-01-16 05:20:59','7'),('ponavbvvf','477642','15Day','ponavbvvf.png','2016-01-16 05:20:59','7'),('pontojhhk','297402','15Day','pontojhhk.png','2016-01-16 05:20:59','7'),('ponafekct','693545','15Day','ponafekct.png','2016-01-16 05:20:59','7'),('ponskzdft','839171','15Day','ponskzdft.png','2016-01-16 05:20:59','7'),('ponuzcoqv','359946','15Day','ponuzcoqv.png','2016-01-16 05:20:59','7'),('pontfegct','621999','15Day','pontfegct.png','2016-01-16 05:20:59','7'),('ponbdhjmu','573494','15Day','ponbdhjmu.png','2016-01-16 05:20:59','7'),('ponufqlcz','059324','15Day','ponufqlcz.png','2016-01-16 05:20:59','7'),('ponxlkfvw','569568','15Day','ponxlkfvw.png','2016-01-16 05:20:59','7'),('pongvuhmo','870756','15Day','pongvuhmo.png','2016-01-16 05:20:59','7'),('ponpwqgca','312632','15Day','ponpwqgca.png','2016-01-16 05:20:59','7'),('stcdzogdk','781666','1h','stcdzogdk.png','2016-03-09 11:09:24','3'),('stcmbulza','292358','1h','stcmbulza.png','2016-03-09 11:09:24','3'),('stcsiaoor','018235','1h','stcsiaoor.png','2016-03-09 11:09:24','3'),('stcqmgext','017900','1h','stcqmgext.png','2016-03-09 11:09:24','3'),('stcpeiwhz','150014','1h','stcpeiwhz.png','2016-03-09 11:09:24','3'),('stcimrtva','553548','1h','stcimrtva.png','2016-03-09 11:09:24','3'),('stcggaprr','833057','1h','stcggaprr.png','2016-03-09 11:09:24','3'),('stcjjtxfw','546851','1h','stcjjtxfw.png','2016-03-09 11:09:24','3'),('stcmljqzn','238955','1h','stcmljqzn.png','2016-03-09 11:09:24','3'),('stcblsfjr','050530','1h','stcblsfjr.png','2016-03-09 11:09:24','3'),('stcwclgrg','218809','1h','stcwclgrg.png','2016-03-09 11:09:24','3'),('stcdlkbwk','306951','1h','stcdlkbwk.png','2016-03-09 11:09:24','3'),('stcuzgmlt','748025','1h','stcuzgmlt.png','2016-03-09 11:09:24','3'),('stchitwjk','845200','1h','stchitwjk.png','2016-03-09 11:09:24','3'),('stctvkotg','953852','1h','stctvkotg.png','2016-03-09 11:09:24','3'),('stcrfkkuk','748961','1h','stcrfkkuk.png','2016-03-09 11:09:24','3'),('stcgmuola','795498','1h','stcgmuola.png','2016-03-09 11:09:24','3'),('stckifgma','950017','1h','stckifgma.png','2016-03-09 11:09:24','3'),('stcolbpxm','504122','1h','stcolbpxm.png','2016-03-09 11:09:24','3'),('stccnrukp','910443','1h','stccnrukp.png','2016-03-09 11:09:24','3'),('frekjjwttwq','96110','1h','frekjjwttwq.png','2016-04-05 05:10:31','3'),('frenktzigdl','85251','1h','frenktzigdl.png','2016-04-05 05:10:31','3'),('frenhfnxrgq','22575','1h','frenhfnxrgq.png','2016-04-05 05:10:31','3'),('freazggzpek','76566','1h','freazggzpek.png','2016-04-05 05:10:31','3'),('frejlclmtmc','84136','1h','frejlclmtmc.png','2016-04-05 05:10:31','3'),('frevzdbkchn','82072','1h','frevzdbkchn.png','2016-04-05 05:10:31','3'),('frekjnwsfob','00292','1h','frekjnwsfob.png','2016-04-05 05:10:31','3'),('freahgfweet','59877','1h','freahgfweet.png','2016-04-05 05:10:31','3'),('freqblzdlra','78791','1h','freqblzdlra.png','2016-04-05 05:10:31','3'),('frenwvowqqz','56166','1h','frenwvowqqz.png','2016-04-05 05:10:31','3'),('frejqevwrpk','94860','1h','frejqevwrpk.png','2016-04-05 05:10:31','3'),('fregclkdruo','84276','1h','fregclkdruo.png','2016-04-05 05:10:31','3'),('freomcrhpmc','20982','1h','freomcrhpmc.png','2016-04-05 05:10:31','3'),('freokehwpii','88913','1h','freokehwpii.png','2016-04-05 05:10:31','3'),('frelxjschxu','20952','1h','frelxjschxu.png','2016-04-05 05:10:31','3'),('frepczztgdk','99059','1h','frepczztgdk.png','2016-04-05 05:10:31','3'),('freihnmbigd','36399','1h','freihnmbigd.png','2016-04-05 05:10:31','3'),('frefjoaipzw','98665','1h','frefjoaipzw.png','2016-04-05 05:10:31','3'),('frekcxmuzvx','48405','1h','frekcxmuzvx.png','2016-04-05 05:10:31','3'),('freptdqxbts','79103','1h','freptdqxbts.png','2016-04-05 05:10:31','3'),('freetdwaiwx','60589','1h','freetdwaiwx.png','2016-04-05 05:10:31','3'),('freeuodzjfh','51565','1h','freeuodzjfh.png','2016-04-05 05:10:31','3'),('frefcjebuiu','98570','1h','frefcjebuiu.png','2016-04-05 05:10:31','3'),('fremrhppmsl','09513','1h','fremrhppmsl.png','2016-04-05 05:10:31','3'),('freushlihjh','67084','1h','freushlihjh.png','2016-04-05 05:10:31','3'),('frearjeqtog','93397','1h','frearjeqtog.png','2016-04-05 05:10:31','3'),('frepeqdvzvc','52496','1h','frepeqdvzvc.png','2016-04-05 05:10:31','3'),('fredvizlzoh','14235','1h','fredvizlzoh.png','2016-04-05 05:10:31','3'),('frekzvvkcfu','26131','1h','frekzvvkcfu.png','2016-04-05 05:10:31','3'),('fredzwilnjq','41561','1h','fredzwilnjq.png','2016-04-05 05:10:31','3'),('frekrlqhoat','82088','1h','frekrlqhoat.png','2016-04-05 05:10:31','3'),('fretwoqoxvr','41512','1h','fretwoqoxvr.png','2016-04-05 05:10:31','3'),('freghjdvflt','29638','1h','freghjdvflt.png','2016-04-05 05:10:31','3'),('frewandzcdi','20033','1h','frewandzcdi.png','2016-04-05 05:10:31','3'),('freunoaotci','00796','1h','freunoaotci.png','2016-04-05 05:10:31','3'),('freqspghvpf','64232','1h','freqspghvpf.png','2016-04-05 05:10:31','3'),('frehvceidcc','16874','1h','frehvceidcc.png','2016-04-05 05:10:31','3'),('frevzuigsun','94051','1h','frevzuigsun.png','2016-04-05 05:10:31','3'),('frezvtuqjjc','42292','1h','frezvtuqjjc.png','2016-04-05 05:10:31','3'),('frezslbtqrp','67723','1h','frezslbtqrp.png','2016-04-05 05:10:31','3'),('frebrmctnjl','57868','1h','frebrmctnjl.png','2016-04-05 05:10:31','3'),('frebqlrujqm','04212','1h','frebqlrujqm.png','2016-04-05 05:10:31','3'),('frewkfmzmti','17707','1h','frewkfmzmti.png','2016-04-05 05:10:31','3'),('frezlmdrsal','04397','1h','frezlmdrsal.png','2016-04-05 05:10:31','3'),('frerbcjhewu','94837','1h','frerbcjhewu.png','2016-04-05 05:10:31','3'),('frejrloqxme','64875','1h','frejrloqxme.png','2016-04-05 05:10:31','3'),('frelwzmrxpo','21217','1h','frelwzmrxpo.png','2016-04-05 05:10:31','3'),('fregivbmicz','89062','1h','fregivbmicz.png','2016-04-05 05:10:31','3'),('fregqlxwnut','43158','1h','fregqlxwnut.png','2016-04-05 05:10:31','3'),('fregqogjgqx','22667','1h','fregqogjgqx.png','2016-04-05 05:10:31','3');
/*!40000 ALTER TABLE `mt_gen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_hotspot_profile`
--

DROP TABLE IF EXISTS `mt_hotspot_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_hotspot_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(300) NOT NULL,
  `tx` varchar(20) NOT NULL,
  `rx` varchar(20) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_hotspot_profile`
--

LOCK TABLES `mt_hotspot_profile` WRITE;
/*!40000 ALTER TABLE `mt_hotspot_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `mt_hotspot_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_profile`
--

DROP TABLE IF EXISTS `mt_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_profile` (
  `pro_name` varchar(50) NOT NULL,
  `pro_session` varchar(20) NOT NULL,
  `pro_idle` varchar(20) NOT NULL,
  `pro_keepalive` varchar(20) NOT NULL,
  `pro_autorefresh` varchar(20) NOT NULL,
  `pro_uptime` varchar(20) NOT NULL,
  `pro_users` varchar(5) NOT NULL,
  `pro_limit` varchar(20) NOT NULL,
  `pro_addlist` varchar(20) NOT NULL,
  `pro_date` date NOT NULL,
  PRIMARY KEY (`pro_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_profile`
--

LOCK TABLES `mt_profile` WRITE;
/*!40000 ALTER TABLE `mt_profile` DISABLE KEYS */;
INSERT INTO `mt_profile` VALUES ('15Day','15d 00:00:00','00:30:00','08:00:00','00:01:00','1d','1','1M/10M','','2016-01-16');
/*!40000 ALTER TABLE `mt_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-19 12:31:50
