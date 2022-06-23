-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: wedding
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id_contact` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_contact` varchar(60) NOT NULL,
  `name_alias` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `info_contact` text DEFAULT NULL,
  `id_group` bigint(20) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_contact`),
  KEY `contacts_id_group_foreign` (`id_group`),
  CONSTRAINT `contacts_id_group_foreign` FOREIGN KEY (`id_group`) REFERENCES `groups` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Nurul Yolanda','Yola','08999300261','nurul@gmail.com','Ds. Achmad Yani No. 981, Tegal 56330, Gorontalo','',3,'2022-05-29 14:17:04','2022-06-05 13:32:17',NULL),(2,'Vino Sinaga',NULL,'(+62) 923 9822 4863','dadap.tarihoran@gmail.com','Jln. Mulyadi No. 693, Cilegon 40466, Sulteng',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(3,'Ilsa Kusmawati',NULL,'(+62) 20 8784 6344','bajragin76@yahoo.com','Dk. Setiabudhi No. 35, Jayapura 89983, Kalteng',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(4,'Mutia Wahyuni',NULL,'0823 322 092','nasyidah.langgeng@yahoo.co.id','Kpg. Ters. Kiaracondong No. 617, Ambon 20244, Kaltim',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(5,'Asirwada Hendra Maulana S.IP',NULL,'0861 172 786','febi48@gmail.com','Kpg. Astana Anyar No. 758, Surakarta 98698, Sulut',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(6,'Bahuwirya Sitorus S.Ked',NULL,'0508 5004 521','melinda37@yahoo.co.id','Jr. Ketandan No. 35, Cirebon 48449, Bengkulu',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(7,'Mutia Zulaika',NULL,'(+62) 363 2850 7116','narpati.chelsea@gmail.com','Kpg. Laswi No. 827, Cirebon 24570, Papua',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(8,'Gabriella Halimah',NULL,'(+62) 849 669 736','saputra.balapati@yahoo.co.id','Dk. Bazuka Raya No. 830, Pagar Alam 24094, Babel',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(9,'Vero Prasetya',NULL,'(+62) 479 4237 366','kasiran.sihotang@yahoo.co.id','Kpg. Laswi No. 635, Kotamobagu 46126, Sulteng',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(10,'Shania Wijayanti',NULL,'022 2255 236','teddy.lailasari@gmail.co.id','Psr. B.Agam 1 No. 647, Bekasi 68399, Sumut',NULL,5,'2022-05-29 14:20:33',NULL,NULL),(11,'Raden Ritan','','','','','',2,'2022-05-29 17:21:58','2022-05-29 17:21:58',NULL),(12,'Sarah','Sarah','081234567889','sarah@gmail.com','Bekasi','2A',3,'2022-05-29 17:50:00','2022-05-31 19:33:48',NULL),(13,'Tia','','09888990876','','Narogong','Kelas 6',2,'2022-06-05 13:25:14','2022-06-05 13:25:14',NULL),(97,'Siska Nur Asri','Nur','085812455641','nur_asri@gmail.com','Jl Ambon Jakarta Selatan',NULL,0,'2022-06-11 14:50:15','2022-06-11 14:50:15',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gawe`
--

DROP TABLE IF EXISTS `gawe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gawe` (
  `id_gawe` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_gawe` varchar(50) NOT NULL,
  `date_gawe` date NOT NULL,
  `info_gawe` text DEFAULT NULL,
  PRIMARY KEY (`id_gawe`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gawe`
--

LOCK TABLES `gawe` WRITE;
/*!40000 ALTER TABLE `gawe` DISABLE KEYS */;
INSERT INTO `gawe` VALUES (8,'Acara Lamaran','2022-06-22',''),(10,'Nikahan Suci','2022-06-30','Request Decoration - Flower'),(12,'Sunatan Anak Ke-3','2022-06-22','');
/*!40000 ALTER TABLE `gawe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id_group` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_group` varchar(50) NOT NULL,
  `info_group` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (0,'Unrecognize',NULL,NULL,NULL,NULL),(1,'Teman Tongkrongan','Cafe 23','2022-06-05 12:35:25','2022-06-05 12:51:25',NULL),(2,'TEMAN SD',NULL,NULL,NULL,NULL),(3,'TEMAN SMP',NULL,NULL,'2022-05-22 13:12:36',NULL),(4,'Teman TK','TK Pelangi ','2022-06-11 12:36:33','2022-06-11 12:36:33',NULL),(5,'TEMAN KULIAH','SI 2022',NULL,'2022-05-22 13:28:47',NULL);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2022-04-16-072612','App\\Database\\Migrations\\Gawe','default','App',1650094494,1),(2,'2022-04-17-053928','App\\Database\\Migrations\\CreateUsers','default','App',1650177428,2),(3,'2022-05-22-014236','App\\Database\\Migrations\\CreateGroups','default','App',1653184169,3),(4,'2022-05-29-052121','App\\Database\\Migrations\\CreateContacts','default','App',1653802893,4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_user` varchar(60) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(60) NOT NULL,
  `info_user` text DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Administrator','12217016@bsi.ac.id','$2y$10$F/wChDAL/qLvTi9upSflg.Hc0E6qR6aQ69UmKtrTcsEkSkRBkBNMO',NULL),(2,'Administrator','adm@bsi.ac.id','$2y$10$N8Ls/JA3JIq7LAwS69N53eGoOj0GdzkSrZSfFbG4yd2X2RUePZqoC',NULL),(3,'Administrator2','adm2@bsi.ac.id','$2y$10$jIV1yvjNGOv6VQ0mZY8.Muh1wYLvQwXpAn9DCC/Nxu2L1tBlfBbd.',NULL);
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

-- Dump completed on 2022-06-15 20:30:51
