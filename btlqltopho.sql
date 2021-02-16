-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 31, 2020 lúc 06:56 PM
-- Phiên bản máy phục vụ: 8.0.19
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chung_minh_thu`
--

CREATE TABLE `chung_minh_thu` (
  `ID` int NOT NULL,
  `idNhanKhau` int DEFAULT NULL,
  `soCMT` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayCap` date DEFAULT NULL,
  `noiCap` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chung_minh_thu`
--

INSERT INTO `chung_minh_thu` (`ID`, `idNhanKhau`, `soCMT`, `ngayCap`, `noiCap`) VALUES
(13, 26, '000000000001', NULL, NULL),
(14, 27, '000000000002', NULL, NULL),
(15, 28, '000000000003', NULL, NULL),
(16, 29, '000000000004', NULL, NULL),
(17, 30, '000000000005', NULL, NULL),
(18, 31, '000000000006', NULL, NULL),
(26, 39, '000000000011', NULL, NULL),
(27, 40, '000000089', NULL, NULL),
(28, 41, '000000879', NULL, NULL),
(29, 42, '000123456', NULL, NULL),
(30, 43, '000123456', NULL, NULL),
(31, 44, '000123654', NULL, NULL),
(32, 45, '000123159', NULL, NULL),
(33, 46, '000123163', NULL, NULL),
(34, 47, '000159357', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinh_chinh`
--

