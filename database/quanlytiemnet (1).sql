-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 01, 2023 lúc 06:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlytiemnet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `tendv` varchar(50) NOT NULL,
  `loaidv` varchar(50) NOT NULL,
  `giadv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `tendv`, `loaidv`, `giadv`) VALUES
(1, 'Coca Cola', 'Đồ uống', 10000),
(2, 'Nước cam', 'Đồ uống', 15000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `idgd` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `idmay` int(11) NOT NULL,
  `idgiatien` int(11) NOT NULL,
  `thoigianbatdau` datetime NOT NULL,
  `thoigianketthuc` datetime NOT NULL,
  `tien` int(11) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `ghichu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giaodich`
--

INSERT INTO `giaodich` (`idgd`, `idkhachhang`, `idmay`, `idgiatien`, `thoigianbatdau`, `thoigianketthuc`, `tien`, `giamgia`, `ghichu`) VALUES
(12, 1, 1, 3, '2023-05-01 23:04:58', '2023-05-01 23:05:18', 41000, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giatien`
--

CREATE TABLE `giatien` (
  `idgiatien` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giatien`
--

INSERT INTO `giatien` (`idgiatien`, `gia`) VALUES
(1, 10000),
(2, 0),
(3, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinh`
--

CREATE TABLE `maytinh` (
  `id` int(11) NOT NULL,
  `tenmay` varchar(50) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maytinh`
--

INSERT INTO `maytinh` (`id`, `tenmay`, `tinhtrang`) VALUES
(1, 'Máy 1', 'Bình thường'),
(2, 'Máy 2', 'Bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sudungdichvu`
--

CREATE TABLE `sudungdichvu` (
  `idsd` int(11) NOT NULL,
  `idkhachhang` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sudungdichvu`
--

INSERT INTO `sudungdichvu` (`idsd`, `idkhachhang`, `id`, `gia`) VALUES
(3, 1, 2, 15000),
(4, 1, 1, 10000),
(5, 1, 2, 15000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `loaitaikhoan` varchar(50) NOT NULL,
  `ghichu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`taikhoan`, `matkhau`, `loaitaikhoan`, `ghichu`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Bình thường', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinkhachhang`
--

CREATE TABLE `thongtinkhachhang` (
  `idkh` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `thoigiandangky` date NOT NULL,
  `loaikhachhang` varchar(50) NOT NULL,
  `gioitinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinkhachhang`
--

INSERT INTO `thongtinkhachhang` (`idkh`, `hoten`, `taikhoan`, `matkhau`, `thoigiandangky`, `loaikhachhang`, `gioitinh`) VALUES
(1, 'Hoàng Sang', 'sang', 'sang', '2023-04-30', 'Bình thường', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`idgd`);

--
-- Chỉ mục cho bảng `giatien`
--
ALTER TABLE `giatien`
  ADD PRIMARY KEY (`idgiatien`);

--
-- Chỉ mục cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  ADD PRIMARY KEY (`idsd`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Chỉ mục cho bảng `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  ADD PRIMARY KEY (`idkh`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `idgd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `giatien`
--
ALTER TABLE `giatien`
  MODIFY `idgiatien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sudungdichvu`
--
ALTER TABLE `sudungdichvu`
  MODIFY `idsd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  MODIFY `idkh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
