-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: shividb.1
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_id` char(10) NOT NULL DEFAULT 'null',
  `booking_date` date NOT NULL,
  `duration_of_stay` varchar(10) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_out_datel` date NOT NULL,
  `booking_payment_type` varchar(45) NOT NULL,
  `total_rooms_booked` int NOT NULL,
  `hotel_id` int NOT NULL,
  `guest_id` int NOT NULL,
  `emp_id` int NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `booking_id` (`booking_id`),
  KEY `hotel_hotel_id_idx` (`hotel_id`),
  KEY `guests_guest_id_idx` (`guest_id`) /*!80000 INVISIBLE */,
  KEY `employees_emp_id_idx` (`emp_id`),
  KEY `hotel_id` (`hotel_id`),
  KEY `hotel_id_2` (`hotel_id`),
  KEY `hotel_id_3` (`hotel_id`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`emp_id`),
  CONSTRAINT `guest_id` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`hotel_idl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('1','2024-01-01','2','2024-01-01','2024-01-03','UPI',1,1010,1209876,23612,2000.00),('10','2024-01-09','8','2024-01-09','2024-01-17','UPI',1,2020,1230987,23762,8000.00),('2','2024-01-01','3','2024-01-01','2024-01-04','CASH',2,3030,1234567,30913,6000.00),('3','2024-01-02','4','2024-01-02','2024-01-06','CASH',2,4040,5634587,30963,8000.00),('4','2024-01-03','4','2024-01-03','2024-01-07','UPI',1,5050,5934587,37814,4000.00),('5','2024-01-04','5','2024-01-04','2024-01-09','UPI',1,6060,8368594,54084,5000.00),('6','2024-01-04','5','2024-01-04','2024-01-09','CASH ',1,7070,8568998,56895,5000.00),('7','2024-01-04','5','2024-01-04','2024-01-09','CASH',1,8080,9678012,63505,5000.00),('8','2024-01-05','6','2024-01-05','2024-01-11','CASH',4,9090,9876546,76136,24000.00),('9','2024-01-09','7','2024-01-09','2024-01-16','CASH',2,9898,9918904,84576,14000.00);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL,
  `department_name` varchar(45) NOT NULL,
  `department_description` varchar(100) NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (111000,'housekeeping','manages the cleanliness'),(111222,'security','ensure the safety'),(111333,'food and beberage','hotel\'s restaurants and room services'),(111444,'maintenance','repairs and maintenance of hotels'),(111666,'sales and marketing','promotes the hotel\'s services'),(111999,'finance','budgets and payroll');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL,
  `emp_first_name` varchar(45) NOT NULL,
  `emp_last_name` varchar(45) NOT NULL,
  `emp_designation` varchar(45) NOT NULL,
  `emp_address_id` int NOT NULL,
  `emp_contact_number` varchar(12) NOT NULL,
  `emp_email_address` varchar(45) NOT NULL,
  `department_id` int NOT NULL,
  `address_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `department_id` (`department_id`) /*!80000 INVISIBLE */,
  KEY `hotel_id_idx` (`hotel_id`),
  KEY `hotel_id` (`hotel_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (23612,'shivam','mishra','manager',888,'1092340986','H@gmail.com',111999,88888,1010),(23762,'sumana','biswas','waiter',333,'2000987344','S@gmail.com',111333,33333,2020),(30913,'vaibhav','rai','manager',777,'5463782901','V@gmail.com',111666,77777,3030),(30963,'sumit','pandey','security gaurd',999,'8368093456','T@gmail.com',111222,99999,4040),(37814,'pratiksha','bish','mistri',666,'9876543219','R@gmail.com',111444,66666,5050),(54084,'samridhi','mishra','chef',555,'8712345609','M@gmail.com',111333,55555,6060),(56895,'divya','bhagat','housekeeper',222,'9984533672','D@gmail.com',111000,22222,7070),(63505,'utkarsh','agrawal','manager',225,'3456789086','U@gmail.com',111222,83685,8080),(76136,'akhil','pandey','finance manager',444,'9981203745','A@gmail.com',111999,44444,9090),(84576,'piyush','dahiya','receptionist',111,'8567843920','P@gmail.com',111999,11111,9898);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guest_id` int NOT NULL,
  `guest_first_name` varchar(45) NOT NULL,
  `guest_last_name` varchar(45) NOT NULL,
  `guest_id_proof` varchar(45) NOT NULL,
  PRIMARY KEY (`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1209876,'priyanka','gaod','1209666'),(1230987,'pinki','maurya','1000034'),(1234567,'shiwangi','shukla','5378975'),(5465678,'saumya','shukla','4877989'),(5634587,'sakshi','kumari','3895666'),(5934587,'rinki','maurya','1000056'),(6478349,'shreya','shukla','4567890'),(8368594,'akhil','verma','6307390'),(8568998,'subham','pandey','1209456'),(9678012,'nancy','chndra','1298345'),(9876546,'anjali','chawda','8762399'),(9918904,'garima','mishra','1022289');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotel_idl` int NOT NULL,
  `hotel_name` varchar(45) NOT NULL,
  `hotel_address` varchar(45) NOT NULL,
  `rooms_booked_idl` int NOT NULL,
  `hotel_room_capacity` varchar(45) NOT NULL,
  PRIMARY KEY (`hotel_idl`),
  KEY `rooms_booked_id_idx` (`rooms_booked_idl`),
  CONSTRAINT `rooms_booked_id` FOREIGN KEY (`rooms_booked_idl`) REFERENCES `rooms_booked` (`rooms_booked_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1010,'mivi','up',100,'6'),(2020,'lulu','uttarakhand',105,'5'),(3030,'palacio','jammu',120,'8'),(4040,'kanju','rajesthan',145,'5'),(5050,'manali','kashmir',155,'6'),(6060,'kastu','nepal',189,'5'),(7070,'mantu','goa',199,'5'),(8080,'pista','sikkim',250,'6'),(9090,'jirdo','assam',480,'7'),(9898,'kullu','kannur',734,'5');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel_services_used_by_guests`
--

DROP TABLE IF EXISTS `hotel_services_used_by_guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel_services_used_by_guests` (
  `service_used_id` int NOT NULL,
  `hotel_services_service_id` int NOT NULL,
  `booking_id` char(10) NOT NULL,
  PRIMARY KEY (`service_used_id`),
  KEY `booking_id_idx` (`booking_id`),
  KEY `booking_id` (`booking_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `booking_id` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel_services_used_by_guests`
--

LOCK TABLES `hotel_services_used_by_guests` WRITE;
/*!40000 ALTER TABLE `hotel_services_used_by_guests` DISABLE KEYS */;
INSERT INTO `hotel_services_used_by_guests` VALUES (4548,6307,'1'),(5345,9875,'4'),(5446,4567,'6'),(6776,1234,'5'),(7689,4560,'8'),(8834,3456,'2'),(9984,5987,'1');
/*!40000 ALTER TABLE `hotel_services_used_by_guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `guest_id` int NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `hotel_id_idx` (`hotel_id`),
  KEY `guest_id_idx` (`guest_id`),
  KEY `hotel_id_idx1` (`hotel_id`,`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,1010,1209876),(202,2020,1230987),(303,3030,1234567),(404,4040,5674839),(505,5050,5934587),(606,8080,9678012),(707,9090,9876546),(808,9898,9918904),(909,6060,8368594),(991,7070,8568998);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms_booked`
--

DROP TABLE IF EXISTS `rooms_booked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms_booked` (
  `rooms_booked_id` int NOT NULL,
  `bookings_booking_id` int NOT NULL,
  `room_id` int NOT NULL,
  PRIMARY KEY (`rooms_booked_id`),
  KEY `room_id_idx` (`room_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms_booked`
--

LOCK TABLES `rooms_booked` WRITE;
/*!40000 ALTER TABLE `rooms_booked` DISABLE KEYS */;
INSERT INTO `rooms_booked` VALUES (100,4,101),(105,5,202),(120,6,303),(145,7,404),(155,8,505),(189,10,606),(199,9,707),(250,1,808),(480,3,909),(734,2,991);
/*!40000 ALTER TABLE `rooms_booked` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-31 22:04:54
