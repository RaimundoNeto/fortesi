-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: fortesi
-- ------------------------------------------------------
-- Server version	5.5.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `rg` varchar(100) NOT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `dataNascimento` varchar(150) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `estadocivil` varchar(200) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (22,'jose lucas batista borges','656.565.656-56','2210384734367','(22) 2222-2222','lucas100icasa@hotmail.com','06/12/1994','Masculino','Casado','Brasil','Bahia','Juazeiro do norte'),(23,'testedsd','656.565.656-56','6565656565656','(22) 2222-2222','lucas100icasa@hotmail.com','05/12/1995','Masculino','Casado','brasileiro','Para','Juazeiro do norte'),(24,'testedsd','656.565.656-56','2210384734367','(22) 2222-2222','lucas100icasa@hotmail.com','05/12/1995','Masculino','Solteiro','Brasil','Pernambuco','Juazeiro do norte');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'José','Lucas@hotmail.com','Rua gilvani cirilo de souza',NULL),(2,'maria','maria@hotmail.com','alldkrj',NULL),(3,'zé','zé@hotmail.com','kekeiek',NULL),(4,'teste','teste@hotmail.com','enderecoteste',NULL);
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'lucas','123'),(2,'teste','12345'),(3,'eee','111'),(4,'ccc','ccc'),(5,'teste','teste'),(6,'123','456'),(7,'pqpqpq','2345'),(8,'00000','000000'),(9,'aaa','bbb'),(10,'112','112');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginadm`
--

DROP TABLE IF EXISTS `loginadm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginadm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginadm`
--

LOCK TABLES `loginadm` WRITE;
/*!40000 ALTER TABLE `loginadm` DISABLE KEYS */;
INSERT INTO `loginadm` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `loginadm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novosdadosprocesso`
--

DROP TABLE IF EXISTS `novosdadosprocesso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `novosdadosprocesso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipoacaon` varchar(255) DEFAULT NULL,
  `condprocessualn` varchar(255) DEFAULT NULL,
  `partecontrarian` varchar(255) DEFAULT NULL,
  `advcontrarion` varchar(255) DEFAULT NULL,
  `regiaon` varchar(255) DEFAULT NULL,
  `secaon` varchar(255) DEFAULT NULL,
  `subcecaon` varchar(255) DEFAULT NULL,
  `cidade_comarcan` varchar(255) DEFAULT NULL,
  `juizdireito_espn` varchar(255) DEFAULT NULL,
  `forumn` varchar(255) DEFAULT NULL,
  `varan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novosdadosprocesso`
--

LOCK TABLES `novosdadosprocesso` WRITE;
/*!40000 ALTER TABLE `novosdadosprocesso` DISABLE KEYS */;
INSERT INTO `novosdadosprocesso` VALUES (1,'teste','teste','teste','teste','teste','teste','V','teste','teste','teste','teste'),(3,'abc','cef','gho','jdh','sjk','jkj','jsjj','sal','ksa','jkj','jka');
/*!40000 ALTER TABLE `novosdadosprocesso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `processos`
--

DROP TABLE IF EXISTS `processos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `processos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numprocesso` varchar(255) DEFAULT NULL,
  `assunto` varchar(255) DEFAULT NULL,
  `tipoacao` varchar(255) DEFAULT NULL,
  `valor_hora` varchar(255) DEFAULT NULL,
  `datacad` varchar(255) DEFAULT NULL,
  `dataencerramento` varchar(255) DEFAULT NULL,
  `condprocessual` varchar(255) DEFAULT NULL,
  `partecontraria` varchar(255) DEFAULT NULL,
  `advcontrario` varchar(255) DEFAULT NULL,
  `tipojust_tribunal` varchar(255) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `secao` varchar(255) DEFAULT NULL,
  `subcecao` varchar(255) DEFAULT NULL,
  `cidade_comarca` varchar(255) DEFAULT NULL,
  `juizdireito_esp` varchar(255) DEFAULT NULL,
  `forum` varchar(255) DEFAULT NULL,
  `vara` varchar(255) DEFAULT NULL,
  `cliente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processos`
--

LOCK TABLES `processos` WRITE;
/*!40000 ALTER TABLE `processos` DISABLE KEYS */;
INSERT INTO `processos` VALUES (5,'3232121','dsdsds','sssssssssss','11111','98/98/0900','18/11/2015','Passiva','Leo Mentediz','Leo Mentediz','STF','sul norte nortde','testeeee','aa','teds',NULL,'teste','teste','jose lucas batista borges');
/*!40000 ALTER TABLE `processos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (17,'maria',23,'teste'),(19,'testando lucas',10.1,'teste');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fortesi'
--

--
-- Dumping routines for database 'fortesi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-24 23:56:22
