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
-- Table structure for table `hospital_patient`
--

DROP TABLE IF EXISTS `hospital_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) DEFAULT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `assignedDoctorId` int unsigned DEFAULT NULL,
  `admitDate` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `hospital_patient_user_id_4fe175fe_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `hospital_patient_chk_1` CHECK ((`assignedDoctorId` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_patient`
--

LOCK TABLES `hospital_patient` WRITE;
/*!40000 ALTER TABLE `hospital_patient` DISABLE KEYS */;
INSERT INTO `hospital_patient` VALUES (5,'profile_pic/PatientProfilePic/IMG_0356.JPG','v235','7410258963','cold',17,'2022-04-27',1,28),(6,'profile_pic/PatientProfilePic/DSCN2405.JPG','v284','7896523410','fracture',18,'2022-04-27',1,29),(7,'profile_pic/PatientProfilePic/DSCN2401.JPG','v345','9635287410','piles',19,'2022-04-27',1,30),(8,'profile_pic/PatientProfilePic/DSCN2402.JPG','v345','7895642310','piles',19,'2022-04-27',1,31),(9,'profile_pic/PatientProfilePic/DSCN2405_uxTNXEX.JPG','a234','8796453120','common cold',20,'2022-04-27',1,32),(10,'profile_pic/PatientProfilePic/DSCN2400.JPG','D345','7854963210','urinal infection',21,'2022-04-27',1,33),(11,'profile_pic/PatientProfilePic/DSCN2403.JPG','p234','8795683124','brain trauma',27,'2022-04-27',1,34),(12,'profile_pic/PatientProfilePic/DSCN2401_V1xSiL5.JPG','d345','8796453120','fever',24,'2022-04-27',1,35),(13,'profile_pic/PatientProfilePic/DSCN2402_gSXSeTb.JPG','d345','7896542310','HEADACHE',27,'2022-04-27',1,36),(14,'profile_pic/PatientProfilePic/DSCN2403_K2Lsswc.JPG','S233','6548972310','Heart',17,'2022-04-27',1,37),(15,'profile_pic/PatientProfilePic/DSCN2401_wCfLaf3.JPG','A234','8252156109','Sore throat',24,'2022-04-27',1,38),(16,'profile_pic/PatientProfilePic/DSCN2402_GmVZr8z.JPG','s345','9431704954','Typhoid',19,'2022-04-27',1,39),(17,'profile_pic/PatientProfilePic/IMG_0354.JPG','c 12','9431704954','common cold',22,'2022-04-27',1,40),(18,'profile_pic/PatientProfilePic/DSCN2401_0WI3mpL.JPG','addra','9431704954','Eye dryness',25,'2022-04-27',1,41),(19,'profile_pic/PatientProfilePic/DSCN2401_4vm8Zl6.JPG','reesa path','7680995620','General checkup',23,'2022-04-27',0,42),(20,'profile_pic/PatientProfilePic/DSCN2407.JPG','Park street view','8789109459','Anaesthesiatic allergies',21,'2022-04-27',0,43);
/*!40000 ALTER TABLE `hospital_patient` ENABLE KEYS */;
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
