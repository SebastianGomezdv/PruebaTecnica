-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: fidelizacionbd
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_departamento` int NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `id_departamento` (`id_departamento`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Medellín',1),(2,'Bogotá',2),(3,'Miami',3),(4,'Ciudad de México',4),(5,'Guadalajara',5),(6,'Monterrey',6),(7,'Cancún',7),(8,'Playa del Carmen',7),(9,'Ciudad de Panamá',8),(11,'David',10),(12,'Lima',11),(13,'Arequipa',12),(14,'Trujillo',13),(15,'Santiago',14),(16,'Viña del Mar',15),(17,'Concepción',16),(18,'Quito',17),(19,'Sangolquí',17),(20,'Tumbaco',17),(21,'Cayambe',17),(22,'Guayaquil',18),(23,'Durán',18),(24,'Samborondón',18),(25,'Daule',18),(26,'Cuenca',19),(27,'Gualaceo',19),(28,'Paute',19),(29,'Chordeleg',19),(30,'Manta',20),(31,'Portoviejo',20),(32,'Bahía de Caráquez',20),(33,'Chone',20),(34,'San José',21),(35,'Escazú',21),(36,'Santa Ana',21),(37,'Curridabat',21),(38,'Alajuela',22),(39,'Grecia',22),(40,'San Ramón',22),(41,'Atenas',22),(42,'Heredia',23),(43,'Santo Domingo',23),(44,'Belén',23),(45,'Barva',23),(46,'Liberia',24),(47,'Tamarindo',24),(48,'Playas del Coco',24),(49,'Nicoya',24),(50,'Santo Domingo Centro',25),(51,'Mirador Sur',25),(52,'Piantini',25),(53,'Bella Vista',25),(54,'Santiago de los Caballeros',26),(55,'Licey al Medio',26),(56,'Tamboril',26),(57,'Villa González',26),(58,'Punta Cana',27),(59,'Higüey',27),(60,'Bávaro',27),(61,'Verón',27),(62,'San Felipe de Puerto Plata',28),(63,'Sosúa',28),(64,'Cabarete',28),(65,'Luperón',28),(66,'Ciudad de Guatemala',29),(67,'Mixco',29),(68,'Villa Nueva',29),(69,'Santa Catarina Pinula',29),(70,'Antigua Guatemala',30),(71,'Jocotenango',30),(72,'Ciudad Vieja',30),(73,'Sumpango',30),(74,'Quetzaltenango',31),(75,'Salcajá',31),(76,'Olintepeque',31),(77,'La Esperanza',31),(78,'Puerto Barrios',32),(79,'Livingston',32),(80,'El Estor',32),(81,'Morales',32),(82,'La Paz',33),(83,'El Alto',33),(84,'Viacha',33),(85,'Achocalla',33),(86,'Santa Cruz de la Sierra',34),(87,'Montero',34),(88,'Warnes',34),(89,'La Guardia',34),(90,'Cochabamba',35),(91,'Quillacollo',35),(92,'Sacaba',35),(93,'Tiquipaya',35),(94,'Sucre',36),(95,'Tarabuco',36),(96,'Monteagudo',36),(97,'Padilla',36),(98,'Asunción',37),(99,'Villa Morra',37),(100,'Carmelitas',37),(101,'Sajonia',37),(102,'Luque',38),(103,'San Lorenzo',38),(104,'Capiatá',38),(105,'Fernando de la Mora',38),(106,'Ciudad del Este',39),(107,'Hernandarias',39),(108,'Presidente Franco',39),(109,'Minga Guazú',39),(110,'Encarnación',40),(111,'Coronel Bogado',40),(112,'Hohenau',40),(113,'Bella Vista',40),(114,'Envigado',1),(115,'Itagüí',1),(116,'Bello',1),(117,'Sabaneta',1),(118,'Soacha',2),(119,'Chía',2),(120,'Zipaquirá',2),(121,'Facatativá',2),(122,'Cali',4),(123,'Palmira',4),(124,'Jamundí',4),(125,'Yumbo',4),(126,'Barranquilla',5),(127,'Soledad',5),(128,'Malambo',5),(129,'Puerto Colombia',5),(130,'Bucaramanga',6),(131,'Floridablanca',6),(132,'Girón',6),(133,'Piedecuesta',6),(134,'Cartagena',7),(135,'Turbaco',7),(136,'Arjona',7),(137,'Magangué',7),(138,'Pereira',8),(139,'Dosquebradas',8),(140,'Santa Rosa de Cabal',8),(141,'La Virginia',8),(142,'Orlando',3),(143,'Tampa',3),(144,'Fort Lauderdale',3),(145,'Jacksonville',3),(150,'New York City',10),(151,'Brooklyn',10),(152,'Queens',10),(153,'Buffalo',10),(154,'Houston',11),(155,'Dallas',11),(156,'Austin',11),(157,'San Antonio',11),(158,'Chicago',12),(159,'Aurora',12),(160,'Naperville',12),(161,'Springfield',12),(167,'Sacramento',46),(168,'Fresno',46),(169,'Long Beach',46),(170,'Oakland',46),(171,'Bakersfield',46),(172,'La Chorrera',9),(173,'Capira',9),(174,'Chame',9),(175,'San Carlos',9);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `id_tipo` int NOT NULL,
  `numero_identificacion` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `id_ciudad` int NOT NULL,
  `id_departamento` int NOT NULL,
  `id_pais` int NOT NULL,
  `id_marca` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `numero_identificacion` (`numero_identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,'123456789','Juaco','GAY','1990-05-15','Calle 123 #45-67',1,1,1,1),(2,1,'1025762297','Juan Sebastian','Arboleda Gomez','2006-01-16','Cr 94 #57c-65',1,1,1,5),(3,1,'43723983','Silvia Elena','Rodriguez Durango','1966-03-19','Cr 94 #57c-65',1,1,1,1),(5,1,'437239833','Silvia Elena','Arboleda Gomez','2000-02-12','Cr 94 #57c-655',1,1,1,3),(6,2,'437239832','Amuemuemue afuefuefueosas','ngolo ngolo','2000-10-10','Cr 24 #58-62',1,1,1,5),(9,3,'987654321','Juan Sebastián','Rodriguez Juarez','2000-12-12','Cr 24 #58-67',173,9,4,1),(10,1,'766776','khuku','khukjhj','2025-08-26','kgh',1,1,1,4),(11,3,'54654654','fewefwefew','ngolo ngolo','2022-02-08','kghhhh',98,37,12,4),(12,3,'12312321321','Amuemueosasss','ngolo ngoloo','2000-02-12','kghhhhh',116,1,1,3),(13,1,'1116447262','Andres ','Castillo','1997-11-18','Cr 94 #57c-655',1,1,1,6);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `id_pais` int NOT NULL,
  PRIMARY KEY (`id_departamento`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Antioquia',1),(2,'Cundinamarca',1),(3,'Florida',2),(4,'Ciudad de México',3),(5,'Jalisco',3),(6,'Nuevo León',3),(7,'Quintana Roo',3),(8,'Panamá',4),(9,'Panamá Oeste',4),(10,'Chiriquí',4),(11,'Lima',5),(12,'Arequipa',5),(13,'La Libertad',5),(14,'Región Metropolitana de Santiago',6),(15,'Valparaíso',6),(16,'Biobío',6),(17,'Pichincha',7),(18,'Guayas',7),(19,'Azuay',7),(20,'Manabí',7),(21,'San José',8),(22,'Alajuela',8),(23,'Heredia',8),(24,'Guanacaste',8),(25,'Distrito Nacional',9),(26,'Santiago',9),(27,'La Altagracia',9),(28,'Puerto Plata',9),(29,'Guatemala',10),(30,'Sacatepéquez',10),(31,'Quetzaltenango',10),(32,'Izabal',10),(33,'La Paz',11),(34,'Santa Cruz',11),(35,'Cochabamba',11),(36,'Chuquisaca',11),(37,'Distrito Capital',12),(38,'Central',12),(39,'Alto Paraná',12),(40,'Itapúa',12),(41,'Valle del Cauca',1),(42,'Atlántico',1),(43,'Santander',1),(44,'Bolívar',1),(45,'Risaralda',1),(46,'California',2),(47,'New York',2),(48,'Texas',2),(49,'Illinois',2);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `id_marca` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'Americanino'),(2,'American Eagle'),(3,'Chevignon'),(4,'Esprit'),(5,'Naf Naf'),(6,'Rifle');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia'),(2,'Estados Unidos'),(3,'México'),(4,'Panamá'),(5,'Perú'),(6,'Chile'),(7,'Ecuador'),(8,'Costa Rica'),(9,'República Dominicana'),(10,'Guatemala'),(11,'Bolivia'),(12,'Paraguay');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_identificacion`
--

DROP TABLE IF EXISTS `tipo_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_identificacion` (
  `id_tipo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_identificacion`
--

LOCK TABLES `tipo_identificacion` WRITE;
/*!40000 ALTER TABLE `tipo_identificacion` DISABLE KEYS */;
INSERT INTO `tipo_identificacion` VALUES (1,'Cédula de ciudadanía'),(2,'Cédula de extranjería'),(3,'Pasaporte'),(4,'Tarjeta de identidad');
/*!40000 ALTER TABLE `tipo_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fidelizacionbd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-29 22:28:54
