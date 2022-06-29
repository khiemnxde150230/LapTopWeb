CREATE DATABASE  IF NOT EXISTS `laptopweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laptopweb`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: laptopweb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `addressName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (5,7,'Thừa Thiên Huế'),(6,7,'Đà Nẵng'),(7,12,'Bình Thuận'),(8,12,'Quảng Nam'),(9,12,'Nam Đông'),(10,12,'Nam Đông'),(11,12,'Nam Đông');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (3,'Apple'),(4,'Asus'),(5,'Acer'),(6,'Lenovo'),(7,'HP'),(8,'Dell'),(9,'MSI'),(10,'Microsoft'),(11,'LG'),(12,'Xiaomi'),(13,'Huawei'),(14,'Samsung'),(15,'Oppo'),(16,'Vivo'),(17,'NOKIA'),(18,'Logitech'),(19,'Corsair'),(20,'HyperX'),(21,'Razer'),(22,'Zowie'),(23,'SteelSeries'),(24,'Vortex'),(25,'Gigabyte'),(26,'AOC'),(27,'ViewSonic'),(28,'Philips'),(29,'JBL'),(30,'Sony'),(31,'Marshall'),(32,'Anker'),(33,'Aukey'),(34,'TP Link'),(35,'Intel'),(36,'Mercusys'),(37,'Hydrus'),(38,'DareU'),(39,'Transcend'),(40,'realme'),(41,'BPhone'),(42,'Thương hiệu khác'),(43,'Tonymoly'),(44,'Vacosi'),(45,'Vichy'),(46,'Victoria\'s Secret'),(47,'W7'),(48,'Yadah');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cateName` varchar(50) DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_id` (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Học Tập - Văn Phòng',2),(2,'Gaming',2),(3,'Đồ họa- Kĩ Thuật',2),(4,'Macbook',2),(22,'PC doanh nghiệp',3),(23,'PC Gaming - Đồ họa',3),(38,'Card Màn Hình',4),(39,'CPU',4),(40,'RAM',4),(41,'Tản Nhiệt',4),(42,'Thiết bị lưu trữ',4),(43,'PSU',4),(44,'Case',4),(45,'iPhone',5),(46,'Phổ thông',5),(47,'Tầm trung',5),(48,'Cao cấp',5),(49,'Gaming',5),(50,'Gaming',6),(51,'Học tập - Văn phòng',6),(52,'Đồ họa - Sáng tạo',6),(53,'Giải trí',6),(54,'Thiết bị âm thanh',7),(55,'Chuột ',7),(56,'Bàn Phím',7),(57,'Màn hình',7),(58,'Sạc - cáp',7),(59,'Thiết bị mạng',7),(60,'Sạc dự phòng',7);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` VALUES (2,'Laptop'),(3,'PC'),(4,'Linh kiện PC'),(5,'Điện thoại thông minh'),(6,'Máy tính bảng'),(7,'Phụ kiện');
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rating` float DEFAULT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `rating_user_id` int DEFAULT NULL,
  `rating_product_id` int DEFAULT NULL,
  `rating_order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rating_user_id` (`rating_user_id`),
  KEY `rating_product_id` (`rating_product_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`rating_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`rating_product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  `discount_amount` float DEFAULT NULL,
  `remain` int DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `coupon_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (14,'LANDAU',8,5,200),(15,'BACKTOSCHOOL',1,10,100);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Chỉ giảm online','https://cdn.tgdd.vn/2022/05/campaign/ChigiamOnlineDesk-50x54.png'),(2,'Deal từ 99k','https://cdn.tgdd.vn/2022/06/campaign/Icon-Desk-51x50-2.png'),(3,'Xả hàng giảm sốc','https://cdn.tgdd.vn/2022/05/campaign/icon-50x50-50x50-4.gif'),(4,'Điện thoại độc quyền','https://cdn.tgdd.vn//content/dien-thoai-doc-quyen-120x120-2.png'),(5,'Giá sốc','https://app2.jeoway.net/61/images/highlight_btn_imgs/1k.png'),(6,'Mua là có quà','https://app2.jeoway.net/61/images/highlight_btn_imgs/1k.png'),(7,'Bán chạy','https://app2.jeoway.net/61/images/highlight_btn_imgs/hh1Artboard%2015.png'),(8,'Khuyến mãi','https://app2.jeoway.net/61/images/highlight_btn_imgs/hh1Artboard%2011.png'),(9,'Hàng mới về','https://app2.jeoway.net/61/images/highlight_btn_imgs/H%C3%80NG%20M%E1%BB%9AI%20V%E1%BB%80.png');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_product`
--

DROP TABLE IF EXISTS `event_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `event_product_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `event_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_product`
--

