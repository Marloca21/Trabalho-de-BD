CREATE DATABASE  IF NOT EXISTS `aulabd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aulabd`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: aulabd
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id` int NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `matricula` varchar(9) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `fk_curso` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  KEY `fk_curso` (`fk_curso`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`fk_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Raissa Mieiro Grande','4023','MG','F',2,'raissamieiro@gmail.com'),(2,'Jonata Alvaro Nobrega','4024','MG','M',2,'jotinhaalvaro@gmail.com'),(3,'Kiara Farias Távora','4025','ES','F',3,'kiaratavora@gmail.com'),(4,'Alexandre Figueiro Colares','4026','MG','M',1,'alexandrecol@gmail.com'),(5,'André Temes Mateus','4027','SP','M',1,'andrezin_rei_delas@gmail.com');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  `fk_estado` int DEFAULT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `fk_estado` (`fk_estado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`fk_estado`) REFERENCES `estado` (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Teofilo Otoni',1),(2,'Malacacheta',1),(3,'Belford Roxo',3),(4,'Guarulhos',2),(5,'Poté',1);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id` int NOT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'HTML','Curso de HTML no Sublime Text'),(2,'Python','Curso de Python utilizando o Pycharm'),(3,'Java','Curso básico de Java no Netbeans');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `idEstado` int NOT NULL,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Minas Gerais'),(2,'São Paulo'),(3,'Rio de Janeiro');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `codigo` int DEFAULT NULL,
  `nome` varchar(40) NOT NULL,
  `cpf` varchar(40) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `titulacao` varchar(40) DEFAULT NULL,
  `fone` varchar(40) DEFAULT NULL,
  `sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Marcelo Felipe Alves','83772382399','marceloalves@gmail.com','Doutorado','999368903','M'),(2,'Fernanda Gomes Brastes','73883674787','fernandinhagomes@gmail.com','Mestrado','999475346','F');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta`
--

DROP TABLE IF EXISTS `resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta` (
  `numquestao` int NOT NULL,
  `descresposta` text NOT NULL,
  PRIMARY KEY (`numquestao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta`
--

LOCK TABLES `resposta` WRITE;
/*!40000 ALTER TABLE `resposta` DISABLE KEYS */;
INSERT INTO `resposta` VALUES (2,'Primary key significa chave primaria, e essa chave é usada como identificador padrão da tabela, sendo representada pelo campo que não receberá valores repetidos.'),(3,'Foreign key (Conhecida como chave estrangeira) é o campo onde é definido o relacionamento entre duas tabelas. Dessa forma, uma coluna corresponde à mesma coluna que é a chave primária de outra tabela. Pois isso é necessário especificar na tabela que contém a chave estrangeira quais são essas colunas e à qual tabela está relacionada.'),(5,'Utilizamos o comando : create table alunos (id int not null,nome varchar (40),matricula varchar (9),estado varchar (30),sexo char (1),fk_curso int );'),(6,'Utilizando o comando : \"alter table alunos add column email varchar(30);\"'),(7,'Utilizando o comando : \"alter table professor drop column fone;\"'),(8,'Utilizando o comando : \"update professor set sexo = \'M\' \';\"'),(9,'Utilizando o comando : \"delete from professor where sexo = \'F\';\"'),(10,'Utilizando o comando : \"select nome,matricula from alunos;\"'),(11,'Utilizando o comando : \"select * from professor where sexo = \'M\';\"'),(12,'Utilizando o comando : \"select alunos.nome,alunos.fk_curso,curso.nome from alunos join curso on curso.id = alunos.fk_curso;\"'),(14,'Utilizando o comando : \"select * from estado where nome like \'A%\';\"'),(15,'O comando para isso é o : \"select nome from cidade where fk_estado = \'1\';\"'),(16,'O comando para isso é o : \"select cidade.nome ,cidade.fk_estado,estado.nome from cidade join estado on estado.idEstado = cidade.fk_estado;\"'),(17,'O comando para isso é o : \"select lower(nome) from cidade;\"'),(18,'O comando para isso é o : \"select upper(nome) from cidade;\"');
/*!40000 ALTER TABLE `resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aulabd'
--

--
-- Dumping routines for database 'aulabd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 21:29:36
