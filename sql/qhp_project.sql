-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qhp_project
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdonhang` (
  `MaDonHang` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ChiTietSPID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `SoLuong` int NOT NULL,
  `GiaTien` float NOT NULL,
  PRIMARY KEY (`MaDonHang`,`ChiTietSPID`) USING BTREE,
  KEY `ChiTietSPID` (`ChiTietSPID`),
  CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`MaDonHang`) REFERENCES `donhang` (`MaDonHang`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`ChiTietSPID`) REFERENCES `chitietsanpham` (`ChiTietSPID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
INSERT INTO `chitietdonhang` VALUES ('DH1','CTSP1101',1,540000),('DH1655952996','CTSP1101',1,540000),('DH1655952996','CTSP1201',1,550000),('DH1655953008','CTSP1001',1,20000),('DH1655953017','CTSP0701',1,5000000),('DH1655953032','CTSP1001',1,20000),('DH1655953058','CTSP0701',1,5000000),('DH1655953070','CTSP0801',1,700000),('DH1655953076','CTSP0801',1,700000),('DH1655953099','CTSP0701',1,5000000),('DH1655967949','CTSP0801',1,700000),('DH1655967963','CTSP1101',1,540000),('DH1655967971','CTSP0401',1,600000),('DH1656070900','CTSP0801',2,700000),('DH1656077985','CTSP0701',1,5000000),('DH1656077985','CTSP0801',1,700000),('DH1656078021','CTSP0401',1,600000),('DH1656078021','CTSP04011',2,600000),('DH1656078021','CTSP0801',1,700000),('DH1656078095','CTSP1101',1,540000),('DH1656078132','CTSP0801',1,700000),('DH1656078879','CTSP0901',2,520000),('DH1656079748','CTSP0501',1,700000),('DH1656086293','CTSP0701',1,5000000),('DH1656212102','CTSP0701',20,5000000);
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietsanpham`
--

DROP TABLE IF EXISTS `chitietsanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietsanpham` (
  `ChiTietSPID` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Size` int NOT NULL,
  `SoLuongCon` int NOT NULL,
  `MaSP` int NOT NULL,
  PRIMARY KEY (`ChiTietSPID`),
  KEY `MaSP` (`MaSP`),
  CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietsanpham`
--

LOCK TABLES `chitietsanpham` WRITE;
/*!40000 ALTER TABLE `chitietsanpham` DISABLE KEYS */;
INSERT INTO `chitietsanpham` VALUES ('CTSP0401',39,30,4),('CTSP04011',30,9,4),('CTSP0403',31,21,4),('CTSP0501',38,29,5),('CTSP0601',25,10,6),('CTSP0701',40,0,7),('CTSP0801',38,11,8),('CTSP0901',37,13,9),('CTSP1001',38,20,10),('CTSP1101',40,24,11),('CTSP1201',41,36,12),('CTSP1301',26,6,13);
/*!40000 ALTER TABLE `chitietsanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhmuc` (
  `MaDanhMuc` int NOT NULL AUTO_INCREMENT,
  `TenDanhMuc` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`MaDanhMuc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhmuc`
--

LOCK TABLES `danhmuc` WRITE;
/*!40000 ALTER TABLE `danhmuc` DISABLE KEYS */;
INSERT INTO `danhmuc` VALUES (1,'Nam'),(2,'Nữ'),(3,'Trẻ em');
/*!40000 ALTER TABLE `danhmuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `MaDonHang` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `HoVaTen` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `HinhThucVanChuyen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NgayNhanHang` datetime DEFAULT NULL,
  `DiaChiNhanHang` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `SoDT` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `GhiChu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `MaTK` int NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`MaDonHang`),
  KEY `MaTK` (`MaTK`),
  CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaTK`) REFERENCES `taikhoan` (`MaTK`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES ('DH1','huanpham1508','2022-06-22 00:00:00','COD','2022-06-27 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',16,459000,'Đã giao'),('DH1655952996','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,1009000,'Chưa giao'),('DH1655953008','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,20000,'Chưa giao'),('DH1655953017','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,2500000,'Chưa giao'),('DH1655953032','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,20000,'Chưa giao'),('DH1655953058','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,2500000,'Chưa giao'),('DH1655953070','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,700000,'Chưa giao'),('DH1655953076','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,700000,'Chưa giao'),('DH1655953099','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,2500000,'Chưa giao'),('DH1655967949','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,700000,'Chưa giao'),('DH1655967963','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,459000,'Chưa giao'),('DH1655967971','huanpham1508','2022-06-23 00:00:00','COD','2022-06-28 00:00:00','An Vu Quynh Phu Thai Binh','0975083396','khnog',17,540000,'Chưa giao'),('DH1656070900','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,1400000,'Chưa giao'),('DH1656077985','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,3200000,'Chưa giao'),('DH1656078021','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,2320000,'Chưa giao'),('DH1656078095','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,459000,'Chưa giao'),('DH1656078132','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,700000,'Chưa giao'),('DH1656078879','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,1040000,'Chưa giao'),('DH1656079748','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,560000,'Chưa giao'),('DH1656086293','HuanPham','2022-06-24 00:00:00','COD','2022-06-29 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',22,2500000,'Chưa giao'),('DH1656212102','Huân phạm','2022-06-26 00:00:00','COD','2022-07-01 00:00:00','Cầu diễn minh khai nhổn','0975083396','không',16,50000000,'Chưa giao');
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL AUTO_INCREMENT,
  `TenSP` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `GiaBan` float NOT NULL,
  `MoTa` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `HinhAnh` mediumblob NOT NULL,
  `MaTheLoai` int NOT NULL,
  `MaDanhMuc` int NOT NULL,
  `KhuyenMai` int DEFAULT NULL,
  PRIMARY KEY (`MaSP`),
  KEY `MaTheLoai` (`MaTheLoai`),
  KEY `MaDanhMuc` (`MaDanhMuc`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmuc` (`MaDanhMuc`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (4,'Giày 7 màu',600000,'Đủ 7 sắc cầu vồng',_binary '1653189018.png',3,1,10),(5,'Giày nike hot trend',700000,'Hot trend Hàn Quốc',_binary '1653189099.jpg',1,2,20),(6,'Giày bitis phát quang',509900,'Nâng tầm từng bước đi',_binary '1653189132.jpg',3,3,0),(7,'QHP’s evol.1',5000000,'Sử dụng vải canvas NE phối hợp',_binary '1653320881.jpg',1,1,50),(8,'QHP’s evol.2',700000,'Sử dụng vải canvas từ Châu Âu',_binary '1653320931.jpg',3,1,0),(9,'QHP’s evol.3',520000,'Sử dụng vải canvas từ Châu Á',_binary '1653321000.jpg',1,2,0),(10,'QHP’s evol.4',200000,'Sử dụng vải cotton 100%',_binary '1653321053.jpg',2,2,0),(11,'QHP’s evol.5',540000,'Đế giày mềm mại cho chặng đường dài',_binary '1653321189.jpg',4,1,15),(12,'QHP’s evol.6',550000,'Giày canvas cổ cao cho mùa đông ấm',_binary '1653321253.jpg',3,2,0),(13,'QHP’s evol.7',560000,'Giày thoáng khí, nhẹ, êm cho trẻ em',_binary '1653321358.jpg',3,3,0);
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `MaTK` int NOT NULL AUTO_INCREMENT,
  `HoVaTen` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `NgaySinh` date NOT NULL,
  `TenTaiKhoan` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `SoDT` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `IsAdmin` bit(1) NOT NULL,
  `DiaChi` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TTGioHang` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `TinhTrang` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaTK`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'Hoàng Trung Quân','2001-04-13','user1','admin@gmail.com','$2y$10$DUHhPMMQR62a2e/nfU7lAOt9n5MJVR9HGF5IZlp8VKaAdvmRykSYq','0123456789',_binary '','Kim Chung, Đông Anh, Hà Nội',NULL,_binary '\0'),(2,'Lê Hồng Phong','2001-01-01','user2','hongphong1@gmail.com','456789','0987654321',_binary '\0',NULL,NULL,_binary '\0'),(3,'Phạm Ngọc Huân','2001-02-02','user3','phamhuan1@gmail.com','654321','0987612345',_binary '\0',NULL,NULL,_binary '\0'),(9,'Nguyễn Minh Trường','2001-02-11','user11','mingtruong@gmail.com','123abcAA#','0123456798',_binary '\0','Thái Nguyên',NULL,NULL),(10,'Đường Ngọc Khanh','2001-01-05','khanhthongke','khanh1@gmail.com','123abcK*','0987612345',_binary '\0','Vĩnh Phúc',NULL,NULL),(12,'Cù Việt Hưng','2001-05-05','huglyk','hung1@gmail.com','abc123A*','0123456719',_binary '\0','Hưng Yên',NULL,NULL),(13,'Huân Phạm','0020-06-15','2019603220','huanpham1508@gmail.com','$2y$10$5OPeZFBXmBvtvr9zut7AReZJGiZfE/NH2mpmOwUJPg.eNQv3rvtAu','0975083396',_binary '\0','Thái Bình','0',_binary '\0'),(14,'Huân Phạm','0010-01-01','20196032205','huanpham1508@gmail.com','$2y$10$cMcv1OHxrnMxhqRn7v3r7egbpxMNTsuUn.eaQd3vX5en6g/GEPSBO','0975083396',_binary '','1','0',_binary '\0'),(16,'Người Ngoài Hệ Thống','2022-06-09','NguoiNgoaiHeThong','huanpham','huan','0975083396',_binary '\0',NULL,NULL,NULL),(17,'huanpham1508','0001-01-01','201960322001','huanpham1508@gmail.com','$2y$10$X8.NULkMvGNpiLuy5tvWEenOpx5KMdNUE4qabndy/1F2QOVR03yTa','0975083396',_binary '\0','1','0',_binary '\0'),(18,'HuanPham','1010-01-01','201960322015111','huanpham33333@gmail.com','$2y$10$EgYMUgdiEJX75B8EtHWCIufCP/GehWXJanvh2ooVbFABUyPvcEpSC','0975083396',_binary '\0','1','0',_binary '\0'),(19,'HuanPham','1110-10-10','20196032201512','huanpham33333@gmail.com','$2y$10$FZtzvBXSovX4dioewFAd6OkAoj5vBhxNAFpO8HyNhSzPy3gkJLa2O','0975083396',_binary '\0','1','0',_binary '\0'),(20,'HuanPham','1110-10-10','201960322015123','huanpham33333@gmail.com','$2y$10$kmkLVdVFlJ0ukSokotwk7.OjKiHhO1GYVLSjA7tm8rbGgNrQo0qku','0975083396',_binary '\0','Sơn la','0',_binary '\0'),(21,'HuanPham','2022-02-20','201960322015123456','huanpham33333@gmail.com','$2y$10$BrMlq0RAGh3AEsqX93Tkk.MBRR33zFBq06U.hjPTIvM9FzuWgXlui','0975083396',_binary '','1','0',_binary '\0'),(22,'HuanPham','0111-11-11','20196032202323','huanpham33333@gmail.com','$2y$10$sIRckeIugDvt6z5EXvQeSevs5SyGfFDbMFljEbvRoljAU.zbVB78y','0975083396',_binary '\0','Sơn la','0',_binary '\0'),(23,'nguyenvana','2024-04-02','nguyenvana','nguyenvana@gmail.com','$2y$10$BPb3Cd91eTvYsNgi.EENyudV8bA1L.Y/EaJfCCTk6N1LfF6FvccIS','1231231231',_binary '\0','1','0',_binary '\0');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theloai` (
  `MaTheLoai` int NOT NULL AUTO_INCREMENT,
  `TenTheLoai` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`MaTheLoai`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theloai`
--

LOCK TABLES `theloai` WRITE;
/*!40000 ALTER TABLE `theloai` DISABLE KEYS */;
INSERT INTO `theloai` VALUES (1,'Giày chạy bộ'),(2,'Giày training'),(3,'Giày thời trang'),(4,'Giày leo núi');
/*!40000 ALTER TABLE `theloai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-01 10:22:25
