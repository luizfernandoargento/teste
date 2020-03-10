-- MariaDB dump 10.17  Distrib 10.4.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: desafio_db
-- ------------------------------------------------------
-- Server version	10.4.12-MariaDB-1:10.4.12+maria~bionic-log

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
INSERT INTO `members` VALUES (1,'Asdrúbal',50,'2020-03-08','2020-03-08'),(2,'Creuza',35,'2020-03-08','2020-03-08'),(3,'Astolfo',56,'2020-03-08','2020-03-08');
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `postal_code` varchar(9) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_members_id_FK` (`member_id`),
  CONSTRAINT `addresses_members_id_FK` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
INSERT INTO `addresses` VALUES (1,1,'Home','04029-902','SP','São Paulo','Indianópolis','Avenida Ibirapuera',3103,'','2020-03-08','2020-03-09'),(2,1,'Work','88056-000','SC','Florianópolis','Cachoeira do Bom Jesus','Avenida Luiz Boiteux Piazza',1000,'Casa 1','2020-03-08','2020-03-09'),(3,2,'Home','80530-900','PR','Curitiba','Centro Cívico','Avenida Cândido de Abreu',127,'','2020-03-08','2020-03-09'),(4,3,'Home','88161-000','SC','Biguaçu','Universitário','Rua Sebastião Lara',829,'','2020-03-08','2020-03-09');
UNLOCK TABLES;

-- Dump completed on 2020-03-09 12:50:53