CREATE TABLE `dinh_chinh` (
  `ID` int NOT NULL,
  `idHoKhau` int DEFAULT NULL,
  `thongTinThayDoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiTu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thayDoiThanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayThayDoi` date DEFAULT NULL,
  `nguoiThayDoi` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dong_gop`
--

CREATE TABLE `dong_gop` (
  `id` int NOT NULL,
  `chuHo` varchar(255) DEFAULT NULL,
  `su_kien` varchar(255) DEFAULT NULL,
  `so_tien` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `dong_gop`
--

INSERT INTO `dong_gop` (`id`, `chuHo`, `su_kien`, `so_tien`) VALUES
(1, 'Nguyễn Tiến Dũng', 'Ủng hộ vì người nghèo', '20000'),
(2, 'Nguyễn Tiến Dũng', 'Trợ giúp đồng bào bị ảnh hưởng bão lụt', '70000'),
(3, 'Nguyễn Minh Quân', 'Ủng hộ ngày tết thiếu nhi', '10000'),
(4, 'Nguyễn Minh Quân', 'Trợ giúp đồng bào bị ảnh hưởng bão lụt', ''),
(5, 'Trinh Văn An', 'Ủng hộ ngày tết thiếu nhi', '200000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_dinh`
--

CREATE TABLE `gia_dinh` (
  `ID` int NOT NULL,
  `idNhanKhau` int DEFAULT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quanHeVoiNhanKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienTai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gia_dinh`
--

INSERT INTO `gia_dinh` (`ID`, `idNhanKhau`, `hoTen`, `namSinh`, `gioiTinh`, `quanHeVoiNhanKhau`, `ngheNghiep`, `diaChiHienTai`) VALUES
(2, 27, 'Nguyễn Minh Quân', '1995-05-31', 'Nam', 'Chồng', 'Kỹ sư', 'Số 2 Tạ Quang Bửu, Hai Bà Trưng, Hà Nội'),
(3, 40, 'Trần Thanh Duyên', '1997-12-23', 'Nữ', 'Vợ', 'Nhân viên văn phòng', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội'),
(34, 46, 'Nguyễn Thị Tình', '1965-12-06', 'Nữ', 'Mẹ', 'Công nhân', 'Ga Bắc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ho_khau`
--

CREATE TABLE `ho_khau` (
  `ID` int NOT NULL,
  `maHoKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idChuHo` int DEFAULT NULL,
  `maKhuVuc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayLap` date DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyen` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `nguoiThucHien` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ho_khau`
--

INSERT INTO `ho_khau` (`ID`, `maHoKhau`, `idChuHo`, `maKhuVuc`, `diaChi`, `ngayLap`, `ngayChuyenDi`, `lyDoChuyen`, `nguoiThucHien`) VALUES
(19, 'HK01', 39, '01', '24,Xuân Dục,Yên Thường,Gia Lâm,Hà Nội', '2020-12-31', NULL, NULL, NULL),
(20, 'HK02', 31, '01', 'Lã Côi,Yên Thường,Gia Lâm,Hà Nội', '2020-12-31', NULL, NULL, NULL),
(21, 'HK03', 43, '01', 'Dốc Lã,Yên Thường,Gia Lâm,Hà Nội', '2020-12-31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khai_tu`
--

CREATE TABLE `khai_tu` (
  `ID` int NOT NULL,
  `soGiayKhaiTu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNguoiKhai` int DEFAULT NULL,
  `idNguoiChet` int DEFAULT NULL,
  `ngayKhai` date DEFAULT NULL,
  `ngayChet` date DEFAULT NULL,
  `lyDoChet` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich_hop`
--

CREATE TABLE `lich_hop` (
  `id` int NOT NULL,
  `chuDe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `suKien` varchar(255) DEFAULT NULL,
  `thoiGian` varchar(100) DEFAULT NULL,
  `ngayHop` varchar(255) DEFAULT NULL,
  `diaDiem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `lich_hop`
--

INSERT INTO `lich_hop` (`id`, `chuDe`, `suKien`, `thoiGian`, `ngayHop`, `diaDiem`) VALUES
(4, '', 'ngày thương binh-liệt sỹ 27/07', '', '12-12-2020', ''),
(5, 'họp ủng họ miền trung', 'Trợ giúp đồng bào bị ảnh hưởng bão lụt', '15h30-19h40', '12-1-2021', 'nhà văn hóa thôn Xuân Dục'),
(6, 'Họp ngày liên hoan ngày thương binh liệt sĩ', 'ngày thương binh-liệt sỹ 27/07', '19h-21h', '12-11-2020', 'Xóm 2 XD'),
(9, 'Họp Tặng Quà Các Chị Em Phụ Nữ', 'ngày phụ nữ việt nam', '19h-21h', '21-10-2021', 'Nhà văn hóa Lã Côi'),
(10, 'Gây quỹ ủng hộ lũ lụt đồng bào miền Trung', 'ngày thương binh-liệt sỹ 27/07', '19h-22h', '12-12-2020', 'nhà văn hóa thôn Xuân Dục');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_khau`
--

CREATE TABLE `nhan_khau` (
  `ID` int NOT NULL,
  `maNhanKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoTen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietDanh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `namSinh` date DEFAULT NULL,
  `gioiTinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiSinh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguyenQuan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tonGiao` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quocTich` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `soHoChieu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiThuongTru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiHienNay` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoHocVan` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrinhDoChuyenMon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bietTiengDanToc` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDoNgoaiNgu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tienAn` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDen` date DEFAULT NULL,
  `lyDoChuyenDen` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayChuyenDi` date DEFAULT NULL,
  `lyDoChuyenDi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `diaChiMoi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `idNguoiTao` int DEFAULT NULL,
  `ngayXoa` date DEFAULT NULL,
  `idNguoiXoa` int DEFAULT NULL,
  `lyDoXoa` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghiChu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiKhaiSinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhan_khau`
--

INSERT INTO `nhan_khau` (`ID`, `maNhanKhau`, `hoTen`, `bietDanh`, `namSinh`, `gioiTinh`, `noiSinh`, `nguyenQuan`, `danToc`, `tonGiao`, `quocTich`, `soHoChieu`, `noiThuongTru`, `diaChiHienNay`, `trinhDoHocVan`, `TrinhDoChuyenMon`, `bietTiengDanToc`, `trinhDoNgoaiNgu`, `ngheNghiep`, `noiLamViec`, `tienAn`, `ngayChuyenDen`, `lyDoChuyenDen`, `ngayChuyenDi`, `lyDoChuyenDi`, `diaChiMoi`, `ngayTao`, `idNguoiTao`, `ngayXoa`, `idNguoiXoa`, `lyDoXoa`, `ghiChu`, `noiKhaiSinh`) VALUES
(26, NULL, 'Nguyễn Anh Dũng', '', '1990-12-07', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', 'Số 1 Tạ Quang Bưu, Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình đọ B', 'Giáo Viên', 'Trường THCS Chu Văn An', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(27, NULL, 'Đỗ Kiều Duyên', '', '1997-12-23', 'Nữ', NULL, 'Hải Phòng', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3, đường Đình Đông, phường Đình Đông, quận Ngô Quyền, Hải Phòng', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Nhân viên văn phòng', 'Công ty ABC', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(28, NULL, 'Nguyễn Đức Hưng', '', '1995-05-31', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 2 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Thạc sĩ', 'Không', 'Anh trình độ D', 'Kỹ sư', 'Viettel', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(29, NULL, 'Trần Đức Bo', '', '1964-06-03', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 4 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'Không', 'Không', 'Phó giám đốc', 'Công ty EXE', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(30, NULL, 'Đào Hoàng Mai', '', '1965-12-06', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12', 'Cử Nhân', 'Không', 'Không', 'Nội trợ', 'Tại nhà', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(31, NULL, 'Nguyễn Tiến Hải', '', '1990-09-09', 'Nam', NULL, 'Hải Dương', 'Kinh', 'Thiên chúa giáo', 'Việt Nam', '', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', 'Số 3 Tạ Quang Bửu, quận Hai Bà Trưng, Hà Nội', '12/12 chính quy', 'Kỹ sư', 'không', 'Anh trình độ C', 'Kỹ sư điện', 'Công ty điện EVN', NULL, NULL, NULL, NULL, NULL, NULL, '2019-12-08', 1, NULL, NULL, NULL, NULL, NULL),
(39, NULL, 'Ngô Công Chính', '', '1999-08-23', 'Nam', NULL, 'Xuân Dục,Yên Thường,Gia Lâm,Hà Nội', 'Kinh', 'không', 'Việt Nam', '', 'Xuân Dục,Yên Thường,Gia Lâm,Hà Nội', 'Xuân Dục,Yên Thường,Gia Lâm,Hà Nội', 'Đại học', 'Pro', 'Kinh', 'Toeic 910', 'Chủ tịch Vinatech', 'Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(40, NULL, 'Ngô Công An', 'Jerry', '2020-12-31', 'Nam', NULL, NULL, 'Tày', 'không', 'Việt Nam', NULL, 'Hà Nội', 'Yên Thường,Gia Lâm,Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, 'Hà Nội'),
(41, NULL, 'Nguyễn Công Anh', 'Tom', '1999-12-31', 'Nam', NULL, NULL, 'Kinh', 'Không', 'Việt Nam', NULL, 'Hà Nội', '24 Yên Thường,Gia Lâm,Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, 'Nam Định'),
(42, NULL, 'Nguyễn Đức Dũng', '', '1990-12-03', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Hà Nội', 'Lã Côi,Yên Thường, Gia Lâm,Hà Nội', 'Tiến Sĩ', 'Tiến sĩ', 'Kinh', 'Toeic 910', 'Giảng viên', 'Đại học Bách Khoa', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(43, NULL, 'Nguyễn Đình Tiến', '', '1999-12-30', 'Nam', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Hà Nội', 'Lã Côi,Yên Thường,Gia Lâm,Hà Nội', 'Kĩ sư', 'Tiến sĩ', 'Kinh', 'ielts 9.0', 'Dev', 'Đại học Bách Khoa Hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(44, NULL, 'Đào Thu Thảo', 'Cầy', '1999-12-31', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'không', 'Việt Nam', '', 'Hà Nội', 'Hà Huy Tập, Thị trấn Yên Viên,Gia Lâm,Hà Nội', 'Đại học', 'cử nhân', 'kinh', 'ielts 8.0', 'Giáo viên tiểu học', 'tiểu học yên thường', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(45, NULL, 'Vũ Văn Sáng', 'Sáng tươi', '1999-12-01', 'Nam', NULL, 'Nam Định', 'Tày', 'không', 'Việt Nam', '01', 'Hà Nội', 'K1,Tinh Quang,Gia Lâm,Hà Nội', 'Cử nhân', 'cử nhân', 'kinh', 'Toeic 500', 'Kinh Doanh', 'Đại học kinh tế Quốc Dân', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(46, NULL, 'Nguyễn Văn Đông', '', '1999-07-17', 'Nam', NULL, 'Bắc Giang', 'Kinh', 'không', 'Việt Nam', '', 'Bắc Giang', 'Hà Nội', 'Đại học', 'đại học', 'kinh', 'A', 'sinh viên', 'hà nội', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL),
(47, NULL, 'Nguyễn Thị Hảo', 'Tình', '1999-07-07', 'Nữ', NULL, 'Hà Nội', 'Kinh', 'Không', 'Việt Nam', '', 'Hà Nội', 'Hà Nội', 'Đại học', 'cử nhân', 'kinh', 'Toeic 900', 'Sinh viên', 'hà nội', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-31', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quanly_sinhhoat`
--

CREATE TABLE `quanly_sinhhoat` (
  `id` int NOT NULL,
  `chuHo` varchar(255) DEFAULT NULL,
  `chuDe` varchar(255) DEFAULT NULL,
  `ngayDu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tinhTrang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `quanly_sinhhoat`
--

INSERT INTO `quanly_sinhhoat` (`id`, `chuHo`, `chuDe`, `ngayDu`, `tinhTrang`) VALUES
(20, 'Nguyễn Tiến Dũng', 'Họp ngày phụ nữ VN ', '12-12-2020', 'Đã Tham Gia'),
(21, 'Ngô Công Chính', 'họp ủng họ miền trung', '12-12-2020', 'Đã Tham Gia'),
(22, 'Nguyễn Tiến Hải', 'Họp ngày phụ nữ VN ', '12-11-2020', 'Đã Tham Gia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `su_kien`
--

CREATE TABLE `su_kien` (
  `id` int NOT NULL,
  `suKien` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `su_kien`
--

INSERT INTO `su_kien` (`id`, `suKien`) VALUES
(1, 'ngày thương binh-liệt sỹ 27/07'),
(2, 'ngày phụ nữ việt nam'),
(3, ' ngày tết thiếu nhi'),
(4, 'Trợ giúp đồng bào bị ảnh hưởng bão lụt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_tru`
--

CREATE TABLE `tam_tru` (
  `ID` int NOT NULL,
  `idNhanKhau` int DEFAULT NULL,
  `maGiayTamtru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDienThoaiNguoiDangKy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date NOT NULL,
  `denNgay` date NOT NULL,
  `lyDo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tam_vang`
--

CREATE TABLE `tam_vang` (
  `ID` int NOT NULL,
  `idNhanKhau` int DEFAULT NULL,
  `maGiayTamVang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiTamtru` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `lyDo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tam_vang`
--

INSERT INTO `tam_vang` (`ID`, `idNhanKhau`, `maGiayTamVang`, `noiTamtru`, `tuNgay`, `denNgay`, `lyDo`) VALUES
(6, 40, 'V01', 'Hà Nội', '2020-12-31', '2021-04-28', 'Công tác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanh_vien_cua_ho`
--

CREATE TABLE `thanh_vien_cua_ho` (
  `idNhanKhau` int NOT NULL,
  `idHoKhau` int NOT NULL,
  `quanHeVoiChuHo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thanh_vien_cua_ho`
--

INSERT INTO `thanh_vien_cua_ho` (`idNhanKhau`, `idHoKhau`, `quanHeVoiChuHo`) VALUES
(26, 20, 'Con'),
(27, 19, 'Vợ'),
(30, 20, 'Vợ'),
(40, 19, 'Con'),
(44, 21, 'Vợ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thu_phi`
--

CREATE TABLE `thu_phi` (
  `id` int NOT NULL,
  `ChuHo` varchar(255) DEFAULT NULL,
  `qty` varchar(11) DEFAULT NULL,
  `thuPhi` varchar(11) DEFAULT NULL,
  `soTien` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Đang đổ dữ liệu cho bảng `thu_phi`
--

INSERT INTO `thu_phi` (`id`, `ChuHo`, `qty`, `thuPhi`, `soTien`) VALUES
(7, 'Trần Văn Nam', '6', 'Đã nộp', '36'),
(9, 'Ngô Công Chính', '39', 'Đã nộp', '234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tieu_su`
--

CREATE TABLE `tieu_su` (
  `ID` int NOT NULL,
  `idNhanKhau` int DEFAULT NULL,
  `tuNgay` date DEFAULT NULL,
  `denNgay` date DEFAULT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngheNghiep` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `noiLamViec` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tieu_su`
--

INSERT INTO `tieu_su` (`ID`, `idNhanKhau`, `tuNgay`, `denNgay`, `diaChi`, `ngheNghiep`, `noiLamViec`) VALUES
(2, 27, '2015-09-05', '2015-09-05', 'Số 45, ngõ 56, Nguyễn Khang, Cầu Giấy, Hà Nội', 'Sinh Viên', 'Đại học Thương mại'),
(13, 46, '2016-09-05', '2017-09-05', 'Hà Huy Tập,Yên Viên', 'Học sinh', 'adada');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int NOT NULL,
  `userName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `userName`, `passwd`) VALUES
(1, 'admin', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);
ALTER TABLE `chung_minh_thu` ADD FULLTEXT KEY `soCMT` (`soCMT`);

--
-- Chỉ mục cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idHoKhau` (`idHoKhau`),
  ADD KEY `nguoiThayDoi` (`nguoiThayDoi`);

--
-- Chỉ mục cho bảng `dong_gop`
--
ALTER TABLE `dong_gop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idChuHo` (`idChuHo`);
ALTER TABLE `ho_khau` ADD FULLTEXT KEY `maHoKhau` (`maHoKhau`);

--
-- Chỉ mục cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiKhai` (`idNguoiKhai`),
  ADD KEY `idNguoiChet` (`idNguoiChet`);

--
-- Chỉ mục cho bảng `lich_hop`
--
ALTER TABLE `lich_hop`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNguoiTao` (`idNguoiTao`),
  ADD KEY `idNguoiXoa` (`idNguoiXoa`);
ALTER TABLE `nhan_khau` ADD FULLTEXT KEY `hoTen` (`hoTen`,`bietDanh`);

--
-- Chỉ mục cho bảng `quanly_sinhhoat`
--
ALTER TABLE `quanly_sinhhoat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `su_kien`
--
ALTER TABLE `su_kien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD PRIMARY KEY (`idNhanKhau`,`idHoKhau`),
  ADD KEY `idHoKhau` (`idHoKhau`);

--
-- Chỉ mục cho bảng `thu_phi`
--
ALTER TABLE `thu_phi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idNhanKhau` (`idNhanKhau`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dong_gop`
--
ALTER TABLE `dong_gop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lich_hop`
--
ALTER TABLE `lich_hop`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `quanly_sinhhoat`
--
ALTER TABLE `quanly_sinhhoat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `su_kien`
--
ALTER TABLE `su_kien`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `thu_phi`
--
ALTER TABLE `thu_phi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chung_minh_thu`
--
ALTER TABLE `chung_minh_thu`
  ADD CONSTRAINT `chung_minh_thu_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `dinh_chinh`
--
ALTER TABLE `dinh_chinh`
  ADD CONSTRAINT `dinh_chinh_ibfk_1` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`),
  ADD CONSTRAINT `dinh_chinh_ibfk_2` FOREIGN KEY (`nguoiThayDoi`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `gia_dinh`
--
ALTER TABLE `gia_dinh`
  ADD CONSTRAINT `gia_dinh_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `ho_khau`
--
ALTER TABLE `ho_khau`
  ADD CONSTRAINT `ho_khau_ibfk_1` FOREIGN KEY (`idChuHo`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `khai_tu`
--
ALTER TABLE `khai_tu`
  ADD CONSTRAINT `khai_tu_ibfk_1` FOREIGN KEY (`idNguoiKhai`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `khai_tu_ibfk_2` FOREIGN KEY (`idNguoiChet`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `nhan_khau`
--
ALTER TABLE `nhan_khau`
  ADD CONSTRAINT `nhan_khau_ibfk_1` FOREIGN KEY (`idNguoiTao`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `nhan_khau_ibfk_2` FOREIGN KEY (`idNguoiXoa`) REFERENCES `users` (`ID`);

--
-- Các ràng buộc cho bảng `tam_tru`
--
ALTER TABLE `tam_tru`
  ADD CONSTRAINT `tam_tru_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `tam_vang`
--
ALTER TABLE `tam_vang`
  ADD CONSTRAINT `tam_vang_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);

--
-- Các ràng buộc cho bảng `thanh_vien_cua_ho`
--
ALTER TABLE `thanh_vien_cua_ho`
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`),
  ADD CONSTRAINT `thanh_vien_cua_ho_ibfk_2` FOREIGN KEY (`idHoKhau`) REFERENCES `ho_khau` (`ID`);

--
-- Các ràng buộc cho bảng `tieu_su`
--
ALTER TABLE `tieu_su`
  ADD CONSTRAINT `tieu_su_ibfk_1` FOREIGN KEY (`idNhanKhau`) REFERENCES `nhan_khau` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
