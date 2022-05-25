CREATE DATABASE  IF NOT EXISTS `tbolt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tbolt`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tbolt
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `allegati`
--

DROP TABLE IF EXISTS `allegati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `allegati` (
  `id` bigint(20) NOT NULL,
  `data` longblob,
  `nome` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allegati`
--

LOCK TABLES `allegati` WRITE;
/*!40000 ALTER TABLE `allegati` DISABLE KEYS */;
/*!40000 ALTER TABLE `allegati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `to_do_list_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKang7q0v5noelfvekakrpa8538` (`to_do_list_id`),
  CONSTRAINT `FKang7q0v5noelfvekakrpa8538` FOREIGN KEY (`to_do_list_id`) REFERENCES `to_do_list` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (80,'Todo da fare','Todo',1,79),(81,'In corso','Doing',2,79),(82,'Fatto','Done',8,79);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_list_item`
--

DROP TABLE IF EXISTS `check_list_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `check_list_item` (
  `id` bigint(20) NOT NULL,
  `costo_unitario` double DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `misura_ricorrenza` varchar(255) DEFAULT NULL,
  `periodo_di_ricorrenza` double DEFAULT NULL,
  `qta` double DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `unita_misura` varchar(255) DEFAULT NULL,
  `modello_check_list_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8kjwn09b0qxa8v9val6dltlu6` (`modello_check_list_id`),
  KEY `FKhu3dj7mmebmfcmls8njn48c2h` (`parent_id`),
  CONSTRAINT `FK8kjwn09b0qxa8v9val6dltlu6` FOREIGN KEY (`modello_check_list_id`) REFERENCES `modello_check_list` (`id`),
  CONSTRAINT `FKhu3dj7mmebmfcmls8njn48c2h` FOREIGN KEY (`parent_id`) REFERENCES `check_list_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_list_item`
--

LOCK TABLES `check_list_item` WRITE;
/*!40000 ALTER TABLE `check_list_item` DISABLE KEYS */;
INSERT INTO `check_list_item` VALUES (20,1,'ITEM 1','mensilmente',3,2,'titolo 1','GIORNI UOMO',21,NULL),(22,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',23,NULL),(25,2,'ITEM 2','mensilmente',3,2,'titolo 2','GIORNI UOMO',26,NULL),(27,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',28,NULL),(30,3,'ITEM 3','mensilmente',3,2,'titolo 3','GIORNI UOMO',31,NULL),(32,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',33,NULL),(35,4,'ITEM 4','mensilmente',3,2,'titolo 4','GIORNI UOMO',36,NULL),(37,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',38,NULL),(40,5,'ITEM 5','mensilmente',3,2,'titolo 5','GIORNI UOMO',41,NULL),(42,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',43,NULL),(45,6,'ITEM 6','mensilmente',3,2,'titolo 6','GIORNI UOMO',46,NULL),(47,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',48,NULL),(50,7,'ITEM 7','mensilmente',3,2,'titolo 7','GIORNI UOMO',51,NULL),(52,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',53,NULL),(55,8,'ITEM 8','mensilmente',3,2,'titolo 8','GIORNI UOMO',56,NULL),(57,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',58,NULL),(60,9,'ITEM 9','mensilmente',3,2,'titolo 9','GIORNI UOMO',61,NULL),(62,34.5,'ITEM40','mensilmente',3,2,'titolo40','GIORNI UOMO',63,NULL),(89,1,'ITEM 1','mensilmente',3,2,'titolo 1','GIORNI UOMO',88,NULL),(99,2,'ITEM 2','mensilmente',3,2,'titolo 2','GIORNI UOMO',98,NULL);
/*!40000 ALTER TABLE `check_list_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile`
--

DROP TABLE IF EXISTS `documentabile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `scadenza` date DEFAULT NULL,
  `sito_web` varchar(255) DEFAULT NULL,
  `stato` int(11) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `obbligatorio` bit(1) DEFAULT NULL,
  `rif_capitolato` varchar(255) DEFAULT NULL,
  `stato_requisito` varchar(255) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `perc_completamento` int(11) DEFAULT NULL,
  `bando_id` bigint(20) DEFAULT NULL,
  `board_id` bigint(20) DEFAULT NULL,
  `tipologia_persona_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1t5i99vp2pbho9a6u7obhrvi0` (`bando_id`),
  KEY `FKo1hidhhkq2s8g9ggrcp5v90wg` (`board_id`),
  KEY `FKmf4fiddouf87vx6kst9x23fh1` (`tipologia_persona_id`),
  CONSTRAINT `FK1t5i99vp2pbho9a6u7obhrvi0` FOREIGN KEY (`bando_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKmf4fiddouf87vx6kst9x23fh1` FOREIGN KEY (`tipologia_persona_id`) REFERENCES `tipologia_persona` (`id`),
  CONSTRAINT `FKo1hidhhkq2s8g9ggrcp5v90wg` FOREIGN KEY (`board_id`) REFERENCES `board` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile`
--

LOCK TABLES `documentabile` WRITE;
/*!40000 ALTER TABLE `documentabile` DISABLE KEYS */;
INSERT INTO `documentabile` VALUES ('Bando',1,'A01','Descrizione01','2021-06-01','web01.com',2,'titolo01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bando',3,'A03','Descrizione03','2021-06-01','web03.com',1,'titolo03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bando',4,'A04','Descrizione04','2021-06-01','web04.com',0,'titolo04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bando',75,'klölkjklj','jkljökljkl','0001-01-01','sdfsdfasdf',0,'klöjkljökl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Bando',77,'FH','Bando su food hub','2021-06-30','www.bando.it',0,'Food Hub',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('Task',83,'07hjl','sdcnkllnnm,nsggs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Organizzare team',NULL,NULL,NULL,NULL,'2021-06-09',NULL,NULL,81,NULL);
/*!40000 ALTER TABLE `documentabile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_lista_documenti`
--

DROP TABLE IF EXISTS `documentabile_lista_documenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_lista_documenti` (
  `lista_documentabile_id` bigint(20) NOT NULL,
  `lista_documenti_id` bigint(20) NOT NULL,
  KEY `FKkdy0mwg9i4kto9sf7jlrjk1eo` (`lista_documenti_id`),
  KEY `FK7db840205g89rth832yprfyqa` (`lista_documentabile_id`),
  CONSTRAINT `FK7db840205g89rth832yprfyqa` FOREIGN KEY (`lista_documentabile_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKkdy0mwg9i4kto9sf7jlrjk1eo` FOREIGN KEY (`lista_documenti_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_lista_documenti`
--

LOCK TABLES `documentabile_lista_documenti` WRITE;
/*!40000 ALTER TABLE `documentabile_lista_documenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_lista_documenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_lista_skill`
--

DROP TABLE IF EXISTS `documentabile_lista_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_lista_skill` (
  `persona_id` bigint(20) NOT NULL,
  `lista_skill_id` bigint(20) NOT NULL,
  KEY `FK2p4cpnr69epx1nvlcbkmh7s8y` (`lista_skill_id`),
  KEY `FK7pux9kefak28mpcvhgtg6vma1` (`persona_id`),
  CONSTRAINT `FK2p4cpnr69epx1nvlcbkmh7s8y` FOREIGN KEY (`lista_skill_id`) REFERENCES `skill` (`id`),
  CONSTRAINT `FK7pux9kefak28mpcvhgtg6vma1` FOREIGN KEY (`persona_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_lista_skill`
--

LOCK TABLES `documentabile_lista_skill` WRITE;
/*!40000 ALTER TABLE `documentabile_lista_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_lista_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_persone`
--

DROP TABLE IF EXISTS `documentabile_persone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_persone` (
  `task_id` bigint(20) NOT NULL,
  `persone_id` bigint(20) NOT NULL,
  KEY `FKavoxvx80k2qnqowwaspc89rpp` (`persone_id`),
  KEY `FK7f36uh1k7h1iu7rc0qxvf5t1` (`task_id`),
  CONSTRAINT `FK7f36uh1k7h1iu7rc0qxvf5t1` FOREIGN KEY (`task_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKavoxvx80k2qnqowwaspc89rpp` FOREIGN KEY (`persone_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_persone`
--

LOCK TABLES `documentabile_persone` WRITE;
/*!40000 ALTER TABLE `documentabile_persone` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_persone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_squadre`
--

DROP TABLE IF EXISTS `documentabile_squadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_squadre` (
  `persona_id` bigint(20) NOT NULL,
  `squadre_id` bigint(20) NOT NULL,
  KEY `FKcv56f4alnx4ldu2m8hn3229w9` (`squadre_id`),
  KEY `FK6i7nld7q3ns5v7x9m88b9qt34` (`persona_id`),
  CONSTRAINT `FK6i7nld7q3ns5v7x9m88b9qt34` FOREIGN KEY (`persona_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKcv56f4alnx4ldu2m8hn3229w9` FOREIGN KEY (`squadre_id`) REFERENCES `squadra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_squadre`
--

LOCK TABLES `documentabile_squadre` WRITE;
/*!40000 ALTER TABLE `documentabile_squadre` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_squadre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_tasks`
--

DROP TABLE IF EXISTS `documentabile_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_tasks` (
  `persona_id` bigint(20) NOT NULL,
  `tasks_id` bigint(20) NOT NULL,
  KEY `FK7c02c4firm5b720g5j92arysp` (`tasks_id`),
  KEY `FKjpnff3d0c0nsfyp50p3awwrde` (`persona_id`),
  CONSTRAINT `FK7c02c4firm5b720g5j92arysp` FOREIGN KEY (`tasks_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKjpnff3d0c0nsfyp50p3awwrde` FOREIGN KEY (`persona_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_tasks`
--

LOCK TABLES `documentabile_tasks` WRITE;
/*!40000 ALTER TABLE `documentabile_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentabile_users_login`
--

DROP TABLE IF EXISTS `documentabile_users_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documentabile_users_login` (
  `persona_id` bigint(20) NOT NULL,
  `users_login_id` bigint(20) NOT NULL,
  KEY `FKsmeenqo40aa91ashlokh5l7dq` (`users_login_id`),
  KEY `FKtbmtst7jqona4ug8vgush44pg` (`persona_id`),
  CONSTRAINT `FKsmeenqo40aa91ashlokh5l7dq` FOREIGN KEY (`users_login_id`) REFERENCES `user_login` (`id`),
  CONSTRAINT `FKtbmtst7jqona4ug8vgush44pg` FOREIGN KEY (`persona_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentabile_users_login`
--

LOCK TABLES `documentabile_users_login` WRITE;
/*!40000 ALTER TABLE `documentabile_users_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentabile_users_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (68,'Codice','Titolo'),(71,NULL,NULL),(94,'Codice','Titolo');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (103);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modello_check_list`
--

DROP TABLE IF EXISTS `modello_check_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modello_check_list` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `bando_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe8bkqigax52ryvwk1uvuun301` (`bando_id`),
  CONSTRAINT `FKe8bkqigax52ryvwk1uvuun301` FOREIGN KEY (`bando_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modello_check_list`
--

LOCK TABLES `modello_check_list` WRITE;
/*!40000 ALTER TABLE `modello_check_list` DISABLE KEYS */;
INSERT INTO `modello_check_list` VALUES ('ModelloCheckList',21,'P01','MODELLO 1','MODELLINO 1',NULL),('ModelloCheckList',23,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',24,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',26,'P02','MODELLO 2','MODELLINO 2',NULL),('ModelloCheckList',28,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',29,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',31,'P03','MODELLO 3','MODELLINO 3',NULL),('ModelloCheckList',33,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',34,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',36,'P04','MODELLO 4','MODELLINO 4',NULL),('ModelloCheckList',38,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',39,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',41,'P05','MODELLO 5','MODELLINO 5',NULL),('ModelloCheckList',43,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',44,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',46,'P06','MODELLO 6','MODELLINO 6',NULL),('ModelloCheckList',48,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',49,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',51,'P07','MODELLO 7','MODELLINO 7',NULL),('ModelloCheckList',53,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',54,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',56,'P08','MODELLO 8','MODELLINO 8',NULL),('ModelloCheckList',58,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',59,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',61,'P09','MODELLO 9','MODELLINO 9',NULL),('ModelloCheckList',63,'P040','MODELLO40','MODELLINO40',NULL),('CheckListFattibilita',64,'P040','MODELLO40','MODELLINO40',NULL),('ModelloCheckList',85,'a','cc','b',NULL),('CheckListFattibilita',88,'P01','MODELLO 1','MODELLINO 1',1),('CheckListFattibilita',98,'P02','MODELLO 2','MODELLINO 2',77);
/*!40000 ALTER TABLE `modello_check_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proposta`
--

DROP TABLE IF EXISTS `proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposta` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `bando_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKchhr4kh30b4n6daklrtbwrg8j` (`bando_id`),
  CONSTRAINT `FKchhr4kh30b4n6daklrtbwrg8j` FOREIGN KEY (`bando_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposta`
--

LOCK TABLES `proposta` WRITE;
/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` VALUES (65,'xcyxc','yxcyxc','yxcyxc','yxcyx',1),(91,'sad','dsad','asdasd','asdasd',77);
/*!40000 ALTER TABLE `proposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `parent_skill_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3pf89oaei0eexaqjwj0gpkwd2` (`parent_skill_id`),
  CONSTRAINT `FK3pf89oaei0eexaqjwj0gpkwd2` FOREIGN KEY (`parent_skill_id`) REFERENCES `skill` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_persone`
--

DROP TABLE IF EXISTS `skill_persone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill_persone` (
  `skill_id` bigint(20) NOT NULL,
  `persone_id` bigint(20) NOT NULL,
  KEY `FK4kk83ow4ek5q4pug8w4sya2wc` (`persone_id`),
  KEY `FK4fsk8ptxvrah3qsbc2gc1yc0m` (`skill_id`),
  CONSTRAINT `FK4fsk8ptxvrah3qsbc2gc1yc0m` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`),
  CONSTRAINT `FK4kk83ow4ek5q4pug8w4sya2wc` FOREIGN KEY (`persone_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_persone`
--

LOCK TABLES `skill_persone` WRITE;
/*!40000 ALTER TABLE `skill_persone` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill_persone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squadra`
--

DROP TABLE IF EXISTS `squadra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `squadra` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squadra`
--

LOCK TABLES `squadra` WRITE;
/*!40000 ALTER TABLE `squadra` DISABLE KEYS */;
/*!40000 ALTER TABLE `squadra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `squadra_persone`
--

DROP TABLE IF EXISTS `squadra_persone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `squadra_persone` (
  `squadra_id` bigint(20) NOT NULL,
  `persone_id` bigint(20) NOT NULL,
  KEY `FKhlqsrky31ygxr53ey08gmc8ua` (`persone_id`),
  KEY `FK8hsct8tepcypl2o92mvvi7x07` (`squadra_id`),
  CONSTRAINT `FK8hsct8tepcypl2o92mvvi7x07` FOREIGN KEY (`squadra_id`) REFERENCES `squadra` (`id`),
  CONSTRAINT `FKhlqsrky31ygxr53ey08gmc8ua` FOREIGN KEY (`persone_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `squadra_persone`
--

LOCK TABLES `squadra_persone` WRITE;
/*!40000 ALTER TABLE `squadra_persone` DISABLE KEYS */;
/*!40000 ALTER TABLE `squadra_persone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporalizzato`
--

DROP TABLE IF EXISTS `temporalizzato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporalizzato` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `time_stamp` datetime DEFAULT NULL,
  `testo` varchar(255) DEFAULT NULL,
  `voto` int(11) DEFAULT NULL,
  `check_list_fattibilita_id` bigint(20) DEFAULT NULL,
  `persona_id` bigint(20) DEFAULT NULL,
  `check_list_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKca864meradc3uvviji3qxlh8n` (`check_list_fattibilita_id`),
  KEY `FKaphn5wuo3sk9yqxffkqme15ek` (`persona_id`),
  KEY `FKo1p8fvd3qr00aj3m5a37640k2` (`check_list_item_id`),
  CONSTRAINT `FKaphn5wuo3sk9yqxffkqme15ek` FOREIGN KEY (`persona_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKca864meradc3uvviji3qxlh8n` FOREIGN KEY (`check_list_fattibilita_id`) REFERENCES `modello_check_list` (`id`),
  CONSTRAINT `FKo1p8fvd3qr00aj3m5a37640k2` FOREIGN KEY (`check_list_item_id`) REFERENCES `check_list_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporalizzato`
--

LOCK TABLES `temporalizzato` WRITE;
/*!40000 ALTER TABLE `temporalizzato` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporalizzato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia_persona`
--

DROP TABLE IF EXISTS `tipologia_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipologia_persona` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `tipologia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_persona`
--

LOCK TABLES `tipologia_persona` WRITE;
/*!40000 ALTER TABLE `tipologia_persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipologia_persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `to_do_list`
--

DROP TABLE IF EXISTS `to_do_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `to_do_list` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `bando_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnhwfib3wwf3nellnmrktir59v` (`bando_id`),
  CONSTRAINT `FKnhwfib3wwf3nellnmrktir59v` FOREIGN KEY (`bando_id`) REFERENCES `documentabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `to_do_list`
--

LOCK TABLES `to_do_list` WRITE;
/*!40000 ALTER TABLE `to_do_list` DISABLE KEYS */;
INSERT INTO `to_do_list` VALUES (74,'dfgsdfg','dfgsdf','dgdf',1),(79,'wewer','dwerwer','Cose varie2',77),(84,'wewer3','dwerwer3','Cose varie3',77);
/*!40000 ALTER TABLE `to_do_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_log`
--

DROP TABLE IF EXISTS `user_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_activity_log` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `security_flag` bit(1) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_log`
--

LOCK TABLES `user_activity_log` WRITE;
/*!40000 ALTER TABLE `user_activity_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login` (
  `id` bigint(20) NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `confirmed` bit(1) DEFAULT NULL,
  `consume_trials` int(11) DEFAULT NULL,
  `creation` datetime DEFAULT NULL,
  `expires` date DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `session_key` varchar(255) DEFAULT NULL,
  `trials` int(11) DEFAULT NULL,
  `user_code` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_activity_log_id` bigint(20) DEFAULT NULL,
  `user_role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo2qncjemw1m4tu6owyplu5suk` (`user_activity_log_id`),
  KEY `FKgawn0s8alphs632abn2p9mnb7` (`user_role_id`),
  CONSTRAINT `FKgawn0s8alphs632abn2p9mnb7` FOREIGN KEY (`user_role_id`) REFERENCES `user_role` (`id`),
  CONSTRAINT `FKo2qncjemw1m4tu6owyplu5suk` FOREIGN KEY (`user_activity_log_id`) REFERENCES `user_activity_log` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login_persone`
--

DROP TABLE IF EXISTS `user_login_persone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_login_persone` (
  `user_login_id` bigint(20) NOT NULL,
  `persone_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_login_id`,`persone_id`),
  KEY `FK2kb8nwynracu5drx111guc9oo` (`persone_id`),
  CONSTRAINT `FK2kb8nwynracu5drx111guc9oo` FOREIGN KEY (`persone_id`) REFERENCES `documentabile` (`id`),
  CONSTRAINT `FKim8iarnddh755o4ahoq3ah49n` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login_persone`
--

LOCK TABLES `user_login_persone` WRITE;
/*!40000 ALTER TABLE `user_login_persone` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login_persone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `id` bigint(20) NOT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `user_login_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1xjwffvwl7be8m33tcepnr9rs` (`user_login_id`),
  CONSTRAINT `FK1xjwffvwl7be8m33tcepnr9rs` FOREIGN KEY (`user_login_id`) REFERENCES `user_login` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versionabile`
--

DROP TABLE IF EXISTS `versionabile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versionabile` (
  `dtype` varchar(31) NOT NULL,
  `id` bigint(20) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `posizione` int(11) DEFAULT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `proposta_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9g4gblhjw0tnyvb032y6hpt8j` (`proposta_id`),
  CONSTRAINT `FK9g4gblhjw0tnyvb032y6hpt8j` FOREIGN KEY (`proposta_id`) REFERENCES `proposta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versionabile`
--

LOCK TABLES `versionabile` WRITE;
/*!40000 ALTER TABLE `versionabile` DISABLE KEYS */;
INSERT INTO `versionabile` VALUES ('SezioneProposta',66,NULL,0,NULL,65),('SezioneProposta',69,'dfgd',3,'dfg',65),('SezioneProposta',92,NULL,0,NULL,91);
/*!40000 ALTER TABLE `versionabile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versione_documento`
--

DROP TABLE IF EXISTS `versione_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `versione_documento` (
  `id` bigint(20) NOT NULL,
  `codice` varchar(255) DEFAULT NULL,
  `descrizione_modifiche` varchar(255) DEFAULT NULL,
  `file` longblob,
  `versione` int(11) DEFAULT NULL,
  `working_copy` bit(1) DEFAULT NULL,
  `documento_id` bigint(20) DEFAULT NULL,
  `versionabile_id` bigint(20) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK653yea8eh2u4rqgl7i531a1oc` (`documento_id`),
  KEY `FKdxcc37ttgfx6h6oqpmcwxc56m` (`versionabile_id`),
  CONSTRAINT `FK653yea8eh2u4rqgl7i531a1oc` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`),
  CONSTRAINT `FKdxcc37ttgfx6h6oqpmcwxc56m` FOREIGN KEY (`versionabile_id`) REFERENCES `versionabile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versione_documento`
--

LOCK TABLES `versione_documento` WRITE;
/*!40000 ALTER TABLE `versione_documento` DISABLE KEYS */;
INSERT INTO `versione_documento` VALUES (67,'codice','modifiche',_binary '{\n \"cells\": [\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 1,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stderr\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Using TensorFlow backend.\\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"\'2.0.8\'\"\n      ]\n     },\n     \"execution_count\": 1,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"import keras\\n\",\n    \"keras.__version__\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"# A first look at a neural network\\n\",\n    \"\\n\",\n    \"This notebook contains the code samples found in Chapter 2, Section 1 of [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python?a_aid=keras&a_bid=76564dff). Note that the original text features far more content, in particular further explanations and figures: in this notebook, you will only find source code and related comments.\\n\",\n    \"\\n\",\n    \"----\\n\",\n    \"\\n\",\n    \"We will now take a look at a first concrete example of a neural network, which makes use of the Python library Keras to learn to classify \\n\",\n    \"hand-written digits. Unless you already have experience with Keras or similar libraries, you will not understand everything about this \\n\",\n    \"first example right away. You probably haven\'t even installed Keras yet. Don\'t worry, that is perfectly fine. In the next chapter, we will \\n\",\n    \"review each element in our example and explain them in detail. So don\'t worry if some steps seem arbitrary or look like magic to you! \\n\",\n    \"We\'ve got to start somewhere.\\n\",\n    \"\\n\",\n    \"The problem we are trying to solve here is to classify grayscale images of handwritten digits (28 pixels by 28 pixels), into their 10 \\n\",\n    \"categories (0 to 9). The dataset we will use is the MNIST dataset, a classic dataset in the machine learning community, which has been \\n\",\n    \"around for almost as long as the field itself and has been very intensively studied. It\'s a set of 60,000 training images, plus 10,000 test \\n\",\n    \"images, assembled by the National Institute of Standards and Technology (the NIST in MNIST) in the 1980s. You can think of \\\"solving\\\" MNIST \\n\",\n    \"as the \\\"Hello World\\\" of deep learning -- it\'s what you do to verify that your algorithms are working as expected. As you become a machine \\n\",\n    \"learning practitioner, you will see MNIST come up over and over again, in scientific papers, blog posts, and so on.\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"The MNIST dataset comes pre-loaded in Keras, in the form of a set of four Numpy arrays:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 2,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.datasets import mnist\\n\",\n    \"\\n\",\n    \"(train_images, train_labels), (test_images, test_labels) = mnist.load_data()\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"`train_images` and `train_labels` form the \\\"training set\\\", the data that the model will learn from. The model will then be tested on the \\n\",\n    \"\\\"test set\\\", `test_images` and `test_labels`. Our images are encoded as Numpy arrays, and the labels are simply an array of digits, ranging \\n\",\n    \"from 0 to 9. There is a one-to-one correspondence between the images and the labels.\\n\",\n    \"\\n\",\n    \"Let\'s have a look at the training data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 3,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(60000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 3,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 4,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"60000\"\n      ]\n     },\n     \"execution_count\": 4,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(train_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 5,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([5, 0, 4, ..., 5, 6, 8], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 5,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Let\'s have a look at the test data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 6,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(10000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 6,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 7,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"10000\"\n      ]\n     },\n     \"execution_count\": 7,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 8,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([7, 2, 1, ..., 4, 5, 6], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 8,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Our workflow will be as follow: first we will present our neural network with the training data, `train_images` and `train_labels`. The \\n\",\n    \"network will then learn to associate images and labels. Finally, we will ask the network to produce predictions for `test_images`, and we \\n\",\n    \"will verify if these predictions match the labels from `test_labels`.\\n\",\n    \"\\n\",\n    \"Let\'s build our network -- again, remember that you aren\'t supposed to understand everything about this example just yet.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 9,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras import models\\n\",\n    \"from keras import layers\\n\",\n    \"\\n\",\n    \"network = models.Sequential()\\n\",\n    \"network.add(layers.Dense(512, activation=\'relu\', input_shape=(28 * 28,)))\\n\",\n    \"network.add(layers.Dense(10, activation=\'softmax\'))\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"The core building block of neural networks is the \\\"layer\\\", a data-processing module which you can conceive as a \\\"filter\\\" for data. Some \\n\",\n    \"data comes in, and comes out in a more useful form. Precisely, layers extract _representations_ out of the data fed into them -- hopefully \\n\",\n    \"representations that are more meaningful for the problem at hand. Most of deep learning really consists of chaining together simple layers \\n\",\n    \"which will implement a form of progressive \\\"data distillation\\\". A deep learning model is like a sieve for data processing, made of a \\n\",\n    \"succession of increasingly refined data filters -- the \\\"layers\\\".\\n\",\n    \"\\n\",\n    \"Here our network consists of a sequence of two `Dense` layers, which are densely-connected (also called \\\"fully-connected\\\") neural layers. \\n\",\n    \"The second (and last) layer is a 10-way \\\"softmax\\\" layer, which means it will return an array of 10 probability scores (summing to 1). Each \\n\",\n    \"score will be the probability that the current digit image belongs to one of our 10 digit classes.\\n\",\n    \"\\n\",\n    \"To make our network ready for training, we need to pick three more things, as part of \\\"compilation\\\" step:\\n\",\n    \"\\n\",\n    \"* A loss function: the is how the network will be able to measure how good a job it is doing on its training data, and thus how it will be \\n\",\n    \"able to steer itself in the right direction.\\n\",\n    \"* An optimizer: this is the mechanism through which the network will update itself based on the data it sees and its loss function.\\n\",\n    \"* Metrics to monitor during training and testing. Here we will only care about accuracy (the fraction of the images that were correctly \\n\",\n    \"classified).\\n\",\n    \"\\n\",\n    \"The exact purpose of the loss function and the optimizer will be made clear throughout the next two chapters.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 10,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"network.compile(optimizer=\'rmsprop\',\\n\",\n    \"                loss=\'categorical_crossentropy\',\\n\",\n    \"                metrics=[\'accuracy\'])\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Before training, we will preprocess our data by reshaping it into the shape that the network expects, and scaling it so that all values are in \\n\",\n    \"the `[0, 1]` interval. Previously, our training images for instance were stored in an array of shape `(60000, 28, 28)` of type `uint8` with \\n\",\n    \"values in the `[0, 255]` interval. We transform it into a `float32` array of shape `(60000, 28 * 28)` with values between 0 and 1.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 11,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"train_images = train_images.reshape((60000, 28 * 28))\\n\",\n    \"train_images = train_images.astype(\'float32\') / 255\\n\",\n    \"\\n\",\n    \"test_images = test_images.reshape((10000, 28 * 28))\\n\",\n    \"test_images = test_images.astype(\'float32\') / 255\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We also need to categorically encode the labels, a step which we explain in chapter 3:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 12,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.utils import to_categorical\\n\",\n    \"\\n\",\n    \"train_labels = to_categorical(train_labels)\\n\",\n    \"test_labels = to_categorical(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We are now ready to train our network, which in Keras is done via a call to the `fit` method of the network: \\n\",\n    \"we \\\"fit\\\" the model to its training data.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 13,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Epoch 1/5\\n\",\n      \"60000/60000 [==============================] - 2s - loss: 0.2577 - acc: 0.9245     \\n\",\n      \"Epoch 2/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.1042 - acc: 0.9690     \\n\",\n      \"Epoch 3/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0687 - acc: 0.9793     \\n\",\n      \"Epoch 4/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0508 - acc: 0.9848     \\n\",\n      \"Epoch 5/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0382 - acc: 0.9890     \\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"<keras.callbacks.History at 0x7fce5fed5fd0>\"\n      ]\n     },\n     \"execution_count\": 13,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"network.fit(train_images, train_labels, epochs=5, batch_size=128)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Two quantities are being displayed during training: the \\\"loss\\\" of the network over the training data, and the accuracy of the network over \\n\",\n    \"the training data.\\n\",\n    \"\\n\",\n    \"We quickly reach an accuracy of 0.989 (i.e. 98.9%) on the training data. Now let\'s check that our model performs well on the test set too:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 14,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \" 9536/10000 [===========================>..] - ETA: 0s\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"test_loss, test_acc = network.evaluate(test_images, test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 15,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"test_acc: 0.9777\\n\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"print(\'test_acc:\', test_acc)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Our test set accuracy turns out to be 97.8% -- that\'s quite a bit lower than the training set accuracy. \\n\",\n    \"This gap between training accuracy and test accuracy is an example of \\\"overfitting\\\", \\n\",\n    \"the fact that machine learning models tend to perform worse on new data than on their training data. \\n\",\n    \"Overfitting will be a central topic in chapter 3.\\n\",\n    \"\\n\",\n    \"This concludes our very first example -- you just saw how we could build and a train a neural network to classify handwritten digits, in \\n\",\n    \"less than 20 lines of Python code. In the next chapter, we will go in detail over every moving piece we just previewed, and clarify what is really \\n\",\n    \"going on behind the scenes. You will learn about \\\"tensors\\\", the data-storing objects going into the network, about tensor operations, which \\n\",\n    \"layers are made of, and about gradient descent, which allows our network to learn from its training examples.\"\n   ]\n  }\n ],\n \"metadata\": {\n  \"kernelspec\": {\n   \"display_name\": \"Python 3\",\n   \"language\": \"python\",\n   \"name\": \"python3\"\n  },\n  \"language_info\": {\n   \"codemirror_mode\": {\n    \"name\": \"ipython\",\n    \"version\": 3\n   },\n   \"file_extension\": \".py\",\n   \"mimetype\": \"text/x-python\",\n   \"name\": \"python\",\n   \"nbconvert_exporter\": \"python\",\n   \"pygments_lexer\": \"ipython3\",\n   \"version\": \"3.5.2\"\n  }\n },\n \"nbformat\": 4,\n \"nbformat_minor\": 2\n}\n',0,_binary '\0',68,66,NULL),(70,NULL,NULL,NULL,0,_binary '\0',71,69,NULL),(72,'codice','modifiche',_binary '{\n \"cells\": [\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 1,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stderr\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Using TensorFlow backend.\\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"\'2.0.8\'\"\n      ]\n     },\n     \"execution_count\": 1,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"import keras\\n\",\n    \"keras.__version__\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"# A first look at a neural network\\n\",\n    \"\\n\",\n    \"This notebook contains the code samples found in Chapter 2, Section 1 of [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python?a_aid=keras&a_bid=76564dff). Note that the original text features far more content, in particular further explanations and figures: in this notebook, you will only find source code and related comments.\\n\",\n    \"\\n\",\n    \"----\\n\",\n    \"\\n\",\n    \"We will now take a look at a first concrete example of a neural network, which makes use of the Python library Keras to learn to classify \\n\",\n    \"hand-written digits. Unless you already have experience with Keras or similar libraries, you will not understand everything about this \\n\",\n    \"first example right away. You probably haven\'t even installed Keras yet. Don\'t worry, that is perfectly fine. In the next chapter, we will \\n\",\n    \"review each element in our example and explain them in detail. So don\'t worry if some steps seem arbitrary or look like magic to you! \\n\",\n    \"We\'ve got to start somewhere.\\n\",\n    \"\\n\",\n    \"The problem we are trying to solve here is to classify grayscale images of handwritten digits (28 pixels by 28 pixels), into their 10 \\n\",\n    \"categories (0 to 9). The dataset we will use is the MNIST dataset, a classic dataset in the machine learning community, which has been \\n\",\n    \"around for almost as long as the field itself and has been very intensively studied. It\'s a set of 60,000 training images, plus 10,000 test \\n\",\n    \"images, assembled by the National Institute of Standards and Technology (the NIST in MNIST) in the 1980s. You can think of \\\"solving\\\" MNIST \\n\",\n    \"as the \\\"Hello World\\\" of deep learning -- it\'s what you do to verify that your algorithms are working as expected. As you become a machine \\n\",\n    \"learning practitioner, you will see MNIST come up over and over again, in scientific papers, blog posts, and so on.\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"The MNIST dataset comes pre-loaded in Keras, in the form of a set of four Numpy arrays:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 2,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.datasets import mnist\\n\",\n    \"\\n\",\n    \"(train_images, train_labels), (test_images, test_labels) = mnist.load_data()\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"`train_images` and `train_labels` form the \\\"training set\\\", the data that the model will learn from. The model will then be tested on the \\n\",\n    \"\\\"test set\\\", `test_images` and `test_labels`. Our images are encoded as Numpy arrays, and the labels are simply an array of digits, ranging \\n\",\n    \"from 0 to 9. There is a one-to-one correspondence between the images and the labels.\\n\",\n    \"\\n\",\n    \"Let\'s have a look at the training data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 3,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(60000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 3,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 4,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"60000\"\n      ]\n     },\n     \"execution_count\": 4,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(train_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 5,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([5, 0, 4, ..., 5, 6, 8], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 5,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Let\'s have a look at the test data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 6,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(10000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 6,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 7,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"10000\"\n      ]\n     },\n     \"execution_count\": 7,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 8,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([7, 2, 1, ..., 4, 5, 6], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 8,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Our workflow will be as follow: first we will present our neural network with the training data, `train_images` and `train_labels`. The \\n\",\n    \"network will then learn to associate images and labels. Finally, we will ask the network to produce predictions for `test_images`, and we \\n\",\n    \"will verify if these predictions match the labels from `test_labels`.\\n\",\n    \"\\n\",\n    \"Let\'s build our network -- again, remember that you aren\'t supposed to understand everything about this example just yet.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 9,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras import models\\n\",\n    \"from keras import layers\\n\",\n    \"\\n\",\n    \"network = models.Sequential()\\n\",\n    \"network.add(layers.Dense(512, activation=\'relu\', input_shape=(28 * 28,)))\\n\",\n    \"network.add(layers.Dense(10, activation=\'softmax\'))\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"The core building block of neural networks is the \\\"layer\\\", a data-processing module which you can conceive as a \\\"filter\\\" for data. Some \\n\",\n    \"data comes in, and comes out in a more useful form. Precisely, layers extract _representations_ out of the data fed into them -- hopefully \\n\",\n    \"representations that are more meaningful for the problem at hand. Most of deep learning really consists of chaining together simple layers \\n\",\n    \"which will implement a form of progressive \\\"data distillation\\\". A deep learning model is like a sieve for data processing, made of a \\n\",\n    \"succession of increasingly refined data filters -- the \\\"layers\\\".\\n\",\n    \"\\n\",\n    \"Here our network consists of a sequence of two `Dense` layers, which are densely-connected (also called \\\"fully-connected\\\") neural layers. \\n\",\n    \"The second (and last) layer is a 10-way \\\"softmax\\\" layer, which means it will return an array of 10 probability scores (summing to 1). Each \\n\",\n    \"score will be the probability that the current digit image belongs to one of our 10 digit classes.\\n\",\n    \"\\n\",\n    \"To make our network ready for training, we need to pick three more things, as part of \\\"compilation\\\" step:\\n\",\n    \"\\n\",\n    \"* A loss function: the is how the network will be able to measure how good a job it is doing on its training data, and thus how it will be \\n\",\n    \"able to steer itself in the right direction.\\n\",\n    \"* An optimizer: this is the mechanism through which the network will update itself based on the data it sees and its loss function.\\n\",\n    \"* Metrics to monitor during training and testing. Here we will only care about accuracy (the fraction of the images that were correctly \\n\",\n    \"classified).\\n\",\n    \"\\n\",\n    \"The exact purpose of the loss function and the optimizer will be made clear throughout the next two chapters.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 10,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"network.compile(optimizer=\'rmsprop\',\\n\",\n    \"                loss=\'categorical_crossentropy\',\\n\",\n    \"                metrics=[\'accuracy\'])\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Before training, we will preprocess our data by reshaping it into the shape that the network expects, and scaling it so that all values are in \\n\",\n    \"the `[0, 1]` interval. Previously, our training images for instance were stored in an array of shape `(60000, 28, 28)` of type `uint8` with \\n\",\n    \"values in the `[0, 255]` interval. We transform it into a `float32` array of shape `(60000, 28 * 28)` with values between 0 and 1.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 11,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"train_images = train_images.reshape((60000, 28 * 28))\\n\",\n    \"train_images = train_images.astype(\'float32\') / 255\\n\",\n    \"\\n\",\n    \"test_images = test_images.reshape((10000, 28 * 28))\\n\",\n    \"test_images = test_images.astype(\'float32\') / 255\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We also need to categorically encode the labels, a step which we explain in chapter 3:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 12,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.utils import to_categorical\\n\",\n    \"\\n\",\n    \"train_labels = to_categorical(train_labels)\\n\",\n    \"test_labels = to_categorical(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We are now ready to train our network, which in Keras is done via a call to the `fit` method of the network: \\n\",\n    \"we \\\"fit\\\" the model to its training data.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 13,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Epoch 1/5\\n\",\n      \"60000/60000 [==============================] - 2s - loss: 0.2577 - acc: 0.9245     \\n\",\n      \"Epoch 2/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.1042 - acc: 0.9690     \\n\",\n      \"Epoch 3/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0687 - acc: 0.9793     \\n\",\n      \"Epoch 4/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0508 - acc: 0.9848     \\n\",\n      \"Epoch 5/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0382 - acc: 0.9890     \\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"<keras.callbacks.History at 0x7fce5fed5fd0>\"\n      ]\n     },\n     \"execution_count\": 13,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"network.fit(train_images, train_labels, epochs=5, batch_size=128)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Two quantities are being displayed during training: the \\\"loss\\\" of the network over the training data, and the accuracy of the network over \\n\",\n    \"the training data.\\n\",\n    \"\\n\",\n    \"We quickly reach an accuracy of 0.989 (i.e. 98.9%) on the training data. Now let\'s check that our model performs well on the test set too:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 14,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \" 9536/10000 [===========================>..] - ETA: 0s\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"test_loss, test_acc = network.evaluate(test_images, test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 15,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"test_acc: 0.9777\\n\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"print(\'test_acc:\', test_acc)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Our test set accuracy turns out to be 97.8% -- that\'s quite a bit lower than the training set accuracy. \\n\",\n    \"This gap between training accuracy and test accuracy is an example of \\\"overfitting\\\", \\n\",\n    \"the fact that machine learning models tend to perform worse on new data than on their training data. \\n\",\n    \"Overfitting will be a central topic in chapter 3.\\n\",\n    \"\\n\",\n    \"This concludes our very first example -- you just saw how we could build and a train a neural network to classify handwritten digits, in \\n\",\n    \"less than 20 lines of Python code. In the next chapter, we will go in detail over every moving piece we just previewed, and clarify what is really \\n\",\n    \"going on behind the scenes. You will learn about \\\"tensors\\\", the data-storing objects going into the network, about tensor operations, which \\n\",\n    \"layers are made of, and about gradient descent, which allows our network to learn from its training examples.\"\n   ]\n  }\n ],\n \"metadata\": {\n  \"kernelspec\": {\n   \"display_name\": \"Python 3\",\n   \"language\": \"python\",\n   \"name\": \"python3\"\n  },\n  \"language_info\": {\n   \"codemirror_mode\": {\n    \"name\": \"ipython\",\n    \"version\": 3\n   },\n   \"file_extension\": \".py\",\n   \"mimetype\": \"text/x-python\",\n   \"name\": \"python\",\n   \"nbconvert_exporter\": \"python\",\n   \"pygments_lexer\": \"ipython3\",\n   \"version\": \"3.5.2\"\n  }\n },\n \"nbformat\": 4,\n \"nbformat_minor\": 2\n}\n',1,_binary '\0',68,66,NULL),(73,'codice','modifiche',_binary '{\n \"cells\": [\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 1,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stderr\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Using TensorFlow backend.\\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"\'2.0.8\'\"\n      ]\n     },\n     \"execution_count\": 1,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"import keras\\n\",\n    \"keras.__version__\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"# A first look at a neural network\\n\",\n    \"\\n\",\n    \"This notebook contains the code samples found in Chapter 2, Section 1 of [Deep Learning with Python](https://www.manning.com/books/deep-learning-with-python?a_aid=keras&a_bid=76564dff). Note that the original text features far more content, in particular further explanations and figures: in this notebook, you will only find source code and related comments.\\n\",\n    \"\\n\",\n    \"----\\n\",\n    \"\\n\",\n    \"We will now take a look at a first concrete example of a neural network, which makes use of the Python library Keras to learn to classify \\n\",\n    \"hand-written digits. Unless you already have experience with Keras or similar libraries, you will not understand everything about this \\n\",\n    \"first example right away. You probably haven\'t even installed Keras yet. Don\'t worry, that is perfectly fine. In the next chapter, we will \\n\",\n    \"review each element in our example and explain them in detail. So don\'t worry if some steps seem arbitrary or look like magic to you! \\n\",\n    \"We\'ve got to start somewhere.\\n\",\n    \"\\n\",\n    \"The problem we are trying to solve here is to classify grayscale images of handwritten digits (28 pixels by 28 pixels), into their 10 \\n\",\n    \"categories (0 to 9). The dataset we will use is the MNIST dataset, a classic dataset in the machine learning community, which has been \\n\",\n    \"around for almost as long as the field itself and has been very intensively studied. It\'s a set of 60,000 training images, plus 10,000 test \\n\",\n    \"images, assembled by the National Institute of Standards and Technology (the NIST in MNIST) in the 1980s. You can think of \\\"solving\\\" MNIST \\n\",\n    \"as the \\\"Hello World\\\" of deep learning -- it\'s what you do to verify that your algorithms are working as expected. As you become a machine \\n\",\n    \"learning practitioner, you will see MNIST come up over and over again, in scientific papers, blog posts, and so on.\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"The MNIST dataset comes pre-loaded in Keras, in the form of a set of four Numpy arrays:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 2,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.datasets import mnist\\n\",\n    \"\\n\",\n    \"(train_images, train_labels), (test_images, test_labels) = mnist.load_data()\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"`train_images` and `train_labels` form the \\\"training set\\\", the data that the model will learn from. The model will then be tested on the \\n\",\n    \"\\\"test set\\\", `test_images` and `test_labels`. Our images are encoded as Numpy arrays, and the labels are simply an array of digits, ranging \\n\",\n    \"from 0 to 9. There is a one-to-one correspondence between the images and the labels.\\n\",\n    \"\\n\",\n    \"Let\'s have a look at the training data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 3,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(60000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 3,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 4,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"60000\"\n      ]\n     },\n     \"execution_count\": 4,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(train_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 5,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([5, 0, 4, ..., 5, 6, 8], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 5,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"train_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Let\'s have a look at the test data:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 6,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"(10000, 28, 28)\"\n      ]\n     },\n     \"execution_count\": 6,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_images.shape\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 7,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"10000\"\n      ]\n     },\n     \"execution_count\": 7,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"len(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 8,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"array([7, 2, 1, ..., 4, 5, 6], dtype=uint8)\"\n      ]\n     },\n     \"execution_count\": 8,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"test_labels\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Our workflow will be as follow: first we will present our neural network with the training data, `train_images` and `train_labels`. The \\n\",\n    \"network will then learn to associate images and labels. Finally, we will ask the network to produce predictions for `test_images`, and we \\n\",\n    \"will verify if these predictions match the labels from `test_labels`.\\n\",\n    \"\\n\",\n    \"Let\'s build our network -- again, remember that you aren\'t supposed to understand everything about this example just yet.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 9,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras import models\\n\",\n    \"from keras import layers\\n\",\n    \"\\n\",\n    \"network = models.Sequential()\\n\",\n    \"network.add(layers.Dense(512, activation=\'relu\', input_shape=(28 * 28,)))\\n\",\n    \"network.add(layers.Dense(10, activation=\'softmax\'))\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"The core building block of neural networks is the \\\"layer\\\", a data-processing module which you can conceive as a \\\"filter\\\" for data. Some \\n\",\n    \"data comes in, and comes out in a more useful form. Precisely, layers extract _representations_ out of the data fed into them -- hopefully \\n\",\n    \"representations that are more meaningful for the problem at hand. Most of deep learning really consists of chaining together simple layers \\n\",\n    \"which will implement a form of progressive \\\"data distillation\\\". A deep learning model is like a sieve for data processing, made of a \\n\",\n    \"succession of increasingly refined data filters -- the \\\"layers\\\".\\n\",\n    \"\\n\",\n    \"Here our network consists of a sequence of two `Dense` layers, which are densely-connected (also called \\\"fully-connected\\\") neural layers. \\n\",\n    \"The second (and last) layer is a 10-way \\\"softmax\\\" layer, which means it will return an array of 10 probability scores (summing to 1). Each \\n\",\n    \"score will be the probability that the current digit image belongs to one of our 10 digit classes.\\n\",\n    \"\\n\",\n    \"To make our network ready for training, we need to pick three more things, as part of \\\"compilation\\\" step:\\n\",\n    \"\\n\",\n    \"* A loss function: the is how the network will be able to measure how good a job it is doing on its training data, and thus how it will be \\n\",\n    \"able to steer itself in the right direction.\\n\",\n    \"* An optimizer: this is the mechanism through which the network will update itself based on the data it sees and its loss function.\\n\",\n    \"* Metrics to monitor during training and testing. Here we will only care about accuracy (the fraction of the images that were correctly \\n\",\n    \"classified).\\n\",\n    \"\\n\",\n    \"The exact purpose of the loss function and the optimizer will be made clear throughout the next two chapters.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 10,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"network.compile(optimizer=\'rmsprop\',\\n\",\n    \"                loss=\'categorical_crossentropy\',\\n\",\n    \"                metrics=[\'accuracy\'])\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Before training, we will preprocess our data by reshaping it into the shape that the network expects, and scaling it so that all values are in \\n\",\n    \"the `[0, 1]` interval. Previously, our training images for instance were stored in an array of shape `(60000, 28, 28)` of type `uint8` with \\n\",\n    \"values in the `[0, 255]` interval. We transform it into a `float32` array of shape `(60000, 28 * 28)` with values between 0 and 1.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 11,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"train_images = train_images.reshape((60000, 28 * 28))\\n\",\n    \"train_images = train_images.astype(\'float32\') / 255\\n\",\n    \"\\n\",\n    \"test_images = test_images.reshape((10000, 28 * 28))\\n\",\n    \"test_images = test_images.astype(\'float32\') / 255\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We also need to categorically encode the labels, a step which we explain in chapter 3:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 12,\n   \"metadata\": {\n    \"collapsed\": true\n   },\n   \"outputs\": [],\n   \"source\": [\n    \"from keras.utils import to_categorical\\n\",\n    \"\\n\",\n    \"train_labels = to_categorical(train_labels)\\n\",\n    \"test_labels = to_categorical(test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"We are now ready to train our network, which in Keras is done via a call to the `fit` method of the network: \\n\",\n    \"we \\\"fit\\\" the model to its training data.\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 13,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"Epoch 1/5\\n\",\n      \"60000/60000 [==============================] - 2s - loss: 0.2577 - acc: 0.9245     \\n\",\n      \"Epoch 2/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.1042 - acc: 0.9690     \\n\",\n      \"Epoch 3/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0687 - acc: 0.9793     \\n\",\n      \"Epoch 4/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0508 - acc: 0.9848     \\n\",\n      \"Epoch 5/5\\n\",\n      \"60000/60000 [==============================] - 1s - loss: 0.0382 - acc: 0.9890     \\n\"\n     ]\n    },\n    {\n     \"data\": {\n      \"text/plain\": [\n       \"<keras.callbacks.History at 0x7fce5fed5fd0>\"\n      ]\n     },\n     \"execution_count\": 13,\n     \"metadata\": {},\n     \"output_type\": \"execute_result\"\n    }\n   ],\n   \"source\": [\n    \"network.fit(train_images, train_labels, epochs=5, batch_size=128)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"Two quantities are being displayed during training: the \\\"loss\\\" of the network over the training data, and the accuracy of the network over \\n\",\n    \"the training data.\\n\",\n    \"\\n\",\n    \"We quickly reach an accuracy of 0.989 (i.e. 98.9%) on the training data. Now let\'s check that our model performs well on the test set too:\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 14,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \" 9536/10000 [===========================>..] - ETA: 0s\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"test_loss, test_acc = network.evaluate(test_images, test_labels)\"\n   ]\n  },\n  {\n   \"cell_type\": \"code\",\n   \"execution_count\": 15,\n   \"metadata\": {},\n   \"outputs\": [\n    {\n     \"name\": \"stdout\",\n     \"output_type\": \"stream\",\n     \"text\": [\n      \"test_acc: 0.9777\\n\"\n     ]\n    }\n   ],\n   \"source\": [\n    \"print(\'test_acc:\', test_acc)\"\n   ]\n  },\n  {\n   \"cell_type\": \"markdown\",\n   \"metadata\": {},\n   \"source\": [\n    \"\\n\",\n    \"Our test set accuracy turns out to be 97.8% -- that\'s quite a bit lower than the training set accuracy. \\n\",\n    \"This gap between training accuracy and test accuracy is an example of \\\"overfitting\\\", \\n\",\n    \"the fact that machine learning models tend to perform worse on new data than on their training data. \\n\",\n    \"Overfitting will be a central topic in chapter 3.\\n\",\n    \"\\n\",\n    \"This concludes our very first example -- you just saw how we could build and a train a neural network to classify handwritten digits, in \\n\",\n    \"less than 20 lines of Python code. In the next chapter, we will go in detail over every moving piece we just previewed, and clarify what is really \\n\",\n    \"going on behind the scenes. You will learn about \\\"tensors\\\", the data-storing objects going into the network, about tensor operations, which \\n\",\n    \"layers are made of, and about gradient descent, which allows our network to learn from its training examples.\"\n   ]\n  }\n ],\n \"metadata\": {\n  \"kernelspec\": {\n   \"display_name\": \"Python 3\",\n   \"language\": \"python\",\n   \"name\": \"python3\"\n  },\n  \"language_info\": {\n   \"codemirror_mode\": {\n    \"name\": \"ipython\",\n    \"version\": 3\n   },\n   \"file_extension\": \".py\",\n   \"mimetype\": \"text/x-python\",\n   \"name\": \"python\",\n   \"nbconvert_exporter\": \"python\",\n   \"pygments_lexer\": \"ipython3\",\n   \"version\": \"3.5.2\"\n  }\n },\n \"nbformat\": 4,\n \"nbformat_minor\": 2\n}\n',2,_binary '\0',68,66,NULL),(93,'codice','modifiche',NULL,0,_binary '',94,92,NULL);
/*!40000 ALTER TABLE `versione_documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-25 16:05:27