LOCK TABLES `event_product` WRITE;
/*!40000 ALTER TABLE `event_product` DISABLE KEYS */;
INSERT INTO `event_product` VALUES (204,1,498),(206,1,500),(207,4,496),(208,3,501),(209,2,501),(210,1,502),(213,3,517),(214,3,516),(215,3,518),(216,3,515);
/*!40000 ALTER TABLE `event_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(300) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1915 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1752,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-katana-gf66-11uc-224vn-2_332cae8f2b154ce799951574af2d651b.png',2),(1753,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-katana-gf66-11uc-224vn-3_4eabf02020f64019a79aa275d765ed55.png',2),(1755,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-katana-gf66-11uc-224vn-4_ab8dcab152cd41d4b023233aff19c539.png',2),(1756,'https://product.hstatic.net/1000026716/product/gearvn-laptop-gaming-msi-katana-gf66-11uc-224vn-7_8b3041c21ea1487e8030c26abdb37570.png',2),(1757,'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-1_267679e1c3fe4f10aac882a72d6fab88.jpg',477),(1758,'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-2_664af602f3ab47e7b3a8bbee06c88c43.jpg',477),(1759,'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-3_6c778891b4224f1f813905d86c29afb4.jpg',477),(1760,'https://product.hstatic.net/1000026716/product/laptop-msi-modern-14-b11mou-1028vn-4_649dec0e353d4f0eb8caf6167946db66.jpg',477),(1761,'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-pro-16x-oled-m7600qc-l2077w-2_8f7fa51fc83e4dddafd62d1c080c0c17.png',478),(1762,'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-pro-16x-oled-m7600qc-l2077w-4_be893889edce417aa405e68739042e10.png',478),(1763,'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-pro-16x-oled-m7600qc-l2077w-5_16ef006aefc44062baab16154b266b9d.png',478),(1764,'https://product.hstatic.net/1000026716/product/gearvn-laptop-asus-vivobook-pro-16x-oled-m7600qc-l2077w-7_c4e9f8935e694758a4b293b4b53df59d.png',478),(1765,'https://product.hstatic.net/1000026716/product/10049805-laptop-dell-vostro-14-5410-i5-11300h-14-inch-v4i5014w-2_2a5e48fa31fa4c0c998039db4b8784d9.jpg',479),(1766,'https://product.hstatic.net/1000026716/product/10049805-laptop-dell-vostro-14-5410-i5-11300h-14-inch-v4i5014w-3_f087d8e8e45d4e8b958545a1202f24fb.jpg',479),(1767,'https://product.hstatic.net/1000026716/product/10049805-laptop-dell-vostro-14-5410-i5-11300h-14-inch-v4i5014w-4_16880656ffbc457eae681cd5db2bae60.jpg',479),(1768,'https://product.hstatic.net/1000026716/product/10049805-laptop-dell-vostro-14-5410-i5-11300h-14-inch-v4i5014w-6_0f1612c0f3774ff286f59b079e3bf201.jpg',479),(1769,'https://product.hstatic.net/1000026716/product/2_8ff07e2012ec494c9daf8b63b9343517.png',480),(1770,'https://product.hstatic.net/1000026716/product/1_dc6b689bba10432eb786293678635d7e.png',480),(1771,'https://product.hstatic.net/1000026716/product/img4_1521b67800e640979f718892a85dcf8e.png',480),(1772,'https://product.hstatic.net/1000026716/product/img6_bc754b938986460698e98ff58456e826.png',480),(1773,'https://product.hstatic.net/1000026716/product/2_fac324e3749d429abe57e25addf597f1.png',481),(1774,'https://product.hstatic.net/1000026716/product/3_9f25c9169be24210aac7695db3062a33.png',481),(1775,'https://product.hstatic.net/1000026716/product/5_15a1bd60ac1f4abab2c6e9ba75441b0c.png',481),(1776,'https://product.hstatic.net/1000026716/product/6_cbe8deb8a77847d0ac5cec758f1e9007.png',481),(1777,'https://product.hstatic.net/1000026716/product/pad-gaming-3-15ach6-82k2008wvn_a40cc1ad02b343368665b2260b9aaf77_master_641243b6fc01461188b2ba52e8c72e9f.png',482),(1778,'https://product.hstatic.net/1000026716/product/d-gaming-3-15ach6-82k2008wvn-1_971a2410ae9e4cd49450f274718aeabd_master_d28af5a9d68e4bb297af1d7b1574c0aa.png',482),(1779,'https://product.hstatic.net/1000026716/product/d-gaming-3-15ach6-82k2008wvn-2_d2657be8d0e448ab9741f301cdaadfe8_master_15ce491798114307a0c2b91921bf4291.png',482),(1780,'https://product.hstatic.net/1000026716/product/ideapad_gaming_3_15ach6_ct2_04_31762be75bfa485c800e09c7bfd0019b.png',482),(1788,'https://cdn.tgdd.vn/Products/Images/44/274783/msi-creator-z16-a12uet-i7-036vn-1.jpg',484),(1790,'https://cdn.tgdd.vn/Products/Images/44/274783/msi-creator-z16-a12uet-i7-036vn-7.jpg',484),(1791,'https://cdn.tgdd.vn/Products/Images/44/274783/msi-creator-z16-a12uet-i7-036vn-10.jpg',484),(1792,'https://cdn.tgdd.vn/Products/Images/44/274783/msi-creator-z16-a12uet-i7-036vn-8.jpg',484),(1793,'https://cdn.tgdd.vn/Products/Images/44/271090/dell-gaming-alienware-m15-r6-i7-70272633-2.jpg',483),(1794,'https://cdn.tgdd.vn/Products/Images/44/271090/dell-gaming-alienware-m15-r6-i7-70272633-3.jpg',483),(1795,'https://cdn.tgdd.vn/Products/Images/44/271090/dell-gaming-alienware-m15-r6-i7-70272633-4.jpg',483),(1796,'https://cdn.tgdd.vn/Products/Images/44/271090/dell-gaming-alienware-m15-r6-i7-70272633-5.jpg',483),(1797,'https://cdn.tgdd.vn/Products/Images/44/264438/hp-zbook-firefly-14-g8-i5-275v5av-1-2.jpg',485),(1798,'https://cdn.tgdd.vn/Products/Images/44/264438/hp-zbook-firefly-14-g8-i5-275v5av-3-2.jpg',485),(1799,'https://cdn.tgdd.vn/Products/Images/44/264438/hp-zbook-firefly-14-g8-i5-275v5av-5-3.jpg',485),(1800,'https://cdn.tgdd.vn/Products/Images/44/264438/hp-zbook-firefly-14-g8-i5-275v5av-2-3.jpg',485),(1801,'https://cdn.tgdd.vn/Products/Images/44/239552/apple-macbook-air-m1-2020-z124000de-1-org.jpg',486),(1802,'https://cdn.tgdd.vn/Products/Images/44/239552/apple-macbook-air-m1-2020-z124000de-2-org.jpg',486),(1803,'https://cdn.tgdd.vn/Products/Images/44/239552/macbook-air-m1-2020-silver-04-org.jpg',486),(1804,'https://cdn.tgdd.vn/Products/Images/44/239552/macbook-air-m1-2020-gold-04-org.jpg',486),(1805,'https://cdn.tgdd.vn/Products/Images/44/263914/macbook-pro-14-m1-max-2021-10-core-cpu-xam-1.jpg',488),(1806,'https://cdn.tgdd.vn/Products/Images/44/263914/macbook-pro-14-m1-max-2021-10-core-cpu-xam-2.jpg',488),(1807,'https://cdn.tgdd.vn/Products/Images/44/263914/macbook-pro-14-m1-max-2021-10-core-cpu-xam-3.jpg',488),(1808,'https://cdn.tgdd.vn/Products/Images/44/263914/macbook-pro-14-m1-max-2021-10-core-cpu-xam-4.jpg',488),(1809,'https://cdn.tgdd.vn/Products/Images/44/231255/space-1-org.jpg',487),(1810,'https://cdn.tgdd.vn/Products/Images/44/231255/space-2-org.jpg',487),(1811,'https://cdn.tgdd.vn/Products/Images/44/231255/macbook-pro-m1-2020-silver-03-org.jpg',487),(1812,'https://cdn.tgdd.vn/Products/Images/44/231255/macbook-pro-m1-2020-silver-04-org.jpg',487),(1817,'https://product.hstatic.net/1000026716/product/hw_r3_2303c49dc2b348e7ba9db10f79248e6b.jpg',491),(1818,'https://product.hstatic.net/1000026716/product/artboard_1_copy_f19b7687ce244d1fb37a68d351323dab.jpg',490),(1819,'https://product.hstatic.net/1000026716/product/-products-may-bo-intel-nuc-nuc7pjyh-4_c87a3b45b7d4487f8ca273490ba0047d_7ee021dc9e3e41c1aced7b40963e5ad0.jpg',490),(1820,'https://product.hstatic.net/1000026716/product/-products-may-bo-intel-nuc-nuc7pjyh-2_8e1e471883dd4dd8bb398841a614e11b_70d85b58d86f4869bf96d1e4cd3ce86c.jpg',490),(1821,'https://product.hstatic.net/1000026716/product/homework_pentium_1cddacd3a1fb42b3a2455b0d85f784fc.jpg',489),(1822,'https://product.hstatic.net/1000026716/product/gearvn-gvn-homework-pentium-2_dfe138c0921e4fc8a5769d2c3b81431b.jpg',489),(1823,'https://product.hstatic.net/1000026716/product/gearvn-gvn-homework-pentium-4_ceaa5f5c9bf44d618449dba0b8fc9eea.jpg',489),(1824,'https://product.hstatic.net/1000026716/product/gearvn-gvn-homework-pentium-5_c5eca9a197d649e29dae9ece0ee3001e.jpg',489),(1825,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/03/09/image-removebg-preview-2.png',492),(1826,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-13.png',492),(1827,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-10.png',492),(1828,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-12.png',492),(1829,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-16.png',493),(1830,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-15.png',493),(1831,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/03/09/image-removebg-preview-3.png',493),(1832,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/15/image-removebg-preview-18.png',493),(1833,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/11/06/apple-iphone-12-mini-5.png',494),(1834,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/11/06/apple-iphone-12-mini-3.png',494),(1835,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/04/22/image-removebg-preview_637547045799326930.png',494),(1836,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/11/06/apple-iphone-12-mini-4.png',494),(1837,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/28/7z.png',495),(1838,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/23/reno7-z-2.png',495),(1839,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/23/reno7-z-5.png',495),(1840,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/02/23/reno7-z-10.png',495),(1841,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/01/04/image-removebg-preview-12.png',496),(1842,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/01/07/ee.png',496),(1843,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/01/07/ed.png',496),(1844,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/04/10/image-removebg-preview-2.png',497),(1845,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/04/10/image-removebg-preview-4.png',497),(1846,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/04/10/image-removebg-preview.png',497),(1847,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2022/04/10/image-removebg-preview-3.png',497),(1848,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/11/09/image-removebg-preview-10.png',498),(1849,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/11/09/image-removebg-preview-9.png',498),(1850,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/10/27/image-removebg-preview%20(32).png',499),(1851,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2020/10/27/image-removebg-preview%20(33).png',499),(1852,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/10/01/image-removebg-preview-1.png',500),(1853,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/10/01/image-removebg-preview-2.png',500),(1854,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/10/01/image-removebg-preview.png',500),(1855,'https://cdn.tgdd.vn/Products/Images/58/249407/cap-lightning-1m-hydrus-cs-c-021-nv-2.jpg',501),(1856,'https://cdn.tgdd.vn/Products/Images/86/279454/chuot-khong-day-gaming-asus-tuf-m4-wl-1.jpg',502),(1857,'https://cdn.tgdd.vn/Products/Images/86/279454/chuot-khong-day-gaming-asus-tuf-m4-wl-2.jpg',502),(1858,'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-1.jpg',503),(1859,'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-2.jpg',503),(1860,'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-3.jpg',503),(1861,'https://cdn.tgdd.vn/Products/Images/522/241299/huawei-matepad-11-xam-4.jpg',503),(1862,'https://cdn.tgdd.vn/Products/Images/522/228808/ipad-air-4-silver-1020x680-org.jpg',504),(1863,'https://cdn.tgdd.vn/Products/Images/522/228808/ipad-air-4-wifi-bac-2.jpg',504),(1864,'https://cdn.tgdd.vn/Products/Images/522/228808/ipad-air-4-wifi-bac-3.jpg',504),(1865,'https://cdn.tgdd.vn/Products/Images/522/228808/ipad-air-4-wifi-bac-4.jpg',504),(1866,'https://cdn.tgdd.vn/Products/Images/522/256559/Samsung-Galaxy-Tab-S7-FE-Wifi-green-1-660x600.jpg',505),(1867,'https://cdn.tgdd.vn/Products/Images/522/256559/Samsung-Galaxy-Tab-S7-FE-WiFi-1-2-660x600.jpg',505),(1868,'https://cdn.tgdd.vn/Products/Images/522/256559/Kit/samsung-galaxy-tab-s7-fe-wifi-n.jpg',505),(1869,'https://cdn.tgdd.vn/Products/Images/522/256559/samsung-galaxy-tab-s7-fe-wifi6.jpg',505),(1870,'https://cdn.tgdd.vn/Products/Images/522/274155/ipad-air-5-m1-wifi-cellular-xanh-duong-1.jpg',506),(1871,'https://cdn.tgdd.vn/Products/Images/522/274155/ipad-air-5-m1-wifi-cellular-xanh-duong-2.jpg',506),(1872,'https://cdn.tgdd.vn/Products/Images/522/274155/ipad-air-5-m1-wifi-cellular-xanh-duong-3.jpg',506),(1873,'https://cdn.tgdd.vn/Products/Images/522/274155/ipad-air-5-m1-wifi-cellular-tim-2.jpg',506),(1874,'https://cdn.tgdd.vn/Products/Images/522/247513/samsung-galaxy-tab-s8-ultra-1-600x600.jpg',507),(1875,'https://th.bing.com/th/id/R.c8d5843578647cef6245cf4c340de139?rik=ybZR2%2fmmQodSMw&pid=ImgRaw&r=0',507),(1876,'https://cdn.tgdd.vn/Products/Images/522/247512/samsung-galaxy-tab-s8-plus-1-3.jpg',508),(1877,'https://cdn.tgdd.vn/Products/Images/522/247512/samsung-galaxy-tab-s8-plus-2-2.jpg',508),(1878,'https://cdn.tgdd.vn/Products/Images/522/247512/samsung-galaxy-tab-s8-plus-3-2.jpg',508),(1879,'https://cdn.tgdd.vn/Products/Images/522/247512/samsung-galaxy-tab-s8-plus-4-2.jpg',508),(1880,'https://cdn.tgdd.vn/Products/Images/4727/235818/router-wifi-mesh-3-pack-ac1200-tp-link-deco-m4-2-2-org.jpg',509),(1882,'https://cdn.tgdd.vn/Products/Images/4727/232216/router-chuan-wifi-6-bang-tan-kep-asus-ax55-den-1-org.jpg',510),(1883,'https://cdn.tgdd.vn/Products/Images/4727/232216/router-chuan-wifi-6-bang-tan-kep-asus-ax55-den-2-org.jpg',510),(1884,'https://cdn.tgdd.vn/Products/Images/4727/232216/router-chuan-wifi-6-bang-tan-kep-asus-ax55-den-3-org.jpg',510),(1885,'https://cdn.tgdd.vn/Products/Images/4727/232216/router-chuan-wifi-6-bang-tan-kep-asus-ax55-den-4-org.jpg',510),(1886,'https://cdn.tgdd.vn/Products/Images/4727/273870/bo-mo-rong-song-wifi-ac1200-tp-link-ac1200-trang-2-1.jpg',511),(1887,'https://cdn.tgdd.vn/Products/Images/4727/273870/bo-mo-rong-song-wifi-ac1200-tp-link-ac1200-trang-3-1.jpg',511),(1888,'https://cdn.tgdd.vn/Products/Images/4727/273870/bo-mo-rong-song-wifi-ac1200-tp-link-ac1200-trang-5.jpg',511),(1889,'https://cdn.tgdd.vn/Products/Images/4727/273870/bo-mo-rong-song-wifi-ac1200-tp-link-ac1200-trang-7.jpg',511),(1890,'https://product.hstatic.net/1000026716/product/minion_i1650_2a23d7f059b34167950dc1f2498835a5.jpg',512),(1891,'https://product.hstatic.net/1000026716/product/1_480842bc765941c995b927847722c0b2.jpg',513),(1892,'https://product.hstatic.net/1000026716/product/pc_viper_i1660s_pink_-__11def1ddac6d449b92ce21a54b0b34f0.jpg',514),(1893,'https://product.hstatic.net/1000026716/product/pc_viper_i1660s_pink_-__1_8b4b923a49354a11a956c559c017ec0e.jpg',514),(1894,'https://product.hstatic.net/1000026716/product/pc_viper_i1660s_pink_-__3_7ee31e1fe1b84253862120389cc9e22e.jpg',514),(1895,'https://product.hstatic.net/1000026716/product/pc_viper_i1660s_pink_-__5_54e892acd6a44d5c9968795b4b69cdb8.jpg',514),(1896,'https://cdn.tgdd.vn/Products/Images/57/245246/pin-polymer-10000-mah-hydrus-pa-ck01-vang-1-org.jpg',515),(1897,'https://cdn.tgdd.vn/Products/Images/57/245246/pin-polymer-10000-mah-hydrus-pa-ck01-xam-1-org.jpg',515),(1898,'https://cdn.tgdd.vn/Products/Images/86/275534/chuot-co-day-dareu-em908-hong-2.jpeg',516),(1899,'https://cdn.tgdd.vn/Products/Images/86/275534/chuot-co-day-dareu-em908-hong-3.jpeg',516),(1900,'https://cdn.tgdd.vn/Products/Images/86/275534/chuot-co-day-dareu-em908-hong-6.jpeg',516),(1901,'https://cdn.tgdd.vn/Products/Images/86/275534/chuot-co-day-dareu-em908-hong-8.jpeg',516),(1902,'https://cdn.tgdd.vn/Products/Images/75/197455/usb-31-32gb-transcend-jetflash-760-den-tim-1-org.jpg',517),(1903,'https://cdn.tgdd.vn/Products/Images/75/197455/usb-31-32gb-transcend-jetflash-760-den-tim-4-org.jpg',517),(1904,'https://cdn.tgdd.vn/Products/Images/9499/230266/adapter-type-c-pd-20w-anker-powerport-nano-a2633-trang-1-org.jpg',518),(1905,'https://cdn.tgdd.vn/Products/Images/9499/230266/adapter-type-c-pd-20w-anker-powerport-nano-a2633-trang-2-org.jpg',518),(1906,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/05/04/10s.jpg',519),(1907,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/05/04/10s-3.jpg',519),(1908,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/05/04/10s-2.jpg',519),(1909,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/09/14/image-removebg-preview-9.png',519),(1910,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/06/15/image-removebg-preview-11.png',520),(1911,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/06/15/image-removebg-preview-10.png',520),(1912,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/12/14/bphone-b40-1.png',522),(1913,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/12/14/bphone-b40-11.png',522),(1914,'https://cdn.hoanghamobile.com/i/productlist/dsp/Uploads/2021/12/14/bphone-b40-10.png',522);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordersingle`
--

DROP TABLE IF EXISTS `ordersingle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordersingle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int DEFAULT NULL,
  `orderTotal_id` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordersingle`
--

LOCK TABLES `ordersingle` WRITE;
/*!40000 ALTER TABLE `ordersingle` DISABLE KEYS */;
INSERT INTO `ordersingle` VALUES (97,493,26590000,1,'7c6xO4hJRR'),(98,500,1990000,1,'4E02X8Opf4'),(99,2,20890500,1,'MTZAFbKtkP'),(100,522,5490000,100,'lHKiLl0qyM'),(101,522,5490000,100,'aUF1BLpJOT'),(102,478,28791000,1,'1z3GRvCED7');
/*!40000 ALTER TABLE `ordersingle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertotal`
--

DROP TABLE IF EXISTS `ordertotal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordertotal` (
  `id` varchar(11) NOT NULL,
  `total` float DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `transport_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT 'no',
  `discount` float DEFAULT '0',
  `status` int DEFAULT '0',
  `name` varchar(100) DEFAULT 'Customer',
  `time_order` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transport_id` (`transport_id`),
  CONSTRAINT `ordertotal_ibfk_1` FOREIGN KEY (`transport_id`) REFERENCES `transport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertotal`
--

LOCK TABLES `ordertotal` WRITE;
/*!40000 ALTER TABLE `ordertotal` DISABLE KEYS */;
INSERT INTO `ordertotal` VALUES ('1z3GRvCED7',27380000,'',1,87,'123456789',5,0,'Phan Duy Dong ','2022-06-28 23:00:11'),('4E02X8Opf4',1813500,'QUỴT',4,87,'09191988522',10,2,'Phan Duy Dong ','2022-06-28 14:40:21'),('7c6xO4hJRR',25289000,'',6,86,'0961774218',5,-1,'Nguyen Xuan Khiem','2022-06-28 14:35:09'),('aUF1BLpJOT',549030000,'',1,86,'12345678',0,2,'Nguyen Xuan Khiem','2022-06-28 15:27:54'),('lHKiLl0qyM',521583000,'',3,86,'12345678',5,2,'Nguyen Xuan Khiem','2022-06-28 15:27:02'),('MTZAFbKtkP',20920500,'',1,87,'123456789',0,2,'Phan Duy Dong ','2022-06-28 14:49:15');
/*!40000 ALTER TABLE `ordertotal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` float DEFAULT '5',
  `sold` int DEFAULT '0',
  `price_default` float DEFAULT NULL,
  `cate_id` int DEFAULT NULL,
  `collection_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `discountAmount` int DEFAULT '0',
  `quantity` int DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `cate_id` (`cate_id`),
  KEY `collection_id` (`collection_id`),
  KEY `brand_id` (`brand_id`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Laptop gaming MSI Katana GF66 11UC 224VN','CPU: Intel Core i7-11800H 2.3GHz up to 4.6GHz 24MB, 8 nhân, 16 luồng\r\nRam: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng: 512GB NVMe PCIe Gen3x4 SSD (1 slot)\r\nVGA: NVIDIA® GeForce RTX™ 3050 4GB GDDR6 \r\nXung boost tối đa 1500MHz, công suất tiêu thụ tối đa 60W\r\nMàn hình: 15.6 inch FHD (1920x1080), 144Hz, IPS-level    ',5,20,21990000,2,2,9,5,100),(477,'Laptop MSI Modern 14 B11MOU 1028VN','CPU: Intel Core i3-1115G4 1.7GHz lên đến 4.1GHz \r\nRAM: 8GB DDR4 3200MHz (2 Khe, tối đa 64GB)\r\nỔ lưu trữ: 256GB PCIe NVMe™ M.2 SSD\r\nCard đồ họa: Đồ họa Intel UHD \r\nMàn hình: 14 inch FHD (1920 x 1080) IPS-Level, 60Hz, 45% NTSC, viền mỏng',5,0,13499000,1,2,9,15,100),(478,'Laptop ASUS VivoBook Pro 16X OLED M7600QC L2077W','CPU:AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB, 6 nhân, 12 luồng\r\nRAM: 16GB Onboard DDR4 3200MHz\r\n\r\nỔ cứng: 512GB M.2 NVMe™ PCIe® 3.0 SSD (1slot)\r\nVGA: NVIDIA® GeForce® RTX™ 3050 4GB GDDR6 Boost up to 1057.5MHz at 35W (50W with Dynamic Boost)\r\nMàn hình: 16 inch 4K/UHD (3840 x 2400) OLED 16:10, 550nits peak brightness, 100% DCI-P3 color gamut, 1,000,000:1, VESA CERTIFIED Display HDR True Black 500, 1.07 billion colors, PANTONE Validated, Glossy display, 70% less harmful blue light, SGS Eye Care Display, Screen-to-body ratio: 86 ％',5,1,31990000,1,2,4,10,99),(479,'Laptop Dell Vostro 5410 V4I5214W1','CPU: Intel Core i5 11320H (2.5Ghz Upto 4.5Ghz/8MB cache)\r\nRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB PCIe NVMe SSD\r\nCard màn hình: Intel® Iris® Xe Graphics\r\nĐọc thẻ nhớ:	SD\r\nMàn hình: 14.0-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA',5,0,22690000,1,2,8,10,100),(480,'Laptop gaming GIGABYTE G5 MD 51S1123SO','CPU: Intel Core i5-11400H 2.7GHz up to 4.5GHz 12MB\r\nRAM: 16GB (8x2) DDR4 3200MHz (2x SO-DIMM socket, up to 64GB SDRAM)\r\nỔ cứng: 512GB SSD M.2 PCIE G3X4 (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\" SATA)\r\nCard đồ họa: NVIDIA GeForce RTX 3050Ti 4GB GDDR6 Boost Clock 1500 MHz, Maximum Graphics Power 75 W\r\nMàn hình: 15.6\" FHD (1920 x 1080) IPS-level Anti-glare Display LCD, 144Hz, 72% NTSC, 100% sRGB.',5,0,21990000,2,2,25,0,100),(481,'Laptop Gaming Asus ROG Strix G15 G513IH HN015W','CPU: AMD Ryzen 7-4800H 2.9GHz up to 4.2GHz, 8 cores 16 threads\r\nRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket)\r\nỔ lưu trữ: 512GB M.2 NVMe™ PCIe® 3.0 SSD (+1 khe M.2 PCIe trống)\r\nCard đồ họa:	NVIDIA Geforce GTX 1650 4GB GDDR6\r\nMàn hình: 15.6 inch FHD (1920 x 1080) IPS, Non-Glare, 144Hz AdaptiveSync, Nanoedge',5,0,22490000,2,2,4,10,100),(482,'Laptop Lenovo IdeaPad Gaming 3 15IHU6 82K100KLVN','CPU: Intel Core i5-11300H (4C / 8T, 3.1 / 4.4GHz, 8MB)\r\nRam: 8GB (8x1) DDR4 3200MHz (2x SO-DIMM socket, up to 16GB SDRAM)\r\nỔ cứng: 512GB SSD M.2 2242 PCIe 3.0x4 NVMe (Còn 1 slot M.2 2280 hoặc 1 slot 2.5\" HDD/SSD)\r\nVGA: NVIDIA GeForce RTX 3050 Ti 4GB GDDR6, Boost Clock 1485 / 1695MHz, TGP 90W\r\nMàn hình: 15.6\" FHD (1920x1080) IPS 250nits Anti-glare, 120Hz, 45% NTSC, DC dimmer',5,0,24990000,2,2,6,12,100),(483,'Laptop Dell Gaming Alienware m15 R6','CPU: i7 11800H2.30 GHz\r\nRAM: 32 GBDDR4 2 khe (1 khe 16GB + 1 khe 16GB)3200 MHz\r\nỔ cứng: 1 TB SSD M.2 PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB)Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 2TB)\r\nMàn hình: 15.6\"QHD (2560 x 1440)240Hz\r\nCard màn hình: Card rờiRTX 3070 8GB',5,0,55149000,3,2,8,5,100),(484,'Laptop MSI Creator Z16 A12UET','CPU: i7 12700H2.30 GHz\r\nRAM: 16 GBDDR5 2 khe (1 khe 8GB + 1 khe 8GB)4800 MHz\r\nỔ cứng: 1 TB SSD M.2 PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB)Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 2TB)\r\nMàn hình: 16\"QHD+ (2560 x 1600)120Hz\r\nCard màn hình: Card rờiRTX 3060 6GB',5,0,58900000,3,2,9,0,100),(485,'Laptop HP ZBook Firefly 14 G8','CPU: i51135G72.4GHz\r\nRAM: 16 GBDDR4 2 khe (8 GB onboard + 8 GB onboard)3200 MHz\r\nỔ cứng: 512 GB SSD NVMe PCIe\r\nMàn hình: 14\"Full HD (1920 x 1080)\r\nCard màn hình: Card rờiNVIDIA Quadro T500, 4GB',5,0,37890000,3,2,7,5,100),(486,'Laptop Apple MacBook Air M1 2020 Z124000DE','CPU: Apple M1\r\nRAM: 16 GB\r\nỔ cứng: 256 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp7 nhân GPU',5,0,32990000,4,2,3,5,100),(487,'Laptop Apple MacBook Pro M1 2020 Z11C','CPU: Apple M1\r\nRAM: 16 GB\r\nỔ cứng: 512 GB SSD\r\nMàn hình: 13.3\"Retina (2560 x 1600)\r\nCard màn hình: Card tích hợp8 nhân GPU',5,0,44900000,4,2,3,5,100),(488,'Laptop MacBook Pro 14 M1 Max 2021 Z15G','CPU: Apple M1 Max400GB/s memory bandwidth\r\nRAM: 32 GB\r\nỔ cứng: 512 GB SSD\r\nMàn hình: 14.2\"Liquid Retina XDR display (3024 x 1964)120Hz\r\nCard màn hình: Card tích hợp24 nhân GPU',5,0,75990000,4,2,3,3,100),(489,'FLP Homework Pentium','Mainboard: ASUS PRIME H510M-A WIFI  (tích hợp WIFI 5 + BT 5.1)	\r\nCPU: Intel Pentium G6405 / 4MB / 4.1GHz / 2 Nhân 4 Luồng / LGA 1200	\r\nRAM: RAM G.SKILL Ripjaws V 1x8GB 2800 DDR4 (F4-2800C17S-8GVR)	\r\nHDD: Có thể tùy chọn Nâng cấp	\r\nSSD: KIMTIGO 240GB 2.5\" SATA 3	\r\nPSU: Jetek 350W Elite V2	\r\nCase: Jetek EM4',5,0,6350000,22,3,4,0,100),(490,'Máy bộ PC Intel® NUC NUC7PJYHN2','Thương hiệu: Intel\r\nTình trạng: Mới\r\nBảo hành: 36 Tháng\r\nMàu sắc: Đen',5,0,5900000,22,3,35,2,100),(491,'FLP Homework R3','Mainboard: ASUS PRIME A320M-E 	\r\nCPU: AMD Ryzen 3 3200G / 6MB / 4.0GHz / 4 nhân 4 luồng / AM4	\r\nRAM: G.SKILL Ripjaws V 1x8GB 2800 DDR4 (F4-2800C17S-8GVR)	\r\nHDD: Có thể tùy chọn Nâng cấp	 \r\nSSD: KIMTIGO 240GB 2.5\" SATA 3	\r\nPSU: Jetek 350W Elite V2	\r\nCase: Jetek EM4',5,0,6590000,22,3,4,5,100),(492,'Điện thoại Apple iPhone 13 VN/A','Công nghệ màn hình: OLED\r\nĐộ phân giải:: 1170 x 2532 Pixels\r\nĐộ phân giải: 2 camera 12 MP, 12 MP\r\nChip xử lý (CPU): Apple A15 Bionic 6 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 4 GB',5,0,18990000,45,5,3,0,100),(493,'Điện thoại Apple iPhone 13 Pro Max VN/A','Công nghệ màn hình: OLED\r\nĐộ phân giải: 1284 x 2778 Pixels\r\nĐộ phân giải: 3 camera 12 MP, 12 MP\r\nHệ điều hành: iOS 15\r\nChip xử lý (CPU): Apple A15 Bionic 6 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 6 GB',5,1,26590000,45,5,3,0,99),(494,'Apple iPhone 12 VN/A','Công nghệ màn hình: OLED\r\nĐộ phân giải: 1170 x 2532 Pixels\r\nMàn hình rộng: 6.1\"\r\nĐộ phân giải: 2 camera 12 MP, 12 MP\r\nHệ điều hành: iOS 14\r\nChip xử lý (CPU): Apple A14 Bionic 6 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 4 GB',5,0,17590000,45,5,3,0,100),(495,'OPPO Reno7 Z 5G','Công nghệ màn hình: AMOLED\r\nĐộ phân giải: 2400 x 1080 FHD+, 60Hz\r\nMàn hình rộng: 6.43\'\'\r\nHệ điều hành: ColorOS 12\r\nChip xử lý (CPU): SDM6375 5G, Octa-core\r\nBộ nhớ trong (ROM): 128GB\r\nRAM: 8GB\r\nDung lượng pin: 4500 mAh - 33W',5,0,9350000,47,5,15,0,100),(496,' Vivo V23 5G 8GB/128GB','Công nghệ màn hình: AMOLED\r\nĐộ phân giải: 6,44\" FHD+\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, Chính 50 MP & Phụ 8 MP\r\nHệ điều hành: Android 12\r\nChip xử lý (CPU): MediaTek Dimensity 920 5G 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nDung lượng pin: 4200 mAh',5,0,10590000,47,5,16,0,100),(497,'Samsung Galaxy A73 5G','Công nghệ màn hình: Super AMOLED Plus\r\nĐộ phân giải: Full HD+ (1080 x 2400 Pixels)\r\nMàn hình rộng: 6.7\" - Tần số quét 120 Hz\r\nĐộ phân giải: Chính 108 MP & Phụ 12 MP, 5 MP, 5 MP, 32 MP\r\nChip xử lý (CPU): Snapdragon 778G 5G 8 nhân\r\nBộ nhớ trong (ROM): 128GB\r\nRAM: 8GB\r\nDung lượng pin: Li-Ion 5000 mAh',5,0,10090000,47,5,14,0,100),(498,'Tai nghe LG Bluetooth Tone Free FP9','Công nghệ âm thanh 3D lan toả âm thanh 360 độ, Chế độ thì thầm thu rõ giọng nói của bạn ngay cả nơi đông người, Đèn UV tiêu diệt 99.9% vi khuẩn,tự động kích hoạt khi sạc pin, Bộ EQ được tuỳ chỉnh từ Meridian thông qua ứng dụng LG Tone, Tập thể dục thoải mái với chuẩn kháng nước IPX4',5,0,3150000,54,7,11,0,100),(499,'Tai nghe Apple AirPods Pro (MLWK3ZP/A, MagSafe)','AirPods Pro là chiếc tai nghe không dây nổi tiếng đến từ thương hiệu Apple. Với thiết kế tinh tế cùng công nghệ hiện đại, sản phẩm này sẽ mang đến cho bạn những trải nghiệm âm thanh sâu lắng, chân thực.',5,0,4590000,54,7,3,0,100),(500,'Tai nghe JBL Quantum 400','Nằm trong dòng tai nghe Gaming top 1 của JBL, - Trang bị công nghệ JBL QuantumSURROUND™️ và chuẩn âm thanh vòm DTS Headphone:X 2.0, - Công nghệ âm thanh JBL QuantumSOUND Signature độc quyền, - Micro định hướng, - Tương thích với nhiều nền tảng, - Mic: Có, - Trở kháng: 32 ohms, - Tần số phản hồi: 20 Hz - 20 kHz, - Độ nhạy: 98 dB SPL @1 kHz / 1mW, -',5,1,1990000,54,7,29,0,99),(501,'Cáp Lightning 1m Hydrus CS-C-021 ','Đầu vào: USB Type-A\r\nĐầu ra: Lightning 5V - 2.4A\r\nĐộ dài dây: 1 m\r\nCông suất tối đa: 12 W\r\nSản xuất tại: Trung Quốc',5,0,150000,58,7,37,40,100),(502,'Chuột không dây Gaming Asus TUF M4 WL ','Tương thích\r\n\r\nWindows\r\nĐộ phân giải mặc định\r\n\r\n12000 DPI\r\nCách kết nối\r\n\r\nBluetoothĐầu thu USB Receiver\r\nĐộ dài dây/Khoảng cách kết nối\r\n\r\n15 m\r\nĐèn LED\r\n\r\nKhông có\r\nỨng dụng điều khiển\r\n\r\nArmory Crate\r\nLoại pin\r\n\r\n1 viên pin AA1 viên pin AAA\r\nTrọng lượng\r\n\r\n77 g (khi dùng pin AAA)',5,0,1200000,55,7,4,10,100),(503,'Máy tính bảng Huawei MatePad 11','Màn hình:\r\n\r\n10.9\"IPS LCD\r\nHệ điều hành:\r\n\r\nHarmonyOS 2.0\r\nChip:\r\n\r\nSnapdragon 865 8 nhân\r\nRAM:\r\n\r\n6 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nCamera sau:\r\n\r\n13 MP\r\nCamera trước:\r\n\r\n8 MP\r\nPin, Sạc:\r\n\r\n7250 mAh18 W',5,0,12990000,51,6,13,0,100),(504,'Máy tính bảng iPad Air 4 Wifi 64GB (2020) ','Màn hình:\r\n\r\n10.9\"Liquid Retina\r\nHệ điều hành:\r\n\r\niPadOS 15\r\nChip:\r\n\r\nApple A14 Bionic\r\nRAM:\r\n\r\n4 GB\r\nBộ nhớ trong:\r\n\r\n64 GB\r\nKết nối:\r\n\r\nNghe gọi qua FaceTime\r\nCamera sau:\r\n\r\n12 MP\r\nCamera trước:\r\n\r\n7 MP\r\nPin, Sạc:\r\n\r\n28.65 Wh (~ 7600 mAh)20 W',5,0,13990000,51,6,3,0,100),(505,'Máy tính bảng Samsung Galaxy Tab S7 FE WiFi','Màn hình:\r\n\r\n12.4\"TFT LCD\r\nHệ điều hành:\r\n\r\nAndroid 11\r\nChip:\r\n\r\nSnapdragon 778G 8 nhân\r\nRAM:\r\n\r\n4 GB\r\nBộ nhớ trong:\r\n\r\n64 GB\r\nCamera sau:\r\n\r\n8 MP\r\nCamera trước:\r\n\r\n5 MP\r\nPin, Sạc:\r\n\r\n10090 mAh45 W',5,0,11599000,51,6,14,0,100),(506,'Máy tính bảng iPad Air 5 M1 Wifi Cellular 64GB','Màn hình:\r\n\r\n10.9\"Retina IPS LCD\r\nHệ điều hành:\r\n\r\niPadOS 15\r\nChip:\r\n\r\nApple M1 8 nhân\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n64 GB\r\nKết nối:\r\n\r\n5GNghe gọi qua FaceTime\r\nSIM:\r\n\r\n1 Nano SIM & 1 eSIM\r\nCamera sau:\r\n\r\n12 MP\r\nCamera trước:\r\n\r\n12 MP\r\nPin, Sạc:\r\n\r\n28.6 Wh (~ 7587 mAh)20 W',5,0,19990000,52,6,3,0,100),(507,'Máy tính bảng Samsung Galaxy Tab S8 Ultra','Màn hình:\r\n\r\n14.6\"Super AMOLED\r\nHệ điều hành:\r\n\r\nAndroid 12\r\nChip:\r\n\r\nSnapdragon 8 Gen 1 8 nhân\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nKết nối:\r\n\r\n5GCó nghe gọi\r\nSIM:\r\n\r\n1 Nano SIM\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 6 MP\r\nCamera trước:\r\n\r\n2 Camera 12 MP\r\nPin, Sạc:\r\n\r\n11200 mAh45 W',5,0,28900000,52,6,14,2,100),(508,'Máy tính bảng Samsung Galaxy Tab S8+','Màn hình:\r\n\r\n12.4\"Super AMOLED\r\nHệ điều hành:\r\n\r\nAndroid 12\r\nChip:\r\n\r\nSnapdragon 8 Gen 1 8 nhân\r\nRAM:\r\n\r\n8 GB\r\nBộ nhớ trong:\r\n\r\n128 GB\r\nKết nối:\r\n\r\n5GCó nghe gọi\r\nSIM:\r\n\r\n1 Nano SIM\r\nCamera sau:\r\n\r\nChính 13 MP & Phụ 6 MP\r\nCamera trước:\r\n\r\n12 MP\r\nPin, Sạc:\r\n\r\n10090 mAh45 W',5,0,23590000,52,6,14,0,100),(509,'Router Wifi Mesh 3 Pack AC1200 TP-Link Deco M4 Trắng','Tốc độ:\r\n\r\n300 Mbps (băng tần 2.4GHz)867 Mbps (băng tần 5GHz)\r\nBăng tần:\r\n\r\n2.4GHz5GHz\r\nSố ăng-ten:\r\n\r\n2 Anten ngầm\r\nTruy cập tối đa:\r\n\r\n100 user\r\nMật độ phủ sóng (bán kính):\r\n\r\n10 m\r\nCác cổng kết nối:\r\n\r\n1 cổng LAN (RJ45)1 x WAN',5,0,3000000,59,7,34,2,100),(510,'Router Chuẩn Wifi 6 Băng Tần Kép Asus AX55 Đen','Tốc độ:\r\n\r\n1201 Mbps (băng tần 5GHz)574 Mbps (băng tần 2.4GHz)\r\nBăng tần:\r\n\r\n2.4GHz5GHz\r\nSố ăng-ten:\r\n\r\n4 ăng ten ngoài\r\nTruy cập tối đa:\r\n\r\n25 - 30 user\r\nMật độ phủ sóng (bán kính):\r\n\r\n10 - 20 m\r\nCác cổng kết nối:\r\n\r\n4 x LAN1 x WAN',5,0,1990000,59,7,4,5,100),(511,'Bộ Mở Rộng Sóng Wifi AC1200 Mercusys ME30 Trắng ','Tốc độ:\r\n\r\n300 Mbps (băng tần 2.4GHz)867 Mbps (băng tần 5GHz)\r\nBăng tần:\r\n\r\n2.4GHz5GHz\r\nSố ăng-ten:\r\n\r\n2 ăng ten ngoài\r\nTruy cập tối đa:\r\n\r\n25 - 30 user\r\nMật độ phủ sóng (bán kính):\r\n\r\n25 m\r\nCác cổng kết nối:\r\n\r\n1 x LAN\r\nNút bấm hỗ trợ:\r\n\r\nNút Reset/WPS',5,0,459000,59,7,36,5,100),(512,'FLP MINION i1650','Mainboard	MSI H510M Pro-E	\r\nCPU	Intel Core i3 10100F / 6MB / 4.3GHZ / 4 nhân 8 luồng / LGA 1200	\r\nRAM	Kingston Fury Beast 8GB 3200 DDR4 RGB (KF432C16BBA/8)	\r\nVGA	PNY GeForce GTX 1650 4GB GDDR6 Single Fan	\r\nHDD	Có thể tùy chọn Nâng cấp\r\nSSD	PNY CS900 240G 2.5\" Sata 3	\r\nPSU	Jetek GEN450 - 80 Plus	\r\nCase 	1st Player Fire Dancing V2-A (4 fan RGB)	\r\nTản	DEEPCOOL GAMMAXX 400 XT',5,0,19900000,23,3,9,0,100),(513,'FLP PHANTOM Plus i3080Ti','Mainboard	ASUS ROG MAXIMUS Z690 HERO DDR5	\r\nCPU	Intel Core i7 12700K / 3.6GHz Turbo 5.0GHz / 12 Nhân 20 Luồng / 25MB / LGA 1700\r\nRAM	G.Skill Trident Z5 RGB 32GB (2x16GB) 5600 DDR5 Black CL30	\r\nVGA	ASUS ROG Strix GeForce RTX 3080 Ti Gaming OC Edition 12GB	\r\nSSD	SamSung 980 PRO 500GB M.2 PCIe gen 4 NVMe	\r\nHDD	Tùy chọn nâng cấp	 \r\nPSU	ASUS ROG STRIX 1000W - 80 Plus Gold - Full Modular	\r\nCase	ASUS ROG Strix Helios GX601	\r\nCooling	ASUS ROG STRIX LC II 360 ARGB',5,0,95500000,23,3,4,2,100),(514,'FLP VIPER i1660S PINK','Mainboard	GIGABYTE B660M GAMING X AX DDR4	\r\nCPU	Intel Core i5 12400F / 2.5GHz Turbo 4.4GHz / 6 Nhân 12 Luồng / 18MB / LGA 1700	\r\nRAM	Kingston Fury Beast 8GB 3200 DDR4 RGB	\r\nVGA - Card đồ họa	MSI GeForce GTX 1660 SUPER Ventus XS OC 6GB	\r\nHDD	Có thể tùy chọn Nâng cấp	\r\nSSD	Kingston NV1 250GB M.2 PCIe NVMe	\r\nPSU	MSI MAG A650BN - 80 Plus Bronze	\r\nCase 	XIGMATEK GEMINI II PINK 3FB	\r\nCooling	Cooler Master Hyper 212 ARGB',5,0,19900000,23,3,25,0,100),(515,'Pin sạc dự phòng Polymer 10.000 mAh Hydrus PA CK01','Hiệu suất sạc:\r\n\r\n64%\r\nDung lượng pin:\r\n\r\n10.000 mAh\r\nThời gian sạc đầy pin:\r\n\r\n10 - 11 giờ (dùng Adapter 1A)5 - 6 giờ (dùng Adapter 2A)\r\nNguồn vào:\r\n\r\nMicro USB: 5V - 2A\r\nNguồn ra:\r\n\r\n2 x USB: 5V - 2.1A\r\nLõi pin:\r\n\r\nPolymer\r\nCông nghệ/Tiện ích:\r\n\r\nĐèn LED báo hiệu\r\nKích thước:\r\n\r\nDày 1.5 cm - Rộng 7.5 cm - Dài 14.5 cm\r\nTrọng lượng:\r\n\r\n233 g',5,0,290000,60,7,37,20,100),(516,'Chuột có dây DareU EM908 Hồng','Tương thích\r\n\r\nMacOS (MacBook, iMac)Windows\r\nĐộ phân giải mặc định\r\n\r\n6400 DPI\r\nCách kết nối\r\n\r\nDây cắm USB\r\nĐộ dài dây/Khoảng cách kết nối\r\n\r\nDây dài 186 cm\r\nĐèn LED\r\n\r\nRGB\r\nTrọng lượng\r\n\r\n85 g',5,0,420000,55,7,38,30,100),(517,'USB 3.1 32 GB Transcend JetFlash 760','Dung lượng\r\n\r\n32 GB\r\nTốc độ đọc\r\n\r\n70 MB/s\r\nTốc độ ghi\r\n\r\n18 MB/s\r\nKích thước\r\n\r\nDài 6.96mm - ngang 2.09 cm - dày 0.89 cm\r\nTrọng lượng\r\n\r\n12g',5,0,290000,42,4,39,20,100),(518,'Adapter Sạc Type C PD 20W Anker PowerPort III Nano A2633 Trắng','Model:\r\n\r\nA2633\r\nChức năng:\r\n\r\nSạc\r\nĐầu ra:\r\n\r\nType C: 5V - 3A, 9V - 2.22A\r\nDòng sạc tối đa:\r\n\r\n20 W\r\nKích thước:\r\n\r\nDài 4.6 cm - Ngang 2.7 cm- Cao 3 cm\r\nCông nghệ/Tiện ích:\r\n\r\nPower Delivery',5,0,400000,58,7,32,30,100),(519,'Xiaomi Redmi Note 10S','ông nghệ màn hình: AMOLED\r\nĐộ phân giải: Full HD+ (1080 x 2400 Pixels)\r\nĐộ phân giải: Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP, 13 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): MediaTek Helio G95 8 nhân\r\nBộ nhớ trong (ROM): 128 GB\r\nRAM: 8 GB\r\nDung lượng pin: 5000 mAh',5,0,4560000,46,5,12,0,100),(520,'realme C21y','Công nghệ màn hình: IPS LCD\r\nĐộ phân giải: HD+ (720 x 1600 Pixels)\r\nĐộ phân giải: Chính 13 MP & Phụ 2 MP, 2 MP, 5 MP\r\nHệ điều hành: Android 11\r\nChip xử lý (CPU): Spreadtrum T610 8 nhân\r\nBộ nhớ trong (ROM): 32 GB\r\nRAM: 3 GB\r\nDung lượng pin: 5000 mAh',5,0,3890000,46,5,40,5,100),(522,'Bphone A60','Công nghệ màn hình:: Thiết kế hiện đại màn hình lỗ\r\nĐộ phân giải:: FHD\r\nMàn hình rộng:: 6.67”\r\nĐộ phân giải: 4 Camera 16 MP + 2MP +5M +2MP, 8MP chụp góc rộng, tự làm đẹp...\r\nHệ điều hành: BOS - based on Android 11\r\nChip xử lý (CPU): Mediatek Helio G85, Antutu 205,950\r\nBộ nhớ trong (ROM): 128GB\r\nRAM: 6GB\r\nMạng di động: 4GB\r\nDung lượng pin: 5000mAh',5,200,5490000,46,5,41,0,-100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport`
--

DROP TABLE IF EXISTS `transport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport`
--

LOCK TABLES `transport` WRITE;
/*!40000 ALTER TABLE `transport` DISABLE KEYS */;
INSERT INTO `transport` VALUES (1,'Viettel Post',30000),(2,'VNpost',35000),(3,'Giao hàng nhanh',35000),(4,'Giao hàng tiết kiệm',25000),(5,'Sship',20000),(6,'AhaMove',30000);
/*!40000 ALTER TABLE `transport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `role` int DEFAULT '0',
  `avatar` varchar(300) DEFAULT 'https://images.pexels.com/photos/8937407/pexels-photo-8937407.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
  `total` float DEFAULT '0',
  `phone` varchar(20) DEFAULT 'Enter your phone',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'boboyso','123456','admin@gmail.com','Đức Độ',1,'https://i.pinimg.com/originals/4e/44/37/4e4437f8935e5087652dc2f5eec60ffb.png',0,'Enter your phone'),(12,'Admin','Admin','admin@gmail.com','Admin',0,' https://i.pinimg.com/originals/4e/44/37/4e4437f8935e5087652dc2f5eec60ffb.png',0,'Enter your phone'),(85,'duc','ZHVjMTIz','duc@gmail.com','Duc',1,'https://images.pexels.com/photos/8937407/pexels-photo-8937407.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',0,'Enter your phone'),(86,'khiem2412','a2hpZW0yNDEy','khiemnxde150230@fpt.edu.vn','Nguyen Xuan Khiem',0,'https://images.pexels.com/photos/8937407/pexels-photo-8937407.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',0,'Enter your phone'),(87,'dongngu','ZG9uZ25ndQ==','dongpdde150247@fpt.edu.vn','Phan Duy Dong ',0,'https://th.bing.com/th/id/R.a8f52efbaae8237a6d63ec145cdbb989?rik=1n1AH%2feV4wu6zQ&pid=ImgRaw&r=0',0,'123456789'),(88,'quanh','MTIzNDU2','Anhtnqde150349@fpt.edu.vn','Tran Ngoc Quyen Anh',0,'https://images.pexels.com/photos/8937407/pexels-photo-8937407.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',0,'Enter your phone');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28 23:04:28
