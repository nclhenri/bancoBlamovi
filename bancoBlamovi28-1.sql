CREATE DATABASE  IF NOT EXISTS `bd_blamovi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_blamovi`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_blamovi
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` binary(16) NOT NULL,
  `id_usuario` binary(16) NOT NULL,
  `id_post` binary(16) NOT NULL,
  `texto` varchar(255) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_post` (`id_post`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (_binary '\'⋜�-1�\�I�',_binary '\Z\�D�71�\�I�',_binary '𞛇�,1�\�I�','esse filme me marcou porque eu tinha o dvd desse filme e eu adorava e é por isso que eu dou nota 100%.'),(_binary '-ʋľ21�\�I�',_binary '-�h��71�\�I�',_binary '!<��21�\�I�','Excepcional,  a definição perfeita para uma obra prima em nossos dias.'),(_binary '3AG�01�\�I�',_binary '*\�|�91�\�I�',_binary '�¦�01�\�I�','Uau...Que filme mais show! Muito bom chegar ao 5º filme com uma história tão original e totalmente fora do que possa imaginar ser...'),(_binary '6|*��71�\�I�',_binary '���0�71�\�I�',_binary '����71�\�I�','A lendária série clássica para TV! Essa animação é antiga mas não perde a graça, esse programa é incrível, os personagens são ótimos, as piadas são muito engraçadas.'),(_binary '6\�\��/1�\�I�',_binary '��T�91�\�I�',_binary '_j\�{�-1�\�I�','Gostei muito da série. Mas esse personagem do Hugh é um saco, a todo momento reclamando, chorando.'),(_binary 'Z��\�11�\�I�',_binary '-�h��71�\�I�',_binary '3�p�11�\�I�','Excepcional,  a definição perfeita para uma obra prima em nossos dias.'),(_binary '��S�31�\�I�',_binary '�\�W��61�\�I�',_binary '5�=��31�\�I�','Mesmo tendo mais de 1000 episódios kk, que pra mim agora é pouco. Perdi a conta de quantas vezes me emocionei nesse anime. Enfim recomendo pra qualquer um, assista vale cada ep.'),(_binary '�6{@�-1�\�I�',_binary ' �E}�91�\�I�',_binary '_j\�{�-1�\�I�','...Vale apena assistir , muito bom ..'),(_binary '�\r�i�,1�\�I�',_binary ';���91�\�I�',_binary '\�yC��+1�\�I�','Contar uma história já conhecida é um desafio. Encontrar uma nova perspectiva, uma abordagem que traga algo inédito é crucial.'),(_binary '�T4�41�\�I�',_binary '����71�\�I�',_binary '\�W<�41�\�I�','A lendária série clássica para TV! Essa animação é antiga mas não perde a graça, esse programa é incrível, os personagens são ótimos, as piadas são muito engraçadas.');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id_post` binary(16) NOT NULL,
  `id_video` binary(16) NOT NULL,
  `id_usuario` binary(16) NOT NULL,
  `quantidadeCurtida` int DEFAULT NULL,
  `texto` varchar(255) NOT NULL,
  `fotoPost` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_video` (`id_video`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_video`) REFERENCES `video` (`id_video`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (_binary '�¦�01�\�I�',_binary '6��/1�\�I�',_binary '*\�|�91�\�I�',1697,'As pessoas que estão reclamando do filme ser politizado provavelmente não assistiram os filmes anteriores, já que, o lado político dessa franquia é enfatizado desde o segundo filme.',NULL),(_binary '�Y�/1�\�I�',_binary '����.1�\�I�',_binary '$�vڻ81�\�I�',2917,'Um \'Watchmen\' para principiantes. Quem já está acostumado com filmes e séries que desconstroem a idéia de super-herói, principalmente quando baseados nas obras de Alan Moore, como V de Vingança.',NULL),(_binary '!<��21�\�I�',_binary '\��v�11�\�I�',_binary '<�+x�71�\�I�',8349,'Como filme de ação o resultado é mediano, não é grande coisa mas dá pra assistir sem grandes expectativas ou exigências.',NULL),(_binary '����71�\�I�',_binary '��|�51�\�I�',_binary '݈F��61�\�I�',7227,'É bem legal de assistir uma série de comédia tranquila, poderia ter segunda temporada trabalhando com serial killer e trazendo humor dentro das investigações cenas de crimes.',NULL),(_binary '3�p�11�\�I�',_binary '��pr�01�\�I�',_binary '-�h��71�\�I�',4891,'Um filme que te prende do início ao fim. Por muitas vezes nos tranportamos para dentros dos carros.O som  dos motores rocando merecem destaque.',NULL),(_binary '5�=��31�\�I�',_binary '��+��21�\�I�',_binary '���0�71�\�I�',8349,'Como descrever o melhor anime de sempre? Eiichiro Oda pensou em tudo do primeiro arco ao dos dias atuais, em 1999 já estava a pensar em 2020, e que grande obra-prima vai criando ano após ano.',NULL),(_binary '_j\�{�-1�\�I�',_binary '�* ;�:1�\�I�',_binary '\Z\�D�71�\�I�',7538,'A estrutura da série Alvin e os Esquilos é bem conhecida: mescla de humanos com personagens em animação, que provocam travessuras em meio à cantoria de alguns dos principais sucessos do momento.',NULL),(_binary '\�W<�41�\�I�',_binary '�\�3H�41�\�I�',_binary '�\�W��61�\�I�',6114,'Pra mim o melhor seriado-série de todos os tempos.',NULL),(_binary '\�yC��+1�\�I�',_binary 'Q�\���:1�\�I�',_binary '��T�91�\�I�',12,'Sem palavras para descrever a qualidade deste filme. É incrível e realmente muito bom. Eu, particularmente, gostei e apreciei como a história foi abordada, sem sensacionalismo e exagero.',NULL),(_binary '𞛇�,1�\�I�',_binary '��ޝ�;1�\�I�',_binary ';���91�\�I�',6203,'A história se repete, a trama tem tudo para ser muito bem desenvolvida após o primeiro plot twist do filme (surpreendente) mas, veja bem, é realmente bem desenvolvida',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` binary(16) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `apelido` varchar(30) NOT NULL,
  `fotoPerfil` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (_binary '��T�91�\�I�','Adriana','andriana@email.com','adriana123','Dri',NULL),(_binary ';���91�\�I�','Paulo','paulo@email.com','paulo123','Paulinho',NULL),(_binary '\Z\�D�71�\�I�','José','jose@email.com','jose123','Zé',NULL),(_binary ' �E}�91�\�I�','Juliana','juliana@email.com','juliana123','Juju',NULL),(_binary '$�vڻ81�\�I�','Carlos','carlos@email.com','carlos123','carlinhos123',NULL),(_binary '*\�|�91�\�I�','Pedro','pedro@email.com','pedro123','Pedrinho',NULL),(_binary '-�h��71�\�I�','Maria','maria@email.com','maria123','Ma',NULL),(_binary '6\��T�91�\�I�','Márcia','marcia@email.com','marcia123','Marcinha',NULL),(_binary '<�+x�71�\�I�','João','joao@email.com','joao123','Jo',NULL),(_binary 'L�W�71�\�I�','Ana','ana@email.com','ana123','Aninha',NULL),(_binary '���0�71�\�I�','Antônio','antonio@email.com','antonio123','Toinho',NULL),(_binary '�\�W��61�\�I�','Nicolas','nicolas@email.com','nicolas123','ncl',NULL),(_binary '����71�\�I�','Francisco','francisco@email.com','francisco','Chico',NULL),(_binary '\�\�;��61�\�I�','Ágatha','agatha@email.com','agatha123','Gaga',NULL),(_binary '݈F��61�\�I�','Francisca','francisca@email.com','francisca123','Fran',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id_video` binary(16) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `diretor` varchar(255) NOT NULL,
  `duracao` varchar(30) NOT NULL,
  `temporadas` int DEFAULT NULL,
  `sinopse` varchar(255) NOT NULL,
  `ano` varchar(4) NOT NULL,
  `curtida` int DEFAULT NULL,
  `elenco` varchar(255) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `trailer` varchar(100) NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (_binary 'Q�\���:1�\�I�','Sociedade da Neve','Thriller/Aventura','Juan Antonio Bayona','2h 24m',NULL,'Em 1972, um voo vindo do Uruguai colide com uma geleira nos Andes. Apenas 29 dos seus 45 passageiros sobreviveram ao acidente. Presos em um dos ambientes mais hostis do planeta, eles são forçados a lutar pelas suas vidas.','2023',12,'Enzo Vogrincic - Numa Turcatti / Matías Recalt - Roberto Canessa / Carlos Paéz','Filme','sociedadeDaNeve.png','https://www.youtube.com/watch?v=9cjSePIf1l0'),(_binary '�\�3H�41�\�I�','Os Simpsons','Sitcom','Matt Groening','20m',35,'The Simpsons é uma série animada norte americana transmitida pelo canal FOX. A comédia acompanha a família Simpsons, uma família da classe trabalhadora na cidade desajustada de Springfield.','1989',8423,'Homer Simpson - Ricardo Juarez / Marge Simpson - Myriam Thereza / Bart Simpson - Rodrigo Antas','Série','osSimpsons.png','https://www.youtube.com/watch?v=3R1ebDCv7vM'),(_binary '��pr�01�\�I�','Ford vs Ferrari','Esporte/Ação','James Mangold','2h 32m',NULL,'O projetista Carroll Shelby e o piloto Ken Miles enfrentam a interferência empresarial, as leis da física e os próprios demônios para construir um carro de corrida para a Ford derrotar a hegemonia de Enzo Ferrari nas 24 horas de Le Mans.','2019',3266,'Christian Bale - Ken Miles / Matt Damon - Caroll Shelby / Caitriona Balfe - Mollie Miles','Filme','fordVsFerrari.png','https://www.youtube.com/watch?v=5OF_8Df78_k'),(_binary '��ޝ�;1�\�I�','Turma da Mônica em Uma Aventura No Tempo','Aventura/Ficção','Mauricio de Sousa','1h 20m',NULL,'Franjinha está construindo uma máquina do tempo e precisa reunir moléculas dos quatro elementos: ar, água, fogo e terra. Mônica joga Sansão e, sem querer, acerta o aparelho, espalhando os elementos. Agora a turma precisa consertá-la.','2007',2274,'Mauricio de Sousa - Bidu / Paulo Cavalcante - Cascão / Marli Bortoletto - Mônica','Filme','turmaDaMonicaEmUmaAventuraNoTempo.png','https://www.youtube.com/watch?v=1oNrvN0nMTk'),(_binary '����.1�\�I�','The Boys','Drama','Eric Kripke','1h',3,'A Terra é habitada por super-heróis que são um inspiração para a humanidade. Porém, esses protetores têm um lado sinistro que a maioria das pessoas desconhece. Se eles usam seus poderes para o mal, Hughie, Billy e o resto do time devem detê-los.','2019',3014,'Antony Starr - Capitão Pátria / Karl Urban - Billy Butcher / Erin Moriarty - Annie January','Série','theBoys.png','https://www.youtube.com/watch?v=3fv0iVcCeh4'),(_binary '��|�51�\�I�','B.O','Comédia','Leandro Hassum','25m',1,'O tímido Suzano precisa provar seu valor para sua nova equipe após assumir a função de delegado.','2023',7410,'Leandro Hassum - Delegado Suzano / Luciana Paes - Mantovani / Babu Carreira - Inaê Guerra','Série','boSerie.png','https://www.youtube.com/watch?v=z3nRex0SaMw'),(_binary '�* ;�:1�\�I�','Alvin e os Esquilos 3','Comédia/Aventura','Mike Mitchell','1h 32m',NULL,'Dave leva Alvin, Simon, Theodore e as Esquiletes em um cruzeiro. Os esquilos só querem se divertir e as coisas acabam ficando fora de controle. Todos acabam isolados em uma ilha deserta e passam por muitas confusões.','2011',28,'Jason Lee - Dave Seville / Justin Long - Alvin Seville / David Cross - Ian Hawke','Filme','alvinEosEsquilos3.png','https://www.youtube.com/watch?v=i4FuxIMrs1g'),(_binary '6��/1�\�I�','Uma Noite de Crime - A Fronteira','Ação/Terror','Everardo Valerio Gout','1h 44m',NULL,'No dia seguinte ao Expurgo, uma família é atacada por uma gangue mascarada. Enquanto o país mergulha em um caos anárquico de violência, o grupo descobre que há um movimento que pretende punir aqueles que têm condições de se proteger do dia Expurgo.','2021',5044,'Ana de la Reguera - Adela / Tenoch Huerta - Juan / Josh Lucas - Dylan','filme','theForeverPurge.png','https://www.youtube.com/watch?v=9o3bT-BpoRY'),(_binary '\��v�11�\�I�','Lift: Um Roubo nas Alturas','Ação/Comédia','F. Gary Gray','1h 44m',NULL,'Um ladrão e sua equipe tentam fazer um assalto de 500 milhões de dólares em um avião.','2024',7369,'Úrsula Corberó - Camila / Kevin Hart - Cyrus / Gugu Mbatha-Raw - Abby','Filme','liftUmRouboNasAlturas.png','https://www.youtube.com/watch?v=3S5GIeLcw5A'),(_binary '��+��21�\�I�','One Piece','Aventura','Eiichiro Oda','22m',20,'Monkey D. Luffy e sua tripulação de Piratas do Chapéu de Palha embarcam em uma jornada incrível para encontrar um tesouro lendário, o One Piece.','1999',6890,'Vyni Takahashi - Monkey D. Luff / Wendel Bezerra - Sanji / Tatiane Keplmair - Nami','Anime','onePiece.png','https://www.youtube.com/watch?v=MCb13lbVGE0');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28 21:02:39
