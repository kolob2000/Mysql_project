-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: kinopoisk
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday_at` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `biography` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Djon','Travolta','1975-03-11','Usa','biography'),(2,'Alexandr','Bezrukov','1979-06-20','Russia','biography'),(3,'Semen','Svetlakov','1985-05-03','Russia','biography'),(4,'Evgeniy','Pchelkin','1995-05-31','Russia','biography'),(5,'Roman','Naumov','1965-05-13','Russia','biography'),(6,'Oleg','Tabakov','1972-05-25','Russia','biography'),(7,'Evgeniy','Smaktunovsky','1988-09-02','Russia','biography'),(8,'Tatyana','Fedorova','1966-08-16','Russia','biography'),(9,'Nikita','Michalkov','1954-06-22','Russia','biography'),(10,'Semen','Habibulin','1983-05-05','Russia','biography');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator_type`
--

DROP TABLE IF EXISTS `creator_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creator_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator_type`
--

LOCK TABLES `creator_type` WRITE;
/*!40000 ALTER TABLE `creator_type` DISABLE KEYS */;
INSERT INTO `creator_type` VALUES (7,'гриммер'),(8,'декоратор'),(4,'звукорежиссер'),(11,'коммерчиский директор'),(5,'композитор'),(6,'костюмер'),(3,'оператор'),(1,'режиссер'),(10,'свет'),(9,'стилист'),(2,'сценарист');
/*!40000 ALTER TABLE `creator_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creators`
--

DROP TABLE IF EXISTS `creators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday_at` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `biography` text,
  `creator_type_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `creator_type_id` (`creator_type_id`),
  CONSTRAINT `creators_ibfk_1` FOREIGN KEY (`creator_type_id`) REFERENCES `creator_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creators`
--

LOCK TABLES `creators` WRITE;
/*!40000 ALTER TABLE `creators` DISABLE KEYS */;
INSERT INTO `creators` VALUES (1,'Роман','Башаров','1975-03-11','Russia','biography',1),(2,'Semen','Ermolin','1954-06-22','Usa','biography',1),(3,'Mickal','Cors','1983-05-05','Usa','biography',2),(4,'Gleb','Usupov','1988-09-02','Russia','biography',2),(5,'Роман','Ivanov','1983-05-05','Australia','biography',3),(6,'Nickita','Prudnickov','1975-03-11','Russia','biography',3),(7,'Anatoly','Petrov','1988-09-02','Ukraine','biography',4),(8,'Oleg','Roy','1965-03-14','Ussr','biography',4),(9,'Tomara','Gorbacheva','1976-02-11','Estonia','biography',5),(10,'Konstantin','Hlebnick','1985-07-01','Russia','biography',5),(11,'Timur','Antonov','1995-03-15','Latvia','biography',6),(12,'Sergey','Tachko','1972-04-17','Mexica','biography',6),(13,'Elena','Panovich','0198-06-13','Francia','biography',7),(14,'Svetlana','Nevzorova','1985-12-01','Australia','biography',7),(15,'Gleb','Glebov','1934-09-19','Canada','biography',8),(16,'Ilya','Laushev','1967-11-11','Usa','biography',8),(17,'Alexandr','Boyarov','1975-05-15','Polsha','biography',9),(18,'Tom','Kurts','1955-08-12','China','biography',9),(19,'Richard','Velengton','1966-03-10','Germany','biography',10),(20,'Birma','Stuard','1999-09-09','Russia','biography',10),(21,'Patrick','Svayzy','1995-06-11','Usa','biography',11),(22,'Elena','Bautina','1992-07-07','Russia','biography',11);
/*!40000 ALTER TABLE `creators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'аниме\r'),(2,'биографический\r'),(3,'боевик\r'),(4,'вестерн\r'),(5,'военный\r'),(6,'детектив\r'),(7,'детский\r'),(8,'документальный\r'),(9,'драма\r'),(10,'исторический\r'),(11,'кинокомикс\r'),(12,'комедия\r'),(13,'концерт\r'),(14,'короткометражный\r'),(15,'криминал\r'),(16,'мелодрама\r'),(17,'мистика\r'),(18,'музыка\r'),(19,'мультфильм\r'),(20,'мюзикл\r'),(21,'научный\r'),(22,'нуар\r'),(23,'приключения\r'),(24,'реалити-шоу\r'),(25,'семейный\r'),(26,'спорт\r'),(27,'ток-шоу\r'),(28,'триллер\r'),(29,'ужасы\r'),(30,'фантастика\r'),(31,'фэнтези\r'),(32,'эротика');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `media_type_id` bigint unsigned NOT NULL,
  `filename` varchar(50) NOT NULL,
  `size` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`),
  KEY `media_type_id` (`media_type_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(2,2,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(3,3,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(4,4,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(5,5,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(6,6,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(7,7,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(8,8,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(9,9,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(10,10,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(11,11,4,'photo.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(12,1,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(13,2,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(14,3,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(15,4,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(16,5,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(17,6,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(18,7,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(19,8,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(20,9,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05'),(21,10,1,'trailer.jpg',222222,'2021-10-17 19:12:05','2021-10-17 19:12:05');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_type`
--

LOCK TABLES `media_type` WRITE;
/*!40000 ALTER TABLE `media_type` DISABLE KEYS */;
INSERT INTO `media_type` VALUES (6,'Архив'),(3,'Аудио'),(1,'Видео'),(2,'Документ'),(4,'Изображение'),(5,'Таблица');
/*!40000 ALTER TABLE `media_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_ratings`
--

DROP TABLE IF EXISTS `movie_ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_ratings` (
  `user_id` bigint unsigned NOT NULL,
  `movie_id` bigint unsigned NOT NULL,
  `rate` enum('1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '1' COMMENT 'Лучше реализовть программно ограничение либо триггер',
  PRIMARY KEY (`user_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movie_ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `movie_ratings_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_ratings`
--

LOCK TABLES `movie_ratings` WRITE;
/*!40000 ALTER TABLE `movie_ratings` DISABLE KEYS */;
INSERT INTO `movie_ratings` VALUES (1,1,'9'),(1,2,'6'),(1,3,'10'),(1,4,'6'),(1,5,'2'),(1,6,'6'),(1,7,'2'),(1,8,'7'),(1,9,'2'),(1,10,'7'),(2,1,'8'),(2,2,'6'),(2,3,'8'),(2,4,'7'),(2,5,'8'),(2,6,'5'),(2,7,'2'),(2,8,'2'),(2,9,'9'),(2,10,'2'),(3,1,'7'),(3,2,'1'),(3,3,'7'),(3,4,'1'),(3,5,'5'),(3,6,'8'),(3,7,'4'),(3,8,'2'),(3,9,'7'),(3,10,'1'),(4,1,'2'),(4,2,'7'),(4,3,'1'),(4,4,'10'),(4,5,'1'),(4,6,'8'),(4,7,'4'),(4,8,'9'),(4,9,'5'),(4,10,'2'),(5,1,'3'),(5,2,'4'),(5,3,'9'),(5,4,'5'),(5,5,'9'),(5,6,'4'),(5,7,'10'),(5,8,'7'),(5,9,'10'),(5,10,'4'),(6,1,'9'),(6,2,'2'),(6,3,'8'),(6,4,'1'),(6,5,'10'),(6,6,'10'),(6,7,'8'),(6,8,'3'),(6,9,'8'),(6,10,'1'),(7,1,'5'),(7,2,'9'),(7,3,'8'),(7,4,'8'),(7,5,'4'),(7,6,'1'),(7,7,'3'),(7,8,'9'),(7,9,'5'),(7,10,'3'),(8,1,'2'),(8,2,'5'),(8,3,'1'),(8,4,'5'),(8,5,'2'),(8,6,'8'),(8,7,'1'),(8,8,'8'),(8,9,'1'),(8,10,'8'),(9,1,'10'),(9,2,'7'),(9,3,'10'),(9,4,'4'),(9,5,'10'),(9,6,'3'),(9,7,'9'),(9,8,'5'),(9,9,'10'),(9,10,'4'),(10,1,'8'),(10,2,'1'),(10,3,'9'),(10,4,'1'),(10,5,'7'),(10,6,'1'),(10,7,'8'),(10,8,'2'),(10,9,'5'),(10,10,'9'),(11,1,'4'),(11,2,'10'),(11,3,'2'),(11,4,'8'),(11,5,'4'),(11,6,'7'),(11,7,'6'),(11,8,'10'),(11,9,'6'),(11,10,'9');
/*!40000 ALTER TABLE `movie_ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rating` AFTER INSERT ON `movie_ratings` FOR EACH ROW BEGIN
    UPDATE movies SET avg_rating = (SELECT AVG(rate) FROM movie_ratings) WHERE id = new.movie_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `movie_types`
--

DROP TABLE IF EXISTS `movie_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_types`
--

LOCK TABLES `movie_types` WRITE;
/*!40000 ALTER TABLE `movie_types` DISABLE KEYS */;
INSERT INTO `movie_types` VALUES (2,'Документальное кино'),(3,'Мультфильм'),(5,'Мьюзикл'),(6,'Научно-популярное кино'),(7,'Образовательный фильм'),(4,'Фильм-спектакль'),(1,'Художественное кино');
/*!40000 ALTER TABLE `movie_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT 'Название фильма',
  `genre_id` tinyint unsigned NOT NULL,
  `year` year DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `movie_type_id` bigint unsigned NOT NULL,
  `description` text,
  `avg_rating` tinyint unsigned NOT NULL DEFAULT '0' COMMENT 'Средняя оцека (триггер) с ограничением 1-10',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_type_id` (`movie_type_id`),
  KEY `genre_id` (`genre_id`),
  KEY `idx_movie` (`name`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`movie_type_id`) REFERENCES `movie_types` (`id`),
  CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'В бой идут одни старики',3,1909,'СССР',2,'description',5),(2,'Пятница',3,1960,'USA',3,'description',5),(3,'После дождечка в четверг',12,1983,'Great Britain',3,'description',5),(4,'Большая туса',26,2009,'Russia',1,'description',6),(5,'Корупционер',26,1974,'Australia',6,'description',6),(6,'Мажор',5,1921,'Ukraine',5,'description',6),(7,'Жили-были',25,1995,'Ussr',5,'description',5),(8,'Параход',2,1911,'Russia',4,'description',6),(9,'Любовь и голуби',11,1902,'СССР',2,'description',6),(10,'Темнота',6,1906,'Russia',7,'description',6);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_actors`
--

DROP TABLE IF EXISTS `movies_actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_actors` (
  `movies_id` bigint unsigned NOT NULL,
  `actor_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`movies_id`,`actor_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_actors`
--

LOCK TABLES `movies_actors` WRITE;
/*!40000 ALTER TABLE `movies_actors` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_creator`
--

DROP TABLE IF EXISTS `movies_creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_creator` (
  `movies_id` bigint unsigned NOT NULL,
  `creator_id` bigint unsigned NOT NULL,
  `creator_type_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`movies_id`,`creator_id`,`creator_type_id`),
  KEY `creator_id` (`creator_id`),
  KEY `creator_type_id` (`creator_type_id`),
  CONSTRAINT `movies_creator_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `movies_creator_ibfk_2` FOREIGN KEY (`creator_id`) REFERENCES `creators` (`id`),
  CONSTRAINT `movies_creator_ibfk_3` FOREIGN KEY (`creator_type_id`) REFERENCES `creators` (`creator_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_creator`
--

LOCK TABLES `movies_creator` WRITE;
/*!40000 ALTER TABLE `movies_creator` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies_creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL,
  `gender` enum('f','m') NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `birthday_at` date DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `photo_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `user_id` (`user_id`),
  KEY `idx_first_name_last_name` (`first_name`,`last_name`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `profiles_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'m','Andrey','Petrov','0000-00-00','Sverdlovsk',1,'2021-10-17 19:12:05'),(2,'m','Sergey','Sidorov','0000-00-00','Moscow',2,'2021-10-17 19:12:05'),(3,'m','Valery','Epifanv','0000-00-00','Kaluga',3,'2021-10-17 19:12:05'),(4,'m','Nickolay','Romanov','0000-00-00','Saint-Petersburg',4,'2021-10-17 19:12:05'),(5,'m','Ivan','Galcev','0000-00-00','Murmansk',5,'2021-10-17 19:12:05'),(6,'f','Tatyana','Rumyanzeva','0000-00-00','Vsevolojsk',6,'2021-10-17 19:12:05'),(7,'m','Zahar','Lipkin','0000-00-00','Kirshi',7,'2021-10-17 19:12:05'),(8,'f','Ludmila','Trubnikov','0000-00-00','Tomsk',8,'2021-10-17 19:12:05'),(9,'m','Evgenia','Zaharova','0000-00-00','Omsk',9,'2021-10-17 19:12:05'),(10,'m','Marat','Tulkin','0000-00-00','Habarovsk',10,'2021-10-17 19:12:05'),(11,'m','Timofey','Pukalo','0000-00-00','Novosibisk',11,'2021-10-17 19:12:05');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `movie_id` bigint unsigned NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `count_likes` bigint unsigned NOT NULL DEFAULT '0' COMMENT 'Количество лайков (триггер)',
  PRIMARY KEY (`user_id`,`movie_id`),
  UNIQUE KEY `id` (`id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (118,1,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(175,1,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(50,1,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(7,1,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(186,1,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(232,1,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(82,1,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(172,1,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(16,1,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(84,1,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(92,2,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(17,2,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(143,2,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(25,2,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(304,2,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(163,2,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(162,2,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(207,2,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(76,2,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(2,2,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(26,3,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(83,3,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(31,3,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(39,3,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(79,3,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(1,3,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(106,3,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(53,3,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(62,3,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(126,3,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(132,4,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(167,4,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(133,4,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(54,4,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(544,4,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(67,4,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(13,4,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(19,4,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(253,4,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(497,4,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(147,5,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(46,5,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(27,5,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(191,5,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(396,5,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(165,5,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(6,5,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(307,5,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(112,5,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(3,5,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(57,6,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(168,6,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(441,6,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(117,6,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(275,6,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(29,6,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(393,6,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(8,6,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(71,6,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(18,6,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(151,7,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(91,7,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(156,7,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(43,7,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(317,7,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(47,7,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(74,7,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(211,7,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(69,7,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(30,7,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(103,8,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(21,8,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(75,8,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(11,8,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(142,8,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(233,8,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(672,8,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(227,8,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(60,8,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(22,8,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(4,9,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(487,9,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(59,9,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(109,9,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(68,9,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(391,9,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(58,9,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(5,9,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(32,9,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(36,9,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(20,10,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(24,10,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(35,10,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(100,10,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(116,10,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(153,10,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(10,10,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(137,10,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(48,10,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(489,10,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(89,11,1,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(73,11,2,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(78,11,3,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(33,11,4,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(277,11,5,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(9,11,6,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(44,11,7,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(15,11,8,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(42,11,9,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0),(14,11,10,'body','2021-10-17 19:12:05','2021-10-17 19:12:05',0);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_likes`
--

DROP TABLE IF EXISTS `reviews_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews_likes` (
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`review_id`),
  KEY `review_id` (`review_id`),
  CONSTRAINT `reviews_likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_likes_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_likes`
--

LOCK TABLES `reviews_likes` WRITE;
/*!40000 ALTER TABLE `reviews_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `count_likes` AFTER INSERT ON `reviews_likes` FOR EACH ROW BEGIN
    UPDATE reviews SET count_likes = (SELECT COUNT(review_id) FROM reviews_likes) WHERE id = new.review_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trailers`
--

DROP TABLE IF EXISTS `trailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `media_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `trailers_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailers`
--

LOCK TABLES `trailers` WRITE;
/*!40000 ALTER TABLE `trailers` DISABLE KEYS */;
INSERT INTO `trailers` VALUES (1,'Трейлер к фильму',12),(2,'Трейлер к фильму',13),(3,'Трейлер к фильму',14),(4,'Трейлер к фильму',15),(5,'Трейлер к фильму',16),(6,'Трейлер к фильму',17),(7,'Трейлер к фильму',18),(8,'Трейлер к фильму',19),(9,'Трейлер к фильму',20),(10,'Трейлер к фильму',21);
/*!40000 ALTER TABLE `trailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailers_movies`
--

DROP TABLE IF EXISTS `trailers_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trailers_movies` (
  `movie_id` bigint unsigned NOT NULL,
  `trailer_id` bigint unsigned NOT NULL,
  KEY `movie_id` (`movie_id`),
  KEY `trailer_id` (`trailer_id`),
  CONSTRAINT `trailers_movies_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `trailers_movies_ibfk_2` FOREIGN KEY (`trailer_id`) REFERENCES `trailers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailers_movies`
--

LOCK TABLES `trailers_movies` WRITE;
/*!40000 ALTER TABLE `trailers_movies` DISABLE KEYS */;
INSERT INTO `trailers_movies` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `trailers_movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint unsigned NOT NULL,
  `passwd_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'log1','mail@mail.ru',74997875696,'8743b52063cd84097a6fhf33f5c74f5'),(2,'denim','denim@mail.ru',74995105696,'8743b52063cd84097a6td1633f5c74f5'),(3,'sunrise','sunrise@mail.ru',74497105696,'8743b52063cd8fff7a65d1633f5c74f5'),(4,'superman','superman@mail.ru',74997105696,'8743b52063cdhj097a65d1633f5c74f5'),(5,'tiesto','tiesto@mail.ru',74911105696,'8743b52063cd84097y65d1633f5c74f5'),(6,'jordan','jordan@mail.ru',74922105696,'8743b52063cd8409ll65d1633f5c74f5'),(7,'noname','noname@mail.ru',74933105696,'8743b52063cd840dcv65d1633f5c74f5'),(8,'clipper','clipper@mail.ru',75545105696,'8743b52063cd84ew7a65d1633f5c74f5'),(9,'robot_vector','robot_vector@mail.ru',74997665696,'8743dfg2063cd84097a65d1633f5c74f5'),(10,'transformer','transformer@mail.ru',74997107796,'8743b525r3cd84097a65d1633f5c74f5'),(11,'tiguan','tiguan@mail.ru',74977735696,'8743b52063cd8409567u5d1633f5c74f5');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-17 19:27:37
