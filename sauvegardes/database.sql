-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: vps353523.ovh.net    Database: g1_bookoffate
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `Action`
--

DROP TABLE IF EXISTS `Action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Action` (
  `idAction` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `descAction` varchar(255) NOT NULL,
  `idIndividu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAction`,`name`,`descAction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='représente une action qui peut être effectuée';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Action`
--

LOCK TABLES `Action` WRITE;
/*!40000 ALTER TABLE `Action` DISABLE KEYS */;
/*!40000 ALTER TABLE `Action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ActionIndividu`
--

DROP TABLE IF EXISTS `ActionIndividu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionIndividu` (
  `idAction` int(11) NOT NULL,
  `idIndividu` int(11) NOT NULL,
  PRIMARY KEY (`idAction`,`idIndividu`),
  KEY `fk_individuAct_idx` (`idIndividu`),
  CONSTRAINT `fk_actionIndiv` FOREIGN KEY (`idAction`) REFERENCES `Action` (`idAction`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_individuAct` FOREIGN KEY (`idIndividu`) REFERENCES `Individu` (`idIndividu`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table de jointure entre Action et Individu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionIndividu`
--

LOCK TABLES `ActionIndividu` WRITE;
/*!40000 ALTER TABLE `ActionIndividu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ActionIndividu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attack`
--

DROP TABLE IF EXISTS `Attack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attack` (
  `idAttack` int(11) NOT NULL,
  `dmg_min` int(11) DEFAULT NULL,
  `dmg_max` int(11) DEFAULT NULL,
  PRIMARY KEY (`idAttack`),
  CONSTRAINT `fk_heritageAction` FOREIGN KEY (`idAttack`) REFERENCES `Action` (`idAction`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='représente l''action d''attaque d''un individu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attack`
--

LOCK TABLES `Attack` WRITE;
/*!40000 ALTER TABLE `Attack` DISABLE KEYS */;
/*!40000 ALTER TABLE `Attack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `idGame` int(11) NOT NULL,
  `nomPartie` varchar(45) DEFAULT NULL,
  `idScenario` int(11) DEFAULT NULL,
  `isOver` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idGame`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='représente une instance d''une partie de jeu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Individu`
--

DROP TABLE IF EXISTS `Individu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Individu` (
  `idIndividu` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  `name` text,
  `level` text,
  `life` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `perception` int(11) DEFAULT NULL,
  `phisical_resistance` int(11) DEFAULT NULL,
  `bleed_resistance` int(11) DEFAULT NULL,
  `magic_resistance` int(11) DEFAULT NULL,
  `picture_link` text,
  PRIMARY KEY (`idIndividu`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Individu`
--

LOCK TABLES `Individu` WRITE;
/*!40000 ALTER TABLE `Individu` DISABLE KEYS */;
INSERT INTO `Individu` VALUES (1,'fantasy','Aboleth','10',135,21,9,18,15,15,17,18,NULL),(2,'fantasy','Acolyte','1/4',9,10,10,10,10,14,10,11,NULL),(3,'fantasy','Adult Black Dragon','14',195,23,14,14,21,13,19,17,NULL),(4,'fantasy','Adult Blue Dracolich','17',225,25,10,16,23,15,19,19,NULL),(5,'fantasy','Adult Blue Dragon','16',225,25,10,16,23,15,19,19,NULL),(6,'fantasy','Adult Brass Dragon','13',172,23,10,14,21,13,18,17,NULL),(7,'fantasy','Adult Bronze Dragon','15',212,25,10,16,23,15,19,19,NULL),(8,'fantasy','Adult Copper Dragon','14',184,23,12,18,21,15,18,17,NULL),(9,'fantasy','Adult Gold Dragon','17',256,27,14,16,25,15,19,24,NULL),(10,'fantasy','Adult Green Dragon','15',207,23,12,18,21,15,19,17,NULL),(11,'fantasy','Adult Red Dragon','17',256,27,10,16,25,13,19,21,NULL),(12,'fantasy','Adult Silver Dragon','16',243,27,10,16,25,13,19,21,NULL),(13,'fantasy','Adult White Dragon','13',200,22,10,8,22,12,18,12,NULL),(14,'fantasy','Air Elemental','5',90,14,20,6,14,10,15,6,NULL),(15,'fantasy','Ancient Black Dragon','21',367,27,14,16,25,15,22,19,NULL),(16,'fantasy','Ancient Blue Dragon','23',481,29,10,18,27,17,22,21,NULL),(17,'fantasy','Ancient Brass Dragon','20',297,27,10,16,25,15,20,19,NULL),(18,'fantasy','Ancient Bronze Dragon','22',444,29,10,18,27,17,22,21,NULL),(19,'fantasy','Ancient Copper Dragon','21',350,27,12,20,25,17,21,19,NULL),(20,'fantasy','Ancient Gold Dragon','24',546,30,14,18,29,17,22,28,NULL),(21,'fantasy','Ancient Green Dragon','22',385,27,12,20,25,17,21,19,NULL),(22,'fantasy','Ancient Red Dragon','24',546,30,10,18,29,15,22,23,NULL),(23,'fantasy','Ancient Silver Dragon','23',487,30,10,18,29,15,22,23,NULL),(24,'fantasy','Ancient White Dragon','20',333,26,10,10,26,13,20,14,NULL),(25,'fantasy','Androsphinx','17',199,22,10,16,20,18,17,23,NULL),(26,'fantasy','Animated Armor','1',33,14,11,1,13,3,18,1,NULL),(27,'fantasy','Ankheg','2',39,17,11,1,13,13,14,6,NULL),(28,'fantasy','Ape','1/2',19,16,14,6,14,12,12,7,NULL),(29,'fantasy','Archmage','12',99,10,14,20,12,15,12,16,NULL),(30,'fantasy','Assassin','8',78,11,16,13,14,11,15,10,NULL),(31,'fantasy','Awakened Shrub','0',10,3,8,10,11,10,9,6,NULL),(32,'fantasy','Awakened Tree','2',59,19,6,10,15,10,13,7,NULL),(33,'fantasy','Axe Beak','1/4',19,14,12,2,12,10,11,5,NULL),(34,'fantasy','Azer','2',39,17,12,12,15,13,17,10,NULL),(35,'fantasy','Baboon','0',3,8,14,4,11,12,12,6,NULL),(36,'fantasy','Badger','0',3,4,11,2,12,12,10,5,NULL),(37,'fantasy','Balor','19',262,26,15,20,22,16,19,22,NULL),(38,'fantasy','Bandit','1/8',11,11,12,10,12,10,12,10,NULL),(39,'fantasy','Bandit Captain','2',65,15,16,14,14,11,15,14,NULL),(40,'fantasy','Barbed Devil','5',110,16,17,12,18,14,15,14,NULL),(41,'fantasy','Basilisk','3',52,16,8,2,15,8,12,7,NULL),(42,'fantasy','Bat','0',1,2,15,2,8,12,12,4,NULL),(43,'fantasy','Bearded Devil','3',52,16,15,9,15,11,13,11,NULL),(44,'fantasy','Behir','11',168,23,16,7,18,14,17,12,NULL),(45,'fantasy','Berserker','2',67,16,12,9,17,11,13,9,NULL),(46,'fantasy','Black Bear','1/2',19,15,10,2,14,12,11,7,NULL),(47,'fantasy','Black Dragon Wyrmling','2',33,15,14,10,13,11,17,13,NULL),(48,'fantasy','Black Pudding','4',85,16,5,1,16,6,7,1,NULL),(49,'fantasy','Blink Dog','1/4',22,12,17,10,12,13,13,11,NULL),(50,'fantasy','Blood Hawk','1/8',7,6,14,3,10,14,12,5,NULL),(51,'fantasy','Blue Dragon Wyrmling','3',52,17,10,12,15,11,17,15,NULL),(52,'fantasy','Boar','1/4',11,13,11,2,12,9,11,5,NULL),(53,'fantasy','Bone Devil','12',142,18,16,13,18,14,19,16,NULL),(54,'fantasy','Brass Dragon Wyrmling','1',16,15,10,10,13,11,16,13,NULL),(55,'fantasy','Bronze Dragon Wyrmling','2',32,17,10,12,15,11,17,15,NULL),(56,'fantasy','Brown Bear','1',34,19,10,2,16,13,11,7,NULL),(57,'fantasy','Bugbear','1',27,15,14,8,13,11,16,9,NULL),(58,'fantasy','Bulette','5',94,19,11,2,21,10,17,5,NULL),(59,'fantasy','Camel','1/8',15,16,8,2,14,8,9,5,NULL),(60,'fantasy','Carrion Crawler','2',51,14,13,1,16,12,13,5,NULL),(61,'fantasy','Cat','0',2,3,15,3,10,12,12,7,NULL),(62,'fantasy','Cave Bear','2',42,20,10,2,16,13,12,7,NULL),(63,'fantasy','Centaur','2',45,18,14,9,14,13,12,11,NULL),(64,'fantasy','Chain Devil','11',85,18,15,11,18,12,16,14,NULL),(65,'fantasy','Chimera','6',114,19,11,3,19,14,14,10,NULL),(66,'fantasy','Chuul','4',93,19,10,5,16,11,16,5,NULL),(67,'fantasy','Clay Golem','9',133,20,9,3,18,8,14,1,NULL),(68,'fantasy','Cloaker','8',78,17,15,13,12,12,14,14,NULL),(69,'fantasy','Cloud Giant','9',200,27,10,12,22,16,14,16,NULL),(70,'fantasy','Cockatrice','1/2',27,6,12,2,12,13,11,5,NULL),(71,'fantasy','Commoner','0',4,10,10,10,10,10,10,10,NULL),(72,'fantasy','Constrictor Snake','1/4',13,15,14,1,12,10,12,3,NULL),(73,'fantasy','Copper Dragon Wyrmling','1',22,15,12,14,13,11,16,13,NULL),(74,'fantasy','Couatl','4',97,16,20,18,17,20,19,18,NULL),(75,'fantasy','Crab','0',2,2,11,1,10,8,11,2,NULL),(76,'fantasy','Crocodile','1/2',19,15,10,2,13,10,12,5,NULL),(77,'fantasy','Cult Fanatic','2',22,11,14,10,12,13,13,14,NULL),(78,'fantasy','Cultist','1/8',9,11,12,10,10,11,12,10,NULL),(79,'fantasy','Darkmantle','1/2',22,16,12,2,13,10,11,5,NULL),(80,'fantasy','Death Dog','1',39,15,14,3,14,13,12,6,NULL),(81,'fantasy','Deep Gnome (Svirfneblin)','1/2',16,15,14,12,14,10,15,9,NULL),(82,'fantasy','Deer','0',4,11,16,2,11,14,13,5,NULL),(83,'fantasy','Deva','10',136,18,18,17,18,20,17,20,NULL),(84,'fantasy','Dire Wolf','1',37,17,15,3,15,12,14,7,NULL),(85,'fantasy','Djinni','11',161,21,15,15,22,16,17,20,NULL),(86,'fantasy','Doppelganger','3',52,11,18,11,14,12,14,14,NULL),(87,'fantasy','Draft Horse','1/4',19,18,10,2,12,11,10,7,NULL),(88,'fantasy','Dragon Turtle','17',341,25,10,10,20,12,20,12,NULL),(89,'fantasy','Dretch','1/4',18,11,11,5,12,8,11,3,NULL),(90,'fantasy','Drider','6',123,16,16,13,18,14,19,12,NULL),(91,'fantasy','Drow','1/4',13,10,14,11,10,11,15,12,NULL),(92,'fantasy','Druid','2',27,10,12,12,13,15,11,11,NULL),(93,'fantasy','Dryad','1',22,10,12,14,11,15,11,18,NULL),(94,'fantasy','Duergar','1',26,14,11,11,14,10,16,9,NULL),(95,'fantasy','Dust Mephit','1/2',17,5,14,9,10,11,12,10,NULL),(96,'fantasy','Eagle','0',3,6,15,2,10,14,12,7,NULL),(97,'fantasy','Earth Elemental','5',126,20,8,5,20,10,17,5,NULL),(98,'fantasy','Efreeti','11',200,22,12,16,24,15,17,16,NULL),(99,'fantasy','Elephant','4',76,22,9,3,17,11,12,6,NULL),(100,'fantasy','Elk','1/4',13,16,10,2,12,10,10,6,NULL),(101,'fantasy','Erinyes','12',153,18,16,14,18,14,18,18,NULL),(102,'fantasy','Ettercap','2',44,14,15,7,13,12,13,8,NULL),(103,'fantasy','Ettin','4',85,21,8,6,17,10,12,8,NULL),(104,'fantasy','Fire Elemental','5',102,10,17,6,16,10,13,7,NULL),(105,'fantasy','Fire Giant','9',162,25,9,10,23,14,18,13,NULL),(106,'fantasy','Flesh Golem','5',93,19,9,6,18,10,9,5,NULL),(107,'fantasy','Flying Snake','1/8',5,4,18,2,11,12,14,5,NULL),(108,'fantasy','Flying Sword','1/4',17,12,15,1,11,5,17,1,NULL),(109,'fantasy','Frog','0',1,1,13,1,8,8,11,3,NULL),(110,'fantasy','Frost Giant','8',138,23,9,9,21,10,15,12,NULL),(111,'fantasy','Gargoyle','2',52,15,11,6,16,11,15,7,NULL),(112,'fantasy','Gelatinous Cube','2',84,14,3,1,20,6,6,1,NULL),(113,'fantasy','Ghast','2',36,16,17,11,10,10,13,8,NULL),(114,'fantasy','Ghost','4',45,7,13,10,10,12,11,17,NULL),(115,'fantasy','Ghoul','1',22,13,15,7,10,10,12,6,NULL),(116,'fantasy','Giant Ape','7',157,23,14,7,18,12,12,7,NULL),(117,'fantasy','Giant Badger','1/4',13,13,10,2,15,12,10,5,NULL),(118,'fantasy','Giant Bat','1/4',22,15,16,2,11,12,13,6,NULL),(119,'fantasy','Giant Boar','2',42,17,10,2,16,7,12,5,NULL),(120,'fantasy','Giant Centipede','1/4',4,5,14,1,12,7,13,3,NULL),(121,'fantasy','Giant Constrictor Snake','2',60,19,14,1,12,10,12,3,NULL),(122,'fantasy','Giant Crab','1/8',13,13,15,1,11,9,15,3,NULL),(123,'fantasy','Giant Crocodile','5',85,21,9,2,17,10,14,7,NULL),(124,'fantasy','Giant Eagle','1',26,16,17,8,13,14,13,10,NULL),(125,'fantasy','Giant Elk','2',42,19,16,7,14,14,15,10,NULL),(126,'fantasy','Giant Fire Beetle','0',4,8,10,1,12,7,13,3,NULL),(127,'fantasy','Giant Frog','1/4',18,12,13,2,11,10,11,3,NULL),(128,'fantasy','Giant Goat','1/2',19,17,11,3,12,12,11,6,NULL),(129,'fantasy','Giant Hyena','1',45,16,14,2,14,12,12,7,NULL),(130,'fantasy','Giant Lizard','1/4',19,15,12,2,13,10,12,5,NULL),(131,'fantasy','Giant Octopus','1',52,17,13,4,13,10,11,4,NULL),(132,'fantasy','Giant Owl','1/4',19,13,15,8,12,13,12,10,NULL),(133,'fantasy','Giant Poisonous Snake','1/4',11,10,18,2,13,10,14,3,NULL),(134,'fantasy','Giant Rat','1/8',7,7,15,2,11,10,12,4,NULL),(135,'fantasy','Giant Rat (Diseased)','1/8',7,7,15,2,11,10,12,4,NULL),(136,'fantasy','Giant Scorpion','3',52,15,13,1,15,9,15,3,NULL),(137,'fantasy','Giant Sea Horse','1/2',16,12,15,2,11,12,13,5,NULL),(138,'fantasy','Giant Shark','5',126,23,11,1,21,10,13,5,NULL),(139,'fantasy','Giant Spider','1',26,14,16,2,12,11,14,4,NULL),(140,'fantasy','Giant Toad','1',39,15,13,2,13,10,11,3,NULL),(141,'fantasy','Giant Vulture','1',22,15,10,6,15,12,10,7,NULL),(142,'fantasy','Giant Wasp','1/2',13,10,14,1,10,10,12,3,NULL),(143,'fantasy','Giant Weasel','1/8',9,11,16,4,10,12,13,5,NULL),(144,'fantasy','Giant Wolf Spider','1/4',11,12,16,3,13,12,13,4,NULL),(145,'fantasy','Gibbering Mouther','2',67,10,8,3,16,10,9,6,NULL),(146,'fantasy','Glabrezu','9',157,20,15,19,21,17,17,16,NULL),(147,'fantasy','Gladiator','5',112,18,15,10,16,12,16,15,NULL),(148,'fantasy','Gnoll','1/2',22,14,12,6,11,10,15,7,NULL),(149,'fantasy','Goat','0',4,12,10,2,11,10,10,5,NULL),(150,'fantasy','Goblin','1/4',7,8,14,10,10,8,15,8,NULL),(151,'fantasy','Gold Dragon Wyrmling','3',60,19,14,14,17,11,17,16,NULL),(152,'fantasy','Gorgon','5',114,20,11,2,18,12,19,7,NULL),(153,'fantasy','Gray Ooze','1/2',22,12,6,1,16,6,8,2,NULL),(154,'fantasy','Green Dragon Wyrmling','2',38,15,12,14,13,11,17,13,NULL),(155,'fantasy','Green Hag','3',82,18,12,13,16,14,17,14,NULL),(156,'fantasy','Grick','2',27,14,14,3,11,14,14,5,NULL),(157,'fantasy','Griffon','2',59,18,15,2,16,13,12,8,NULL),(158,'fantasy','Grimlock','1/4',11,16,12,9,12,8,11,6,NULL),(159,'fantasy','Guard','1/8',11,13,12,10,12,11,16,10,NULL),(160,'fantasy','Guardian Naga','10',127,19,18,16,16,19,18,18,NULL),(161,'fantasy','Gynosphinx','11',136,18,15,18,16,18,17,18,NULL),(162,'fantasy','Half-Red Dragon Veteran','5',65,16,13,10,14,11,18,10,NULL),(163,'fantasy','Harpy','1',38,12,13,7,12,10,11,13,NULL),(164,'fantasy','Hawk','0',1,5,16,2,8,14,13,6,NULL),(165,'fantasy','Hell Hound','3',45,17,12,6,14,13,15,6,NULL),(166,'fantasy','Hezrou','8',136,19,17,5,20,12,16,13,NULL),(167,'fantasy','Hill Giant','5',105,21,8,5,19,9,13,6,NULL),(168,'fantasy','Hippogriff','1',19,17,13,2,13,12,11,8,NULL),(169,'fantasy','Hobgoblin','1/2',11,13,12,10,12,10,18,9,NULL),(170,'fantasy','Homunculus','0',5,4,15,10,11,10,13,7,NULL),(171,'fantasy','Horned Devil','11',148,22,17,12,21,16,18,17,NULL),(172,'fantasy','Hunter Shark','2',45,18,13,1,15,10,12,4,NULL),(173,'fantasy','Hydra','8',172,20,12,2,20,10,15,7,NULL),(174,'fantasy','Hyena','0',5,11,13,2,12,12,11,5,NULL),(175,'fantasy','Ice Devil','14',180,21,14,18,18,15,18,18,NULL),(176,'fantasy','Ice Mephit','1/2',21,7,13,9,10,11,11,12,NULL),(177,'fantasy','Imp','1',10,6,17,11,13,12,13,14,NULL),(178,'fantasy','Invisible Stalker','6',104,16,19,10,14,15,14,11,NULL),(179,'fantasy','Iron Golem','16',210,24,9,3,20,11,20,1,NULL),(180,'fantasy','Jackal','0',3,8,15,3,11,12,12,6,NULL),(181,'fantasy','Killer Whale','3',90,19,10,3,13,12,12,7,NULL),(182,'fantasy','Knight','3',52,16,11,11,14,11,18,15,NULL),(183,'fantasy','Kobold','1/8',5,7,15,8,9,7,12,8,NULL),(184,'fantasy','Kraken','23',472,30,11,22,25,18,18,20,NULL),(185,'fantasy','Lamia','4',97,16,13,14,15,15,13,16,NULL),(186,'fantasy','Lemure','0',13,10,5,1,11,11,7,3,NULL),(187,'fantasy','Lich','21',135,11,16,20,16,14,17,16,NULL),(188,'fantasy','Lion','1',26,17,15,3,13,12,12,8,NULL),(189,'fantasy','Lizard','0',2,2,11,1,10,8,10,3,NULL),(190,'fantasy','Lizardfolk','1/2',22,15,10,7,13,12,15,7,NULL),(191,'fantasy','Mage','6',40,9,14,17,11,12,12,11,NULL),(192,'fantasy','Magma Mephit','1/2',22,8,12,7,12,10,11,10,NULL),(193,'fantasy','Magmin','1/2',9,7,15,8,12,11,14,10,NULL),(194,'fantasy','Mammoth','6',126,24,9,3,21,11,13,6,NULL),(195,'fantasy','Manticore','3',68,17,16,7,17,12,14,8,NULL),(196,'fantasy','Marilith','16',189,18,20,18,20,16,18,20,NULL),(197,'fantasy','Mastiff','1/8',5,13,14,3,12,12,12,7,NULL),(198,'fantasy','Medusa','6',127,10,15,12,16,13,15,15,NULL),(199,'fantasy','Merfolk','1/8',11,10,13,11,12,11,11,12,NULL),(200,'fantasy','Merrow','2',45,18,10,8,15,10,13,9,NULL),(201,'fantasy','Mimic','2',58,17,12,5,15,13,12,8,NULL),(202,'fantasy','Minotaur','3',76,18,11,6,16,16,14,9,NULL),(203,'fantasy','Minotaur Skeleton','2',67,18,11,6,15,8,12,5,NULL),(204,'fantasy','Mule','1/8',11,14,10,2,13,10,10,5,NULL),(205,'fantasy','Mummy','3',58,16,8,6,15,10,11,12,NULL),(206,'fantasy','Mummy Lord','15',97,18,10,11,17,18,17,16,NULL),(207,'fantasy','Nalfeshnee','13',184,21,10,19,22,12,18,15,NULL),(208,'fantasy','Night Hag','5',112,18,15,16,16,14,17,16,NULL),(209,'fantasy','Nightmare','3',68,18,15,10,16,13,13,15,NULL),(210,'fantasy','Noble','1/8',9,11,12,12,11,14,15,16,NULL),(211,'fantasy','Ochre Jelly','2',45,15,6,2,14,6,8,1,NULL),(212,'fantasy','Octopus','0',3,4,15,3,11,10,12,4,NULL),(213,'fantasy','Ogre','2',59,19,8,5,16,7,11,7,NULL),(214,'fantasy','Ogre Zombie','2',85,19,6,3,18,6,8,5,NULL),(215,'fantasy','Oni','7',110,19,11,14,16,12,16,15,NULL),(216,'fantasy','Orc','1/2',15,16,12,7,16,11,13,10,NULL),(217,'fantasy','Otyugh','5',114,16,11,6,19,13,14,6,NULL),(218,'fantasy','Owl','0',1,3,13,2,8,12,11,7,NULL),(219,'fantasy','Owlbear','3',59,20,12,3,17,12,13,7,NULL),(220,'fantasy','Panther','1/4',13,14,15,3,10,14,12,7,NULL),(221,'fantasy','Pegasus','2',59,18,15,10,16,15,12,13,NULL),(222,'fantasy','Phase Spider','3',32,15,15,6,12,10,13,6,NULL),(223,'fantasy','Pit Fiend','20',300,26,14,22,24,18,19,24,NULL),(224,'fantasy','Planetar','16',200,24,20,19,24,22,19,25,NULL),(225,'fantasy','Plesiosaurus','2',68,18,15,2,16,12,13,5,NULL),(226,'fantasy','Poisonous Snake','1/8',2,2,16,1,11,10,13,3,NULL),(227,'fantasy','Polar Bear','2',42,20,10,2,16,13,12,7,NULL),(228,'fantasy','Pony','1/8',11,15,10,2,13,11,10,7,NULL),(229,'fantasy','Priest','2',27,10,10,13,12,16,13,13,NULL),(230,'fantasy','Pseudodragon','1/4',7,6,15,10,13,12,13,10,NULL),(231,'fantasy','Purple Worm','15',247,28,7,1,22,8,18,4,NULL),(232,'fantasy','Quasit','1',7,5,17,7,10,10,13,10,NULL),(233,'fantasy','Quipper','0',1,2,16,1,9,7,13,2,NULL),(234,'fantasy','Rakshasa','13',110,14,17,13,18,16,16,20,NULL),(235,'fantasy','Rat','0',1,2,11,2,9,10,10,4,NULL),(236,'fantasy','Raven','0',1,2,14,2,8,12,12,6,NULL),(237,'fantasy','Red Dragon Wyrmling','4',75,19,10,12,17,11,17,15,NULL),(238,'fantasy','Reef Shark','1/2',22,14,13,1,13,10,12,4,NULL),(239,'fantasy','Remorhaz','11',195,24,13,4,21,10,17,5,NULL),(240,'fantasy','Rhinoceros','2',45,21,8,2,15,12,11,6,NULL),(241,'fantasy','Riding Horse','1/4',13,16,10,2,12,11,10,7,NULL),(242,'fantasy','Roc','11',248,28,10,3,20,10,15,9,NULL),(243,'fantasy','Roper','5',93,18,8,7,17,16,20,6,NULL),(244,'fantasy','Rug of Smothering','2',33,17,14,1,10,3,12,1,NULL),(245,'fantasy','Rust Monster','1/2',27,13,12,2,13,13,14,6,NULL),(246,'fantasy','Saber-Toothed Tiger','2',52,18,14,3,15,12,12,8,NULL),(247,'fantasy','Sahuagin','1/2',22,13,11,12,12,13,12,9,NULL),(248,'fantasy','Salamander','5',90,18,14,11,15,10,15,12,NULL),(249,'fantasy','Satyr','1/2',31,12,16,12,11,10,14,14,NULL),(250,'fantasy','Scorpion','0',1,2,11,1,8,8,11,2,NULL),(251,'fantasy','Scout','1/2',16,11,14,11,12,13,13,11,NULL),(252,'fantasy','Sea Hag','2',52,16,13,12,16,12,14,13,NULL),(253,'fantasy','Sea Horse','0',1,1,12,1,8,10,11,2,NULL),(254,'fantasy','Shadow','1/2',16,6,14,6,13,10,12,8,NULL),(255,'fantasy','Shambling Mound','5',136,18,8,5,16,10,15,5,NULL),(256,'fantasy','Shield Guardian','7',142,18,8,7,18,10,17,3,NULL),(257,'fantasy','Shrieker','0',13,1,1,1,10,3,5,1,NULL),(258,'fantasy','Silver Dragon Wyrmling','2',45,19,10,12,17,11,17,15,NULL),(259,'fantasy','Skeleton','1/4',13,10,14,6,15,8,13,5,NULL),(260,'fantasy','Solar','21',243,26,22,25,26,25,21,30,NULL),(261,'fantasy','Specter','1',22,1,14,10,11,10,12,11,NULL),(262,'fantasy','Spider','0',1,2,14,1,8,10,12,2,NULL),(263,'fantasy','Spirit Naga','8',75,18,17,16,14,15,15,16,NULL),(264,'fantasy','Sprite','1/4',2,3,18,14,10,13,15,11,NULL),(265,'fantasy','Spy','1',27,10,15,12,10,14,12,16,NULL),(266,'fantasy','Steam Mephit','1/4',21,5,11,11,10,10,10,12,NULL),(267,'fantasy','Stirge','1/8',2,4,16,2,11,8,14,6,NULL),(268,'fantasy','Stone Giant','7',126,23,15,10,20,12,17,9,NULL),(269,'fantasy','Stone Golem','10',178,22,9,3,20,11,17,1,NULL),(270,'fantasy','Storm Giant','13',230,29,14,16,20,18,16,18,NULL),(271,'fantasy','Succubus/Incubus','4',66,8,17,15,13,12,15,20,NULL),(272,'fantasy','Swarm of Bats','1/4',22,5,15,2,10,12,12,4,NULL),(273,'fantasy','Swarm of Beetles','1/2',22,3,13,1,10,7,12,1,NULL),(274,'fantasy','Swarm of Centipedes','1/2',22,3,13,1,10,7,12,1,NULL),(275,'fantasy','Swarm of Insects','1/2',22,3,13,1,10,7,12,1,NULL),(276,'fantasy','Swarm of Poisonous Snakes','2',36,8,18,1,11,10,14,3,NULL),(277,'fantasy','Swarm of Quippers','1',28,13,16,1,9,7,13,2,NULL),(278,'fantasy','Swarm of Rats','1/4',24,9,11,2,9,10,10,3,NULL),(279,'fantasy','Swarm of Ravens','1/4',24,6,14,3,8,12,12,6,NULL),(280,'fantasy','Swarm of Spiders','1/2',22,3,13,1,10,7,12,1,NULL),(281,'fantasy','Swarm of Wasps','1/2',22,3,13,1,10,7,12,1,NULL),(282,'fantasy','Tarrasque','30',676,30,11,3,30,11,25,11,NULL),(283,'fantasy','Thug','1/2',32,15,11,10,14,10,11,11,NULL),(284,'fantasy','Tiger','1',37,17,15,3,14,12,12,8,NULL),(285,'fantasy','Treant','9',138,23,8,12,21,16,16,12,NULL),(286,'fantasy','Tribal Warrior','1/8',11,13,11,8,12,11,12,8,NULL),(287,'fantasy','Triceratops','5',95,22,9,2,17,11,13,5,NULL),(288,'fantasy','Troll','5',84,18,13,7,20,9,15,7,NULL),(289,'fantasy','Tyrannosaurus Rex','8',136,25,10,2,19,12,13,9,NULL),(290,'fantasy','Unicorn','5',67,18,14,11,15,17,12,16,NULL),(291,'fantasy','Vampire','13',144,18,18,17,18,15,16,18,NULL),(292,'fantasy','Vampire Spawn','5',82,16,16,11,16,10,15,12,NULL),(293,'fantasy','Veteran','3',58,16,13,10,14,11,17,10,NULL),(294,'fantasy','Violet Fungus','1/4',18,3,1,1,10,3,5,1,NULL),(295,'fantasy','Vrock','6',104,17,15,8,18,13,15,8,NULL),(296,'fantasy','Vulture','0',5,7,10,2,13,12,10,4,NULL),(297,'fantasy','Warhorse','1/2',19,18,12,2,13,12,11,7,NULL),(298,'fantasy','Warhorse Skeleton','1/2',22,18,12,2,15,8,13,5,NULL),(299,'fantasy','Water Elemental','5',114,18,14,5,18,10,14,8,NULL),(300,'fantasy','Weasel','0',1,3,16,2,8,12,13,3,NULL),(301,'fantasy','Werebear','5',135,19,10,11,17,12,10,12,NULL),(302,'fantasy','Wereboar','4',78,17,10,10,15,11,10,8,NULL),(303,'fantasy','Wererat','2',33,10,15,11,12,10,12,8,NULL),(304,'fantasy','Weretiger','4',120,17,15,10,16,13,12,11,NULL),(305,'fantasy','Werewolf','3',58,15,13,10,14,11,11,10,NULL),(306,'fantasy','White Dragon Wyrmling','2',32,14,10,5,14,10,16,11,NULL),(307,'fantasy','Wight','3',45,15,14,10,16,13,14,15,NULL),(308,'fantasy','Will-o\'-Wisp','2',22,1,28,13,10,14,19,11,NULL),(309,'fantasy','Winter Wolf','3',75,18,13,7,14,12,13,8,NULL),(310,'fantasy','Wolf','1/4',11,12,15,3,12,12,13,6,NULL),(311,'fantasy','Worg','1/2',26,16,13,7,13,11,13,8,NULL),(312,'fantasy','Wraith','5',67,6,16,12,16,14,13,15,NULL),(313,'fantasy','Wyvern','6',110,19,10,5,16,12,13,6,NULL),(314,'fantasy','Xorn','5',73,17,10,11,22,10,19,11,NULL),(315,'fantasy','Young Black Dragon','7',127,19,14,12,17,11,18,15,NULL),(316,'fantasy','Young Blue Dragon','9',152,21,10,14,19,13,18,17,NULL),(317,'fantasy','Young Brass Dragon','6',110,19,10,12,17,11,17,15,NULL),(318,'fantasy','Young Bronze Dragon','8',142,21,10,14,19,13,18,17,NULL),(319,'fantasy','Young Copper Dragon','7',119,19,12,16,17,13,17,15,NULL),(320,'fantasy','Young Gold Dragon','10',178,23,14,16,21,13,18,20,NULL),(321,'fantasy','Young Green Dragon','8',136,19,12,16,17,13,18,15,NULL),(322,'fantasy','Young Red Dragon','10',178,23,10,14,21,11,18,19,NULL),(323,'fantasy','Young Silver Dragon','9',168,23,10,14,21,11,18,19,NULL),(324,'fantasy','Young White Dragon','6',133,18,10,6,18,11,17,12,NULL),(325,'fantasy','Zombie','1/4',22,13,6,3,16,6,8,5,NULL);
/*!40000 ALTER TABLE `Individu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Item` (
  `idItem` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `descItem` varchar(45) DEFAULT NULL,
  `attribut` enum('strengh','dexterity','intelligence','perception') NOT NULL,
  `puissance` int(11) DEFAULT NULL,
  PRIMARY KEY (`idItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='représente un objet que l''on peut rencontrer dans le jeu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemScenario`
--

DROP TABLE IF EXISTS `ItemScenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ItemScenario` (
  `idScenario` int(11) NOT NULL,
  `idItem` int(11) NOT NULL,
  KEY `fk_itemsc_idx` (`idItem`),
  KEY `fk_itemScenario_idx` (`idScenario`),
  CONSTRAINT `fk_itemScenario` FOREIGN KEY (`idScenario`) REFERENCES `Scenario` (`idScenario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_itemsc` FOREIGN KEY (`idItem`) REFERENCES `Item` (`idItem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table de jointure entre Item et Scenario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemScenario`
--

LOCK TABLES `ItemScenario` WRITE;
/*!40000 ALTER TABLE `ItemScenario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ItemScenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NextPath`
--

DROP TABLE IF EXISTS `NextPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NextPath` (
  `idPath` int(11) NOT NULL,
  `idNextPath` int(11) DEFAULT NULL,
  KEY `fk_nextpath_idx` (`idNextPath`,`idPath`),
  KEY `fk_idnextpath_idx` (`idPath`),
  CONSTRAINT `fk_idnextpath` FOREIGN KEY (`idPath`) REFERENCES `Path` (`idPath`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idpath` FOREIGN KEY (`idNextPath`) REFERENCES `Path` (`idPath`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table caractérisant le prochain chemin suivant dans le scenario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NextPath`
--

LOCK TABLES `NextPath` WRITE;
/*!40000 ALTER TABLE `NextPath` DISABLE KEYS */;
INSERT INTO `NextPath` VALUES (1,2),(1,3),(2,4),(4,5),(5,6),(16,6),(6,7),(11,7),(15,7),(19,7),(22,7),(27,7),(32,7),(34,7),(36,7),(6,8),(11,8),(15,8),(19,8),(22,8),(27,8),(32,8),(34,8),(36,8),(4,9),(9,10),(10,11),(5,12),(10,14),(14,15),(20,15),(9,16),(14,17),(20,17),(2,18),(18,19),(18,20),(18,21),(21,22),(21,23),(3,24),(24,25),(28,25),(31,25),(33,25),(35,25),(24,26),(26,27),(24,29),(3,30),(30,31),(31,32),(30,33),(33,34),(30,35),(35,36);
/*!40000 ALTER TABLE `NextPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Path`
--

DROP TABLE IF EXISTS `Path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Path` (
  `idPath` int(11) NOT NULL AUTO_INCREMENT,
  `descriptionPath` text,
  `isInCombat` tinyint(1) DEFAULT '0',
  `jet` enum('false','intel','strength','fate','dexterity','perception') DEFAULT 'false',
  `isSucces` tinyint(1) NOT NULL DEFAULT '0',
  `checkValue` enum('false','gold') DEFAULT 'false',
  PRIMARY KEY (`idPath`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='représente un chemin; un embranchement dans le scénario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Path`
--

LOCK TABLES `Path` WRITE;
/*!40000 ALTER TABLE `Path` DISABLE KEYS */;
INSERT INTO `Path` VALUES (1,'Vous venez d’arriver la planète Trantor III. L’air est lourd et votre voyage, bien que peu remuant, vous a épuisé. Vous êtes débarqué sur le tarmac, votre taxi spatial décharge ses autres cargaisons et vous avez sur vous votre alcool de contrebande.',0,'false',0,'false'),(2,'Vous passez la douane en essayant de corrompre le garde de sécurité',0,'fate',0,'false'),(3,'Vous prenez le risque de vous cacher dans une des cargaisons de votre précédent taxi. Une fois à l’abri, vous sentez le speeder de transport soulever doucement votre poids ainsi que le reste de la cargaison puis, se mettre en marche\n',0,'dexterity',0,'false'),(4,'Le garde vous ordonne de vous stopper non loin, il s’approche de vous et semble vouloir vous demander quelque chose :\n“Ce que tu m’as donné ne suffit pas, il faut que tu rajoutes au moins 60 crédits, la vie est difficile en ce moment tu sais.',0,'false',0,'gold'),(5,'Payez la somme supplémentaire demandée.',0,'fate',0,'false'),(6,'“Merci mon ami , passez un bon séjour sur Trantor III.” , après avoir quitté le spatioport, plusieurs choix s’offrent à vous :',0,'false',1,'false'),(7,'A partir de là, vous commencez à chercher un hotel pour passer la nuit afin d’être reposée pour refourguer votre marchandise demain.',0,'false',0,'false'),(8,' Vous vous rendez directement chez votre contact dans le centre de la ruche Aèrmorha, à l’intérieur des habitations à corridors étroits et insalubres, afin de partir le plus vite possible de cette planète de merde. ',0,'false',0,'false'),(9,'Vous n’avez pas la somme demandée, vous tentez de faire comprendre au garde que vous n’avez pas les moyens de payer ce supplément comme il l’a dit, les temps sont durs pour tout le monde.',0,'intel',0,'false'),(10,'Le garde vous regarde sans l’ombre d’une pitié et commence à fouiller dans ses poches à la recherche de menottes. Il vous dit : “Soit vous nous laissez une partie de votre cargaison, soit on vous colle au trou pour trafic de contrebande, à vous de décider.”\n',0,'false',0,'false'),(11,'Vous laissez la moitié de votre marchandise, tant pis , vous augmenterez le prix de votre matériel récent pour compenser et vous notez dans un coin de votre tête à faire payer à cette saleté.',0,'false',0,'false'),(12,'Ce garde accepte dans un premier temps le supplément mais vous devez le suivre dans un passage dérobé. A ce moment, vous vous retrouvez dans une pièce mal éclairée avec 5 gardes d’humeur taciturne. Ils décident d’un commun accord de vous  maltraiter et prennent tout vos biens avant de vous jeter dans la rue, juste devant le spatioport. A côté des poubelles.\n',0,'false',0,'false'),(14,'Vous regardez autour de vous si il n’y a personne d’autre puis, vous tentez d’assommer le garde et de partir en courant avec votre cargaison sous le bras.',0,'strength',0,'false'),(15,'Vous y arrivez !  Coup de chance il était bien seul, et vous passez la douane incognito.\n',0,'false',1,'false'),(16,'Dans un jour de bonté le garde vous laisse passer avec votre marchandise intacte',0,'false',1,'false'),(17,'Arf malheureusement, vous n’êtes pas le premier a essayer de passer comme cela, et il se trouve que vous affrontez le triple champion interplanétaire de free-fight galactique. Le garde vous prend votre cargaison, vous perdez trois dents, et vous passez la semaine dans les geôles de la planète.  A votre sortie, vous êtes abattu par des chasseurs de prime envoyer par votre commanditaire.',0,'false',0,'false'),(18,'Le garde vous regarde, baisse rapidement les yeux vers votre main tendue, jette un regard à sa gauche et sa droite pour vérifier que personne ne remarquent puis vous serre la main fermement en annonçant d’un ton haut et fort qui sonne presque faux : “Bienvenue sur Trantor III citoyen! En espérant que vous passerez un agréable séjour, nous sommes ravis de vous voir !”\n',0,'false',1,'false'),(19,'Vous relâchez la pression dans votre main afin que les crédits qui y était tombent dans la paume du garde\n',0,'false',0,'false'),(20,'Vous calez rapidement votre bouteille contre votre aisselle avant de décrocher un coup de coude magistral dans la jugulaire du garde douanier\n',0,'strength',0,'false'),(21,'Vous lui laissez l’argent mais vous vous employez à lui prendre son arme qui pend à sa ceinture :\n',0,'dexterity',0,'false'),(22,'Vos années de services dans les ruches mondes de Narthias n’ont pas servi à rien ! Certes, vous avez perdu une somme certaine, mais vous avez pu lui subtiliser un pistolet à ion régimentaire, vous pourrez sûrement en tirer un bon prix au marché noir ! et au pire cela vous fait une arme pour vous défendre en cas de pépin.\r ',0,'false',1,'false'),(23,'Alors que vous lanciez votre bras afin d’ouvrir le holster de l’arme, vous avez oublié un léger détail… vous avez la discrétion d’un éléphant Mandragorien. Le garde vous voit et vous décoche une droite venue d’ailleurs, lorsque vous vous réveillés, vous êtes en cellule de détention et vous savez déjà qu’à votre sortie, vous êtes mort, votre commanditaire ne laissera pas passer cela.',0,'false',0,'false'),(24,'Votre taxi vous remarque et ne semble pas très content de vos incivilités, d’ailleurs, vous ne lui avez même pas filer de pourboire pendant le trajet, il vous réclame de l’argent pour acheter son silence.\n',0,'false',0,'false'),(25,'Vous le suppliez et vous payer même avec plaisir un supplément en espérant qu’il ne vous dénonce pas malgré tout.\nIl vous remercie avec un sourire inquiétant, avant de sortir son arme et de vous exécuter tel un chien. Vous êtes mort.\n',0,'false',0,'false'),(26,'Vous décidez que ce taxi low cost n’a décidément pas un ton très cordial avec vous et qu’il se calmera peut être après plusieurs rencontres répétées entre sa tête et vos poings.',0,'false',0,'false'),(27,'Vous transformez son visage en patatoïde et le laissez dans une ruelle sombre, près des rats, à baigner dans son sang. Il l’avait bien cherché.',0,'false',1,'false'),(28,'Vous êtes un babtou vous ne savez pas vous battre. Et ça se voit.',0,'false',0,'false'),(29,'Vous n’avez pas les moyens de payer son supplément demandé et vous tentez de l’amadouer en lui parlant de votre femme et de vos 10 enfants entrain de mourir de faim sur Rogulus 3, une planète situé à plusieurs parsecs. Mais ce chauffeur n’as pas de coeur et vous emmener donc a la police qui vous reconnais et vous conduise donc en prison jusqu\'à la fin de vos jours.',0,'false',0,'false'),(30,'Pendant que votre transport passe la douane, votre habileté vous a fait rentrer dans un compartiment secret à l\'arrière de cette cargaison,  vous y trouvez une arme que le chauffeur a dû dissimuler pour se défendre contre les malfrat de votre espèce.\n',0,'false',1,'false'),(31,'Vole le flingue',0,'dexterity',0,'false'),(32,'le braquer, pour voler la cargaison ainsi que son speeder',0,'false',1,'false'),(33,'s’enfuir de la cachette pour retourner à vos occupation pour vendre votre alcool de contrebande',0,'dexterity',0,'false'),(34,'Profitant d’un bref instant d’inattention, vous roulez hors de la cargaison dans un petit renfoncement à l’odeur douteuse. Personne ne semble vous avoir remarquer. à part une souris, qui s’enfuit de panique à votre arrivée. ',0,'false',1,'false'),(35,'Vole juste les munitions ',0,'false',0,'false'),(36,'Vous le suppliez et vous payer même avec plaisir un supplément en espérant qu’il ne vous dénonce pas malgré tout.\nIl vous remercie avec un sourire inquiétant, avant de sortir son arme et… *click*click*click* .. son arme est vide! Fuyez! \n',0,'false',1,'false');
/*!40000 ALTER TABLE `Path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Player`
--

DROP TABLE IF EXISTS `Player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Player` (
  `idPlayer` int(11) NOT NULL,
  `nom` varchar(15) DEFAULT NULL,
  `idGame` int(11) DEFAULT NULL,
  `fate` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPlayer`),
  KEY `fk_game_idx` (`idGame`),
  CONSTRAINT `fk_game` FOREIGN KEY (`idGame`) REFERENCES `Game` (`idGame`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='représente l''entité du joueur';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Player`
--

LOCK TABLES `Player` WRITE;
/*!40000 ALTER TABLE `Player` DISABLE KEYS */;
/*!40000 ALTER TABLE `Player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `idRole` int(11) NOT NULL,
  `idScenario` int(11) DEFAULT NULL,
  `idIndividu` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRole`),
  KEY `fk_indivu_idx` (`idIndividu`),
  KEY `fk_scenario_idx` (`idScenario`),
  CONSTRAINT `fk_indivu` FOREIGN KEY (`idIndividu`) REFERENCES `Individu` (`idIndividu`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_scenario` FOREIGN KEY (`idScenario`) REFERENCES `Scenario` (`idScenario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='table definissant un role pour un individu et lié à un scénario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Scenario`
--

DROP TABLE IF EXISTS `Scenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Scenario` (
  `idScenario` int(11) NOT NULL AUTO_INCREMENT,
  `idPathStart` int(11) NOT NULL,
  `descriptionScenario` varchar(255) DEFAULT NULL,
  `nomScenario` varchar(50) NOT NULL DEFAULT 'Scénario inconnu',
  `imageScenario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idScenario`),
  KEY `fk_path_idx` (`idPathStart`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='représente une instance de classe d''un scénario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Scenario`
--

LOCK TABLES `Scenario` WRITE;
/*!40000 ALTER TABLE `Scenario` DISABLE KEYS */;
INSERT INTO `Scenario` VALUES (1,1,'Incarnez un contrebandier dans un univers futuriste','Scénario SF','http://i62.servimg.com/u/f62/11/12/11/11/territ15.jpg'),(2,1,'Plongez dans un univers médiéval fantastique et mettez fin à la guerre qui fait rage','Scénario Médiéval-Fantastique','http://cdn03.overnature.net/5120/15-fotos-de-la-naturaleza-salvaje-y-rebelde-conquistados.jpg');
/*!40000 ALTER TABLE `Scenario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-28 20:04:44
