-- BACKUP APENAS DOS DADOS (DUMP DATA ONLY) DAS TABELAS:
	-- CAT_LIVROS
    -- CLIENTES
    -- ESTOQUE
    -- LOJA
    -- PEDIDOS
    -- LOG_CAT_LIVROS
    -- LOG_CLIENTES

-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: livraria
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
-- Dumping data for table `cat_livros`
--

LOCK TABLES `cat_livros` WRITE;
/*!40000 ALTER TABLE `cat_livros` DISABLE KEYS */;
INSERT INTO `cat_livros` VALUES (1,'Fantasia','O Senhor dos Anéis - a Sociedade do Anel','Martins Fontes',2002,'J. R. R. Tolkien'),(2,'Fantasia','O Senhor dos Anéis - as Duas Torres','Martins Fontes',2002,'J. R. R. Tolkien'),(3,'Fantasia','O Senhor dos Aneis: o Retorno do Rei','Martins Fontes',2002,'J. R. R. Tolkien'),(4,'Ficção Científica','Fundação','Aleph',2009,'Isaac Asimov'),(5,'Bibliografia','Chatô o Rei do Brasil','Companhia das letras',1994,'Fernando Morais'),(6,'Bibliografia','Steve Jobs','Companhia das letras',2011,'Walter Isaacson'),(7,'História','Sapiens: uma Breve Historia da Humanidade',' L&pm',2017,'Yuval Noah Harari'),(8,'História','Homo Deus',' L&pm',2018,'Yuval Noah Harari'),(9,'História','21 lições para o século 21',' L&pm',2019,'Yuval Noah Harari'),(10,'Auto-Ajuda','Quem Mexeu no Meu Queijo?','Record',2020,'Spencer Johnson'),(11,'Auto-Ajuda','Casais Inteligentes Enriquecem Juntos','Gente',2004,'Gustavo Cerbasi'),(12,'Auto-Ajuda','Os 100 Segredos das Pessoas Felizes','Sextante',2001,'David Niven'),(13,'Literatura Brasileira','Dom Casmurro','Ática',1978,'Machado de Assis'),(14,'Literatura Brasileira','Iracema','Ciranda cultural',1997,'José de Alencar'),(15,'Literatura Brasileira','Macunaíma','Villa Rica',2001,'Mário de Andrade'),(16,'Ciência Política','O Príncipe','Hunter books',2011,'Maquiavel'),(17,'Ciência Política','Lava Jato','Primeira Pessoa',2016,'Vladimir Netto'),(18,'Literatura Estrangeira','O Caçador de Pipas','Nova fronteira',2005,'Khaled Hosseini'),(19,'Literatura Estrangeira','O Código da Vinci','Sextante',2004,'Dan Brown'),(20,'Literatura Estrangeira','A cabana','Sextante',2008,'William P. Young'),(21,'Ficção Científica','2001: A Space Odyssey','Aleph',1968,'Arthur C. Clarke');
/*!40000 ALTER TABLE `cat_livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('00013254774','Bernardo','Edson Bernardes',83989183137,'Rua Alzinira Luciana de Oliveira',281,'58309846','Comercial Norte','Bayeux','PB'),('00057538131','Erick','Sócrates',67992084467,'Rua Antenor Navarro',723,'58400976','Prata','Campina Grande','PB'),('03796551874','Clara','Ayla Julia de Paula',66999610565,'Avenida Guararapes',622,'78730314','Jardim Iguassu','Rondonópolis','MT'),('06027205830','Sophie','Sarah Martins',83998682459,'Rua Antenor Navarro',723,'58400976','Prata','Campina Grande','PB'),('08607937707','Sueli','Flávia Tatiane Araújo',82995703367,'Rua Antenor Gomes de Oliveira',864,'57055905','Farol','Maceió','AL'),('11552598829','Kaique','Theo da Mota',77989994321,'Rua T',781,'45070450','São Pedro','Vitória da Conquista','BA'),('18707312555','Raul','César Pinto',66996935708,'Avenida das Águias',627,'78553240','Residencial das Acácias','Sinop','MT'),('22197478168','Pietro','Ricardo Breno Assis',61983713594,'Quadra QE 17 Conjunto I',100,'71050092','Guará II','Brasília','DF'),('26880615422','Giovanni','Matheus Vieira',48985573280,'Rua Antônio Silveira',131,'88810436','Mina do Mato','Criciúma','SC'),('37062475009','Valentina','Olivia Beatriz da Mata',35994401354,'Praça Antônio Pernambuco Chaves',621,'37002620','Centro','Varginha','MG'),('41013665511','Raul','Vicente Calebe Dias',47998428149,'Rua São Floriano',197,'89230445','Jarivatuba','Joinville','SC'),('43014459275','Lucca','Felipe Lucas Castro',34998583688,'Praça Lisboa',213,'38444330','Santiago','Araguari','MG'),('45168890563','Ian','Carlos Benedito da Paz',21982681994,'Rua Euzebio de Farias',202,'21920110','Tauá','Rio de Janeiro','RJ'),('51669309401','Murilo','Augusto Márcio Barros',41984144237,'Rua Anselmo Pilati',991,'82120550','Pilarzinho','Curitiba','PR'),('53895487600','Pietra','Allana Beatriz Silva',96986079062,'Rua Mendes de Sá',464,'68908512','São Lázaro','Macapá','AP'),('74499106400','Tereza','Heloisa Bárbara Costa',83981655281,'Travessa Marcone Coutinho',796,'58700205','Centro','Patos','PB'),('76679253721','Milena','Louise Ferreira',86996924361,'Rua Santa Rita de Cássia',614,'64212300','Alto Santa Maria','Parnaíba','PI'),('91632221756','Bianca','Sophie Bianca Teixeira',81994424766,'Rua Antônio Carlos Mergulhão',809,'53402705','Fragoso','Paulista','PE'),('91705507948','Kauê','Tiago Jesus',45996112953,'Rua Machado de Assis',314,'85909350','Vila Pioneiro','Toledo','PR'),('96157068507','Pedro','Tiago Figueiredo',53996942231,'Passeio Um',329,'96040604','Fragata','Pelotas','RS'),('99072294661','Andrea','Joana Rezende',43998921260,'Rua Gavião-de-cauda-barrada',676,'86702772','Jardim Mônaco','Arapongas','PR');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,52,40.99,2131.48),(2,100,45.20,4520.00),(3,70,50.10,3507.00),(4,10,149.99,1499.90),(5,3,6.30,18.90),(6,5,20.15,100.75),(7,15,50.00,750.00),(8,27,55.00,1485.00),(9,29,60.00,1740.00),(10,33,80.80,2666.40),(11,100,15.10,1510.00),(12,15,75.65,1134.75),(13,2,10.99,21.98),(14,4,10.99,43.96),(15,6,10.99,65.94),(16,67,8.00,536.00),(17,40,25.00,1000.00),(18,88,34.00,2992.00),(19,93,36.00,3348.00),(20,100,37.00,3700.00);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_cat_livros`
--

LOCK TABLES `log_cat_livros` WRITE;
/*!40000 ALTER TABLE `log_cat_livros` DISABLE KEYS */;
INSERT INTO `log_cat_livros` VALUES ('21','2001: Uma Odisseia no Espaço','Arthur C. Clarke','root@localhost','2022-11-07','18:49:53','INSERT'),('21','2001: Uma Odisseia no Espaço','Arthur C. Clarke','root@localhost','2022-11-07','18:53:18','DELETE'),('21','2','5','root@localhost','2022-11-07','20:26:15','INSERT'),('22','teste','teste','root@localhost','2022-11-07','20:33:14','INSERT'),('21','2','5','root@localhost','2022-11-07','20:38:18','DELETE'),('22','teste','teste','root@localhost','2022-11-07','20:38:24','DELETE'),('21','teste','teste','root@localhost','2022-11-07','20:39:44','INSERT'),('21','teste','teste','root@localhost','2022-11-07','20:40:07','DELETE'),('21','2001: A Space Odyssey','Arthur C. Clarke','root@localhost','2022-11-14','21:15:51','INSERT');
/*!40000 ALTER TABLE `log_cat_livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_clientes`
--

LOCK TABLES `log_clientes` WRITE;
/*!40000 ALTER TABLE `log_clientes` DISABLE KEYS */;
INSERT INTO `log_clientes` VALUES ('root@localhost','00057538131','2022-11-07','20:48:37','DELETE'),('root@localhost','00057538131','2022-11-07','20:48:42','INSERT');
/*!40000 ALTER TABLE `log_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
INSERT INTO `loja` VALUES (125,'Loja_MG',94706905000125,3135130931,'Beco Seis',135,'Pôr do Sol','São Francisco','Coronel Fabriciano','MG'),(143,'Loja_SP',38466789000143,11345678765,'Travessa Maestro Cardim',75,'Shopping center','Jardins','São Paulo','SP'),(146,'Loja_PR',22418392000146,4126635714,'Travessa Murtede',117,'Pôr do Sol','Santa Terezinha','Colombo','PR'),(170,'Loja_GO',76370580000170,6125153408,'Quadra QB 31',588,'Mansões Pôr do Sol','Águas Lindas de Goiás','Goiás','GO');
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES ('06027205830',1,3,2,'2022-08-14 09:17:00',123132,125,50.10,100.20),('74499106400',2,5,10,'2022-08-14 13:00:00',1232510,143,6.30,63.00),('22197478168',3,1,3,'2022-08-14 13:15:00',123313,146,40.99,122.97),('11552598829',4,1,4,'2022-08-14 19:59:00',123414,170,40.99,163.96),('11552598829',5,2,2,'2022-08-14 22:22:00',123522,170,45.20,90.40),('18707312555',6,20,5,'2022-08-15 07:10:00',1236205,146,37.00,185.00),('51669309401',7,19,1,'2022-08-15 09:30:00',1237191,125,36.00,36.00),('91632221756',8,17,2,'2022-08-15 18:35:00',1238172,143,25.00,50.00),('26880615422',9,15,1,'2022-08-16 09:17:00',1239151,146,10.99,10.99),('03796551874',10,12,2,'2022-08-16 13:00:00',12310122,170,75.65,151.30),('37062475009',11,7,1,'2022-08-16 13:15:00',1231171,125,50.00,50.00),('37062475009',12,9,2,'2022-08-16 19:59:00',1231292,125,60.00,120.00),('53895487600',13,10,1,'2022-08-16 22:22:00',12313101,125,80.80,80.80),('99072294661',14,4,1,'2022-08-17 07:10:00',1231441,143,149.99,149.99),('00013254774',15,4,1,'2022-08-17 09:30:00',1231541,146,149.99,149.99),('08607937707',16,6,5,'2022-08-17 18:35:00',1231665,170,20.15,100.75),('43014459275',17,8,3,'2022-08-18 09:17:00',1231783,143,55.00,165.00),('43014459275',18,11,1,'2022-08-18 13:00:00',12318111,143,15.10,15.10),('91705507948',19,13,1,'2022-08-18 13:15:00',12319131,146,10.99,10.99),('45168890563',20,15,1,'2022-08-18 19:59:00',12320151,146,10.99,10.99);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23 19:00:54
