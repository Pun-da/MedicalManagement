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
-- Table structure for table `hospital_doctor`
--

DROP TABLE IF EXISTS `hospital_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_doctor_user_id_fefadd71` (`user_id`),
  CONSTRAINT `hospital_doctor_user_id_fefadd71_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_doctor`
--

LOCK TABLES `hospital_doctor` WRITE;
/*!40000 ALTER TABLE `hospital_doctor` DISABLE KEYS */;
INSERT INTO `hospital_doctor` VALUES (4,'profile_pic/DoctorProfilePic/Profile_pic_Bizton.jpg','vm 487','7894561230','Cardiologist',1,17),(5,'profile_pic/DoctorProfilePic/SHUBHANKAR_PASSPORT_photo.jpg','vm 678','9123456789','Dermatologists',1,18),(6,'profile_pic/DoctorProfilePic/DSCN2400.JPG','vm 652','7894561234','Emergency Medicine Specialists',1,19),(7,'profile_pic/DoctorProfilePic/DSCN2401.JPG','L-69','8252156109','Allergists/Immunologists',1,20),(8,'profile_pic/DoctorProfilePic/DSCN2402.JPG','vm 471','7531598624','Anesthesiologists',1,21),(9,'profile_pic/DoctorProfilePic/DSCN2402_EfQ7HJ2.JPG','vm 254','8974562130','Orthopedic',1,22),(10,'profile_pic/DoctorProfilePic/IMG_0340.JPG','g69','7894561230','Gynecologist',1,23),(11,'profile_pic/DoctorProfilePic/IMG_0339.JPG','k234','9874562130','ENT',1,24),(12,'profile_pic/DoctorProfilePic/IMG_0341.JPG','m234','785496301','Ophthalmology',1,25),(13,'profile_pic/DoctorProfilePic/DSCN2400_j6WxLXd.JPG','m234','852016397','Urology',1,26),(14,'profile_pic/DoctorProfilePic/IMG_0365.JPG','k237','7898456213','Neurologists',1,27);
/*!40000 ALTER TABLE `hospital_doctor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:34:54
