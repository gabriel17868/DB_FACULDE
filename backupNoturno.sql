-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: db_faculdade
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `RA` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` char(20) DEFAULT NULL,
  `sobrenome_aluno` char(20) DEFAULT NULL,
  `CPF` char(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nome_pai` char(50) DEFAULT NULL,
  `nome_mae` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `whatsapp` char(20) DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  `fk_cod_turma` int DEFAULT NULL,
  `fk_cod_endereco` int DEFAULT NULL,
  PRIMARY KEY (`RA`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  KEY `fk_cod_turma` (`fk_cod_turma`),
  KEY `fk_cod_endereco` (`fk_cod_endereco`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`fk_cod_turma`) REFERENCES `turma` (`cod_turma`),
  CONSTRAINT `aluno_ibfk_3` FOREIGN KEY (`fk_cod_endereco`) REFERENCES `endereco` (`cod_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Gabriel','Maraschin','039462',1,'M','Fernado','Janaina','gabrielmaraschin123@gmail.com','8637489',1,1,1),(2,'Amanda','Ramalho','97536876',0,'F','Rafael','Nathalia','amandaramalho@gmail.com','86423678',2,2,2),(3,'Rafaela','Dantes','08674536',1,'F','Leandro','Silvia','rafaeladantes@gmail.com',NULL,3,3,3),(4,'Ingred','Maria','80675437',1,'F','Gabriel','Juliana','ingredmaria@gmail.com','9866535',4,4,4),(5,'Luciano','Lopes','06874526',0,'M','Andre','Miriam','lucianolopes@gmail.com','0984653',5,5,5),(6,'Matheus','Maraschin','19856743',1,'M','Lucas','Gabriela','matheusmaraschin@gmail.com','9634762',6,6,6),(7,'Alvaro','Martins','86389756',1,'M','Luciano','Nayara','alvaromartins@gmail.com','9835427',7,7,6),(8,'Leticia','Souza','04532786',1,'F','Guilherme','Ana','leticiasouza@gmail.com',NULL,8,8,7),(9,'Lidia','Lima','95634976',1,'F','Armando','Ingrid','lidialima@gmail.com','8967542',9,1,8),(10,'Italo','Brasil','94532769',1,'M','José','Lidia','italobrasil@gmail.com','9752465',10,2,9),(11,'Pedro','Coelho','04261785',1,'M','Daniel','Rafaela','pedrocoelho@gmail.com',NULL,1,3,10),(12,'Nathalia','Sakamoto','94523651',1,'F','Whanderson','Jessiane','nathaliasakamoto@gmail.com','9856342',2,4,11),(13,'Andre','Steves','97525784',1,'M','Anderson','Idarci','andresteves@gmail.com','98632453',3,5,12),(14,'Jon','Almeida','96351768',1,'M','Jaime','Salete','jonalmeida@gmail.com','7623986',4,6,13),(15,'Renrique','Silva','87438769',1,'M','Gustavo','Elzira','renriquesilva@gmail.com',NULL,5,7,14),(16,'Nathalia','Soares','09564271',0,'F','Argemiro','Alexandra','nathaliasoares@gmail.com','9843657',6,8,15),(17,'Jô','Soares','95763421',1,'M','Rodolfo','Fatima','josoares@gmail.com','8976535',7,1,16),(18,'Faustão','Gordo','07645873',1,'M','João','Josefina','faustaogordo@gmail.com','8763267',8,2,17),(19,'Leandro','Bit','24531768',1,'M','Heber','Janaina','leandrobit@gmail.com','9876587',9,3,18),(20,'Juliana','Maraschin','98424685',1,'F','Luiz','Rafaela','julianamaraschin@gmail.com','9867543',10,4,19);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_disciplina`
--

DROP TABLE IF EXISTS `aluno_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_disciplina` (
  `fk_RA` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_RA`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `aluno_disciplina_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `aluno_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_disciplina`
--

LOCK TABLES `aluno_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `cod_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` char(20) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_curso`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Engenharia software',5),(2,'Analise de sistemas',5),(3,'Biologia',3),(4,'Historia',1),(5,'Matematica',2),(6,'Engenharia eletrica',2),(7,'Pscicologia',1),(8,'Direiro',1),(9,'Engenharia Civil',4),(10,'Administração',1);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_disciplina`
--

DROP TABLE IF EXISTS `curso_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso_disciplina` (
  `fk_cod_curso` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_curso`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `curso_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`),
  CONSTRAINT `curso_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_disciplina`
--

LOCK TABLES `curso_disciplina` WRITE;
/*!40000 ALTER TABLE `curso_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `cod_departamento` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` char(20) NOT NULL,
  PRIMARY KEY (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Ciencias Humanas'),(2,'Matematica'),(3,'Biologicas'),(4,'Estagio'),(5,'Tecnolo Informação');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina` (
  `cod_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` char(20) DEFAULT NULL,
  `carga_horaria` int NOT NULL,
  `descricao` char(50) DEFAULT NULL,
  `num_alunos` int NOT NULL,
  `fk_cod_departamento` int NOT NULL,
  PRIMARY KEY (`cod_disciplina`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Raciocinio logico',50,'Logica',38,2),(2,'Pscicologiacognitiva',70,'Psico',20,1),(3,'Eletronica digital',40,'Informatica',70,2),(4,'Programação em C',200,'Full Stack',120,5),(5,'Programação Java',200,'Full Stack',140,5),(6,'Programação PHP',200,'Full Stack',88,5),(7,'Programação C#',200,'Full Stack',90,5),(8,'Programação C++',200,'Full Stack',101,5),(9,'Programação C',200,'Full Stack',120,5),(10,'Programação WEB',200,'Full Stack',135,5),(11,'Front End',200,'Programaçã em PHP',128,5),(12,'Back End',200,'Programaçã em Python',98,5),(13,'Programação Python',200,'Full Stack',179,5),(14,'Aritimética',50,'Logica',59,2),(15,'Física 1',100,'Logica',158,2),(16,'Física 2',70,'Logica',39,2),(17,'Física 3',150,'Logica',110,2),(18,'Cálculo 1',100,'Logica',200,2),(19,'Cálculo 2',70,'Logica',150,2),(20,'Cálculo 3',150,'Logica',80,2),(21,'Geometrica',150,'Logica',80,2),(22,'Sociologica',110,'Pessoas',29,1),(23,'História',200,'Pessoas',209,1),(24,'Direito',400,'Pessoas',500,1),(25,'Ciência',400,'Meio Ambiente',100,3),(26,'Natureza',250,'Floresta',100,3),(27,'Biologo',350,'Animais',88,3),(28,'Mar',350,'Oceano',99,3),(29,'Engenharia Civil',500,'Engenharia',300,4),(30,'Engenharia Militar',500,'Guerra',100,4),(31,'Computação',500,'Guerra',200,4);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina_historico`
--

DROP TABLE IF EXISTS `disciplina_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disciplina_historico` (
  `fk_cod_historico` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  `nota` float(4,2) DEFAULT NULL,
  `frequencia` int DEFAULT NULL,
  PRIMARY KEY (`fk_cod_historico`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `disciplina_historico_ibfk_1` FOREIGN KEY (`fk_cod_historico`) REFERENCES `historico` (`cod_historico`),
  CONSTRAINT `disciplina_historico_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina_historico`
--

LOCK TABLES `disciplina_historico` WRITE;
/*!40000 ALTER TABLE `disciplina_historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `disciplina_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `cod_endereco` int NOT NULL AUTO_INCREMENT,
  `nome_rua` char(50) NOT NULL,
  `numero_rua` int NOT NULL,
  `complemento` char(20) NOT NULL,
  `CEP` char(8) NOT NULL,
  `fk_cod_tipo_logradouro` int NOT NULL,
  PRIMARY KEY (`cod_endereco`),
  KEY `fk_cod_tipo_logradouro` (`fk_cod_tipo_logradouro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`fk_cod_tipo_logradouro`) REFERENCES `tipo_logradouro` (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Figueredo',19,'Lote 16','4356532',1),(2,'João',38,'Predio D','8452746',2),(3,'Prefeito',10,'Lote 14','4784576',3),(4,'Obama',2,'Lote 99','1426874',4),(5,'Bolsonaro',34,'Casa 17','1768935',5),(6,'Cheguevara',112,'Lote 26','6893465',6),(7,'Lula',140,'Predio A','1468673',7),(8,'Lua',16,'Lote 16','1586432',8),(9,'Peixe',11,'Lote 25','1875984',9),(10,'Leão',9,'Lote 45','1960354',10),(11,'Uruguai',9,'Predio','6536732',1),(12,'EUA',18,'Lote 32','1087345',2),(13,'Visconde',89,'Londres','6835687',3),(14,'Manuel',65,'Lote 16','3890567',4),(15,'Mendigo',37,'Casa 6','0689354',5),(16,'Nadal',63,'Lote 2/6','4245674',6),(17,'Casada',78,'Casa 17','9634289',7),(18,'Luciana',55,'Casa','25663673',8),(19,'Brasil',33,'Casa 10','0635481',9);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `cod_historico` int NOT NULL AUTO_INCREMENT,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_RA` int NOT NULL,
  PRIMARY KEY (`cod_historico`),
  KEY `fk_RA` (`fk_RA`),
  CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `cod_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` char(20) NOT NULL,
  `sobrenome_professor` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `fk_cod_departamento` int DEFAULT NULL,
  PRIMARY KEY (`cod_professor`),
  KEY `fk_cod_departamento` (`fk_cod_departamento`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_cod_departamento`) REFERENCES `departamento` (`cod_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'luciano','Lopes',1,5),(2,'Gabriel','Maraschin',1,5),(3,'Lidia','Almeida',1,5),(4,'Willian','Rodrigues',1,5),(5,'Rafael','Sakamoto',1,5),(6,'Lucas','Santos',0,NULL),(7,'Italo','Lima',0,NULL),(8,'Janaina','Silva',1,5),(9,'Jessiane','Maria',0,NULL),(10,'Jessica','Martins',1,5);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_disciplina` (
  `fk_cod_professor` int NOT NULL,
  `fk_cod_disciplina` int NOT NULL,
  PRIMARY KEY (`fk_cod_professor`,`fk_cod_disciplina`),
  KEY `fk_cod_disciplina` (`fk_cod_disciplina`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`fk_cod_professor`) REFERENCES `professor` (`cod_professor`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`fk_cod_disciplina`) REFERENCES `disciplina` (`cod_disciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `cod_telefone` int NOT NULL AUTO_INCREMENT,
  `num_telefone` char(20) DEFAULT NULL,
  `fk_cod_tipo` int DEFAULT NULL,
  PRIMARY KEY (`cod_telefone`),
  KEY `fk_cod_tipo` (`fk_cod_tipo`),
  CONSTRAINT `telefone_ibfk_1` FOREIGN KEY (`fk_cod_tipo`) REFERENCES `tipo_telefone` (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'615245678',1),(2,'86423678',2),(3,'613748268',3),(4,'619364736',1),(5,'619854738',2),(6,'619573842',3),(7,'617267527',1),(8,'618998362',2),(9,'615245678',3),(10,'615646455',1),(11,'613297323',2),(12,'9856342',3),(13,'98632453',1),(14,'7623986',2),(15,'618398438',3),(16,'615245678',1),(17,'613424333',2),(18,'8763267',3),(19,'617537534',1),(20,'613742988',2),(21,'612346785',1),(22,'615252353',1);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone_aluno`
--

DROP TABLE IF EXISTS `telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone_aluno` (
  `cod_tel_aluno` int NOT NULL AUTO_INCREMENT,
  `fk_RA` int NOT NULL,
  `fk_cod_telefone` int NOT NULL,
  PRIMARY KEY (`cod_tel_aluno`),
  KEY `fk_RA` (`fk_RA`),
  KEY `fk_cod_telefone` (`fk_cod_telefone`),
  CONSTRAINT `telefone_aluno_ibfk_1` FOREIGN KEY (`fk_RA`) REFERENCES `aluno` (`RA`),
  CONSTRAINT `telefone_aluno_ibfk_2` FOREIGN KEY (`fk_cod_telefone`) REFERENCES `telefone` (`cod_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone_aluno`
--

LOCK TABLES `telefone_aluno` WRITE;
/*!40000 ALTER TABLE `telefone_aluno` DISABLE KEYS */;
INSERT INTO `telefone_aluno` VALUES (1,1,1),(2,2,2),(3,4,4),(4,5,5),(5,6,6),(6,7,7),(7,9,9),(8,10,10),(9,12,12),(10,13,13),(11,14,14),(12,16,16),(13,17,17),(14,18,18),(15,19,19),(16,20,20),(17,1,3),(18,1,8),(19,5,15),(20,5,21),(21,9,11),(22,9,22);
/*!40000 ALTER TABLE `telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_logradouro`
--

DROP TABLE IF EXISTS `tipo_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_logradouro` (
  `cod_tipo_logradouro` int NOT NULL AUTO_INCREMENT,
  `tipo_logradouro` char(11) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_logradouro`
--

LOCK TABLES `tipo_logradouro` WRITE;
/*!40000 ALTER TABLE `tipo_logradouro` DISABLE KEYS */;
INSERT INTO `tipo_logradouro` VALUES (1,'Quadra'),(2,'Avenida'),(3,'Chacara'),(4,'Condominio'),(5,'Setor'),(6,'Praça'),(7,'Jardin'),(8,'Parques'),(9,'Loteamento'),(10,'Alameda');
/*!40000 ALTER TABLE `tipo_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_telefone`
--

DROP TABLE IF EXISTS `tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_telefone` (
  `cod_tipo` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` char(8) DEFAULT NULL,
  PRIMARY KEY (`cod_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_telefone`
--

LOCK TABLES `tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tipo_telefone` DISABLE KEYS */;
INSERT INTO `tipo_telefone` VALUES (1,'Celular'),(2,'Residenc'),(3,'Comercia');
/*!40000 ALTER TABLE `tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `cod_turma` int NOT NULL AUTO_INCREMENT,
  `periodo` char(8) DEFAULT NULL,
  `num_alunos` int DEFAULT NULL,
  `dt_inicio` date DEFAULT NULL,
  `dt_fim` date DEFAULT NULL,
  `fk_cod_curso` int DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `fk_cod_curso` (`fk_cod_curso`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cod_curso`) REFERENCES `curso` (`cod_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'Noturno',80,'2020-02-20','2024-10-17',1),(2,'Matutino',55,'2018-02-20','2022-10-17',2),(3,'Tarde',120,'2022-02-20','2026-10-17',3),(4,'Matutino',60,'2019-02-20','2023-10-17',4),(5,'Tarde',88,'2022-02-20','2024-10-17',5),(6,'Noite',99,'2018-02-20','2022-10-17',6),(7,'Noite',100,'2021-02-20','2025-10-17',7),(8,'Matutino',77,'2019-02-20','2023-10-17',8);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-09 19:40:42
