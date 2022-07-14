-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (13,'pbkdf2_sha256$320000$tu7VWOjT9AAY6EvImDT2iz$EQcqdkSbdR5dqmv9o6zGoA51jIbg0sVZi7lJApibNMQ=','2022-04-27 17:31:25.407944',0,'Shubadmin','Shubhankar','Shastri','',0,1,'2022-04-27 15:13:35.263800'),(14,'pbkdf2_sha256$320000$ftrq2B9kVgVtE6AEKI3ZId$2+Go4BIdLtURcAraAp5kSaQN+7kjAe0vNW1FQ8HhRaQ=','2022-04-27 16:07:14.083143',0,'Siddadmin','Siddhant','Panda','',0,1,'2022-04-27 15:14:44.496449'),(15,'pbkdf2_sha256$320000$lAWeF3yciVL73NGeVX5L3i$7yd0C4Dr7UyHB69KHZxkHRD6asOWZ3mvoC1+/EgMKPg=',NULL,0,'Devbadmin','Dev','Bansal','',0,1,'2022-04-27 15:15:07.179873'),(16,'pbkdf2_sha256$320000$pkfj1wggDuucIxzYZscHfU$eVjojTxx5cwkK9FLAdwW44bPaMmYecMCoCCGkygq8Ss=','2022-04-27 15:48:09.672680',0,'Rahuadmin','Rahul','Jauhari','',0,1,'2022-04-27 15:15:27.179916'),(17,'pbkdf2_sha256$320000$z7cxJRtEVnAwDBSAhOZR1V$vZuqrVEdHLIcRwgSdJBrtLxYWP6K+YDjTdIIItBwexU=','2022-04-27 16:42:10.720527',0,'Adidoc','Aditya','Datta','',0,1,'2022-04-27 15:16:40.607789'),(18,'pbkdf2_sha256$320000$TWdZ4lZRf17xsiImz7U01Z$SlW6WmxpOCqu2b4fJZjV2ZmzrLD08SDNJ2dTigWCjkg=',NULL,0,'Pradoc','Prakhar','Nigam','',0,1,'2022-04-27 15:17:19.601146'),(19,'pbkdf2_sha256$320000$MAVBvXdOjoElLeZogUx0J9$3/orKGjyvyTV9yj1SuiJ3w3XoxyjOzJ2NZt8RhRWUwA=',NULL,0,'Kardoc','Kartikey','Goel','',0,1,'2022-04-27 15:18:38.386115'),(20,'pbkdf2_sha256$320000$4VTBgbGCC6PzKycdh4yUlO$V6TNlHjSIiFGUep5R49GlDq35GmdFgBts7thyTq/DoM=',NULL,0,'Ankdoc','Ankit','Sharma','',0,1,'2022-04-27 15:19:22.390940'),(21,'pbkdf2_sha256$320000$ziy2IGv4vJqVSLlF8r66AQ$+5daK2U+V2P8UiNTkWHpgDC8FOvhT5CbHoxsjRWlThw=',NULL,0,'Ayudoc','Ayush','Khan','',0,1,'2022-04-27 15:20:08.693849'),(22,'pbkdf2_sha256$320000$X8lqzBzcJi1cGrkRlqxWSC$55cL2fNb4ze72aIudIagyt8of+bYLBk1yn/f9R2XT/M=',NULL,0,'Shadoc','Shashwat','Tripathi','',0,1,'2022-04-27 15:21:56.336023'),(23,'pbkdf2_sha256$320000$pY09zRC2qt5qVM3JfSjIiS$xYP4TavNHhzfOryocbvKT/GlxzPcf1EUvIf/9HMVt9s=',NULL,0,'Mandoc','Mannan','Gupta','',0,1,'2022-04-27 15:23:04.403021'),(24,'pbkdf2_sha256$320000$mx0Cd8oquK7Pwt5SG5inB3$EJnUH6PhKZ0s3suVyVGvsmq/nJmo43jBlc2cn+s3MSY=',NULL,0,'Deedoc','Deepa','Khan','',0,1,'2022-04-27 15:24:09.352843'),(25,'pbkdf2_sha256$320000$snyw1oSHAOlAkxw96EJr2h$jZ5dezUls+mekveCPcXdguQEuaNpex0Kw61+zt5h6+s=',NULL,0,'Simdoc','Simran','Pandey','',0,1,'2022-04-27 15:25:08.606769'),(26,'pbkdf2_sha256$320000$Ft2B0e8hhm3xyNWJfxtydE$EbgZXvoW4KNQj38zflJsMMO2ZD/SMbIyw+QdRssWzvU=',NULL,0,'Assdoc','Assa','Khan','',0,1,'2022-04-27 15:27:12.443474'),(27,'pbkdf2_sha256$320000$9A0liVrGXcZlTx1Zdb7oGY$qWW/Y1pQH0+Y3U9Zukcnko2PMBFniV+zFWHxte7LZxE=',NULL,0,'Cledoc','Cleopatra','Caesura','',0,1,'2022-04-27 15:28:22.716832'),(28,'pbkdf2_sha256$320000$Ynf2aG7C7CuOt4tlVCVc3H$eCwBmEksg/jz8nS0m9VHX4UEUMtL2eWTKF3CvfEFfYk=','2022-04-27 17:32:55.727880',0,'Ragpat','Raghuvir','Sashtri','',0,1,'2022-04-27 15:34:03.629407'),(29,'pbkdf2_sha256$320000$HJvWOOLlWSQTWW4sEc4PRz$7yuYx6JmbuJ6eqm7f/wOtowVnQm37jR8UZeIzglrr6o=','2022-04-27 15:59:52.532667',0,'Abhpat','Abhiraj','Khare','',0,1,'2022-04-27 15:35:43.378642'),(30,'pbkdf2_sha256$320000$aa2kb2dk0Y3DLVlDW2Rv77$OKZBzY9uZSgng5YHUS6Q03PUa2JhHiCKa9llcbTKkoY=',NULL,0,'Deepat','Deep','Khan','',0,1,'2022-04-27 15:36:37.186972'),(31,'pbkdf2_sha256$320000$JRKCEmcW2cXC4qVol90cDD$a75kRFaNVsnr+yVtR+sHKWejCosJvwCXjdwKIImL7tY=',NULL,0,'Rajpat','Raj','patel','',0,1,'2022-04-27 15:38:02.248785'),(32,'pbkdf2_sha256$320000$rVeKXEYjOUeKEwDIGIs7B3$IXiGt1WpVBpk1SgfYfjX1caPAl8oSvKS0csfGaAUyWA=',NULL,0,'Parpat','Parth','Shah','',0,1,'2022-04-27 15:38:54.336403'),(33,'pbkdf2_sha256$320000$QyInBBJl3GSuPtgYIRC4yF$oUWL2uxRXeVow5A0htfB4Evuh+2kf83zxzmj4UcXgLU=',NULL,0,'Prepat','Preet','Patel','',0,1,'2022-04-27 15:40:08.765522'),(34,'pbkdf2_sha256$320000$fqmSbYV3L9oA34P5rYshyV$Cd8A6tczyeEzK+JR/GCAiIVYOYtM9Aoew4tAETnU7FY=',NULL,0,'Shrpat','Shruti','Shah','',0,1,'2022-04-27 15:41:29.893205'),(35,'pbkdf2_sha256$320000$okeveWo9RKJGkLYMwXWwDJ$ojGfed+AVvV9nb1UQLNEPlWJTDYOekG/dJCfEg0nhE0=',NULL,0,'Rahpat','Rahul','Shastri','',0,1,'2022-04-27 15:42:26.832437'),(36,'pbkdf2_sha256$320000$yyEoVsJicmybBBOBWYRkYu$nYGjfRG4PkEWI76mDPAm3otFzTq180yQi5pQef64KEw=',NULL,0,'Sahpat','Sahiti','Shastri','',0,1,'2022-04-27 15:43:50.996203'),(37,'pbkdf2_sha256$320000$OwYdHFBNeP8cVH3Eueyrf0$vJfzw9LXzaEONS3UvfbUhQYSi/CNLUKKe+8/RhN2Wa0=',NULL,0,'Tuspat','Tushar','Datta','',0,1,'2022-04-27 15:44:40.676283'),(38,'pbkdf2_sha256$320000$AsCqs35OpISEdvhAgpVTGV$wno95IVK82eJl7ga4xTLCBiwbCfGS3X1xzpxIYVBV4s=',NULL,0,'Rampat','Ram','panda','',0,1,'2022-04-27 15:46:09.535062'),(39,'pbkdf2_sha256$320000$cyeTl2hyHlESnQp5faTt4n$V1WJwz/W7uukM1Dyp/GxmKrZhmG0iI6y+Go/xUHAsnM=',NULL,0,'Agnipat','Agni','Datta','',0,1,'2022-04-27 15:47:23.475614'),(40,'pbkdf2_sha256$320000$QHOItWWLO5VVMrnjTXpywS$rQX/ELx/06iKRfmAEOyPMYdFnKWXXK/tqjJeHVn0UlE=','2022-04-27 16:03:21.167031',0,'Helapat','Hela','Parth','',0,1,'2022-04-27 16:03:12.484677'),(41,'pbkdf2_sha256$320000$s412Jx2kguRTaFL4nmTNG5$bjiektNjWOEHvn+8MiEQ24fkx6Jh2S6iNh/fUGhcGK0=',NULL,0,'Newpat','New','patel','',0,1,'2022-04-27 16:05:21.864823'),(42,'pbkdf2_sha256$320000$lZzJTkRBvSUkQETc7L2azY$NPYtOOv+LsoyD3GFptNcNixdPIYJbl9IKwSBIzxo7d8=',NULL,0,'Kyopat','kyoto','Juari','',0,1,'2022-04-27 16:06:04.839052'),(43,'pbkdf2_sha256$320000$c2dEV8JW9ajuW7u1t0hnKJ$/WviyiYTomlFdOrk9RK3O7obrd5SkAQ4Ms4lUebfqdo=',NULL,0,'Himpat','Himan','pandet','',0,1,'2022-04-27 16:06:56.951013');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:34:53
