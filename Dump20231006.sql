CREATE DATABASE  IF NOT EXISTS `reportgenerator` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `reportgenerator`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: reportgenerator
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `membro`
--

DROP TABLE IF EXISTS `membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `membro` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `iso_code` varchar(10) NOT NULL,
  `status` varchar(45) NOT NULL,
  `joined` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membro`
--

LOCK TABLES `membro` WRITE;
/*!40000 ALTER TABLE `membro` DISABLE KEYS */;
INSERT INTO `membro` VALUES ('3e93defc-bef0-4cee-af65-c8764853beef','África do Sul','ZA','Membro pleno','1946-11-14'),('1','França','FRA','Membro ativo','1946-11-04'),('2','Estados Unidos','USA','Membro ativo','1945-11-04'),('3','Reino Unido','GBR','Membro ativo','1945-11-04'),('4','Rússia','RUS','Membro ativo','1945-11-04'),('5','China','CHN','Membro ativo','1946-11-04'),('6','Espanha','ESP','Membro ativo','1953-11-30'),('7','Alemanha','DEU','Membro ativo','1951-11-11'),('8','Itália','ITA','Membro ativo','1956-12-20'),('9','Japão','JPN','Membro ativo','1951-11-02'),('10','Índia','IND','Membro ativo','1946-11-04');
/*!40000 ALTER TABLE `membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relatorio`
--

DROP TABLE IF EXISTS `relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `relatorio` (
  `id` varchar(255) NOT NULL,
  `ponto` varchar(10) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `atribuicao` varchar(45) DEFAULT NULL,
  `documento` varchar(45) DEFAULT NULL,
  `comentario` longtext,
  `data` varchar(255) DEFAULT NULL,
  `decisao` longtext,
  `objecto` longtext,
  `participacao` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relatorio`
--

LOCK TABLES `relatorio` WRITE;
/*!40000 ALTER TABLE `relatorio` DISABLE KEYS */;
INSERT INTO `relatorio` VALUES ('123e4567-e89b-12d3-a456-426655440000','1.1','Tema do relatório','Título do relatório','Referência do relatório','Atribuição do relatório','Documento do relatório','Comentário do relatório','2023-10-06','Decisão do relatório','Objecto do relatório','Participação do relatório'),('bd6f627d-72f2-48e1-9dd1-68323bf49d7c','1.1','Tema do relatório','Título do relatório','Referência do relatório','Atribuição do relatório','Documento do relatório','Comentário do relatório','2023-10-06','Decisão do relatório','Objecto do relatório','Participação do relatório'),('e35a99cf-ce2b-4aba-8268-0cc244a4d897','1.2','tema1','Título do relatório','Referência do relatório','Atribuição do relatório','Documento do relatório','Comentário do relatório','2023-10-06','Decisão do relatório','Objecto do relatório','Participação do relatório'),('7df540a6-be59-4e34-920d-c8cd4b3a9f1a','db fbsj','tema1','khfb ','sf','dkb','docjd','comenkn',NULL,'drfb','bfdfb','Com pronunciamento');
/*!40000 ALTER TABLE `relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('9dbbdc40-a900-44b3-a461-3b1245c4c05c','Paula Henriques','paulahenriques@gmail.com','12345Af*');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-06 17:59:20
