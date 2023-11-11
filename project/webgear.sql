-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 01:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_webgear`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE DATABASE project_webgear;

USE project_webgear;

CREATE TABLE `chitietdonhang` (
  `ma_chi_tiet` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` bigint(20) DEFAULT NULL,
  `ma_don_hang` bigint(20) NOT NULL,
  `ma_san_pham` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`ma_chi_tiet`, `don_gia`, `so_luong`, `thanh_tien`, `ma_don_hang`, `ma_san_pham`) VALUES
(1, 990000, 1, 990000, 1, 12),
(2, 150000, 1, 150000, 1, 22),
(3, 19990000, 1, 19990000, 2, 1),
(4, 590000, 1, 590000, 2, 10),
(5, 190000, 1, 190000, 3, 21),
(6, 990000, 1, 990000, 3, 12),
(7, 990000, 1, 990000, 4, 12),
(8, 1500000, 1, 1500000, 4, 24);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `ma_chi_tiet` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` bigint(20) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`ma_chi_tiet`, `don_gia`, `so_luong`, `thanh_tien`, `ma_gio_hang`, `ma_san_pham`) VALUES
(7, 360000, 2, 720000, 4, 17),
(9, 549000, 1, 549000, 4, 30);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `ma_chi_tiet` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` bigint(20) DEFAULT NULL,
  `ma_phieu_nhap` bigint(20) NOT NULL,
  `ma_san_pham` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`ma_chi_tiet`, `don_gia`, `so_luong`, `thanh_tien`, `ma_phieu_nhap`, `ma_san_pham`) VALUES
(1, 20000000, 10, 200000000, 1, 1),
(2, 25000000, 10, 250000000, 1, 3),
(3, 18500000, 10, 185000000, 1, 5),
(4, 25000000, 5, 125000000, 2, 3),
(5, 18500000, 5, 92500000, 2, 5),
(6, 25000000, 10, 250000000, 2, 9),
(7, 19000000, 10, 190000000, 3, 6),
(8, 24500000, 10, 245000000, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ma_danh_muc` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL,
  `trang_thai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`ma_danh_muc`, `ten_danh_muc`, `trang_thai`) VALUES
