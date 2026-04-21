-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 21, 2026 lúc 08:03 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baya`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `url`, `position`, `display`) VALUES
(13, 'Đèn ', '', 3, 0),
(12, 'Đồ trang trí', '', 2, 0),
(10, 'Ghế', '', 1, 0),
(15, 'Giường', '', 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungtu`
--

CREATE TABLE `chungtu` (
  `sochungtu` varchar(20) NOT NULL,
  `ngaychungtu` date DEFAULT NULL,
  `ngayhachtoan` date DEFAULT NULL,
  `diengiaict` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chungtu`
--

INSERT INTO `chungtu` (`sochungtu`, `ngaychungtu`, `ngayhachtoan`, `diengiaict`) VALUES
('174084', '2024-12-16', '2024-12-16', 'Hóa đơn bán hàng 174084'),
('248280', '2024-12-17', '2024-12-17', 'Hóa đơn bán hàng 248280'),
('283889', '2024-12-16', '2024-12-16', 'Hóa đơn bán hàng 283889'),
('403582', '2024-12-14', '2024-12-14', 'Hóa đơn bán hàng 403582'),
('428062', '2024-12-14', '2024-12-14', 'Hóa đơn bán hàng 428062'),
('465285', '2024-12-17', '2024-12-17', 'Hóa đơn bán hàng 465285'),
('595306', '2024-11-28', '2024-11-28', 'Hóa đơn bán hàng 595306'),
('671965', '2024-11-28', '2024-11-28', 'Hóa đơn bán hàng 671965'),
('695600', '2024-12-14', '2024-12-14', 'Hóa đơn bán hàng 695600'),
('722596', '2024-12-07', '2024-12-07', 'Hóa đơn bán hàng 722596'),
('746866', '2024-11-28', '2024-11-28', 'Hóa đơn bán hàng 746866'),
('938393', '2024-12-17', '2024-12-17', 'Hóa đơn bán hàng 938393');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_dinhkhoan`
--

CREATE TABLE `ct_dinhkhoan` (
  `sochungtu` varchar(10) NOT NULL,
  `iddk` int(11) NOT NULL,
  `sotienhachtoan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ct_dinhkhoan`
--

INSERT INTO `ct_dinhkhoan` (`sochungtu`, `iddk`, `sotienhachtoan`) VALUES
('283889', 2, 800000),
('283889', 3, 1200000),
('283889', 4, 120000),
('283889', 5, 499700),
('403582', 2, 3000000),
('403582', 3, 5000000),
('403582', 4, 500000),
('403582', 5, 50000),
('428062', 2, 2500000),
('428062', 3, 3300000),
('428062', 4, 330000),
('428062', 5, 33000),
('465285', 2, 5000000),
('465285', 3, 6200000),
('465285', 4, 620000),
('465285', 5, 62000),
('595306', 2, 700000),
('595306', 4, 1423000),
('595306', 5, 142300),
('671965', 2, 600000),
('671965', 3, 1200000),
('671965', 4, 120000),
('671965', 5, 12000),
('695600', 2, 750000),
('695600', 3, 1500000),
('695600', 4, 150000),
('695600', 5, 15000),
('722596', 2, 5000000),
('722596', 3, 9900000),
('722596', 4, 990000),
('722596', 5, 99000),
('746866', 2, 5000000),
('746866', 3, 5000000),
('746866', 4, 500000),
('746866', 5, 50000),
('938393', 3, 5000000),
('938393', 4, 500000),
('938393', 5, 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dinhkhoan`
--

CREATE TABLE `dinhkhoan` (
  `iddk` int(20) NOT NULL,
  `diengiai` varchar(50) DEFAULT NULL,
  `tkno` varchar(20) DEFAULT NULL,
  `tkco` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dinhkhoan`
--

INSERT INTO `dinhkhoan` (`iddk`, `diengiai`, `tkno`, `tkco`) VALUES
(1, 'Xuất kho bán hàng', '632', '1551'),
(2, 'Xuất kho bán hàng', '632', '156'),
(3, 'Ghi nhận doanh thu chưa trả tiền', '131', '5111'),
(4, 'Thuế GTGT đầu ra ', '131', '33311'),
(5, 'Chiết khấu thương mại', '521', '131'),
(6, 'Giảm trừ thuế cho chiết khấu thương mại', '33311', '131'),
(7, 'Ghi giảm doanh thu (Giá bán)', '5212', '131'),
(8, 'Ghi tăng doanh thu (Chiết khấu)', '131', '5211'),
(9, 'Ghi giảm doanh thu (Thuế GTGT)', '33311', '131'),
(10, 'Nhập kho hàng bán trả lại', '1561', '632'),
(11, 'Thu tiền mặt của khách hàng', '1111', '131'),
(12, 'Thu tiền chuyển khoản của khách hàng', '1121', '131'),
(13, 'BHTN nhân viên đóng', '3341', '3386'),
(14, 'KPCĐ công ty đóng', '6421', '3382'),
(15, 'KPCĐ công ty đóng', '6411', '3382'),
(16, 'Thuế Thu nhập cá nhân phải nộp', '3341', '3335'),
(17, 'Chi tiền mặt tạm ứng cho nhân viên', '141', '1111'),
(18, 'Chuyển khoản tạm ứng cho nhân viên', '141', '1121'),
(19, 'Chi tiền mặt trả lương nhân viên', '3341', '1111'),
(20, 'Chuyển khoản trả lương nhân viên', '3341', '1121'),
(21, 'Bảo hiểm thất nghiệp', '3386', '1111'),
(22, 'Bảo hiểm xã hội', '3383', '1111'),
(23, 'Bảo hiểm y tế', '3384', '1111'),
(24, 'Kinh phí công đoàn', '3382', '1111'),
(25, 'Bảo hiểm thất nghiệp', '3386', '1121'),
(26, 'Bảo hiểm xã hội', '3383', '1121'),
(27, 'Bảo hiểm y tế', '3384', '1121'),
(28, 'Kinh phí công đoàn', '3382', '1121'),
(29, 'Thuế thu nhập cá nhân', '3335', '1111'),
(30, 'Thuế thu nhập cá nhân', '3335', '1121');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hethongtaikhoan`
--

CREATE TABLE `hethongtaikhoan` (
  `stk` varchar(20) NOT NULL,
  `tentk` varchar(200) DEFAULT NULL,
  `stkth` varchar(20) DEFAULT NULL,
  `tinhchat` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hethongtaikhoan`
--

INSERT INTO `hethongtaikhoan` (`stk`, `tentk`, `stkth`, `tinhchat`) VALUES
('111', 'Tiền mặt', NULL, 'Dư nợ'),
('1111', 'Tiền Việt Nam', '111', 'Dư nợ'),
('1112', 'Ngoại tệ', '111', 'Dư nợ'),
('112', 'Tiền gửi Ngân hàng', NULL, 'Dư nợ'),
('1121', 'Tiền Việt Nam', '112', 'Dư nợ'),
('1122', 'Ngoại tệ', '112', 'Dư nợ'),
('113', 'Tiền đang chuyển', NULL, 'Dư nợ'),
('1131', 'Tiền Việt Nam', '113', 'Dư nợ'),
('1132', 'Ngoại tệ', '113', 'Dư nợ'),
('121', 'Chứng khoán kinh doanh', NULL, 'Dư nợ'),
('1211', 'Cổ phiếu', '112', 'Dư nợ'),
('1212', 'Trái phiếu', '121', 'Dư nợ'),
('1218', 'Chứng khoán và công cụ tài chính khác', '121', 'Dư nợ'),
('128', 'Đầu tư nắm giữ đến ngày đáo hạn', NULL, 'Dư nợ'),
('131', 'Phải thu của khách hàng', NULL, 'Lưỡng tính'),
('133', 'Thuế GTGT được khấu trừ', NULL, 'Dư nợ'),
('136', 'Phải thu nội bộ', NULL, 'Dư nợ'),
('138', 'Phải thu khác', NULL, 'Lưỡng tính'),
('141', 'Tạm ứng', NULL, 'Dư nợ'),
('155', 'Thành phẩm', NULL, 'Dư nợ'),
('1551', 'Thành phẩm nhập kho', '155', 'Dư nợ'),
('156', 'Hàng hóa', '', 'Dư nợ'),
('1561', 'Giá mua hàng hóa', '156', 'Dư nợ'),
('333', 'Thuế và các khoản phải nộp Nhà nước', NULL, 'Lưỡng tính'),
('3331', 'Thuế giá trị gia tăng phải nộp', '333', 'Lưỡng tính'),
('33311', 'Thuế GTGT đầu ra', '3331', 'Dư nợ'),
('3332', 'Thuế tiêu thụ đặc biệt', '333', 'Lưỡng tính'),
('3333', 'Thuế xuất, nhập khẩu', '333', 'Lưỡng tính'),
('3334', 'Thuế thu nhập doanh nghiệp', '333', 'Lưỡng tính'),
('3335', 'Thuế thu nhập cá nhân', '333', 'Lưỡng tính'),
('3336', 'Thuế tài nguyên', '333', 'Lưỡng tính'),
('3337', 'Thuế nhà đất, tiền thuê đất', '333', 'Lưỡng tính'),
('3338', 'Thuế bảo vệ môi trường và các loại thuế khác', '333', 'Lưỡng tính'),
('3339', 'Phí, lệ phí và các khoản phải nộp khác', '333', 'Lưỡng tính'),
('334', 'Phải trả người lao động', NULL, 'Dư có'),
('3341', 'Phải trả công nhân viên', '334', 'Dư có'),
('3348', 'Phải trả người lao động khác', '334', 'Dư có'),
('338', 'Phải trả, phải nộp khác', NULL, 'Dư có'),
('3381', 'Tài sản thừa chờ giải quyết', '338', 'Lưỡng tính'),
('3382', 'Kinh phí công đoàn', '338', 'Lưỡng tính'),
('3383', 'Bảo hiểm xã hội', '338', 'Lưỡng tính'),
('3384', 'Bảo hiểm y tế', '338', 'Lưỡng tính'),
('3385', 'Phải trả về cổ phần hóa', '338', 'Lưỡng tính'),
('3386', 'Bảo hiểm thất nghiệp', '338', 'Lưỡng tính'),
('3387', 'Doanh thu chưa thực hiện', '338', 'Lưỡng tính'),
('3388', 'Phải trả, phải nộp khác', '338', 'Lưỡng tính'),
('5111', 'Doanh thu bán hàng hóa', '', 'Dư có'),
('5211', 'Chiết khấu thương mại', '', 'Dư có'),
('5212', 'Hàng bán bị trả lại', '', 'Dư có'),
('632', 'Giá vốn hàng bán', NULL, 'Dư có'),
('641', 'Chi phí bán hàng', NULL, 'Lưỡng tính'),
('6411', 'Chi phí nhân viên', '641', 'Lưỡng tính'),
('6412', 'Chi phí vật liệu, bao bì', '641', 'Lưỡng tính'),
('6413', 'Chi phí dụng cụ, đồ dùng', '641', 'Lưỡng tính'),
('6414', 'Chi phí khấu hao TSCĐ', '641', 'Lưỡng tính'),
('6415', 'Chi phí bảo hành', '641', 'Lưỡng tính'),
('6417', 'Chi phí dịch vụ mua ngoài', '641', 'Lưỡng tính'),
('6418', 'Chi phí bằng tiền khác', '641', 'Lưỡng tính'),
('642', 'Chi phí quản lý doanh nghiệp', NULL, 'Lưỡng tính'),
('6421', 'Chi phí nhân viên quản lý', '642', 'Lưỡng tính'),
('6422', 'Chi phí vật liệu quản lý', '642', 'Lưỡng tính'),
('6423', 'Chi phí đồ dùng văn phòng', '642', 'Lưỡng tính'),
('6424', 'Chi phí khấu hao TSCĐ', '642', 'Lưỡng tính'),
('6425', 'Thuế, phí và lệ phí', '642', 'Lưỡng tính'),
('6426', 'Chi phí dự phòng', '642', 'Lưỡng tính'),
('6427', 'Chi phí dịch vụ mua ngoài', '642', 'Lưỡng tính'),
('6428', 'Chi phí bằng tiền khác', '642', 'Lưỡng tính');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `mapn` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,0) NOT NULL,
  `tongtien` decimal(10,0) NOT NULL,
  `ngaynhap` datetime NOT NULL DEFAULT current_timestamp(),
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `mapx` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` decimal(10,0) NOT NULL,
  `tongtien` decimal(10,0) NOT NULL,
  `note` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` decimal(15,2) NOT NULL,
  `selling_price` decimal(15,2) NOT NULL,
  `image` varchar(50) NOT NULL,
  `introduce` text NOT NULL,
  `made_in` varchar(50) NOT NULL,
  `post_on` datetime NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `product_name`, `product_price`, `selling_price`, `image`, `introduce`, `made_in`, `post_on`, `soluong`) VALUES
(39, 10, 'Ghế Lớp Học', 500000.00, 500000.00, 'our-team.jpeg', '<p>Cấu tạo: Khung th&eacute;p chắc chắn, mặt ngồi v&agrave; tựa lưng bằng nhựa hoặc gỗ.</p>\r\n\r\n<p>K&iacute;ch thước: Thiết kế gọn g&agrave;ng, ph&ugrave; hợp cho kh&ocirc;ng gian lớp học, dễ d&agrave;ng di chuyển.</p>\r\n\r\n<p>Chất liệu: Nhựa cao cấp, gỗ c&ocirc;ng nghiệp hoặc th&eacute;p sơn tĩnh điện.</p>\r\n', 'Việt Nam', '2024-12-04 14:36:30', 0),
(33, 12, 'Thùng rác cute', 500000.00, 500000.00, 'news_19.jpeg', '<p>Cấu tạo: Chất liệu nhựa hoặc kim loại bền bỉ, thiết kế dễ thương với c&aacute;c h&igrave;nh dạng vui nhộn.</p>\r\n\r\n<p>K&iacute;ch thước: 25 x 30 cm, 30 x 35 cm, hoặc t&ugrave;y chỉnh.</p>\r\n\r\n<p>M&agrave;u sắc: Đa dạng, từ pastel nhẹ nh&agrave;ng đến c&aacute;c m&agrave;u sắc nổi bật</p>\r\n', 'Việt Nam', '2024-12-04 14:20:27', 0),
(34, 12, 'Đồng hồ Tròn', 4000000.00, 3800000.00, 'saleoff_03.png', '<p>Cấu tạo: Chất liệu gỗ, kim loại hoặc nhựa bền.</p>\r\n\r\n<p>K&iacute;ch thước: 30 cm, 40 cm, t&ugrave;y chỉnh.</p>\r\n\r\n<p>Thiết kế: Mặt đồng hồ tr&ograve;n, đơn giản, dễ đọc.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:21:21', 0),
(35, 12, 'Cây Cảnh Treo', 1200000.00, 1200000.00, 'product_20.png', '<p>Cấu tạo: Chậu treo bằng nhựa hoặc gốm, d&acirc;y treo chắc chắn.</p>\r\n\r\n<p>K&iacute;ch thước: Đường k&iacute;nh chậu từ 15 cm, 20 cm, t&ugrave;y chỉnh.</p>\r\n\r\n<p>Loại c&acirc;y: C&acirc;y giả hoặc c&acirc;y thật dễ chăm s&oacute;c, ph&ugrave; hợp với kh&ocirc;ng gian trong nh&agrave;, ban c&ocirc;ng.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:27:45', 0),
(36, 10, 'Ghế Làm Việc', 2500000.00, 2500000.00, 'news_04.jpeg', '<p>Cấu tạo: Khung kim loại hoặc nhựa bền, đệm ngồi &ecirc;m &aacute;i, lưng tựa thoải m&aacute;i.</p>\r\n\r\n<p>K&iacute;ch thước: Chiều cao c&oacute; thể điều chỉnh, th&iacute;ch hợp cho mọi kh&ocirc;ng gian l&agrave;m việc.</p>\r\n\r\n<p>Chất liệu: Vải, da, hoặc lưới, dễ d&agrave;ng vệ sinh v&agrave; mang lại cảm gi&aacute;c thoải m&aacute;i.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:28:39', 0),
(37, 10, 'Ghế Phòng khách', 3000000.00, 2800000.00, 'news_07.jpeg', '<p>Cấu tạo: Khung gỗ hoặc kim loại chắc chắn, đệm m&uacute;t &ecirc;m &aacute;i.</p>\r\n\r\n<p>K&iacute;ch thước: Ph&ugrave; hợp với kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch, c&oacute; thể điều chỉnh độ ngả lưng.</p>\r\n\r\n<p>Chất liệu: Vải, da, hoặc nỉ cao cấp, dễ vệ sinh v&agrave; bền bỉ</p>\r\n', 'Hàn Quốc', '2024-12-04 14:29:39', 0),
(38, 10, 'Ghế Làm Việc Xám', 3000000.00, 2900000.00, 'product_04.png', '<p>Cấu tạo: Khung kim loại hoặc gỗ, đệm ngồi v&agrave; lưng tựa &ecirc;m &aacute;i.</p>\r\n\r\n<p>M&agrave;u sắc: X&aacute;m thanh lịch, dễ kết hợp với mọi kh&ocirc;ng gian l&agrave;m việc.</p>\r\n\r\n<p>Chất liệu: Vải hoặc da cao cấp, dễ vệ sinh v&agrave; bền bỉ.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:35:36', 0),
(32, 12, 'Tranh Để Bàn', 1500000.00, 1500000.00, 'instagram_08.jpeg', '<p>Cấu tạo: Chất liệu canvas, gỗ hoặc acrylic, khung chắc chắn.</p>\r\n\r\n<p>K&iacute;ch thước: 20 x 30 cm, 30 x 40 cm, hoặc t&ugrave;y chỉnh.</p>\r\n\r\n<p>Thiết kế: Phong cảnh, trừu tượng, hoặc chủ đề t&ugrave;y chọn, ph&ugrave; hợp với kh&ocirc;ng gian b&agrave;n l&agrave;m việc, ph&ograve;ng kh&aacute;ch.</p>\r\n', 'Việt Nam', '2024-12-04 14:19:43', 0),
(31, 12, 'Đồng Hồ Đẹp', 5000000.00, 4500000.00, 'news_22.jpeg', '<p>Cấu tạo: Chất liệu gỗ, kim loại, hoặc k&iacute;nh cao cấp với thiết kế tinh tế.</p>\r\n\r\n<p>Mặt đồng hồ: Đơn giản, dễ đọc, phong c&aacute;ch hiện đại hoặc cổ điển.</p>\r\n\r\n<p>K&iacute;ch thước: 30 x 30 cm, 40 x 40 cm, hoặc t&ugrave;y chỉnh</p>\r\n', 'Việt Nam', '2024-12-04 14:19:02', 0),
(30, 12, 'Đồng Hồ Treo Tường Lịch Lãm', 8000000.00, 8000000.00, 'news_11.jpeg', '<p>Cấu tạo: Chất liệu gỗ, kim loại hoặc acrylic cao cấp, thiết kế tinh tế.</p>\r\n\r\n<p>Mặt đồng hồ: Vạch số r&otilde; r&agrave;ng, dễ đọc, với kiểu d&aacute;ng thanh lịch.</p>\r\n\r\n<p>K&iacute;ch thước: 40 x 30 cm, 50 x 40 cm, hoặc t&ugrave;y chỉnh</p>\r\n', 'Hàn Quốc', '2024-12-04 14:18:21', 0),
(29, 13, 'Đèn Treo Ngược', 3000000.00, 3000000.00, 'slide_10.png', '<p>Đ&egrave;n Treo Ngược</p>\r\n\r\n<p>Cấu tạo: Khung kim loại hoặc hợp kim, chụp đ&egrave;n bằng thủy tinh hoặc mica.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: LED chiếu s&aacute;ng ngược, tạo hiệu ứng &aacute;nh s&aacute;ng độc đ&aacute;o v&agrave; sang trọng.</p>\r\n\r\n<p>K&iacute;ch thước: 50 x 30 cm, 70 x 40 cm, t&ugrave;y chỉnh theo kh&ocirc;ng gian.</p>\r\n\r\n<p>Đ&egrave;n treo ngược mang lại phong c&aacute;ch hiện đại, tạo điểm nhấn nổi bật cho kh&ocirc;ng gian sống hoặc thương mại.</p>\r\n', 'Việt Nam', '2024-12-04 14:15:49', 0),
(28, 13, 'Đèn Treo Thời Trang', 4000000.00, 3500000.00, 'product_36.png', '<p>Đ&egrave;n Treo Thời Trang</p>\r\n\r\n<p>Cấu tạo: Kim loại hoặc gỗ kết hợp với chụp đ&egrave;n vải, thủy tinh hoặc acrylic.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: LED hiện đại, tiết kiệm điện, đa dạng t&ocirc;ng m&agrave;u (v&agrave;ng, trắng, RGB).</p>\r\n\r\n<p>K&iacute;ch thước: 60 x 30 cm, 80 x 40 cm, hoặc theo thiết kế y&ecirc;u cầu.</p>\r\n', 'Việt Nam', '2024-12-04 14:15:05', 0),
(27, 13, 'Đèn Trang Trí', 4500000.00, 4300000.00, 'product_26.png', '<p>Đ&egrave;n Trang Tr&iacute;</p>\r\n\r\n<p>Cấu tạo: Khung kim loại, gỗ hoặc nhựa, kết hợp chụp đ&egrave;n cao cấp.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: LED tiết kiệm năng lượng, đa dạng m&agrave;u sắc.</p>\r\n\r\n<p>K&iacute;ch thước: 50 x 30 cm, 60 x 40 cm, t&ugrave;y chỉnh theo y&ecirc;u cầu.</p>\r\n\r\n<p>Đ&egrave;n trang tr&iacute; mang lại vẻ đẹp hiện đại, tinh tế, ph&ugrave; hợp cho kh&ocirc;ng gian nh&agrave; ở, qu&aacute;n c&agrave; ph&ecirc;, v&agrave; sự kiện.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:14:07', 0),
(26, 13, 'Đèn ngủ đen', 3500000.00, 3400000.00, 'product_24.png', '<p>Đ&egrave;n ngủ m&agrave;u đen l&agrave; lựa chọn l&yacute; tưởng cho những ai y&ecirc;u th&iacute;ch phong c&aacute;ch hiện đại v&agrave; sang trọng</p>\r\n\r\n<p>Cấu tạo:L&agrave;m từ vải hoặc nhựa PVC m&agrave;u đen cao cấp, chống b&aacute;m bụi, dễ vệ sinh.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: Sử dụng b&oacute;ng LED &aacute;nh s&aacute;ng v&agrave;ng dịu nhẹ, bảo vệ mắt, tạo kh&ocirc;ng gian ấm c&uacute;ng.</p>\r\n\r\n<p>K&iacute;ch thước :30 x 20 cm, 40 x 25 cm hoặc t&ugrave;y chọn theo thiết kế</p>\r\n', 'Hàn Quốc', '2024-12-04 14:17:17', 0),
(25, 13, 'Đèn ngủ', 3400000.00, 3400000.00, 'product_09.png', '<p>Đ&egrave;n Ngủ : mang&nbsp;lại sự thoải m&aacute;i v&agrave; thư gi&atilde;n cho kh&ocirc;ng gian ph&ograve;ng ngủ của bạn.</p>\r\n\r\n<p>Cấu tạo: Chụp đ&egrave;n bằng vải hoặc nhựa cao cấp, th&acirc;n đ&egrave;n l&agrave;m từ gỗ, kim loại, hoặc nhựa bền bỉ.</p>\r\n\r\n<p>&Aacute;nh s&aacute;ng: Dịu nhẹ, c&oacute; thể điều chỉnh độ s&aacute;ng, tạo cảm gi&aacute;c ấm c&uacute;ng.</p>\r\n\r\n<p>K&iacute;ch thước: 30 x 20 cm, 40 x 25 cm, hoặc theo thiết kế.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:16:44', 0),
(24, 13, 'Đèn Hộp', 5000000.00, 5000000.00, 'product_05.png', '<p>Hộp đ&egrave;n :mang đến vẻ đẹp độc v&agrave; hiện đại cho mọi kh&ocirc;ng gian.&nbsp;</p>\r\n\r\n<p>Cấu h&igrave;nh: khung nh&ocirc;m chắc chắn, mặt mica hoặc k&iacute;nh, kết hợp đ&egrave;n LED chiếu s&aacute;ng đều v&agrave; tiết kiệm điện.</p>\r\n\r\n<p>M&agrave;u sắc s&aacute;ng: trắng, v&agrave;ng hoặc RGB theo &yacute; th&iacute;ch.</p>\r\n\r\n<p>K&iacute;ch thước: 60 x 40 cm, 80 x 60 cm hoặc t&ugrave;y chỉnh theo y&ecirc;u cầu.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:16:24', 0),
(40, 10, 'Ghế Sofa Dài', 8000000.00, 8000000.00, 'product_12.png', '<p>Cấu tạo: Khung gỗ hoặc kim loại, đệm m&uacute;t &ecirc;m &aacute;i.</p>\r\n\r\n<p>Chất liệu: Vải, da, nỉ cao cấp.</p>\r\n', 'Việt Nam', '2024-12-04 14:37:33', 0),
(41, 10, 'Ghế Thư Giãn', 5000000.00, 5000000.00, 'product_18.png', '<p>Cấu tạo: Khung kim loại hoặc gỗ, đệm m&uacute;t &ecirc;m &aacute;i, tựa lưng c&oacute; thể điều chỉnh.</p>\r\n\r\n<p>Chất liệu: Vải, da, hoặc nỉ cao cấp.</p>\r\n', 'Hàn Quốc', '2024-12-04 14:38:13', 0),
(42, 10, 'Ghế Thư Giãn Trắng', 4500000.00, 4300000.00, 'product_22.jpeg', '<p>Cấu tạo: Khung kim loại hoặc gỗ, đệm &ecirc;m &aacute;i, tựa lưng điều chỉnh được.</p>\r\n\r\n<p>Chất liệu: Vải, da hoặc nỉ cao cấp, dễ vệ sinh.</p>\r\n\r\n<p>M&agrave;u sắc: Trắng tinh tế, dễ d&agrave;ng kết hợp với c&aacute;c phong c&aacute;ch nội thất.</p>\r\n', 'Việt Nam', '2024-12-04 14:41:35', 0),
(43, 10, 'Ghế Diamond', 700000.00, 700000.00, '77306_350_200_W.png', '<p>Ghế Diamond được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế Diamond c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:29:37', 0),
(44, 10, 'Ghế Sofa G002', 4500000.00, 4000000.00, '74134_350_200_W.jpg', '<p>Ghế Sofa được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế Sofa c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:34:45', 0),
(45, 10, '  Ghế Sofa G003', 7000000.00, 6000000.00, '74132_350_200_W.jpg', '<p>Ghế SOFA được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:36:15', 0),
(46, 10, 'Ghế cafe', 1500000.00, 1500000.00, '77285_350_200_W.png', '<p>Ghế được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:37:28', 0),
(47, 10, 'Ghế Sofa G004', 6500000.00, 5000000.00, '74130_350_200_W.jpg', '<p>Ghế SOFA được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:38:27', 0),
(48, 10, 'Ghế sofa đơn MH 002', 3400000.00, 3400000.00, '74136_350_200_W.jpg', '<p>Ghế SOFA được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:39:10', 0),
(49, 10, 'Ghế Sofa G005', 6500000.00, 6500000.00, '74128_350_200_W.jpg', '<p>Ghế SOFA được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:40:02', 0),
(50, 10, ' Ghế Tolix GA01 Morechair', 500000.00, 400001.00, '77309_350_200_W.png', '<p>Ghế SOFA được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế SOFA&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:40:56', 0),
(51, 10, 'Ghế Eames GE-08', 1200000.00, 1200000.00, '77307_350_200_W.png', '<p>Ghế&nbsp;được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:41:40', 0),
(52, 10, 'Ghế Kennedy DC-08', 2300000.00, 2300000.00, '77234_350_200_W.png', '<p>Ghế Cafe&nbsp;được cấu tạo từ th&eacute;p kh&ocirc;ng rỉ v&agrave; da pvc.&nbsp;</p>\r\n\r\n<p>Ghế Cafe&nbsp;c&oacute; 2 m&agrave;u : đen, đỏ&nbsp;</p>\r\n\r\n<p>K&iacute;ch thước : 85 x 68 x 44 cm&nbsp;</p>\r\n', 'Việt Nam', '2019-10-29 01:42:52', 0),
(53, 13, 'Đèn chùm', 6500000.00, 6500000.00, 'đèn-chùm.jpg', '<p>Trong kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch, đ&egrave;n ch&ugrave;m thường được lắp đặt ở vị tr&iacute; trung t&acirc;m căn ph&ograve;ng hoặc trung t&acirc;m khu vực tiếp kh&aacute;ch. Ch&uacute;ng kh&ocirc;ng chỉ mang đến &aacute;nh s&aacute;ng cho kh&ocirc;ng gian m&agrave; c&ograve;n l&agrave; điểm nhấn thu h&uacute;t tất cả mọi người. Khi đặt ch&acirc;n v&agrave;o căn ph&ograve;ng, đ&egrave;n ch&ugrave;m mang đến sự sang trọng, qu&yacute; ph&aacute;i cho kh&ocirc;ng gian nội thất.</p>\r\n\r\n<p>Đ&egrave;n ch&ugrave;m được đ&aacute;nh gi&aacute; l&agrave; một trong số những loại đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch mang đến vẻ đẹp m&atilde;n nh&atilde;n nhất. Ch&uacute;ng đặc biệt ph&ugrave; hợp với những thiết kế cổ điển, t&acirc;n cổ điển. Một gợi &yacute; ho&agrave;n hảo l&agrave; bạn c&oacute; thể sử dụng những thiết kế&nbsp;<a href=\"https://blog.noithat9x.vn/den-trang-tri/\" target=\"_blank\"><strong>đ&egrave;n trang tr&iacute;</strong>&nbsp;</a>cho ph&ograve;ng kh&aacute;ch để tăng t&iacute;nh sang trọng v&agrave; bắt mắt.</p>\r\n', 'Việt Nam', '2019-10-29 01:47:10', 0),
(54, 13, 'Đèn led âm trần', 4500000.00, 400000.00, 'Đèn-led-âm-trần.jpg', '<p>Loại đ&egrave;n n&agrave;y c&oacute; đặc trưng l&agrave; được ốp tr&ecirc;n trần nh&agrave; với c&ocirc;ng dụng chiếu s&aacute;ng v&agrave; mang đến n&eacute;t hiện đại cho kh&ocirc;ng gian. Đối với nhiều ph&ograve;ng kh&aacute;ch hiện đại, mẫu đ&egrave;n trang tr&iacute; n&agrave;y được sử dụng rất phổ biến. Ngay khi đặt ch&acirc;n v&agrave;o kh&ocirc;ng gian, bạn sẽ cảm nhận được sự đơn giản, s&aacute;ng rộng v&agrave; gọn g&agrave;ng.</p>\r\n\r\n<p>Th&ecirc;m một đặc điểm nữa khiến bạn dễ d&agrave;ng h&agrave;i l&ograve;ng đ&oacute; ch&iacute;nh l&agrave; sản phẩm đ&egrave;n ốp trần c&oacute; gi&aacute; th&agrave;nh ph&ugrave; hợp. Ch&uacute;ng &iacute;t bị lỗi thời cũng như gặp những sự cố ngo&agrave;i &yacute; muốn như đ&egrave;n thả, đ&egrave;n trần.</p>\r\n\r\n<p>Đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch loại ốp trần kh&ocirc;ng hề k&eacute;n kh&ocirc;ng gian. Trong ph&ograve;ng kh&aacute;ch ấn tượng c&oacute; thể b&agrave;i tr&iacute; th&ecirc;m cả đ&egrave;n ch&ugrave;m hoặc đ&egrave;n thả. Ch&uacute;ng sẽ l&agrave; một sự kết hợp tương đối h&agrave;i h&ograve;a.</p>\r\n', 'Việt Nam', '2019-10-29 01:47:52', 0),
(55, 13, 'Đèn thả', 4000000.00, 4000000.00, 'đèn-thả.jpg', '<p>Nếu bạn l&agrave; một trong những t&iacute;n đồ của phong c&aacute;ch tinh tế, hiện đại th&igrave; đ&egrave;n thả l&agrave; lựa chọn v&ocirc; c&ugrave;ng ho&agrave;n hảo. Bạn sẽ kh&ocirc;ng phải lo lắng c&aacute;c loại đ&egrave;n thả khiến kh&ocirc;ng gian xấu x&iacute; hay rối mắt. Ngược lại, sự tươi mới của c&aacute;c thiết kế n&agrave;y sẽ lấy l&ograve;ng được cả những gia chủ kh&oacute; t&iacute;nh nhất.</p>\r\n\r\n<p>Đương nhi&ecirc;n, với loại thiết kế đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch n&agrave;y, sự cố định v&agrave; kết hợp ăn &yacute; giữa những chiếc đ&egrave;n l&agrave; v&ocirc; c&ugrave;ng cần thiết. Đối với ph&ograve;ng kh&aacute;ch ấn tượng, bạn c&oacute; thể sử dụng đơn giản từ 1 &ndash; 3 chiếc đ&egrave;n thả hoặc một bộ đ&egrave;n thả l&agrave; đủ.</p>\r\n', 'Hàn Quốc', '2019-10-29 01:48:35', 0),
(56, 13, 'Đèn downlight', 2000000.00, 1500000.00, 'Đèn-downlight.jpg', '<p>Đ&acirc;y l&agrave; loại đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch tuy &iacute;t được nhắc đến nhưng lại c&oacute; được một chỗ đứng trong thiết kế trang tr&iacute; nội thất. Loại đ&egrave;n n&agrave;y được lắp tr&ecirc;n trần nh&agrave; với hệ thống &acirc;m trần hoặc lắp nổi.</p>\r\n\r\n<p>Điều đặc biệt l&agrave; &aacute;nh s&aacute;ng của đ&egrave;n c&oacute; t&aacute;n quang hoặc định hướng, thứ &aacute;nh s&aacute;ng n&agrave;y tỏa ra nhiều kh&ocirc;ng gian rộng r&atilde;i. Mang đến cho&nbsp;<a href=\"https://vietnamembassy-iran.org/noi-that/\" target=\"_blank\"><strong>nội thất nh&agrave; cửa</strong></a>&nbsp;sự nổi bật v&agrave; ấn tượng nhất. Ch&uacute;ng đặc biệt ph&ugrave; hợp khi gia đ&igrave;nh tổ chức những sự kiện đặc biệt.</p>\r\n', 'Việt Nam', '2019-10-29 01:49:12', 0),
(57, 13, 'Đèn cây/đèn bàn', 3500000.00, 3500000.00, 'Đèn-cây-đèn-bàn.jpg', '<p>Đ&egrave;n trang tr&iacute; ph&ograve;ng kh&aacute;ch dạng đ&egrave;n c&acirc;y lớn hơn đầu người hoặc dạng đ&egrave;n để b&agrave;n đều c&oacute; thể đem lại những hiệu ứng tuyệt vời. T&ugrave;y thuộc v&agrave;o từng gia đ&igrave;nh m&agrave; bạn c&oacute; thể thiết kế v&agrave; nhấn nh&aacute; sử dụng ch&uacute;ng.</p>\r\n', 'Hàn Quốc', '2019-10-29 01:49:50', 0),
(58, 13, 'Đèn dây', 1000000.00, 1000000.00, 'Đèn-dây.jpg', '<p>Được trang ho&agrave;ng trong những dịp đặc biệt, đ&egrave;n led d&acirc;y sẽ mang đến cho bạn nguồn cảm hứng bất tận cho một ph&ograve;ng kh&aacute;ch lung linh &aacute;nh s&aacute;ng.</p>\r\n', 'Việt Nam', '2019-10-29 01:50:28', 0),
(60, 12, 'Gương treo tường trang trí nội thất GS 046', 4500000.00, 4500000.00, 'guong-treo-tuong-trang-tri-noi-that-gs-046-6.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 70cm</p>\r\n', 'Việt Nam', '2019-10-29 01:56:10', 0),
(61, 12, 'Tranh nghệ thuật treo tường trang trí nội thất TS ', 5700000.00, 5000000.00, 'tranh-decor-phong-cach-a-dong-lich-lam-ts-271.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 160x90cm</p>\r\n', 'Việt Nam', '2019-10-29 03:24:36', 0),
(62, 12, 'Decor trang trí nội thất độc đáo TS 331', 4500000.00, 4500000.00, 'decor-trang-tri-noi-that-doc-dao-ts-331-1.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 160cm</p>\r\n', 'Việt Nam', '2019-10-29 01:57:59', 0),
(63, 12, 'Tranh decor hoa mai trang trí TS 329', 4500000.00, 4500000.00, 'tranh-decor-hoa-mai-trang-tri-ts-329-4.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 130cm</p>\r\n', 'Việt Nam', '2019-10-29 01:59:21', 0),
(64, 12, 'Lá chuối decor trang trí nội thất TS 325', 5600000.00, 5000000.00, 'la-chuoi-decor-trang-tri-noi-that-ts-325-9.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 55cm =&nbsp;<strong>2,500,000đ&nbsp;</strong>------- 65cm =&nbsp;<strong>3,000,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 75cm =&nbsp;<strong>3,500,000đ</strong>&nbsp;-------- 85cm =&nbsp;<strong>4000,000đ</strong></p>\r\n', 'Việt Nam', '2019-10-29 02:00:26', 0),
(65, 12, 'Decor nghệ thuật gắn tường TS 323', 4000000.00, 4000000.00, 'decor-nghe-thuat-gan-tuong-ts-323-7.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 100cm</p>\r\n', 'Việt Nam', '2019-10-29 02:01:04', 0),
(66, 12, 'Lá decor trang trí nội thất ấn tượng TS 311', 5000000.00, 4500000.00, 'la-decor-trang-tri-noi-that-an-tuong-ts-311-6.jpg', '<p>* Chất liệu : Kim loại</p>\r\n', 'Việt Nam', '2019-10-29 02:02:33', 0),
(67, 12, 'Tranh nghệ thuật sắt cây dương xỉ TS 309', 4500000.00, 4500000.00, 'tranh-nghe-thuat-sat-cay-duong-xi-ts-309-5.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 140cm</p>\r\n', 'Việt Nam', '2019-10-29 02:03:16', 0),
(68, 12, 'Decor trang trí nội thất cao cấp TS 290', 6000000.00, 5000000.00, 'decor-trang-tri-noi-that-cao-cap-ts-290-1.jpg', '<p>* K&iacute;ch thước : 160cm</p>\r\n', 'Việt Nam', '2019-10-29 02:04:07', 0),
(69, 12, 'Tranh decor trang trí Á Đông TS 289', 3500000.00, 3500000.00, 'tranh-decor-trang-tri-a-dong-ts-289-1.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 150x53cm</p>\r\n', 'Việt Nam', '2019-10-29 02:04:52', 0),
(70, 12, 'Tranh lá Ginko trang trí nội thất TS 287', 3500000.00, 3500000.00, 'tranh-la-ginko-trang-tri-noi-that-ts-287-10.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 120x65cm</p>\r\n', 'Việt Nam', '2019-10-29 02:05:38', 0),
(71, 12, 'Decor gắn tường trang trí phòng khách TS 286', 4000000.00, 3499999.00, 'decor-gan-tuong-trang-tri-phong-khach-ts-286-4.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 80cm =&nbsp;<strong>4,000,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 110cm =&nbsp;<strong>5,000,000đ</strong></p>\r\n', 'Việt Nam', '2019-10-29 02:06:16', 0),
(72, 12, 'Tranh decor hoa trang trí nội thất TS 285', 3400000.00, 3400000.00, 'tranh-decor-hoa-trang-tri-noi-that-ts-285-1.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 160cm</p>\r\n', 'Việt Nam', '2019-10-29 02:07:00', 0),
(73, 12, 'Decor trang trí treot tường độc đáo TS 280', 4500000.00, 4500000.00, 'decor-trang-tri-treot-tuong-doc-dao-ts-280-1.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 80cm =&nbsp;<strong>3,500,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 110cm =<strong>&nbsp;4,500,000đ</strong></p>\r\n', 'Hàn Quốc', '2019-10-29 02:07:48', 0),
(74, 12, 'Tranh sắt lá tia trang trí nội thất TS 270', 5500000.00, 5000000.00, 'tranh-sat-la-tia-trang-tri-noi-that-ts-270-1.jpg', '<p>* Chất liệu : Kim loại</p>\r\n\r\n<p>* K&iacute;ch thước : 130x60cm =&nbsp;<strong>5,500,000đ</strong></p>\r\n\r\n<p>* K&iacute;ch thước : 160x70cm =&nbsp;<strong>6,000,000đ</strong></p>\r\n', 'Việt Nam', '2019-10-29 02:09:44', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`role_id`, `role`, `permission`) VALUES
(1, 'Admin', 'login,add_category,delete_user,delete_role,edit_role,add_role,edit_category'),
(2, 'Member', 'login'),
(20, 'User', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(255) NOT NULL,
  `slide_image` text NOT NULL,
  `description` text NOT NULL,
  `post_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_image`, `description`, `post_on`) VALUES
(11, 'slide_03.jpeg', '<p>Slide 3</p>\r\n', '2019-10-17 23:16:35'),
(10, 'slide_02.jpeg', '<p>Slide 2</p>\r\n', '2019-10-17 23:16:16'),
(9, 'slide_01.jpeg', '<p>Slide 1</p>\r\n', '2019-10-17 23:15:55'),
(13, 'WIN_20240907_11_35_06_Pro.jpg', '<p>duma dep wa</p>\r\n', '2024-12-21 00:59:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(255) NOT NULL,
  `transaction_code` int(255) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_phone` varchar(11) NOT NULL,
  `customer_address` text NOT NULL,
  `product` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `time_order` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `transaction_code`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `product`, `quantity`, `subtotal`, `time_order`) VALUES
(14, 595306, 'Nguyễn Tiến Tú', 'tientu99865@gmail.com', '0358828585', 'Nam Hưng - Nam Sách', 'Ghế Làm Việc', 1, 2500000.00, '2024-12-10 19:30:25'),
(12, 595306, 'Nguyễn Tiến Tú', 'tientu99865@gmail.com', '0358828585', 'Nam Hưng - Nam Sách', 'Đèn Treo Thời Trang', 3, 10500000.00, '2024-12-10 19:30:25'),
(13, 595306, 'Nguyễn Tiến Tú', 'tientu99865@gmail.com', '0358828585', 'Nam Hưng - Nam Sách', 'Cây Cảnh Treo', 1, 1200000.00, '2024-12-10 19:30:25'),
(16, 722596, 'Nguyễn Thị Tính', 'tinhnt.gha@gmail.com', '0123456789', 'Thanh Hóa', 'Đèn ngủ', 1, 3400000.00, '2024-12-10 22:52:53'),
(17, 722596, 'Nguyễn Thị Tính', 'tinhnt.gha@gmail.com', '0123456789', 'Thanh Hóa', 'Tranh Để Bàn', 1, 1500000.00, '2024-12-10 22:52:53'),
(18, 722596, 'Nguyễn Thị Tính', 'tinhnt.gha@gmail.com', '0123456789', 'Thanh Hóa', 'Ghế Làm Việc', 2, 5000000.00, '2024-12-10 22:52:53'),
(19, 283889, 'Bảo Quốc', 'anthonynkbq@gmail.com', '0984277907', 'Nghệ An', 'Ghế Eames GE-08', 1, 1200000.00, '2024-12-12 18:13:47'),
(20, 465285, 'Bảo Quốc', 'anthonynkbq@gmail.com', '0984277907', 'Nghệ An', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-13 18:40:19'),
(21, 465285, 'Bảo Quốc', 'anthonynkbq@gmail.com', '0984277907', 'Nghệ An', 'Ghế Eames GE-08', 1, 1200000.00, '2024-12-13 18:40:19'),
(22, 248280, 'Đoàn Nguyễn Minh Quân', 'thongkul@gmail.com', '0379241115', 'TPHCM', 'Ghế Diamond', 1, 700000.00, '2024-12-15 23:24:46'),
(23, 248280, 'Đoàn Nguyễn Minh Quân', 'thongkul@gmail.com', '0379241115', 'TPHCM', 'Ghế cafe', 1, 1500000.00, '2024-12-15 23:24:46'),
(24, 403582, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(25, 878976, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(26, 407804, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(27, 746866, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(28, 174084, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(29, 541237, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(30, 938393, 'Đoàn Nguyễn Minh Quân', 'qdoan5657@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G004', 1, 5000000.00, '2024-12-15 23:24:46'),
(31, 636788, 'Đoàn Nguyễn Minh Quân', 'qdoan5657@gmail.com', '0379241115', 'TPHCM', 'Ghế Eames GE-08', 1, 1200000.00, '2024-12-15 23:24:46'),
(32, 695600, 'Đoàn Nguyễn Minh Quân', 'qdoan5657@gmail.com', '0379241115', 'TPHCM', 'Ghế cafe', 1, 1500000.00, '2024-12-15 23:24:46'),
(33, 942493, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Thư Giãn', 1, 5000000.00, '2024-12-15 23:24:46'),
(34, 813102, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Diamond', 1, 700000.00, '2024-12-15 23:24:46'),
(35, 671965, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Eames GE-08', 1, 1200000.00, '2024-12-15 23:24:46'),
(36, 499918, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G002', 1, 4000000.00, '2024-12-15 23:24:46'),
(37, 262080, 'Đoàn Nguyễn Minh Quân', 'quandoan159@gmail.com', '0379241115', 'TPHCM', 'Ghế Sofa G002', 1, 4000000.00, '2024-12-15 23:24:46'),
(38, 428062, 'Đoàn Nguyễn Minh Quân', 'qdoan5657@gmail.com', '379241115', 'TPHCM', 'Ghế Kennedy DC-08', 1, 2300000.00, '2024-12-15 23:24:46'),
(39, 428062, 'Đoàn Nguyễn Minh Quân', 'qdoan5657@gmail.com', '379241115', 'TPHCM', 'Đèn dây', 1, 1000000.00, '2024-12-15 23:24:46'),
(40, 802733, 'Phạm Lê Thái Vy', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Tranh nghệ thuật treo tường trang trí nội thất TS ', 1, 5000000.00, '2024-12-15 23:24:46'),
(41, 231418, 'Phạm Hoàng Anh', 'hoanganh.pham@gmail.com', '987654321', '789 Đường GHI, Quận 5, TP.HCM', 'Ghế Thư Giãn', 1, 5000000.00, '2024-12-27 16:45:31'),
(42, 716915, 'Nguyễn Thị Ánh Dương', 'anhduong.nguyen@domain.com', '916789012', '789 Đường YZA, Quận Phú Nhuận', 'Ghế Làm Việc', 1, 2500000.00, '2024-12-27 16:52:32'),
(43, 916668, 'Bảo', 'ngoquocbl@gmail.com', '337340964', 'Vinhome', 'Ghế Sofa G005', 1, 6500000.00, '2024-12-27 22:06:53'),
(44, 121387, 'Phạm Lê Thái Vy', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Đèn Treo Ngược', 1, 3000000.00, '2024-12-28 00:05:37'),
(45, 121387, 'Phạm Lê Thái Vy', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Ghế Làm Việc', 1, 2500000.00, '2024-12-28 00:05:37'),
(46, 259815, 'Phạm Lê Thái', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Đèn chùm', 1, 6500000.00, '2024-12-28 14:36:58'),
(47, 114186, 'Phạm Lê Thái', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Đèn Hộp', 1, 5000000.00, '2024-12-28 14:37:28'),
(48, 904065, 'Phạm Lê Thái', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Ghế Thư Giãn', 1, 5000000.00, '2024-12-28 14:37:54'),
(49, 533479, 'Phạm Lê Thái', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Ghế Sofa Dài', 1, 8000000.00, '2026-04-21 10:45:53'),
(50, 533479, 'Phạm Lê Thái', 'thaivy693@gmail.com', '337340964', 'Phường Long Thạnh Mỹ', 'Ghế Thư Giãn', 1, 5000000.00, '2026-04-21 10:45:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_account` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_account`, `user_password`, `role_id`) VALUES
(3, 'Hoàng Ngọc Châu', 'chauchau@gmail.com', '88888888', 2),
(21, 'Hoàng Anh Vũ', 'hoanganh@gmail.com', '88888888', 2),
(19, 'Phạm Lê Thái Vy', 'admin@gmail.com', '88888888', 1),
(18, 'Trần Phạm Bảo Long', 'longlong@gmail.com', '88888888', 1),
(22, 'Nguyễn Trần Minh Thư', 'MT@gmail.com', '88888888', 20);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `chungtu`
--
ALTER TABLE `chungtu`
  ADD PRIMARY KEY (`sochungtu`);

--
-- Chỉ mục cho bảng `ct_dinhkhoan`
--
ALTER TABLE `ct_dinhkhoan`
  ADD PRIMARY KEY (`sochungtu`,`iddk`);

--
-- Chỉ mục cho bảng `dinhkhoan`
--
ALTER TABLE `dinhkhoan`
  ADD PRIMARY KEY (`iddk`),
  ADD KEY `tkno` (`tkno`),
  ADD KEY `tkco` (`tkco`);

--
-- Chỉ mục cho bảng `hethongtaikhoan`
--
ALTER TABLE `hethongtaikhoan`
  ADD PRIMARY KEY (`stk`),
  ADD KEY `stkth` (`stkth`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`mapn`),
  ADD KEY `user_id` (`user_id`,`product_id`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`mapx`),
  ADD KEY `user_id` (`user_id`,`product_id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `tu` (`role`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `tu` (`user_account`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `dinhkhoan`
--
ALTER TABLE `dinhkhoan`
  MODIFY `iddk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `mapn` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `mapx` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
