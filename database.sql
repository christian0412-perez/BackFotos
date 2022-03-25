-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectoimagenes
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
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `idImage` bigint NOT NULL AUTO_INCREMENT,
  `nombreImage` varchar(500) NOT NULL,
  `ruta` varchar(400) NOT NULL,
  `idUser` int NOT NULL,
  PRIMARY KEY (`idImage`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,'2022 15_21_30_mi_dibujo_precioso.png','http://res.cloudinary.com/jacrcam/image/upload/v1648156891/t8kkv0bhrle0bnrvlsln.png',4),(2,'2022 15_21_53_mi_fotooooo.gif','http://res.cloudinary.com/jacrcam/image/upload/v1648156916/mb0t3ishud3cqxwydmqk.gif',4),(3,'2022 07_12_00_chifuyukun.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648213922/ygbysq6gvf7dq6cxbmda.jpg',2),(4,'2022 07_14_06_TM68ypVl.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214047/jzsvez1h2uk1nks41uzh.jpg',2),(5,'2022 07_15_11_mi_dibujo_precioso.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214113/hetttykjuxs60dwbvdrt.png',2),(6,'2022 07_17_45_weweqeqw.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214267/khnx7nudbbi0evhmhiia.jpg',2),(7,'2022 07_18_29_weweqeqw.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214311/ulfvrdnryr4uaeaemcg4.jpg',2),(8,'2022 07_19_55_lol.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214397/pq7la8a1fz2q9hronwh9.png',2),(9,'2022 07_22_35_depositphotos_401975050-stock-photo-ecological-friendly-and-sustainable-environment.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214556/fbcb48z06ftz4gyv7wcj.jpg',2),(10,'2022 07_22_36_flowers-70970_960_720.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214557/u7twr3uf4dbwhaof9f7c.jpg',2),(11,'2022 07_22_37_pizzaCasera.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214559/spslbtdlff8sjlgjnptl.jpg',2),(12,'2022 07_22_39_planta.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214560/ntz7pzpuscryxdvdejah.jpg',2),(13,'2022 07_22_39_plantaH.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214561/w0osbjlqsrszirxmyzqo.jpg',2),(14,'2022 07_22_40_plantas-vivaces-flor-tardia.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214561/mmd0inhhftikhxjfvd7v.jpg',2),(15,'2022 07_22_41_tulipan_0.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214562/ivtyrzvh0hljmzae5dmb.jpg',2),(16,'2022 07_22_41_User-icon.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214563/g6pph4cu2fn12mfgmvvp.png',2),(17,'2022 07_22_42_Verbena.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214563/d1kplgoiofjcuyrusdyz.jpg',2),(18,'2022 07_23_00_Arboles-frutales.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214581/hbgpxmmiipilveuqgiva.jpg',2),(19,'2022 07_23_01_articleImage-full.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214582/h5wfitbylcqwln80yzgb.jpg',2),(20,'2022 07_23_02_burgir.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214583/lmgbzmnci4p73k0mx4fa.jpg',2),(21,'2022 07_23_02_depositphotos_401975050-stock-photo-ecological-friendly-and-sustainable-environment.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214584/vldbciajn2fy0hqtmhsq.jpg',2),(22,'2022 07_23_17_3-tragos-refrescantes-con-menta.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214598/bnjldvhsltesqghelfgu.jpg',2),(23,'2022 07_23_17_back-4-blood.jpeg','http://res.cloudinary.com/jacrcam/image/upload/v1648214599/cer2xhhqozhvlhhrceal.jpg',2),(24,'2022 07_23_19_carrito.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214600/jhlddwur8a870x1f0dcd.png',2),(25,'2022 07_23_19_god-war-analisis.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214601/opoylbzupxrstdgz29so.jpg',2),(26,'2022 07_23_20_mcf.jpeg','http://res.cloudinary.com/jacrcam/image/upload/v1648214601/zqnkika8jaf0jwzeul2x.jpg',2),(27,'2022 07_23_38_592-5925637_conker-live-reloaded-hd-png-download.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214620/l1poi4zloykrpdd5cqn4.png',2),(28,'2022 07_23_40_bb17b747188d20eaf6eec30a1a3554fe80e72af3r1-1089-1080v2_00.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214621/lnikuuqzby5xovkephvn.jpg',2),(29,'2022 07_23_41_check-png.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214622/ie9q7n6fy0k7swj2y0mh.png',2),(30,'2022 07_23_42_chifuyu_navideno.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214623/l4alxiv3fkafdayloe18.jpg',2),(31,'2022 07_23_42_chifuyu_navideno1.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214624/dphwnkreqjivzegq8nsg.jpg',2),(32,'2022 07_23_43_descarga.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214625/qde5qnxkodfjozwftec1.jpg',2),(33,'2022 07_23_44_fbhp3TW.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214625/ncpenoigartkntrvgmhq.jpg',2),(34,'2022 07_23_45_GBQSRILFOBCX7KERNRKUTP55WM.webp','http://res.cloudinary.com/jacrcam/image/upload/v1648214627/eveliuvjgw36qekufss1.webp',2),(35,'2022 07_23_46_god-of-war-201711112176_1.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214627/jpboqbkszq704tdfrte3.jpg',2),(36,'2022 07_23_47_IMG_6288.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214628/brjxp1hxwomkofaiwbnx.jpg',2),(37,'2022 07_23_47_Jinx-Fortnite_1516058406_838127_1024x576.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214629/mlpdomkm4gptxorhepra.jpg',2),(38,'2022 07_23_48_mario.png','http://res.cloudinary.com/jacrcam/image/upload/v1648214629/w7iziltsj9kt3xutnyzo.webp',2),(39,'2022 07_23_49_master-chief-fortnite-outfit-1920x1080-8ff20e89e5e3.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214630/rulrhapqhvbn0henxhuk.jpg',2),(40,'2022 07_23_49_minecraft-steve-adult-half-mask.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214631/vhvtvcapdlfoplb9vpaq.jpg',2),(41,'2022 07_23_50_pikachu.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214632/oafqmnwgextuyxzk11sa.jpg',2),(42,'2022 07_23_51_pngtree-purple-laptop-illustration-image_1415391.jpg','http://res.cloudinary.com/jacrcam/image/upload/v1648214632/nvuhrto71i0pyblnipvp.jpg',2);
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUser` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','pbkdf2:sha256:260000$LthOHUHtlL9ry7cP$6bdaf30e67a022fd40a38a2131625a08ae1041885c36366d58b58cd0675e8479'),(2,'admin2','pbkdf2:sha256:260000$VLxppQN0Au99h4Mj$9f7e0c320347ba78e2a56d367c8794e42ced59059546816d46942fa535db41f1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-25  7:37:21