(1, 'Laptop', 1),
(2, 'Bàn phím', 1),
(3, 'Chuột', 1),
(4, 'Tai nghe', 1),
(5, 'Lót chuột', 1),
(6, 'Loa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `ma_don_hang` bigint(20) NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `ma_tai_khoan` bigint(20) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tinh_thanh` varchar(255) NOT NULL,
  `ngay_mua` datetime(6) NOT NULL,
  `quan_huyen` varchar(255) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `trang_thai` int(11) NOT NULL,
  `so_dien_thoai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`ma_don_hang`, `ho_ten`, `ma_tai_khoan`, `dia_chi`, `email`, `tinh_thanh`, `ngay_mua`, `quan_huyen`, `tong_tien`, `trang_thai`, `so_dien_thoai`) VALUES
(1, 'Nguyễn Văn A', 5, '273 An Dương Vương', 'nguyenvana@gmail.com', 'TP. Hồ Chí Minh', '2022-11-07 14:18:28.000000', 'Phường 3, Quận 5', 1140000, 5, '0326356017'),
(2, 'Lê Thị B', 4, '273 An Dương Vương', 'lethib@gmail.com', 'TP. Hồ Chí Minh', '2022-11-12 00:12:46.000000', 'Phường 3, Quận 5', 20580000, 0, '0924242486'),
(3, 'Huỳnh Thanh Lộc', 7, '336/91 Nguyễn Văn Luông', 'thanhloc@gmail.com', 'TP. Hồ Chí Minh', '2022-11-12 08:30:36.000000', 'Phường 12, Quận 6', 1180000, 0, '0327540119'),
(4, 'Nguyễn Trí Dũng', 6, '273 An Dương Vương', 'tridung@gmail.com', 'TP. Hồ Chí Minh', '2022-11-16 21:42:44.000000', 'Phường 3, Quận 5', 2490000, 0, '0814840484');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `ma_gio_hang` bigint(20) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `ma_tai_khoan` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`ma_gio_hang`, `tong_tien`, `ma_tai_khoan`) VALUES
(4, 1269000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `hinhanhsanpham`
--

CREATE TABLE `hinhanhsanpham` (
  `ma_hinh_anh` bigint(20) NOT NULL,
  `ten_hinh_anh` varchar(255) NOT NULL,
  `vi_tri` int(11) NOT NULL,
  `ma_san_pham` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhanhsanpham`
--

INSERT INTO `hinhanhsanpham` (`ma_hinh_anh`, `ten_hinh_anh`, `vi_tri`, `ma_san_pham`) VALUES
(1, 'Laptop_Dell_Vostro_5410_V4I5214W1_1.jpg', 1, 1),
(2, 'Laptop_Dell_Vostro_5410_V4I5214W1_2.jpg', 2, 1),
(3, 'Laptop_Dell_Vostro_5410_V4I5214W1_3.jpg', 3, 1),
(4, 'Laptop_Dell_Vostro_5410_V4I5214W1_4.jpg', 4, 1),
(5, 'Laptop_Dell_Vostro_5410_V4I5214W1_5.jpg', 5, 1),
(6, 'Laptop_HP_ProBook_450_G8_614K3PA_1.jpg', 1, 2),
(7, 'Laptop_HP_ProBook_450_G8_614K3PA_2.jpg', 2, 2),
(8, 'Laptop_HP_ProBook_450_G8_614K3PA_3.jpg', 3, 2),
(9, 'Laptop_HP_ProBook_450_G8_614K3PA_4.jpg', 4, 2),
(10, 'Laptop_HP_ProBook_450_G8_614K3PA_5.jpg', 5, 2),
(11, 'Laptop_Gaming_Dell_G15_5515_P105F004DGR_1.jpg', 1, 3),
(12, 'Laptop_Gaming_Dell_G15_5515_P105F004DGR_2.jpg', 2, 3),
(13, 'Laptop_Gaming_Dell_G15_5515_P105F004DGR_3.jpg', 3, 3),
(14, 'Laptop_Gaming_Dell_G15_5515_P105F004DGR_4.jpg', 4, 3),
(15, 'Laptop_Gaming_Dell_G15_5515_P105F004DGR_5.jpg', 5, 3),
(16, 'Laptop_Lenovo_IdeaPad_5_Pro_14ACN6_82L700L7VN_1.jpg', 1, 4),
(17, 'Laptop_Lenovo_IdeaPad_5_Pro_14ACN6_82L700L7VN_2.jpg', 2, 4),
(18, 'Laptop_Lenovo_IdeaPad_5_Pro_14ACN6_82L700L7VN_3.jpg', 3, 4),
(19, 'Laptop_Lenovo_IdeaPad_5_Pro_14ACN6_82L700L7VN_4.jpg', 4, 4),
(20, 'Laptop_Lenovo_IdeaPad_5_Pro_14ACN6_82L700L7VN_5.jpg', 5, 4),
(21, 'Laptop_Dell_Inspiron_16_5620_P1WKN_1.jpg', 1, 5),
(22, 'Laptop_Dell_Inspiron_16_5620_P1WKN_2.jpg', 2, 5),
(23, 'Laptop_Dell_Inspiron_16_5620_P1WKN_3.jpg', 3, 5),
(24, 'Laptop_Dell_Inspiron_16_5620_P1WKN_4.jpg', 4, 5),
(25, 'Laptop_Dell_Inspiron_16_5620_P1WKN_5.jpg', 5, 5),
(26, 'Laptop_Asus_ExpertBook_Flip_B3402FEA_EC0714T_1.jpg', 1, 6),
(27, 'Laptop_Asus_ExpertBook_Flip_B3402FEA_EC0714T_2.jpg', 2, 6),
(28, 'Laptop_Asus_ExpertBook_Flip_B3402FEA_EC0714T_3.jpg', 3, 6),
(29, 'Laptop_Asus_ExpertBook_Flip_B3402FEA_EC0714T_4.jpg', 4, 6),
(30, 'Laptop_Asus_ExpertBook_Flip_B3402FEA_EC0714T_5.jpg', 5, 6),
(31, 'Laptop_Acer_Aspire_3_A315_59_381E_1.jpg', 1, 7),
(32, 'Laptop_Acer_Aspire_3_A315_59_381E_2.jpg', 2, 7),
(33, 'Laptop_Acer_Aspire_3_A315_59_381E_3.jpg', 3, 7),
(34, 'Laptop_Acer_Aspire_3_A315_59_381E_4.jpg', 4, 7),
(35, 'Laptop_Acer_Aspire_3_A315_59_381E_5.jpg', 5, 7),
(36, 'Laptop_Lenovo_Ideapad_5_Pro_14IAP7_82SH002UVN_1.jpg', 1, 8),
(37, 'Laptop_Lenovo_Ideapad_5_Pro_14IAP7_82SH002UVN_2.jpg', 2, 8),
(38, 'Laptop_Lenovo_Ideapad_5_Pro_14IAP7_82SH002UVN_3.jpg', 3, 8),
(39, 'Laptop_Lenovo_Ideapad_5_Pro_14IAP7_82SH002UVN_4.jpg', 4, 8),
(40, 'Laptop_Lenovo_Ideapad_5_Pro_14IAP7_82SH002UVN_5.jpg', 5, 8),
(41, 'Laptop_Dell_Vostro_13_5320_V3I7005W_Gray_1.jpg', 1, 9),
(42, 'Laptop_Dell_Vostro_13_5320_V3I7005W_Gray_2.jpg', 2, 9),
(43, 'Laptop_Dell_Vostro_13_5320_V3I7005W_Gray_3.jpg', 3, 9),
(44, 'Laptop_Dell_Vostro_13_5320_V3I7005W_Gray_4.jpg', 4, 9),
(45, 'Laptop_Dell_Vostro_13_5320_V3I7005W_Gray_5.jpg', 5, 9),
(46, 'Laptop_Asus_TUF_Gaming_FX706HC_HX105W_1.jpg', 1, 10),
(47, 'Laptop_Asus_TUF_Gaming_FX706HC_HX105W_2.jpg', 2, 10),
(48, 'Laptop_Asus_TUF_Gaming_FX706HC_HX105W_3.jpg', 3, 10),
(49, 'Laptop_Asus_TUF_Gaming_FX706HC_HX105W_4.jpg', 4, 10),
(50, 'Laptop_Asus_TUF_Gaming_FX706HC_HX105W_5.jpg', 5, 10),
(51, 'Chuột_Logitech_G102_Lightsync_RGB_White_1.jpg', 1, 11),
(52, 'Chuột_Logitech_G102_Lightsync_RGB_White_2.jpg', 2, 11),
(53, 'Chuột_Logitech_G102_Lightsync_RGB_White_3.jpg', 3, 11),
(54, 'Chuột_Logitech_G502_Hero_1.jpg', 1, 12),
(55, 'Chuột_Logitech_G502_Hero_2.jpg', 2, 12),
(56, 'Chuột_Logitech_G502_Hero_3.jpg', 3, 12),
(57, 'Chuột_Logitech_G502_Hero_4.jpg', 4, 12),
(58, 'Chuột_Logitech_G304_Lightspeed_Wireless_1.jpg', 1, 13),
(59, 'Chuột_Logitech_G304_Lightspeed_Wireless_2.jpg', 2, 13),
(60, 'Chuột_Logitech_G304_Lightspeed_Wireless_3.jpg', 3, 13),
(61, 'Chuột_Logitech_G304_Lightspeed_Wireless_4.jpg', 4, 13),
(62, 'Chuột_Logitech_G304_Lightspeed_Wireless_5.jpg', 5, 13),
(63, 'Chuột_Razer_Orochi_V2_Wireless_White_1.jpg', 1, 14),
(64, 'Chuột_Razer_Orochi_V2_Wireless_White_2.jpg', 2, 14),
(65, 'Chuột_Razer_Orochi_V2_Wireless_White_3.jpg', 3, 14),
(66, 'Chuột_Razer_Orochi_V2_Wireless_White_4.jpg', 4, 14),
(67, 'Chuột_Razer_Orochi_V2_Wireless_White_5.jpg', 5, 14),
(68, 'Chuột_Dare-U_EM901_RGB_Wireless_Black_1.jpg', 1, 15),
(69, 'Chuột_Dare-U_EM901_RGB_Wireless_Black_2.jpg', 2, 15),
(70, 'Chuột_Dare-U_EM901_RGB_Wireless_Black_3.jpg', 3, 15),
(71, 'Chuột_Dare-U_EM901_RGB_Wireless_Black_4.jpg', 4, 15),
(72, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_1.jpg', 1, 16),
(73, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_2.jpg', 2, 16),
(74, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_3.jpg', 3, 16),
(75, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_4.jpg', 4, 16),
(76, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_1.jpg', 1, 17),
(77, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_2.jpg', 2, 17),
(78, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_3.jpg', 3, 17),
(79, 'Chuột_Dare-U_LM115B_Wireless_Bluetooth_Black_4.jpg', 4, 17),
(80, 'Chuột_Rapoo_VT200_Wireless_1.jpg', 1, 18),
(81, 'Chuột_Rapoo_VT200_Wireless_2.jpg', 2, 18),
(82, 'Chuột_Rapoo_VT200_Wireless_3.jpg', 3, 18),
(83, 'Chuột_Rapoo_VT200_Wireless_4.jpg', 4, 18),
(84, 'Chuột_Wireless_Rapoo_M20_Plus_1.jpg', 1, 19),
(85, 'Chuột_Wireless_Rapoo_M20_Plus_2.jpg', 2, 19),
(86, 'Chuột_Wireless_Rapoo_M20_Plus_3.jpg', 3, 19),
(87, 'Chuột_Wireless_Rapoo_M20_Plus_4.jpg', 4, 19),
(88, 'Chuột_Cooler_Master_MM731_RGB_Matte_Black_1.jpg', 1, 20),
(89, 'Chuột_Cooler_Master_MM731_RGB_Matte_Black_2.jpg', 2, 20),
(90, 'Chuột_Cooler_Master_MM731_RGB_Matte_Black_3.jpg', 3, 20),
(91, 'Chuột_Cooler_Master_MM731_RGB_Matte_Black_4.jpg', 4, 20),
(92, 'Lót_chuột_Dare-U_ESP109_Pink_1.jpg', 1, 21),
(93, 'Lót_chuột_Dare-U_ESP109_Pink_2.jpg', 2, 21),
(94, 'Lót_chuột_Dare-U_ESP109_Pink_3.jpg', 3, 21),
(95, 'Lót_chuột_Rapoo_V1_1.jpg', 1, 22),
(96, 'Lót_chuột_Rapoo_V1_2.jpg', 2, 22),
(97, 'Lót_chuột_Rapoo_V1_3.jpg', 3, 22),
(98, 'Lót_chuột_Corsair_MM700_RGB_Extended_1.jpg', 1, 23),
(99, 'Lót_chuột_Corsair_MM700_RGB_Extended_2.jpg', 2, 23),
(100, 'Lót_chuột_Corsair_MM700_RGB_Extended_3.jpg', 3, 23),
(101, 'Lót_chuột_Corsair_MM700_RGB_Extended_4.jpg', 4, 23),
(102, 'Bàn_phím_Logitech_Mechanical_Gaming_G413_SE_1.jpg', 1, 24),
(103, 'Bàn_phím_Logitech_Mechanical_Gaming_G413_SE_2.jpg', 2, 24),
(104, 'Bàn_phím_Logitech_Mechanical_Gaming_G413_SE_3.jpg', 3, 24),
(105, 'Bàn_phím_Logitech_Mechanical_Gaming_G413_SE_4.jpg', 4, 24),
(106, 'Bàn_phím_Logitech_Mechanical_Gaming_G413_SE_5.jpg', 5, 24),
(107, 'Bàn_phím_Logitech_G_PRO_Mechanical_Gaming_Keyboard_1.jpg', 1, 25),
(108, 'Bàn_phím_Logitech_G_PRO_Mechanical_Gaming_Keyboard_2.jpg', 2, 25),
(109, 'Bàn_phím_Logitech_G_PRO_Mechanical_Gaming_Keyboard_3.jpg', 3, 25),
(110, 'Bàn_phím_Logitech_G_PRO_Mechanical_Gaming_Keyboard_4.jpg', 4, 25),
(111, 'Bàn_phím_Logitech_G_PRO_Mechanical_Gaming_Keyboard_5.jpg', 5, 25),
(112, 'Bàn_phím_Logitech_G213_1.jpg', 1, 26),
(113, 'Bàn_phím_Logitech_G213_2.jpg', 2, 26),
(114, 'Bàn_phím_Logitech_G213_3.jpg', 3, 26),
(115, 'Bàn_phím_Logitech_G213_4.jpg', 4, 26),
(116, 'Bàn_phím_Logitech_G213_5.jpg', 5, 26),
(117, 'Bàn_phím_Corsair_K60_Pro_SE_RGB_1.jpg', 1, 27),
(118, 'Bàn_phím_Corsair_K60_Pro_SE_RGB_2.jpg', 2, 27),
(119, 'Bàn_phím_Corsair_K60_Pro_SE_RGB_3.jpg', 3, 27),
(120, 'Bàn_phím_Corsair_K65_RGB_MINI_White_1.jpg', 1, 28),
(121, 'Bàn_phím_Corsair_K65_RGB_MINI_White_2.jpg', 2, 28),
(122, 'Bàn_phím_Corsair_K65_RGB_MINI_White_3.jpg', 3, 28),
(123, 'Bàn_phím_Corsair_K65_RGB_MINI_White_4.jpg', 4, 28),
(124, 'Bàn_phím_Dare-U_EK807G_Wireless_1.jpg', 1, 29),
(125, 'Bàn_phím_Dare-U_EK807G_Wireless_2.jpg', 2, 29),
(126, 'Bàn_phím_Dare-U_EK807G_Wireless_3.jpg', 3, 29),
(127, 'Bàn_phím_Dare-U_EK807G_Wireless_4.jpg', 4, 29),
(128, 'Bàn_phím_Dare-U_EK807G_Wireless_5.jpg', 5, 29),
(129, 'Bàn_phím_E-Dra_EK387_1.jpg', 1, 30),
(130, 'Bàn_phím_E-Dra_EK387_2.jpg', 2, 30),
(131, 'Bàn_phím_E-Dra_EK387_3.jpg', 3, 30),
(132, 'Bàn_phím_E-Dra_EK384_1.jpg', 1, 31),
(133, 'Bàn_phím_E-Dra_EK384_2.jpg', 2, 31),
(134, 'Bàn_phím_E-Dra_EK384_3.jpg', 3, 31),
(135, 'Bàn_phím_E-Dra_EK387_RGB_Dark_Warrior_1.jpg', 1, 32),
(136, 'Bàn_phím_E-Dra_EK387_RGB_Dark_Warrior_2.jpg', 2, 32),
(137, 'Bàn_phím_E-Dra_EK387_RGB_Dark_Warrior_3.jpg', 3, 32),
(138, 'Bàn_phím_E-Dra_EK387_RGB_Dark_Warrior_4.jpg', 4, 32),
(139, 'Tai_nghe_Logitech_G535_LIGHTSPEED_Wireless_Black_1.jpg', 1, 33),
(140, 'Tai_nghe_Logitech_G535_LIGHTSPEED_Wireless_Black_2.jpg', 2, 33),
(141, 'Tai_nghe_Logitech_G535_LIGHTSPEED_Wireless_Black_33.jpg', 3, 33),
(142, 'Tai_nghe_Logitech_G535_LIGHTSPEED_Wireless_Black_4.jpg', 4, 33),
(143, 'Tai_nghe_Rapoo_VH710 7.1_1.jpg', 1, 34),
(144, 'Tai_nghe_Rapoo_VH710 7.1_2.jpg', 2, 34),
(145, 'Tai_nghe_Rapoo_VH710 7.1_3.jpg', 3, 34),
(146, 'Tai_nghe_Rapoo_VH710 7.1_4.jpg', 4, 34),
(147, 'Tai_nghe_Rapoo_VH710 7.1_5.jpg', 5, 34),
(148, 'Tai_nghe_HyperX_Cloud_Stinger_S_7.1_1.jpg', 1, 35),
(149, 'Tai_nghe_HyperX_Cloud_Stinger_S_7.1_2.jpg', 2, 35),
(150, 'Tai_nghe_HyperX_Cloud_Stinger_S_7.1_3.jpg', 3, 35),
(151, 'Tai_nghe_HyperX_Cloud_Stinger_S_7.1_4.jpg', 4, 35),
(152, 'Tai_nghe_HyperX_Cloud_Stinger_S_7.1_5.jpg', 5, 35),
(153, 'Laptop_Acer_Nitro_5_Tiger_AN515_58_769J_1.jpg', 1, 36),
(154, 'Laptop_Acer_Nitro_5_Tiger_AN515_58_769J_2.jpg', 2, 36),
(155, 'Laptop_Acer_Nitro_5_Tiger_AN515_58_769J_3.jpg', 3, 36),
(156, 'Laptop_Acer_Nitro_5_Tiger_AN515_58_769J_4.jpg', 4, 36),
(157, 'Laptop_Acer_Nitro_5_Tiger_AN515_58_769J_5.jpg', 5, 36);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `ma_phieu_nhap` bigint(20) NOT NULL,
  `ngay_nhap` datetime(6) NOT NULL,
  `tong_tien` bigint(20) NOT NULL,
  `ma_nhan_vien` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`ma_phieu_nhap`, `ngay_nhap`, `tong_tien`, `ma_nhan_vien`) VALUES
(1, '2022-11-18 00:30:42.000000', 635000000, 1),
(2, '2022-11-18 00:35:08.000000', 467500000, 1),
(3, '2022-11-18 00:45:09.000000', 435000000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_san_pham` bigint(20) NOT NULL,
  `gia` bigint(20) NOT NULL,
  `giam_gia` bigint(20) DEFAULT NULL,
  `mo_ta` text DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ten_san_pham` varchar(255) NOT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `ma_danh_muc` bigint(20) NOT NULL,
  `ma_thuong_hieu` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ma_san_pham`, `gia`, `giam_gia`, `mo_ta`, `so_luong`, `ten_san_pham`, `trang_thai`, `ma_danh_muc`, `ma_thuong_hieu`) VALUES
(1, 23690000, 19990000, 'CPU: Intel Core i5 11320H (2.5Ghz Upto 4.5Ghz/8MB cache)\r\nRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB PCIe NVMe SSD\r\nCard màn hình: Intel® Iris® Xe Graphics\r\nĐọc thẻ nhớ: SD\r\nMàn hình: 14.0-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA\r\nCổng kết nối: \r\n2 x USB 3.2 Gen 1 Type-A \r\n1 x RJ45 \r\n1 x Headset Jack\r\n1 x Wedge shaped lock\r\n1 x HDMI 1.4\r\n1 x USB 3.2 Gen 2x2 Type-C™ (Display Port/PowerDelivery)\r\nWebcam: HD\r\nBàn phím: Không có phím số, Led Backlight\r\nAudio: Realtek ALC3204, 2x2.5W\r\nWifi + Bluetooth Intel® Wi-Fi 6 2x2 (Gig+) / Bluetooth 5.1\r\nPin: 4 cell 54Wh\r\nKích thước: 321.27 x 212.8 x 17.99 (mm) \r\nTrọng lượng: 1.35Kg \r\nMàu sắc: Titan Grey\r\nBảo mật: Vân tay\r\nHệ điều hành: Win 11 + Office Home & Student 2021\r\nPhụ kiện đi kèm: AC Adapter', 10, 'Laptop Dell Vostro 5410 V4I5214W1', 1, 1, 8),
(2, 20990000, 19990000, 'CPU: Intel Core i5-1135G7 2.4GHz up to 4.2GHz 8MB\nRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\nỔ cứng: 512GB SSD M.2 PCIE\nCard đồ họa: Intel Iris Xᵉ Graphics\nMàn hình: 15.6\" FHD (1920 x 1080) Diagonal IPS Anti-Glare WLED-Backlit, 45% NTSC, 250nits\nCổng giao tiếp: \n1x USB 3.1 Gen 2 Type-C port\n3x USB 3.1 Gen 1 Type-A ports (1 Charging, 1 Powered port)\n1x HDMI 1.4b\n1x RJ-45 (Ethernet) port\n1x Headphone/microphone combo jack\n1x AC power port\nFingerPrint\nAudio: 2 Integrated Stereo Speakers\nĐọc thẻ nhớ: SD Card Reader (Supports SD, SDHC, SDXC)\nChuẩn LAN: Realtek 10/100/1000 GbE NIC\nChuẩn WIFI: 802.11AC (2x2)\nBluetooth: v5.0\nWebcam: 720p HD Camera\nHệ điều hành: Windows 11 Home\nPin: 3 Cell 45WHr\nTrọng lượng: 1.74kg\nMàu sắc: Bạc\nKích thước: 35,94 x 23,39 x 1,99 cm', 5, 'Laptop HP ProBook 450 G8 614K3PA', 1, 1, 9),
(3, 28990000, 20990000, 'CPU: AMD Ryzen 5 5600H 3.3GHz up to 4.2GHz 16MB, 6 nhân,12 luồng\r\nRAM: 16GB (8x2) DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB SSD M.2 PCIe (2 slots)\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình: 15.6 inch FHD (1920 x1080) 120Hz, 250 nits, WVA, Anti-Glare, LED Backlit, Narrow Border Display\r\nCổng giao tiếp: \r\n1 x USB 3.2\r\n2 x USB 2.0\r\nHDMI\r\nJack tai nghe 3.5 mm\r\nLAN (RJ45)\r\nUSB Type-C\r\nBàn phím: Orange Backlit Keyboard\r\nAudio: Nahimic Audio\r\nChuẩn LAN: 10/100/1000 Mbps\r\nChuẩn WIFI: Wi-Fi 6 (802.11ax)\r\nBluetooth: Bluetooth V5.2\r\nWebcam: HD camera (720p) \r\nHệ điều hành: Windows 11 Home + Office Home & Student\r\nPin: 3 Cell 56WHrs\r\nTrọng lượng: 2.8 kg\r\nMàu sắc: Phantom Grey\r\nKích thước: 357.26 x 272.11 x 26.90 (mm)', 15, 'Laptop Gaming Dell G15 5515 P105F004DGR', 1, 1, 8),
(4, 19990000, 0, 'CPU: AMD Ryzen 7-5800U (1.9GHz - 4.4 GHz, 8 nhân, 16MB)\r\nRam: 16GB DDR4 onboard (Không nâng cấp)\r\nSSD: 512GB SSD PCIe NVMe\r\nCard đồ họa: AMD Radeon Graphics \r\nMàn hình: 14inch 2.8K (2880 x 1800) IPS, 16:10, 400 nits, 100% sRGB, 90Hz, TUV low blue light certification\r\nCổng giao tiếp: \r\n2 x USB-A 3.2 Gen 1\r\nUSB-C (PD + USB 3.0)\r\nUSB-C\r\nHDMI 1.4b\r\nSD card reader\r\nHeadphone / mic combo\r\nNOVO hole\r\nĐọc thẻ nhớ: 1x Card reader\r\nBàn phím: Bàn phím tiêu chuẩn, có LED đơn sắc\r\nChuẩn LAN: Không hỗ trợ\r\nChuẩn WIFI: WiFi 6\r\nBluetooth: Bluetooth® 5.1\r\nWebcam: 1M IR camera\r\nHệ điều hành: Windows 11 Home\r\nPin: 4 Cell 56.5WHr\r\nTrọng lượng: 1.41 kg\r\nMàu sắc: Xám\r\nKích thước: 312.2 x 221 x 15.99-17.99 mm', 5, 'Laptop Lenovo IdeaPad 5 Pro 14ACN6 82L700L7VN', 1, 1, 10),
(5, 21990000, 20490000, 'CPU: Intel Core i5-1235U 3.30GHz upto 4.40GHz 10 Cores 12 Threads\r\nRAM: 1 x 8GB DDR4/ 3200MHz (2 slots) – Max 3200MHz\r\nỔ cứng: 256GB SSD M.2 PCIE \r\nCard đồ họa: \r\nIntel Iris Xe Graphics (with dual channel memory)\r\nIntel® UHD Graphics (with single channel memory)\r\nMàn hình: 16\" FHD+ (1920x1200) 60Hz, Non-Touch, AG, Wide Viewing Angle, 250 nit, ComfortView\r\nCổng giao tiếp: \r\n2 USB 3.2 Gen 1 Type-A ports\r\n1 USB 3.2 Gen 2x1 Type-C port with Power Delivery and DisplayPort\r\n1 Audio jack\r\n1 HDMI 1.4 port\r\n1 Power-adapter port\r\nBàn phím: Có đèn bàn phím\r\nWireless + Bluetooth: Intel® Wi-Fi 6E (6GHz) AX211 2x2 Bluetooth 5.2 Wireless Card\r\nĐọc thẻ nhớ: \r\nSD-card slot\r\nAudio: Stereo speakers with Waves MaxxAudio® Pro, 2 W x 2 = 4 W\r\nWebcam: 1080p at 30 fps FHD camera\r\nDual-array microphones\r\nPin: 4-cell Li-ion, 54 Wh\r\nHệ điều hành: Windows 11 Home SL + Office Home & Student 2021\r\nTrọng lượng: 1.8 kg\r\nMàu sắc: Silver\r\nKích thước: 35.68 x 25.19 x 1.79 cm\r\n', 15, 'Laptop Dell Inspiron 16 5620 P1WKN', 1, 1, 8),
(6, 22990000, 14490000, 'CPU: Intel Core i3-1115G4 Processor 3.0 GHz (6M Cache, up to 4.1 GHz, 2 cores)\r\nRAM: 8GB DDR4 Onboard (Không nâng cấp)\r\nỔ cứng: 256GB M.2 NVMe PCIe 3.0 SSD\r\nCard đồ họa: Intel UHD Graphics\r\nMàn hình: 14.0 inch FHD (1920 x 1080) 16:9, Touch, 250nits, NTSC: 45%, Glossy display\r\nCổng giao tiếp: \r\n1x USB 2.0 Type-A\r\n1x USB 3.2 Gen 1 Type-A\r\n2x Thunderbolt 4 supports display / power delivery//1x HDMI 2.0a\r\n1x 3.5mm Combo Audio Jack\r\n1x RJ45 Gigabit Ethernet//N/A\r\nBàn phím: Backlit Chiclet Keyboard\r\nAudio: Smart Amp Technology\r\nĐọc thẻ nhớ: None\r\nNumPad: \r\nTích hợp trên TouchPad\r\nChuẩn WIFI: WiFi 6 802.11AX (2x2)\r\nBluetooth: v5.0\r\nWebcam: 720p HD camera With privacy shutter, World-facing camera 13.0M camera\r\nHệ điều hành: Windows 10 Home\r\nPin: 3 Cell 50WHr \r\nTrọng lượng: 1.3 kg\r\nMàu sắc: Star Black\r\nKích thước: 32.90 x 22.39 x 1.92 (cm)', 10, 'Laptop Asus ExpertBook Flip B3402FEA EC0714T', 1, 1, 12),
(7, 13990000, 12990000, 'CPU: Intel® Core™ i3-1215U 3.30GHz upto 4.40GHz, 10 MB Intel® Smart Cache\r\nRAM: 8GB (4GB x2) DDR4 2400MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB PCIe NVMe SSD (nâng cấp tối đa 1 TB HDD và 1 TB SSD PCIe Gen3)\r\nCard đồ họa: Intel® UHD Graphics\r\nMàn hình: 15.6\" FHD (1920 x 1080), 60Hz, Acer ComfyView LED-backlit TFT LCD\r\nCổng giao tiếp:\r\n3 x USB 3.2 Gen 1 ports with one featuring power-off USB charging\r\n1 x DC-in jack for AC adapter\r\n1 x HDMI®2.1 port with HDCP support\r\n1 x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1 x Ethernet (RJ-45) port\"\r\nAudio: Acer TrueHarmony technology\r\nBàn phím: Không led, có phím số\r\nBảo mật: \r\nFirmware Trusted Platform Module (TPM) solution \r\nBIOS user, supervisor passwords, \r\nKensington lock slot\r\nChuẩn Lan: Gigabit Ethernet\r\nChuẩn WIFI: Intel® Wireless Wi-Fi 6e AX201 (2x2)\r\nBluetooth: v5.1\r\nWebcam: HD Camera\r\nHệ điều hành: Windows 11 Home\r\nTrọng lượng: 1.7kg\r\nPin: 3 Cell 40WHrs\r\nKích thước: 362.9 (W) x 241.26 (D) x 19.9 (H) mm\r\nMàu sắc: Pure Silver', 5, 'Laptop Acer Aspire 3 A315 59 381E', 1, 1, 13),
(8, 27490000, 25990000, 'CPU: Intel Core i7-1260P, 12 Cores (4P + 8E) / 16 Threads, P-core 2.1 / 4.7GHz, E-core 1.5 / 3.4GHz, 18MB\r\nRAM: 2 x 8GB DDR5 onboard (Không nâng cấp)\r\nỔ cứng: 512GB SSD PCIe NVMe Gen 4 (1 Slot)\r\nCard đồ họa: Intel Iris Xe Graphics\r\nMàn hình: 14\" 2.8K (2880x1800) IPS 400nits Anti-glare, 90Hz, 100% sRGB, TÜV Low Blue Light, Eyesafe\r\nCổng giao tiếp: \r\n1x USB 3.2 Gen 1\r\n1x USB 3.2 Gen 1 (Always On)\r\n2x USB-C 3.2 Gen 1 (support data transfer, Power Delivery 3.0, and DisplayPort 1.4)\r\n1x HDMI 2.0\r\n1x Headphone / microphone combo jack (3.5mm)\r\nĐọc thẻ nhớ: 1x Card reader\r\nBàn phím: Bàn phím tiêu chuẩn, có LED đơn sắc\r\nChuẩn LAN: Không hỗ trợ\r\nChuẩn WIFI: WiFi 6 802.11ax \r\nBluetooth: Bluetooth® 5.2\r\nWebcam: 1M IR camera, HD 720p\r\nHệ điều hành: Windows 11 Home\r\nPin: 4 Cell 56.5WHr\r\nTrọng lượng: 1.4 kg\r\nMàu sắc: Storm Grey\r\nKích thước: 312.2 x 221 x 15.9 mm', 5, 'Laptop Lenovo Ideapad 5 Pro 14IAP7 82SH002UVN', 1, 1, 10),
(9, 28990000, 26990000, 'CPU: Intel Core i7-1260P (18 MB cache, 12 cores, 16 threads, up to 4.70 GHz Turbo)\r\nRAM: 16GB LPDDR5 4800 MHz (Onboard)\r\nỔ cứng: 512GB PCIe NVMe SSD (1 slot)\r\nCard màn hình: Intel Iris Xe Graphics\r\nMàn hình: 13.3 inch, QHD+ (2560x1600) 60Hz, Non-Touch, AG, WVA, 300 nit, ComfortView Plus\r\nCổng kết nối: \r\n1 USB 3.2 Gen 1 Type-A\r\n2 Thunderbolt 4.0 (PowerDelivery & DisplayPort)\r\n1 Audio Jack\r\n1 HDMI 1.4 port\r\nBàn phím: Led trắng\r\nAudio: Stereo speakers, 2 W x 2 = 4 W total\r\nWebcam: 1080p at 30 fps FHD RGB camera Dual-array microphones\r\nĐọc thẻ nhớ: 1 SD 3.0 card slot\r\nWifi + Bluetooth: Intel Wi-Fi 6E (6GHz) AX211 2x2 + Bluetooth 5.2 Wireless Card\r\nPin: 4 cell 54Wh\r\nTrọng lượng: 1.25Kg \r\nMàu sắc: Titan Grey\r\nBảo mật: Vân tay\r\nHệ điều hành: Windows 11 + Office Home & Student 2021\r\nKích thước: 296.68 x 213.50 x 14.35  - 15.65 mm', 10, 'Laptop Dell Vostro 13 5320 V3I7005W Gray', 1, 1, 8),
(10, 26490000, 21490000, 'CPU: Intel® Core™ i5-11400H Processor 2.7 GHz (12M Cache, up to 4.5 GHz, 6 Cores)\r\nRAM: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB SSD M.2 PCIE G3X2, 1x slot M.2\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics\r\nMàn hình: 17.3\" FHD (1920 x 1080) IPS, 144Hz, Wide View, 250nits, Narrow Bezel, Non-Glare with 45% NTSC, 63% sRGB\r\nCổng giao tiếp: \r\n1x RJ45 LAN port\r\n3x USB 3.2 Gen 1 Type-A\r\n1x Thunderbolt™ 4 support DisplayPort™\r\n1x 3.5mm Combo Audio Jack\"\r\nAudio: DTS software\r\nBàn phím: Backlit Chiclet Keyboard RGB\r\nChuẩn LAN: 10/100/1000/Gigabits Base T\r\nKết nối không dây: Wifi 6 (802.11ax) / Bluetooth 5.2\r\nWebcam: HD 720p\r\nHệ điều hành: Windows 11 Home\r\nPin: 3-cell 48WHrs,\r\nTrọng lượng: 2.3 kg\r\nMàu sắc: Graphite Black\r\nKích thước: 39.9 x 26.9 x 2.33 ~ 2.48 cm', 10, 'Laptop Asus TUF Gaming FX706HC HX105W', 1, 1, 12),
(11, 599000, 400000, 'Thương hiệu: Logitech\r\nTên sản phẩm: Logitech G102 Lightsync RGB\r\nThiết kế: Đối xứng - Ambidextrous\r\nMắt đọc: Mercury Sensor\r\nĐiểm ảnh trên 1 inch (DPI): 8000\r\nIPS: 200\r\nGia tốc: 30g\r\nTần số phản hồi: 1000Hz\r\nChất liệu vỏ: Nhựa ABS\r\nMàu sắc: Trắng\r\nSố lượng nút bấm: 6\r\nSwitch: Omron\r\nTuổi thọ: 50 triệu lần nhấn\r\nLED: RGB Lightsync\r\nKết nối: USB\r\nĐộ dài dây (cm): 210\r\nKích thước (mm): Dài 116.6 x Rộng 62.15 x Cao 38.2\r\nTrọng lượng (gr): 85g (không cable)\r\nPhần mềm: Logitech G-Hub', 0, 'Chuột Logitech G102 Lightsync RGB White', 1, 3, 1),
(12, 1590000, 990000, 'Cảm biến: HERO\r\nĐộ phân giải:  100 - 16.000 dpi\r\nTăng tốc tối đa: > 40 G\r\nTốc độ tối đa: > 400 IPS\r\nNút: 11 nút\r\nĐịnh dạng dữ liệu USB: 16 bit/trục\r\nTốc độ báo cáo USB:  1000 Hz (1ms)\r\nBộ vi xử lý: ARM 32-bit\r\nBộ nhớ tích hợp: Tối đa 5 cấu hình (yêu cầu phần mềm 127.1.7)\r\nChân PTFE: > 250 ki-lô-mét\r\nLIGHTSYNC RGB: 1 khu vực\r\nKích thước: 132 x 75 x 40 mm \r\nTrọng lượng:  121 g\r\nĐộ dài dây: 2,10 m (dây cao su)', 0, 'Chuột Logitech G502 Hero', 1, 3, 1),
(13, 1090000, 790000, 'Kích thước: 116.6 x 62.15 x 38.2 (mm) (Dài x Rộng x Cao)\r\nTrọng lượng: 99g\r\nCảm biến: HERO\r\nĐộ phân giải: 200 – 12000 DPI\r\nTăng tốc tối đa: > 40 G\r\nTốc độ tối đa: > 400 IPS\r\nTốc độ báo cáo không dây: 1000Hz (1ms)\r\nCông nghệ LIGHTSPEED: Có\r\nBộ vi xử lý: ARM 32-bit\r\nTuổi thọ pin: 250 giờ\r\nBộ nhớ tích hợp: 1 cấu hình\r\nHệ thống: Ứng lực Nút Cơ học\r\nTương thích phần mềm: Logitech Gaming Software', 0, 'Chuột Logitech G304 Lightspeed Wireless', 1, 3, 1),
(14, 1890000, 1390000, 'Thương hiệu: Razer\r\nModel: Razer Orochi V2 - White\r\nMàu sắc: Trắng\r\nKiểu kết nối: Chế độ không dây kép (2.4GHz and BLE)\r\nThời gian sử dụng: Lên tới 425 giờ sử dụng (2.4Ghz), 950 giờ (BLE) kèm pin AA\r\nĐèn LED: None\r\nKiểu thiết kế: Công thái học\r\nĐộ nhạy (DPI): 18000\r\nIPS tối đa: 450\r\nCảm biến: 18,000 DPI 5G với 99.4% độ phân giải chính xác\r\nSố nút bấm: 6 nút nhấn có thể lập trình độc lập\r\nChân đế: PTFE\r\nSwitch: 2nd-gen Razer™ Mechanical Mouse Switches\r\nBộ nhớ: Lưu trữ DPI và hành trình phím trên bo mạch\r\nKích thước: 108mm (Dài) x 60mm (Rộng) x 38mm (Cao)\r\nTrọng lượng: <60g\r\nTính năng khác: Phần mềm Razer Synapse 3', 0, 'Chuột Razer Orochi V2 Wireless White', 1, 3, 5),
(15, 640000, 590000, 'DPI: 800-6000\r\nTracking: 150IPS\r\nPolling rate: 1000Hz\r\nDung lượng PIN: 930 mAh\r\nThời gian sử dụng: 30h / 18h LED RGB\r\nThời gian sạc: 3h\r\nSwitch: Dare-U (10 triệu lần click)\r\nKích thước: 125.5*68.6*39.6mm\r\nDây: 1.8m\r\nTrọng lượng: 100g +/- 10g', 0, 'Chuột Dare-U EM901 RGB Wireless Black', 1, 3, 4),
(16, 269000, 0, 'Loại chuột: Chuột văn phòng\r\nDPI: 800-1600 \r\nKết nối: Wireless 2.4GHz Nano Receiver + Bluetooth 5.0\r\nKích thước: 107 x 59 x 38 mm\r\nChất liệu: ABS\r\nTrọng lượng: 90g\r\nĐộ bền: 3 triệu lần click\r\nTương thích: Windows XP/7/8 or higher; MacOS\r\nMàu sắc: Đen', 0, 'Chuột DareU LM115B Wireless Bluetooth Black', 1, 3, 4),
(17, 360000, 0, 'Model: EM624 \r\nBảo hành : 24 tháng\r\nDPI: 12000 \r\nKết nối: Có dây\r\nCảm biến: 6662IC\r\nSwitch: Huano\r\nTuổi thọ switch: Lên đến 50 triệu lần nhấn\r\nLED: RGB', 0, 'Chuột E-Dra EM624 White', 1, 3, 3),
(18, 690000, 490000, 'Hãng sản xuất: Rapoo\nModel: VT200 Wireless\nDPI: Lên đến 5000.\nLED: RGB\nKết nối: Wireless\nCảm biến: Quang học PixArt\nTrọng lượng: 110G\nĐộ trễ: 1000Hz', 0, 'Chuột Rapoo VT200 Wireless', 1, 3, 6),
(19, 200000, 0, 'Thương hiệu: Rapoo\r\nModel: Rapoo M20 Plus\r\nMàu: Đen\r\nChuẩn giao tiếp: USB-Wireless\r\nKiểu thiết kế: Đối xứng\r\nDPI: 1000 \r\nTương thích: WIndows, MacOS', 0, 'Chuột Wireless Rapoo M20 Plus', 1, 3, 6),
(20, 1490000, 1290000, 'Model: Cooler Master MM731 RGB Matte Black\r\nMàu sắc: Đen\r\nKiểu cầm: Palm, Claw\r\nChất liệu: Nhựa ABS, cao su, PTFE\r\nLED: 16,7 triệu RGB\r\nCảm biến: Quang học PixArt\r\nCPI / DPI: 400-800-1200 (mặc định) -1600-3200-8000-19000\r\nIPS: 400\r\nKhoảng cách di chuyển chuột: <~ 2mm / Có thể điều chỉnh\r\nPolling rate: 2.4GHz / Chế độ có dây: 1000 Hz\r\nChế độ BT: 125 Hz\r\nTuổi thọ switch: Lên đến 70 triệu lần nhấn\r\nSố nút: 6\r\nKết nối: Có dây / 2,4 GHz / Bluetooth 5.1\r\nDung lượng pin: 500 mah\r\nThời lượng pin: 190 giờ (chế độ Bluetooth với LED tắt)  /  72 giờ (chế độ 2.4GHz với LED tắt)\r\nPhần mềm: Cooler Master MasterPlus+\r\nDây cáp chuột: Cáp siêu bền có thể tháo rời, chiều dài 1.8m (Type-C to Type-A) được mạ vàng\r\nKích thước (Dài x Rộng x Cao): 122.3 x 69 x 39.1mm\r\nTrọng lượng: 59g', 0, 'Chuột Cooler Master MM731 RGB Matte Black', 1, 3, 11),
(21, 300000, 190000, 'Hãng sản xuất: Dareu\r\nModel: ESP109 Pink\r\nKích thước: (900 x 350 x 3mm)\r\nChất liệu: Vải mềm mịn + đế cao su', 0, 'Lót chuột Dare-U ESP109 Pink', 1, 5, 4),
(22, 150000, 0, 'Thương hiệu: Rapoo\r\nKích thước: 300 x 250 x 3 mm\r\nĐộ dày: 3mm\r\nSize: M\r\nChất liệu: Vải dệt mịn (bề mặt), đáy chống trượt', 0, 'Lót chuột Rapoo V1', 1, 5, 6),
(23, 1590000, 0, 'Hãng sản xuất: Corsair\r\nSản phẩm: Lót chuột \r\nModel: MM700 RGB Extended\r\nKích Thước: 930 x 400 x 4 mm\r\nKết nối: USB\r\nLED: RGB\r\nChất liệu: Vải / Loại lót chuột / Pad mềm\r\nLoại bề mặt: Speed\r\nBo viên: Có\r\nTính năng: Đế cao su chống trượt / Viền khâu chắc chắn / Đồng bộ với iCUE / Kết nối USB Type-C', 0, 'Lót chuột Corsair MM700 RGB Extended', 1, 5, 2),
(24, 1899000, 1500000, 'Keycaps: PBT\r\nSwitch: Tactile\r\nKiểu bàn phím: Fullsize\r\nKết nối: Có dây (USB 2.0)\r\nĐèn LED: Có nền trắng trên mỗi phím\r\nKích thước: 435 x 127 x 36.3 (mm)\r\nTrọng lượng: 780g\r\nTương thích: Windows ® 10 trở lên / macOS X 10.14 trở lên\r\nPhụ kiện: Sách HDSD', 0, 'Bàn phím Logitech Mechanical Gaming G413 SE', 1, 2, 1),
(25, 3490000, 2590000, 'Thương hiệu: Logitech\r\nKiểu bàn phím: TKL (87 phím)\r\nLoại bàn phím: Bàn phím cơ\r\nChất liệu vỏ: Nhựa\r\nMàu sắc: Đen\r\nKeycap: ABS\r\nSwitch: Logitech GX Switch Blue\r\nLED: RGB LightSync\r\nKết nối: Dây cáp rời\r\nLoại dây: USB 2.0 Type-A\r\nKích thước: Dài 361 x Rộng 153 x Cao 34', 0, 'Bàn phím Logitech G PRO Mechanical Gaming Keyboard', 1, 2, 1),
(26, 1099000, 990000, 'Loại kết nối: USB 2.0\r\nLoại bàn phím: Giả cơ\r\nLED: RGB (5 khu vực)\r\nĐộ dài dây: 1.8m\r\nKích thước: Cao 218 x rộng 452 x dày 33 mm\r\nTrọng lượng: 1kg\r\nTính năng đặc biệt: Chống thấm nước', 0, 'Bàn phím Logitech G213', 1, 2, 1),
(27, 2490000, 1890000, 'Thương hiệu: Corsair\r\nLed: RGB\r\nMàu: Black\r\nKích thước: FullSize\r\nSwitch: CHERRY\r\nKeycaps: PBT doubleshot\r\nAnti-Ghosting: Có\r\nPhần mềm: iCUE\r\nKết nối: Có dây, USB 3.0 or 3.1 type-A\r\nTrọng lượng: 0,88kg', 0, 'Bàn phím Corsair K60 Pro SE RGB', 1, 2, 2),
(28, 2690000, 2590000, 'Thương hiệu: Corsair\r\nModel: Corsair K65 RGB Mini White\r\nMàu sắc: Trắng\r\nKết nối: Có dây\r\nKiểu dáng: 60% - 61 Phím\r\nSize: 60%\r\nĐèn led: LED RGB 16.8 triệu màu thông qua ICUE\r\nSwitch: Cherry MX Speed/Red\r\nKeycaps: PBT Double Shot siêu bền\r\nTrọng lượng: 0.81 kg\r\nChất liệu: Nhựa cao cấp\r\nPhụ kiện: Cáp Type C - Key Puller - Logo Corsair Keycap - Radiant Spacebar\r\nTính năng: Full Key (NKRO) with 100% Anti-Ghosting, LED RGB.', 0, 'Bàn phím Corsair K65 RGB MINI White', 1, 2, 2),
(29, 699000, 649000, 'Kết nối: Không dây 2.4GHz\r\nKiểu dáng: TKL\r\nLoại Bàn phím: Bàn phím cơ\r\nĐèn LED: Không có\r\nSwitch: Blue/ Red/ Brown\r\nKeycaps: ABS Doubleshot\r\nDung lượng pin: 2 viên pin AAA \r\nTính năng: Kết nối qua USB Receiver', 0, 'Bàn phím Dare-U EK807G Wireless', 1, 2, 4),
(30, 749000, 549000, 'Thương hiệu: E-Dra\r\nModel: E-Dra EK387\r\nMàu sắc: Đen \r\nKết nối: Có dây\r\nKiểu dáng: 87 phím\r\nSize: TKL\r\nĐèn led: RGB Rainbow\r\nSwitch: Blue/Red/Brown\r\nKeycaps: Nhựa ABS\r\nDây: Dài 1,8m\r\nChất liệu: Nhựa cao cấp\r\nPhụ kiện: Sách HDSD', 0, 'Bàn phím E-Dra EK387', 1, 2, 3),
(31, 890000, 790000, 'Hãng sản xuất: E-Dra\r\nMẫu bàn phím: Bàn phím cơ E-DRA EK384\r\nSố lượng phím: 84 phím\r\nKiểu bàn phím: TKL\r\nSwitch: Huano Blue /Brown/Red switch\r\nVật liệu: Khung nhựa ABS nguyên khối cao cấp, khung bàn phím được gia cố bằng kim loại\r\nKeycaps: ABS Doubleshot\r\nTốc độ phản hồi: 500-1000 Hz\r\nCáp bàn phím: Type-C\r\nLED: RGB\r\nTính năng: 100% Anti-ghosting, N-key rollover\r\nMàu sắc: Case màu đen - Phím Retro trắng , xám\r\nPhụ kiện: HDSD, Key Puller, Cáp type C', 20, 'Bàn phím E-Dra EK384', 1, 2, 3),
(32, 990000, 890000, 'Kết nối: Có dây USB 2.0\r\nKiểu bàn phím: 87 Phím\r\nKeycap: PBT Double injection key caps\r\nSwitch: Blue / Red / Brown\r\nTrọng lượng: 900g\r\nMàu sắc: Đen\r\nAntighosting: Full antishosting keys\r\nLED: RGB\r\nChiều dài cáp: 1.8m', 20, 'Bàn phím E-Dra EK387 RGB Dark Warrior', 1, 2, 3),
(33, 3290000, 2990000, 'Thương hiệu: Logitech\r\nBảo hành: 24 Tháng\r\nSeries/Model: G535 \r\nMàu sắc: Đen\r\nThời lượng pin: Có thể lên đến 33 giờ\r\nKiểu tai nghe: Over-ear\r\nTrọng lượng: 236g\r\nDrivers: 40 mm\r\nKết nối: Không dây LIGHTSPEED USB receiver\r\nĐộ nhạy: 87.5 dB SPL/mW\r\nMicrophone: Có\r\nTrở kháng: 36 Ohms\r\nTần số: 20Hz-20KHz\r\nPhạm vi kết nối không dây: 39.37 ft (12 m)\r\nTương thích: Windows 10 và macOS X 10.14', 0, 'Tai nghe Logitech G535 LIGHTSPEED Wireless Black', 1, 4, 1),
(34, 1090000, 690000, 'Thương hiệu: Rapoo\r\nBảo hành: 24 tháng\r\nModel: Rapoo VH710 7.1\r\nMàu sắc: Đen\r\nKiểu tai nghe: Over-ear\r\nKhả năng cách âm: Có\r\nKiểu kết nối: Có dây\r\nĐèn led: Có RGB\r\nChuẩn kết nối: USB\r\nMicrophone: Có\r\nChất liệu khung: Nhựa/ Kim loại\r\nChất liệu đệm tai nghe: Chất liệu cao cấp\r\nTần số: 20HZ - 20000HZ\r\nTrở kháng: Tai nghe: 32 ohm / Micro: 2200 ohm\r\nĐộ nhạy: Tai nghe: 103 ±3dB\r\nMicro: -42 ±2dB\r\nTrọng lượng: 409g', 25, 'Tai nghe Rapoo VH710 7.1', 1, 4, 6),
(35, 1590000, 1490000, 'Thương hiệu: Kingston HyperX\r\nBảo hành: 24 tháng\r\nSeries/Model: Cloud Stinger S 7.1 \r\nMàu sắc: Đen\r\nKiểu tai nghe: Over-ear\r\nKiểu kết nối: Có dây\r\nLED: Không\r\nChuẩn kết nối: 3.5 mm / USB type A\r\nMicrophone: Có thể gấp gọn để tắt tiếng\r\nTrở kháng: 32 (Ohm)\r\n Tần số: 20Hz - 20KHz\r\nKhả năng cách âm: Có\r\nChất liệu khung: Hợp kim\r\nChất liệu đệm tai nghe: Da mềm\r\nPhụ kiện đi kèm: Hướng dẫn sử dụng / Cáp chuyển đổi 3.5mm to USB type A\r\nTương thích: Windows / MacOS\r\nChức năng đặc biệt: Giả lập âm thanh 7.1', 0, 'Tai nghe HyperX Cloud Stinger S 7.1', 1, 4, 7),
(36, 30990000, 27990000, 'CPU: Intel Core i7-12700H up to 4.7GHz, 24MB Cache\r\nRam: 8GB DDR4 3200MHz (2x SO-DIMM socket, up to 32GB SDRAM)\r\nỔ cứng: 512GB PCIe NVMe SED SSD (Còn trống 1 khe SSD M.2 PCIE và 1 khe 2.5\' SATA)\r\nCard đồ họa: NVIDIA® GeForce RTX™ 3050 4GB GDDR6\r\nMàn hình: 15.6 inch FHD (1920 x 1080) IPS 144Hz SlimBezel\r\nCổng giao tiếp:\r\n1x USB 3.2 Gen 2 Type-C Ports (supporting: USB 3.2 Gen 2 (up to 10 Gbps); DisplayPort over USB-C; Thunderbolt 4; USB charging 5 V; 3 A; DC-in port 20 V; 65 W)\r\n1x USB 3.2 Gen 2 port featuring power-off USB charging\r\n1x USB 3.2 Gen 2 port\r\n1x USB 3.2 Gen 1 port\r\n1x Ethernet (RJ-45) port\r\n1x HDMI®2.1 port with HDCP support\r\n1x 3.5 mm headphone/speaker jack, supporting headsets with built-in microphone\r\n1x DC-in jack for AC adapter\r\nỔ quang: None\r\nAudio: DTS® X: Ultra\r\nBàn phím: RGB 4 vùng\r\nĐọc thẻ nhớ: None\r\nChuẩn LAN: KillerTM Ethernet E2600\r\nChuẩn WIFI: KillerTM Wi-Fi 6 AX 1650i (2x2)\r\nBluetooth: Bluetooth® 5.1\r\nWebcam: 720p HD audio/video recording\r\nHệ điều hành: Windows 11 Home\r\nPin: 4 Cell 57.5WHr\r\nTrọng lượng: 2.5 kg\r\nMàu sắc: Obsidian Black\r\nKích thước: 360.4 x 271.09 x 25.9 mm', 0, 'Laptop Acer Nitro 5 Tiger AN515 58 769J', 0, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ma_tai_khoan` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ho_lot` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `quyen` int(11) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  `ten` varchar(255) NOT NULL,
  `trang_thai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`ma_tai_khoan`, `email`, `ho_lot`, `password`, `quyen`, `so_dien_thoai`, `ten`, `trang_thai`) VALUES
(1, 'manhhai@gmail.com', 'La Mạnh', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 0, '0909607426', 'Hải', 1),
(2, 'haokiet@gmail.com', 'Hào', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1, '0764509124', 'Kiệt', 1),
(3, 'tridung@gmail.com', 'Nguyễn Trí', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 1, '0796487878', 'Dũng', 1),
(4, 'dangkhoa@gmail.com', 'Quách Nguyễn Đăng', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2, '0924242486', 'Khoa', 1),
(5, 'thanhloc@gmail.com', 'Huỳnh Thanh', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2, '0326356017', 'Lộc', 1),
(6, 'nguyenvana@gmail.com', 'Nguyễn Văn', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2, '0814840484', 'A', 1),
(7, 'lethib@gmail.com', 'Lê Thị', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 2, '0327540119', 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `ma_thuong_hieu` bigint(20) NOT NULL,
  `ten_thuong_hieu` varchar(255) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`ma_thuong_hieu`, `ten_thuong_hieu`, `trang_thai`) VALUES
(1, 'Logitech', 1),
(2, 'Corsair', 1),
(3, 'E-Dra', 1),
(4, 'Dare-U', 1),
(5, 'Razer', 1),
(6, 'Rapoo', 1),
(7, 'HyperX', 1),
(8, 'Dell', 1),
(9, 'HP', 1),
(10, 'Lenovo', 1),
(11, 'Cooler Master', 1),
(12, 'Asus', 1),
(13, 'Acer', 1),
(14, 'Apple', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`ma_chi_tiet`),
  ADD KEY `FK74fh3eb10ax0crssfa3ijp2ok` (`ma_don_hang`),
  ADD KEY `FK70x15e6tr59k7syelbg56cp0x` (`ma_san_pham`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`ma_chi_tiet`),
  ADD KEY `FKmyxqjjrb17860e1hfcb1vyhr5` (`ma_gio_hang`),
  ADD KEY `FKcu146dbjfcq04o76wev6qru9h` (`ma_san_pham`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`ma_chi_tiet`),
  ADD KEY `FKsoxhjv7oo8wvm66w744lfs0x1` (`ma_phieu_nhap`),
  ADD KEY `FKmhlw6e1xdapce2hqwrcc80umc` (`ma_san_pham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ma_danh_muc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`ma_don_hang`),
  ADD KEY `FK2tpptagha8srmx8difwy38vih` (`ma_tai_khoan`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ma_gio_hang`),
  ADD KEY `FKdoq84k7knvy1q1ak8pbo288km` (`ma_tai_khoan`);

--
-- Indexes for table `hinhanhsanpham`
--
ALTER TABLE `hinhanhsanpham`
  ADD PRIMARY KEY (`ma_hinh_anh`),
  ADD KEY `FK3wrcij9lywwhmc4726c85eh39` (`ma_san_pham`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`ma_phieu_nhap`),
  ADD KEY `FKii8y056860b0jlgi1dv4bjp5e` (`ma_nhan_vien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_san_pham`),
  ADD KEY `FKge0peq25tyx47k7p5bpx8fdd8` (`ma_danh_muc`),
  ADD KEY `FK4hvx2sh1pijdrws887ksbbf2g` (`ma_thuong_hieu`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ma_tai_khoan`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`ma_thuong_hieu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `ma_chi_tiet` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `ma_chi_tiet` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `ma_chi_tiet` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ma_danh_muc` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `ma_don_hang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ma_gio_hang` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hinhanhsanpham`
--
ALTER TABLE `hinhanhsanpham`
  MODIFY `ma_hinh_anh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `ma_phieu_nhap` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_san_pham` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ma_tai_khoan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `ma_thuong_hieu` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK70x15e6tr59k7syelbg56cp0x` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`),
  ADD CONSTRAINT `FK74fh3eb10ax0crssfa3ijp2ok` FOREIGN KEY (`ma_don_hang`) REFERENCES `donhang` (`ma_don_hang`);

--
-- Constraints for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD CONSTRAINT `FKcu146dbjfcq04o76wev6qru9h` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`),
  ADD CONSTRAINT `FKmyxqjjrb17860e1hfcb1vyhr5` FOREIGN KEY (`ma_gio_hang`) REFERENCES `giohang` (`ma_gio_hang`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FKmhlw6e1xdapce2hqwrcc80umc` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`),
  ADD CONSTRAINT `FKsoxhjv7oo8wvm66w744lfs0x1` FOREIGN KEY (`ma_phieu_nhap`) REFERENCES `phieunhap` (`ma_phieu_nhap`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK2tpptagha8srmx8difwy38vih` FOREIGN KEY (`ma_tai_khoan`) REFERENCES `taikhoan` (`ma_tai_khoan`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FKdoq84k7knvy1q1ak8pbo288km` FOREIGN KEY (`ma_tai_khoan`) REFERENCES `taikhoan` (`ma_tai_khoan`);

--
-- Constraints for table `hinhanhsanpham`
--
ALTER TABLE `hinhanhsanpham`
  ADD CONSTRAINT `FK3wrcij9lywwhmc4726c85eh39` FOREIGN KEY (`ma_san_pham`) REFERENCES `sanpham` (`ma_san_pham`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FKii8y056860b0jlgi1dv4bjp5e` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `taikhoan` (`ma_tai_khoan`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK4hvx2sh1pijdrws887ksbbf2g` FOREIGN KEY (`ma_thuong_hieu`) REFERENCES `thuonghieu` (`ma_thuong_hieu`),
  ADD CONSTRAINT `FKge0peq25tyx47k7p5bpx8fdd8` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danhmuc` (`ma_danh_muc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;