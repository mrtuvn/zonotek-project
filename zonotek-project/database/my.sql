-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2012 at 09:55 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qlsv`
--
CREATE DATABASE `qlsv` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `qlsv`;

-- --------------------------------------------------------

--
-- Table structure for table `t_bomon`
--

CREATE TABLE IF NOT EXISTS `t_bomon` (
  `bomonid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `bomonten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `khoaid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`bomonid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_bomon`
--

INSERT INTO `t_bomon` (`bomonid`, `bomonten`, `khoaid`) VALUES
('1', 'Bộ môn khoa học máy tính & công nghệ phần mềm', '106'),
('2', 'Bộ môn kỹ thuật máy tính & mạng', '106'),
('3', 'Bộ môn toán', '106');

-- --------------------------------------------------------

--
-- Table structure for table `t_giaovien`
--

CREATE TABLE IF NOT EXISTS `t_giaovien` (
  `giaovienid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `giaovienten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bomonid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `trinhdo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`giaovienid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_giaovien`
--

INSERT INTO `t_giaovien` (`giaovienid`, `giaovienten`, `bomonid`, `trinhdo`) VALUES
('10608232', 'Phạm Thanh Bình', '2', 'Tốt nghiệp kỹ sư ĐH Bách Khoa'),
('1060823232', 'Nguyễn Văn Lệ', '1', 'Tốt nghiệp đại học'),
('106082329', 'Phạm xuân đồng', '3', 'Tốt nghiệp đại học tổng hợp hà nội 1981'),
('10608234', 'Trương Xuân Nam', '1', 'Tốt nghiệp thạc sỹ CNTT DHQGHN 2004');

-- --------------------------------------------------------

--
-- Table structure for table `t_hocphan`
--

CREATE TABLE IF NOT EXISTS `t_hocphan` (
  `hocphanid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `hocphanten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sotinchi` int(10) NOT NULL,
  `bomonid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ki` int(2) NOT NULL,
  PRIMARY KEY (`hocphanid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_hocphan`
--

INSERT INTO `t_hocphan` (`hocphanid`, `hocphanten`, `sotinchi`, `bomonid`, `ki`) VALUES
('CSE370 ', 'Kiến trúc máy tính', 4, '2', 2),
('CSE381 ', 'Ngôn ngữ lập trình nâng cao', 4, '1', 2),
('CSE451 ', 'Phân tích và xử lý tín hiệu số', 4, '2', 2),
('CSE481 ', 'Công nghệ phần mềm', 4, '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_khoa`
--

CREATE TABLE IF NOT EXISTS `t_khoa` (
  `khoaid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `khoaten` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`khoaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_khoa`
--

INSERT INTO `t_khoa` (`khoaid`, `khoaten`) VALUES
('101', 'Công trình'),
('106', 'Công nghệ thông tin'),
('112', 'Kĩ thuật điện'),
('402', 'Quản trị kinh doanh'),
('403', 'Kế toán');

-- --------------------------------------------------------

--
-- Table structure for table `t_lophocphan`
--

CREATE TABLE IF NOT EXISTS `t_lophocphan` (
  `lophocphanid` bigint(10) NOT NULL AUTO_INCREMENT,
  `hocphanid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `lophocphanten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siso` int(200) NOT NULL,
  `hocki` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `giaovienid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `thoigianbatdau` datetime NOT NULL,
  `thoigianketthuc` datetime NOT NULL,
  `diadiem` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`lophocphanid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `t_lophocphan`
--

INSERT INTO `t_lophocphan` (`lophocphanid`, `hocphanid`, `lophocphanten`, `siso`, `hocki`, `giaovienid`, `thoigianbatdau`, `thoigianketthuc`, `diadiem`) VALUES
(1, 'CSE370 ', 'Kiến trúc máy tính N01', 127, '2_2011_2012', '10608232', '2030-07-12 00:00:00', '0000-00-00 00:00:00', '327A2'),
(2, 'CSE370 ', 'Kiến trúc máy tính N01(TH1)', 70, '2_2011_2012', '10608232', '0002-09-12 00:00:00', '0000-00-00 00:00:00', '227A2'),
(3, 'CSE370', 'Kiến trúc máy tính N01(TH2)', 70, '2_2011_2012', '10608232', '0002-09-12 00:00:00', '0000-00-00 00:00:00', '227A2');

-- --------------------------------------------------------

--
-- Table structure for table `t_lopquanly`
--

CREATE TABLE IF NOT EXISTS `t_lopquanly` (
  `lopquanlyid` varchar(7) COLLATE utf8_unicode_ci NOT NULL,
  `lopquanlyten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `khoaid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`lopquanlyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_lopquanly`
--

INSERT INTO `t_lopquanly` (`lopquanlyid`, `lopquanlyten`, `khoaid`) VALUES
('51KTD', 'Kĩ thuật điện', '112'),
('51QT', 'Quản trị kinh doanh', '402'),
('51TH1', 'CNTT1', '106'),
('51TH2', 'CNTT2', '106');

-- --------------------------------------------------------

--
-- Table structure for table `t_phongthi`
--

CREATE TABLE IF NOT EXISTS `t_phongthi` (
  `phongthiid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `hocphanid` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `thoigian` datetime NOT NULL,
  `diadiem` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `thilai` tinyint(4) NOT NULL,
  PRIMARY KEY (`phongthiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_sinhvien`
--

CREATE TABLE IF NOT EXISTS `t_sinhvien` (
  `masv` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` tinyint(2) NOT NULL,
  `diachi` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `lopquanlyid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `hocphanid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lophocphanid` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diemqt` double NOT NULL,
  `diemthilan1` double NOT NULL,
  `diemthilan2` double NOT NULL,
  `diemttk` double NOT NULL,
  `sbd` int(4) NOT NULL,
  `maphongthi` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`masv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `t_sinhvien`
--

INSERT INTO `t_sinhvien` (`masv`, `hoten`, `ngaysinh`, `gioitinh`, `diachi`, `lopquanlyid`, `hocphanid`, `lophocphanid`, `diemqt`, `diemthilan1`, `diemthilan2`, `diemttk`, `sbd`, `maphongthi`) VALUES
('09510600518', 'Nguyễn Trọng Hiệp', '31/5/1991', 1, 'Hà Đông Hà Nội', '51TH1', 'CSE370 CSE381 CSE451 CSE481', '1 2', 0, 0, 0, 0, 0, ''),
('09510600599', 'Phan Đức Hoàng', '20/10/1988', 1, 'Hà Nội', '51TH1', 'CSE370 CSE381 CSE451 CSE481', '1 2', 0, 0, 0, 0, 0, ''),
('09510601737', 'Nguyễn Anh Tú', '21/9/1991', 1, '101 Mai Động Quận Hoàng Mai Hà Nội', '51TH1', 'CSE370 CSE381 CSE451 CSE481', '1 2', 0, 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
