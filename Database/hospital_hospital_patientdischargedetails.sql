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
-- Table structure for table `hospital_patientdischargedetails`
--

DROP TABLE IF EXISTS `hospital_patientdischargedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_patientdischargedetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patientId` int unsigned DEFAULT NULL,
  `patientName` varchar(40) NOT NULL,
  `assignedDoctorName` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `symptoms` varchar(100) DEFAULT NULL,
  `admitDate` date NOT NULL,
  `releaseDate` date NOT NULL,
  `daySpent` int unsigned NOT NULL,
  `roomCharge` int unsigned NOT NULL,
  `medicineCost` int unsigned NOT NULL,
  `doctorFee` int unsigned NOT NULL,
  `OtherCharge` int unsigned NOT NULL,
  `total` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `hospital_patientdischargedetails_chk_1` CHECK ((`patientId` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_2` CHECK ((`daySpent` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_3` CHECK ((`roomCharge` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_4` CHECK ((`medicineCost` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_5` CHECK ((`doctorFee` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_6` CHECK ((`OtherCharge` >= 0)),
  CONSTRAINT `hospital_patientdischargedetails_chk_7` CHECK ((`total` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_patientdischargedetails`
--

LOCK TABLES `hospital_patientdischargedetails` WRITE;
/*!40000 ALTER TABLE `hospital_patientdischargedetails` DISABLE KEYS */;
INSERT INTO `hospital_patientdischargedetails` VALUES (1,6,'Abhiraj Khare','Prakhar','v284','7896523410','fracture','2022-04-27','2022-04-27',0,0,690,750,966,2406);
/*!40000 ALTER TABLE `hospital_patientdischargedetails` ENABLE KEYS */;
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
