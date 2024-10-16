-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2024 at 02:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekko`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `name`, `display_name`) VALUES
(20, 'rom', 'Dung lượng'),
(21, 'ram', 'Ram'),
(23, 'color', 'Màu sắc'),
(32, 'pin', 'Dung lượng pin');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `attribute_id`, `value_name`) VALUES
(16, 20, '64GB'),
(17, 20, ' 256GB'),
(18, 20, ' 512GB'),
(19, 21, '4GB'),
(20, 21, ' 8GB'),
(21, 21, ' 16GB'),
(22, 23, 'Màu trắng ngà'),
(23, 23, ' Màu xanh lá'),
(24, 23, ' Màu hồng'),
(25, 23, ' Màu tím'),
(26, 23, 'Titan xanh'),
(27, 23, ' Titan đen'),
(28, 23, ' Titan tự nhiên'),
(29, 23, ' Titan trắng'),
(30, 20, '1TB'),
(31, 20, ' 2TB'),
(32, 21, '32GB'),
(33, 21, ' 64GB'),
(34, 21, ' 128GB'),
(35, 21, ' 2GB'),
(36, 21, ' 1GB'),
(37, 21, ' 512MB'),
(38, 21, '16GB'),
(39, 23, 'Màu xám'),
(40, 23, ' Màu bạc'),
(41, 23, ' Màu xanh dương'),
(42, 23, 'Màu vàng nhạt'),
(43, 23, 'Màu đen'),
(44, 23, 'Màu trắng'),
(45, 32, '10000 mAh'),
(46, 32, '5000 mAh'),
(47, 32, ' 3000 mAh'),
(48, 32, ' 2000 mAh'),
(49, 32, ' 20000 mAh'),
(50, 21, '3TB'),
(51, 21, '4TB'),
(54, 20, '128GB');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `create_at`, `update_at`, `status`) VALUES
(1, 'Apple', '2024-06-02 03:05:42', '2024-06-02 03:05:49', 1),
(2, 'Asus', '2024-06-02 03:05:43', '2024-06-02 03:05:50', 1),
(3, 'Acer', '2024-06-02 03:05:43', '2024-06-02 03:05:50', 1),
(4, 'Samsung', '2024-06-02 03:05:44', '2024-06-02 03:05:51', 1),
(20, 'Binance', '2024-06-02 03:05:44', '2024-06-02 03:05:51', 1),
(21, 'Lenovo', '2024-06-02 03:05:45', '2024-06-02 03:05:52', 1),
(22, 'HP', '2024-06-02 03:05:45', '2024-06-02 03:05:52', 1),
(23, 'MSI', '2024-06-02 03:05:46', '2024-06-02 03:05:52', 1),
(25, 'Dell', '2024-06-02 03:05:46', '2024-06-02 03:05:53', 1),
(26, 'LG', '2024-06-02 03:05:47', '2024-06-02 03:05:53', 1),
(29, 'Samsung', '2024-06-02 03:05:47', '2024-06-02 03:05:54', 1),
(30, 'Xiaomi', '2024-06-02 03:05:48', '2024-06-02 03:05:54', 1),
(31, 'Oppo', '2024-06-02 03:05:48', '2024-06-02 03:05:55', 1),
(40, 'Casio', '2024-06-02 03:05:49', '2024-06-02 03:05:56', 1),
(43, 'Sony', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp(),
  `total_weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `image`, `name`, `create_at`, `update_at`, `status`) VALUES
(4, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874621/upload_ecommerce/phpCA64_syw7ve.jpg', 'Tai nghe', '2024-06-02 03:08:46', '2024-06-02 03:08:55', 1),
(6, 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719129478/upload_ecommerce/phpACE3_f7cdqh.jpg', 'Camera & Photo', '2024-06-02 03:08:47', '2024-06-02 03:08:54', 1),
(10, 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719129201/upload_ecommerce/php76B1_if079z.jpg', 'Laptops', '2024-06-02 03:08:47', '2024-06-02 03:08:54', 1),
(24, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874715/upload_ecommerce/php358E_wrnkxv.jpg', 'Màn hình', '2024-06-02 03:08:48', '2024-06-02 03:08:53', 1),
(29, 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719129101/upload_ecommerce/phpECC1_gkfzt9.jpg', 'Điện thoại', '2024-06-02 03:08:49', '2024-06-02 03:08:52', 1),
(30, 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719129129/upload_ecommerce/php5986_rmljnu.jpg', 'PC', '2024-06-02 03:08:49', '2024-06-02 03:08:53', 1),
(32, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874606/upload_ecommerce/php8D2B_ns2jjq.jpg', 'TV', '2024-06-02 03:08:50', '2024-06-02 03:08:51', 1),
(33, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874594/upload_ecommerce/php5EF6_ymomjw.jpg', 'Máy tính bảng', '2024-06-02 03:08:50', '2024-06-02 03:08:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `title` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `expired` datetime NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `code`, `thumb`, `title`, `value`, `min_amount`, `expired`, `quantity`, `status`, `create_at`, `update_at`) VALUES
(7, 'BANTHANHBAO', 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727914797/upload_ecommerce/phpC1B6_vvxqmh.jpg', 'black Thursday', '20%', 100000, '2024-10-19 07:18:00', 4, 1, '2024-10-01 00:30:47', NULL),
(8, 'NHOMCUATUI', 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727915613/upload_ecommerce/php49AA_t2pmwq.jpg', 'nhomcuatui', '20%', 100000, '2024-10-05 07:33:00', 5, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images_product`
--

CREATE TABLE `images_product` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images_product`
--

INSERT INTO `images_product` (`id`, `image`, `prod_id`) VALUES
(185, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1703253458/uploads_ekkashop/phpE205_o10nmi.jpg', 111),
(186, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1703253460/uploads_ekkashop/phpE206_rra6hl.jpg', 111),
(187, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1703592618/uploads_ekkashop/phpBA50_bj2jje.jpg', 112),
(188, 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1703592633/uploads_ekkashop/phpBA61_xd8oj3.jpg', 112),
(201, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873122/upload_ecommerce/phpE9B0_hwuiza.jpg', 116),
(202, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873643/upload_ecommerce/phpD166_rdasxo.png', 118),
(203, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873646/upload_ecommerce/phpD167_d3auqf.png', 118),
(204, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873649/upload_ecommerce/phpD168_wbwajd.png', 118),
(205, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873651/upload_ecommerce/phpD179_wtcymr.png', 118),
(206, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874201/upload_ecommerce/php53F2_r1q3xt.png', 119),
(207, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874203/upload_ecommerce/php53F3_dobeyn.png', 119),
(208, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874206/upload_ecommerce/php53F4_h3ozyn.png', 119),
(209, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727891136/upload_ecommerce/phpB066_cabdle.jpg', 120),
(210, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727891137/upload_ecommerce/phpB067_w2p6pa.jpg', 120),
(211, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727891139/upload_ecommerce/phpB068_mnjpss.jpg', 120),
(212, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727891141/upload_ecommerce/phpB069_ej6gnm.jpg', 120);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `view` smallint(6) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `content`, `thumb`, `slug`, `view`, `status`, `create_at`, `update_at`) VALUES
(1, 4, 'Poco C65 - điện thoại bộ nhớ 256 GB giá 3 triệu đồng', '<p>C65 có cấu hình tốt, màn hình lớn 6,74 inch so với tầm giá nhưng chất lượng camera và loa ngoài chưa tốt.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=NwCcNk2AiOMNDovTGZZcQw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Az8CLAOOjo-A9LsnPKEw3g\" alt=\"\"></picture></p><p>Poco C65 là điện thoại giá rẻ mới nhất từ thương hiệu con của Xiaomi với điểm mạnh truyền thống là cấu hình so với các đối thủ cùng phân khúc. Đây là model rẻ nhất trang bị bộ nhớ 256 GB, RAM 8 GB với giá 3 triệu đồng, gấp đôi các đối thủ. Ngoài ra, máy còn một lựa chọn khác là bộ nhớ 128 GB, RAM 6 GB giá 2,75 triệu đồng.</p><p>Sản phẩm có giá tốt một phần nhờ chiến lược chỉ bán trực tuyến thay vì đưa cả vào hệ thống bán lẻ lớn như các hãng điện thoại thường làm. Đây có thể coi là bản nâng cấp nhẹ của Redmi 12C và có thông số phần cứng, kiểu dáng gần giống Redmi 13C cũng chuẩn bị bán ra tại Việt Nam.</p><p>Sau hơn một năm trầm lắng, phân khúc điện thoại tầm giá 3 triệu đồng sôi động trở lại khi có sự góp mặt của nhiều model trong nửa cuối 2023. Ngoài Samsung Galaxy A14, đa số các model còn lại đều từ các thương hiệu Trung Quốc như Infinix Hot 30, Tecno Spark 10 Pro, Realme C51 hay Oppo A18.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=CKizsuJzENrv0h73bDspmg 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4581-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=zsfGOzF4bI7tVuRsQD-7mA\" alt=\"\"></picture></p><p>Máy có màn hình lớn 6,74 inch, tấm nền IPS và ưu điểm tần số quét 90 Hz tốt so với mức giá. Tuy nhiên, độ phân giải màn hình chỉ là HD+ (720 x 1.600 pixel) nên độ sắc nét chưa cao, có thể quan sát kỹ răng cưa viền chi tiết bằng mắt thường. Bù lại, màu sắc được cân chỉnh tốt, khá rực rỡ và cho phép chọn các tông màu ấm, lạnh. Độ sáng màn hình chỉ đạt 450 nit (độ sáng điểm 600 nit) nên khá khó sử dụng ngoài trời khi có nắng chiếu trực tiếp, hiển thị bóng.</p><p>C65 cũng chuyển sang thiết kế cạnh vuông vức, đi kèm viền màn hình nhô lên khỏi cạnh máy khiến trải nghiệm cầm không thực sự thoải mái, hơi cấn tay. Do khung bằng nhựa, máy có trọng lượng nhẹ, chỉ 192 gram nên có thể sử dụng lâu ít gây mỏi.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=L1-cfuv129qYTOEOcyHizA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4545-1699960660.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=9X7VsPlnCTZQ5yfDA0C2iQ\" alt=\"\"></picture></p><p>Mặt sau được hoàn thiện tốt với bề mặt nhám nhẹ chống bám vân tay gần giống chất lượng gương mờ dù thực tế chỉ bằng nhựa thông thường. Máy có điểm nhấn logo Poco và cụm camera có ống kính lớn giống dòng Redmi 13C.</p><p>Chip xử lý Mediatek MT6769Z Helio G85 cho điểm hiệu năng khá tốt so với tầm giá, khoảng 280.000 điểm với AnTuTu Benchmark. Điểm nhấn của máy nằm ở bộ nhớ với chuẩn tốc độ đọc, ghi eMMC 5.1.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=pmpCnc2vDghZjGFBGHRNMQ 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4538-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BNGGtor4r9pL3vYk317VVw\" alt=\"\"></picture></p><p>C65 có độ mỏng ấn tượng 8,1 mm so với mức 8,7-9,4 mm của các đối thủ cùng phân khúc dù sở hữu viên pin 5.000 mAh. Máy cũng có cảm biến vân tay một chạm đặt trên nút nguồn ở cạnh phải. Điện thoại mới của Poco chạy hệ điều hành Android 13 với bộ giao diện MIUI 14 rút gọn. Máy có ba màu để lựa chọn là xanh, đen và tím.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=rxGuA0ySu6gghrdiyWmNnA 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4537-1699960659.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=f7F6gd0RX4ma6MdDFlcYhQ\" alt=\"\"></picture></p><p>C65 vẫn giữ đầy đủ cổng kết nối, bao gồm cả giắc cắm tai nghe 3,5 mm trên đỉnh máy. Cổng USB-C phía dưới chỉ là chuẩn 2.0 và hỗ trợ sạc nhanh tối đa có dây là 18 W (chuẩn PD). Nhược điểm của máy nằm ở hệ thống loa ngoài với một loa bên dưới thay vì stereo. Ngoài ra, âm thanh cho cảm giác hơi rè khi đặt mức chỉnh khoảng trên 60%</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=p9RjsUxB1V5s4DyazTd59A 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4568-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_LywNGOWvi0QRC5JSRtbRg\" alt=\"\"></picture></p><p>Cụm camera phía sau lớn hơn cả các mẫu điện thoại cao cấp gồm một camera chính độ phân giải 50 megapixel, f/1.8, lấy nét PDAF nhưng góc hơi hẹp là 28 mm (tiêu chuẩn thường là 24 mm), một ống kính macro đo độ sâu trường ảnh 2 megapixel và đèn flash LED. Máy có thể quay video độ phân giải Full HD tốc độ 30 hình/giây.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=0yUJqY2v_q-lYyfgL3Xjvw 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4593-1699960662.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=_smNc-wbUeomg5ss8Ib-VA\" alt=\"\"></picture></p><p>Độ phân giải cao nhưng chất lượng chụp ảnh chưa tương xứng khi không khác biệt so với các đối thủ với thông số kém hơn. Ảnh chụp ổn ở điều kiện ngoài trời, đủ sáng nhưng độ chi tiết giảm nhiều với môi trường ánh sáng yếu. So với model giá rẻ \"hot\" nhất trước đây của Xiaomi là Redmi 12C, Poco C65 nhỉnh hơn ở khả năng cân bằng trắng, xử lý HDR nhưng chất lượng tổng thể không nâng cấp đáng kể.</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q 1x, https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=HtWMJk8AOOYmDv9kcsvo0g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4576-1699960661.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=E6sWoDe5KPmUjbFHi-kl1Q\" alt=\"\"></picture></p><p>&nbsp;</p><p>Phụ kiện có bộ sạc, cáp USB-C nhưng không có tai nghe và ốp silicon trong suốt. C65 hỗ trợ sạc nhanh tối đa 18 W nhưng củ sạc đi kèm có công suất chỉ 10 W.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/14/DSCF4520-1699960658.jpg?w=1200&h=0&q=100&dpr=1&fit=crop&s=Az8CLAOOjo-A9LsnPKEw3g', 'poco-c65---dien-thoai-bo-nho-256-gb-gia-3-trieu-dong-6572de0bf08f1', 38, 1, '2023-11-15 20:53:51', '2023-11-15 20:53:51'),
(2, 9, 'Google xác nhận trả tiền tỷ cho Apple để mặc định công cụ tìm kiếm', '<p>Sundar Pichai, CEO Google, thừa nhận hãng chia sẻ cho Apple 36% doanh thu có được từ việc đặt công cụ tìm kiếm mặc định trên trình duyệt Safari.</p><p>Ngày 14/11, trong buổi làm chứng liên quan đến <a href=\"https://vnexpress.net/nha-san-xuat-game-fortnite-kien-apple-google-4146591.html\">vụ kiện</a> giữa Google và Epic Games về vấn đề độc quyền trên Google Play, nhà sản xuất game đứng sau trò chơi <i>Fortnite</i>, một nhân chứng đề cập con số 36% doanh thu từ tìm kiếm thông qua Safari mà Apple được hưởng.</p><p>Luật sư của Epic Games hỏi Pichai điều này có chính xác không. CEO Google đáp: \"Đúng vậy!\".</p><p><picture><source srcset=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA 1x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=1020&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FT829C6TEaTCcf4P9MQfbg 1.5x, https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=2&amp;fit=crop&amp;s=AfArnaNhcdEf08katKZJ3g 2x\"><img src=\"https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Mqf_2wSVeutdhFBRweTIyA\" alt=\"CEO Alphabet Sundar Pichai. Ảnh: Reuters\"></picture></p><p>CEO Alphabet Sundar Pichai. Ảnh: <i>Reuters</i></p><p>Luật sư tiếp tục hỏi Pichai tại sao hãng trả cho Samsung, đối tác phần cứng lớn nhất về Android, số tiền chưa bằng một nửa so với cho Apple. CEO Google nói ông không nắm rõ một cách chắc chắn, nhưng điều này \"có thể\" xảy ra.</p><p>\"Nó giống như việc vận chuyển táo với cam vậy\", Pichai nói. \"Với các giao dịch, đôi khi bạn phải trả tiền khác nhau cho các hãng vận chuyển\".</p><p>Đại diện pháp luật của Epic Games sau đó hỏi Pichai về số tiền chính xác mà họ trả cho Apple. Pichai nói \"hơn 10 tỷ USD\". Luật sư cho rằng ông trả lời không chính xác, con số thực tế phải là 18 tỷ USD.</p><p>Google, Samsung và Apple không đưa ra bình luận.</p><p>Alphabet hiện đối mặt với nhiều cuộc chiến pháp lý liên quan đến hành vi độc quyền công cụ tìm kiếm và kho ứng dụng. Hai vụ kiện với Bộ Tư pháp Mỹ (DOJ) và Epic Games đang diễn ra đồng thời. Hồi tháng 9, trong phiên tòa liên quan đến vụ kiện do Bộ Tư pháp Mỹ là nguyên đơn, các công tố viên cho biết Google nắm 90% thị phần tìm kiếm trực tuyến. Ưu thế đó có được một phần nhờ <a href=\"https://vnexpress.net/chu-de/google-1539\">Google</a> bắt tay với Apple trong thương vụ đã kéo dài 18 năm.</p><p>Một số nguồn tin cho biết Google chi 9,5 tỷ USD vào năm 2018, 11 tỷ USD năm 2020 và 15 tỷ USD năm 2021 để là công cụ tìm kiếm mặc định trên sản phẩm của Apple. Còn theo <a href=\"https://vnexpress.net/apple-co-the-mat-hang-ty-usd-neu-google-thua-kien-4663756.html\">thống kê mới nhất</a> được DOJ đưa ra hồi tháng 10, con số này là 18-20 tỷ USD.</p><p>Theo <i>Washington Post</i>, nếu Google bị chứng minh vi phạm pháp luật trong vụ kiện với DOJ, tòa án có quyền ra lệnh thay đổi điều khoản hoặc hủy bỏ hợp đồng của công ty với Apple. Hiện Liên minh châu Âu cũng đề nghị các thiết bị phải cài đặt \"giao diện lựa chọn\" ngay từ đầu để người dùng truy cập những công cụ tìm kiếm ngoài Google.</p>', 'https://i1-sohoa.vnecdn.net/2023/11/15/WIIEYS6NCVKV7B55UWTH4ZVUTY-2708-1700019077.png?w=680&h=0&q=100&dpr=1&fit=crop&s=Mqf_2wSVeutdhFBRweTIyA', 'google-xac-nhan-tra-tien-ty-cho-apple-de-mac-dinh-cong-cu-tim-kiem-655df3d2882b0', 14, 1, '2023-11-15 20:53:51', '2023-11-15 20:53:51'),
(5, 4, 'Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới', '<p>OnePlus mới đây đã giới thiệu mẫu flagship mới nhất có tên OnePlus 12. Máy có ưu điểm về hiệu năng mạnh mẽ, màn hình độ sáng cao và sạc nhanh 100W, mức giá khởi điểm chỉ từ khoảng hơn 14 triệu đồng.</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529x04mj31kw11xauw-1701934879448-170193487962356397422.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 1.\"></p><p>&nbsp;</p><p>Ngôn ngữ thiết kế của OnePlus 12 khá quen thuộc. Máy có mặt lưng hoàn thiện từ kính, cong 2 cạnh viền, khung viền hoàn thiện từ kim loại. Ở mặt trước, OnePlus 12 trang bị màn hình 6,82 inch LTPO AMOLED với độ phân giải QHD+, tần số quét 1-120Hz. Màn hình này do BOE sản xuất, được quảng cáo là có thể đạt độ sáng lên tới 4500 nits, cao nhất trên thế giới. Trước đó, Redmi K70 series phá vỡ kỷ lục của Xiaomi 14 với màn hình 4000 nits, tuy nhiên danh hiệu smartphone có màn hình sáng nhất giờ đây đã thuộc về OnePlus 12.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529l1z7j31kw11xtii-1701934886444-17019348865981913026044.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 2.\"></p><p>&nbsp;</p><p>Ở mặt lưng, OnePlus 12 trang bị hệt hống 3 camera chính gồm góc rộng 50MP, góc siêu rộng 48MP và tele 3X 64MP. Cụm camera này được tinh chỉnh bởi Hasselblad tương tự như các smartphone OPPO cao cấp.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529z5edj31kw11xhdt-1701934872998-1701934873618866890869.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 3.\"></p><p>&nbsp;</p><p>Về hiệu năng, OnePlus 12 trang bị chip Snapdragon 8 Gen 3, máy có RAM lên tới 24GB, bộ nhớ lưu trữ lên tới 1TB. Viên pin của máy có dung lượng 5400mAh, hỗ trợ sạc nhanh 100W có dây và 50W không dây. Máy chạy trên nền tảng ColorOS 14.0 dựa trên Android 14.<br>&nbsp;</p><p>&nbsp;</p><p><img src=\"https://genk.mediacdn.vn/thumb_w/640/139269124445442048/2023/12/7/006ruxyjgy1hkj529kd2tj31kw11xai2-1701934902816-17019349029551998457206.jpg\" alt=\"Cuộc đua độ sáng màn hình không hồi kết: OnePlus ra mắt smartphone có màn hình sáng 4500 nits cao nhất thế giới- Ảnh 4.\"></p><p>&nbsp;</p><p>Về giá bán, OnePlus 12 lên kệ tại thị trường Trung Quốc với giá khởi điểm từ 4299 tệ, tương đương khoảng 14,6 triệu đồng. Phiên bản cao cấp nhất 24GB/1TB có giá 5799 tệ, tương đương 19,8 triệu đồng.</p>', 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719053545/upload_ecommerce/php4F1_uinfns.jpg', 'cuoc-dua-do-sang-man-hinh-khong-hoi-ket-oneplus-ra-mat-smartphone-co-man-hinh-sang-4500-nits-cao-nhat-the-gioi-667825d66bd9e', 8, 1, '2023-12-08 16:09:30', '2023-12-08 16:09:30'),
(6, 4, 'Thay đổi trong thiết kế của Galaxy S24 Ultra', '<p>Smartphone cao cấp nhất dòng Galaxy S24 được cho là sẽ mỏng hơn, khay cắm bút S Pen, loa ngoài và nút bấm được thiết kế lại.</p><p>Trang công nghệ <i>PhoneArena </i>đăng một số hình ảnh nguyên mẫu của <a href=\"https://vnexpress.net/chu-de/samsung-galaxy-s24-ultra-6858\">Galaxy S24 Ultra</a> và so sánh với S23 Ultra hiện tại. Hai model có thiết kế giống nhau, nhưng Samsung đã tinh chỉnh nhiều chi tiết để tạo ra sự khác biệt, cải thiện trải nghiệm của người dùng.</p><p>Điểm cải tiến đầu tiên là bút S Pen trên S24 Ultra có phần đuôi phẳng, khi gắn vào sẽ ngang bằng với đế máy thay vì lồi lên như ở S23 Ultra. Nhờ đó khi sử dụng, phần tay để đỡ máy sẽ không bị còn bị cấn.</p><p><img src=\"https://i1-sohoa.vnecdn.net/2023/12/07/S24-Ultra-vs-S23-Ultra-leak-jp-1133-9558-1701962234.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=BPinmllLeswNh04OgUIIRg\" alt=\"Samsung Galaxy S23 Ultra (màu đen) và Galaxy S24 Ultra. Ảnh: PhoneArena\"></p><p>Galaxy S23 Ultra (màu đen) và nguyên mẫy được cho là Galaxy S24 Ultra. Ảnh: <i>PhoneArena</i></p><p>Loa ngoài cũng được điều chỉnh, không còn thiết kế khoét nhiều lỗ mà chuyển thành đường cắt nhỏ gọn và đẹp mắt. Cổng USB-C và khay cắm sim vẫn giữ nguyên như trước.</p><p>Khung viền của S24 Ultra dày và ít bo cong hơn, nhưng độ dày tổng thể lại giảm từ 8,9 xuống 8,6 mm do thiết bị mới sử dụng màn hình phẳng. Hai nút bấm cứng là nút nguồn và âm lượng cũng có kích thước lớn hơn thế hệ trước. Trong khi đó, pin vẫn duy trì dung lượng 5.000 mAh.</p><p>Khi nhìn qua ảnh khó xác định vật liệu khung sườn, nhưng theo \"chuyên gia tin đồn\" Ice Universe, Galaxy S24 Ultra chắc chắn được trang bị khung bằng hợp kim titanium với độ bền cao hơn và tạo cảm giác cầm mượt hơn.</p><p><img src=\"https://i1-sohoa.vnecdn.net/2023/12/07/S24-Ultra-vs-S23-Ultra-leak-2-1948-4760-1701962234.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=kaLASnY9dQ6_w4WLP7rDfg\" alt=\"Samsung Galaxy S23 Ultra (màu đen) và Galaxy S24 Ultra. Ảnh: PhoneArena\"></p><p>Galaxy S23 Ultra (đen) và Galaxy S24 Ultra. Ảnh: <i>PhoneArena</i></p><p>Về cấu hình, Galaxy S24 Ultra sẽ sử dụng chip xử lý mới nhất của Qualcomm là Snapdragon 8 Gen 3, còn điểm nâng cấp nổi bật trên hệ thống camera sau là ống kính tiềm vọng 50 megapixel với khả năng zoom quang 5x, thay cho ống tiềm vọng 10 megapixel hỗ trợ zoom quang 10x trên S23 Ultra.</p><p>Samsung dự kiến công dòng <a href=\"https://vnexpress.net/chu-de/samsung-galaxy-s24-6857\">Galaxy S24</a> với ba phiên bản S24, S24+ và S24 Ultra vào ngày 17/1 tại Mỹ.</p>', 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719053563/upload_ecommerce/php4F98_nkkis1.jpg', 'thay-doi-trong-thiet-ke-cua-galaxy-s24-ultra-6676acb2cf9f8', 12, 1, '2023-12-08 16:10:31', '2023-12-08 16:10:31'),
(7, 4, 'Hello', '<h2>asdasdas</h2><p>asdasd</p><p>adsa</p><p>sdassd</p><p>asd</p><p>asd</p><p>assd</p><p>asd</p><p>asd</p>', 'https://res.cloudinary.com/dvysn6zdt/image/upload/v1719127826/upload_ecommerce/php781A_nbuxmm.jpg', 'hello-6677cebd156bf', 1, 1, '2024-06-23 14:29:03', '2024-06-23 14:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_status_id` int(11) NOT NULL DEFAULT 1,
  `total_money` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `shipping_fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `fullname`, `phone`, `address`, `note`, `order_date`, `order_status_id`, `total_money`, `coupon_id`, `shipping_fee`) VALUES
(29, 'bK15y1727876682', 38, 'Nguyễn Thanh Bảo', '0862322549', '123', '', '2024-10-02 20:44:42', 4, 57980000, 0, 0),
(30, 'EE2s71727880480', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-02 21:48:00', 1, 1500000, 0, 0),
(31, 'T44wl1727880618', 38, 'Nguyễn Thanh Bảo', '0862322549', '123', '', '2024-10-02 21:50:18', 4, 28990000, 0, 0),
(32, '8Hk3p1727884762', 38, 'Nguyễn Thanh Bảo', '0862322549', '123', '', '2024-10-02 22:59:22', 4, 22990000, 0, 0),
(33, 'GmIZs1727920048', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-03 08:47:28', 1, 23192000, 7, 0),
(34, 'Dp2S81727921541', 38, 'Nguyễn Thanh Bảo', '0862322549', '123', '', '2024-10-03 09:12:21', 4, 22990000, 0, 0),
(35, 'w6Yb01727923879', 38, 'Nguyễn Thanh Bảo', '0862322549', '2 ngô bệ', '', '2024-10-03 09:51:19', 4, 1500000, 0, 0),
(36, 'Q5ASu1728521697', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 07:59:19', 1, 28990000, 0, 0),
(37, 'Q5ASu1728521697', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 07:59:52', 1, 28990000, 0, 0),
(38, 'a3Y701728522016', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:00:42', 1, 28990000, 0, 0),
(39, 'Dzey01728524057', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:34:45', 1, 28990000, 0, 0),
(40, 'oYa3F1728524198', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:37:04', 1, 22990000, 0, 0),
(41, 'btebh1728524883', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:48:47', 1, 28990000, 0, 0),
(42, 'qe6C31728525002', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:51:21', 1, 1500000, 0, 0),
(43, 'cSUKn1728525142', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Cần Thơ', '', '2024-10-10 08:53:22', 4, 23990000, 0, 0),
(44, '3HQFH1728696000', 38, 'Nguyễn Thanh Bảo', '0862322549', 'aaa', '', '2024-10-12 08:20:43', 1, 22990000, 0, 0),
(45, 'XI6ci1728696115', 38, 'Nguyễn Thanh Bảo', '0862322549', 'a', '', '2024-10-12 08:23:37', 4, 28990000, 0, 0),
(46, 'Gujxw1728793611', 38, 'Nguyễn Thanh Bảo', '0862322549', 'Phường Hộ Phòng, Thị Xã Giá Rai, Bạc Liêu', '', '2024-10-13 11:27:20', 1, 52014000, 0, 0),
(47, 'EcAz91728794584', 38, 'Nguyễn Thanh Bảo', '0862322549', 'Phường Hộ Phòng, Thị Xã Giá Rai, Bạc Liêu', '', '2024-10-13 11:43:27', 1, 24024000, 0, 34000),
(48, 'CL0Ic1728797641', 38, 'Nguyễn Thanh Bảo', '0862322549', 'Xã Khánh Tiến, Huyện U Minh, Cà Mau', '', '2024-10-13 12:34:39', 1, 24024000, 0, 34000),
(49, 'dhhmK1728823677', 4, 'Nguyễn Thanh Bảo', '0843175549', 'Xã Vĩnh Viễn, Huyện Long Mỹ, Hậu Giang', '', '2024-10-13 19:48:31', 1, 49024001, 0, 44001);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_variant_id`, `price`, `quantity`, `total_money`) VALUES
(3, 2, 12, 35690000, 1, 35690000),
(4, 2, 13, 34890000, 2, 69780000),
(5, 2, 11, 5690000, 1, 5690000),
(6, 2, 9, 7990000, 2, 15980000),
(7, 3, 12, 35690000, 2, 71380000),
(8, 3, 1, 44900000, 2, 89800000),
(9, 3, 2, 44590000, 2, 89180000),
(10, 4, 2, 44590000, 3, 133770000),
(11, 4, 9, 7990000, 1, 7990000),
(12, 4, 8, 5990000, 1, 5990000),
(13, 5, 2, 44590000, 3, 133770000),
(14, 6, 32, 9990000, 1, 9990000),
(15, 6, 26, 3690000, 1, 3690000),
(16, 6, 29, 5181000, 1, 5181000),
(17, 7, 25, 3590000, 1, 3590000),
(18, 7, 26, 3690000, 1, 3690000),
(19, 7, 28, 3990000, 1, 3990000),
(20, 8, 26, 3690000, 1, 3690000),
(21, 8, 28, 3990000, 1, 3990000),
(22, 9, 18, 25990000, 1, 25990000),
(23, 9, 21, 24990000, 1, 24990000),
(24, 10, 28, 3990000, 1, 3990000),
(25, 10, 21, 24990000, 3, 74970000),
(26, 11, 25, 3590000, 3, 10770000),
(27, 11, 33, 2190000, 1, 2190000),
(28, 12, 1, 44900000, 2, 89800000),
(29, 13, 25, 3590000, 21, 75390000),
(30, 14, 33, 2190000, 1, 2190000),
(31, 15, 42, 23490000, 33, 775170000),
(32, 15, 15, 21990000, 3, 65970000),
(33, 16, 28, 3990000, 2, 7980000),
(34, 16, 75, 16990000, 1, 16990000),
(35, 17, 1, 44900000, 3, 134700000),
(36, 17, 2, 44590000, 3, 133770000),
(37, 18, 61, 11990000, 1, 11990000),
(38, 18, 63, 10990000, 2, 21980000),
(39, 19, 25, 3590000, 1, 3590000),
(40, 19, 14, 22990000, 2, 45980000),
(41, 19, 21, 24990000, 1, 24990000),
(42, 19, 18, 25990000, 2, 51980000),
(43, 20, 13, 34890000, 1, 34890000),
(44, 20, 72, 7990000, 1, 7990000),
(45, 21, 8, 5990000, 1, 5990000),
(46, 21, 60, 10990000, 2, 21980000),
(47, 22, 29, 5181000, 1, 5181000),
(48, 23, 2, 44590000, 1, 44590000),
(49, 23, 7, 5100000, 1, 5100000),
(50, 24, 8, 5990000, 1, 5990000),
(51, 25, 8, 5990000, 1, 5990000),
(52, 26, 26, 3690000, 1, 3690000),
(53, 27, 2, 44590000, 1, 44590000),
(54, 28, 83, 1199999, 1, 1199999),
(55, 29, 90, 28990000, 2, 57980000),
(56, 30, 82, 1500000, 1, 1500000),
(57, 31, 92, 28990000, 1, 28990000),
(58, 32, 85, 22990000, 1, 22990000),
(59, 33, 91, 28990000, 1, 28990000),
(60, 34, 86, 22990000, 1, 22990000),
(61, 35, 82, 1500000, 1, 1500000),
(62, 36, 90, 28990000, 1, 28990000),
(63, 37, 90, 28990000, 1, 28990000),
(64, 38, 90, 28990000, 1, 28990000),
(65, 39, 90, 28990000, 1, 28990000),
(66, 40, 88, 22990000, 1, 22990000),
(67, 41, 90, 28990000, 1, 28990000),
(68, 42, 82, 1500000, 1, 1500000),
(69, 43, 93, 23990000, 1, 23990000),
(70, 44, 88, 22990000, 1, 22990000),
(71, 45, 92, 28990000, 1, 28990000),
(72, 46, 88, 22990000, 1, 22990000),
(73, 46, 92, 28990000, 1, 28990000),
(74, 47, 93, 23990000, 1, 23990000),
(75, 48, 93, 23990000, 1, 23990000),
(76, 49, 82, 1500000, 1, 1500000),
(77, 49, 85, 22990000, 2, 45980000),
(78, 49, 96, 1500000, 1, 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`) VALUES
(1, 'Chờ xác nhận', 'Chờ xác nhận từ người bán'),
(2, 'Đang chuẩn bị', 'Chuẩn bị giao hàng'),
(3, 'Đang giao hàng', 'Đang giao hàng'),
(4, 'Đã giao hàng', 'Giao hàng hoàn tất'),
(5, 'Đã huỷ', 'Huỷ giao hàng');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_transaction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `order_id`, `payment_method_id`, `payment_transaction_id`) VALUES
(1, 1, 1, 0),
(2, 2, 2, 1),
(3, 3, 1, 0),
(4, 4, 2, 2),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 2, 3),
(8, 8, 3, 4),
(9, 9, 3, 5),
(10, 10, 1, 0),
(11, 11, 2, 6),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 3, 7),
(15, 15, 1, 0),
(16, 16, 2, 8),
(17, 17, 1, 0),
(18, 18, 2, 9),
(19, 19, 1, 0),
(20, 20, 2, 10),
(21, 21, 2, 11),
(22, 22, 1, 0),
(23, 23, 1, 0),
(24, 24, 1, 0),
(25, 25, 1, 0),
(26, 26, 1, 0),
(27, 27, 1, 0),
(28, 28, 1, 0),
(29, 29, 1, 0),
(30, 30, 1, 0),
(31, 31, 1, 0),
(32, 32, 1, 0),
(33, 33, 1, 0),
(34, 34, 1, 0),
(35, 35, 1, 0),
(36, 39, 2, 12),
(37, 40, 2, 13),
(38, 41, 2, 14),
(39, 42, 2, 15),
(40, 43, 3, 16),
(41, 44, 2, 17),
(42, 45, 3, 18),
(43, 46, 2, 19),
(44, 47, 2, 20),
(45, 48, 3, 21),
(46, 49, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id`, `name`, `display_name`, `description`, `thumb`, `status`) VALUES
(1, 'cash_on_delivery', 'Thanh toán khi nhận hàng', 'Thanh toán bằng tiền mặt khi giao hàng.', 'https://phuhungthinh.com/wp-content/uploads/2022/08/thanh-toan.png', 1),
(2, 'vnpay', 'VNPAY', 'Thanh toán qua VNPAY, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản VNPAY.', 'https://vnpay.vn/s1/statics.vnpay.vn/2023/6/0oxhzjmxbksr1686814746087.png', 1),
(3, 'momo', 'MOMO', 'Thanh toán qua MOMO, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản MOMO.', 'https://developers.momo.vn/v3/assets/images/icon-52bd5808cecdb1970e1aeec3c31a3ee1.png', 1),
(4, 'paypal', 'PAYPAL', 'Thanh toán qua PAYPAL, bạn có thể thanh toán bằng thẻ tín dụng nếu bạn không có tài khoản PAYPAL.', 'https://play-lh.googleusercontent.com/mvedVCbQg6ADKUYYraVLOlmOfOy2Rz66kEPvbmxt5xZ2TTa90Go9jBD2dJrwWmEo5g8', 0),
(6, 'thu nghiem', 'Thử nghiệm', 'ưdwdwdwdw', 'https://res.cloudinary.com/dfgkkkcoc/image/upload/v1700730034/uploads_ekkashop/php2420_ww14or.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `bankCode` varchar(50) NOT NULL,
  `bankTranNo` varchar(50) NOT NULL,
  `cardType` varchar(50) NOT NULL,
  `payDate` bigint(20) NOT NULL,
  `transactionNo` varchar(50) NOT NULL,
  `secureHash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `bankCode`, `bankTranNo`, `cardType`, `payDate`, `transactionNo`, `secureHash`) VALUES
(1, 'NCB', 'VNP14190170', 'ATM', 2147483647, '14190170', '46354236749fe0d42ce472b676e9e7fef15c4066baf4cce52a678afae085bb1f4f1875273bdf637195df90700b8e1950254dd8ff1b3a831c023192e449d28d46'),
(2, 'NCB', 'VNP14195094', 'ATM', 2147483647, '14195094', '2589e637f110a2b0b34797ac488a8e21ada7c658e3cb65ede570121367a849c26885246f3e2365fcf0b58c5dc93242fe7d4d03b361dbaacaafe7e5ec01a6bc9b'),
(3, 'NCB', 'VNP14200362', 'ATM', 2147483647, '14200362', 'fc0bae76b46bed13909d170f23f384e87686656a435b6f42686ff91b0ebb3f33fe92e5f54420f3df236dd12fc92070b4637933f0c05dfcee407edb72710c0ece'),
(4, 'SML', '3135486376', 'napas', 2147483647, '3135486376', 'd31b283780b9a651118939cfc1f7f4f1972609388fe084686ea077c5a1a00ef6'),
(5, 'SML', '3135486464', 'napas', 1700968410, '3135486464', '3634134f31e7d9f8fc69cdd3c28aabdd7413b6db2c61afb3c1a928a492985322'),
(6, 'NCB', 'VNP14214760', 'ATM', 20231201202350, '14214760', '4036f8ba7a0653bad86325fa58140be84e7069b119cd7728fb7553281017552155222d45a775894bce8368a2731d32c7a02bc343347ea85fa302b0345653bf32'),
(7, 'SML', '3105810206', 'napas', 1701745266, '3105810206', 'c5dfd56ee6194ed72dd4b955559ad1fc8b8a70862055294aed34fac9c15563b2'),
(8, 'NCB', 'VNP14229434', 'ATM', 20231208215739, '14229434', '9dfb04c4b18e779a21c79dc2100ab5166045499dcf53fb73b67d90d0201b82be0ec61108469ab87d9484d8dee819e6114e593afe0f3f45840b75cc8bbc1a6c27'),
(9, 'NCB', 'VNP14230340', 'ATM', 20231209102740, '14230340', '6e5ea93201b2804a5d2ecf0518a5e29aed7813d63c457b09225231f57f61d50c2f3c14aae99eeab2fc76e36f15a4b73c3a4a9e6a9a6e748e237cc95b3ff5cbfa'),
(10, 'NCB', 'VNP14257261', 'ATM', 20231222205146, '14257261', 'ab85cc90de41da6538c60631961b96872234c5c22d24c867f6f592a9da0d89dfd339e7e2458904988f0738b9f905004ad37a5d0fa440442db781c1eb82db9981'),
(11, 'NCB', 'VNP14261397', 'ATM', 20231226190501, '14261397', '1e52342333d3cb2f3c3494f681c67f9bfc9d145bdaf792b9fab74597ab375d9941e093d9630ae6c284a66cc1dd73fe84f9594ac41c89d8c367e29f90b01ed99a'),
(12, 'NCB', 'VNP14608508', 'ATM', 20241010083507, '14608508', '7fa69a631e361bd7f6d0f9be606217a6bbbd2255ede3f93c2786cfa352d17741202578ed66b757acede93a8b842d7df55a6fca21f6032c9198d4c345863eb19e'),
(13, 'NCB', 'VNP14608512', 'ATM', 20241010083727, '14608512', 'e07a4b6ba9921ff68754ac16973a3fb8dde59014ef69474b94c3029588d673e8b0dc2754c7364ace8d74bfa74f62231fccc56cf321af55e464ea10f23a9d8366'),
(14, 'NCB', 'VNP14608526', 'ATM', 20241010084856, '14608526', '2ae26d979f992cadef014ebd4f34bada8abdbb4fb1d4c6e9ff31e8c98f7ab7abf4518a1b6aa21820c1902291ffe09ff9d4a0df1e3fa5e88a959d839fbef1d39d'),
(15, 'NCB', 'VNP14608530', 'ATM', 20241010085053, '14608530', 'a2ad3e198b447f959fc30d5c18c90609017721d2af7794ec06d9a28c96e49612464a446b80d5721f04afc4a21da1e0d68dc828fe4f05aa6d0a2848700c5a927b'),
(16, 'SML', '4186947222', 'napas', 1728525202, '4186947222', '46c1a6df4f206ad31c917d97af34b88dec32259db4fce929c8ff4dbd36c00309'),
(17, 'NCB', 'VNP14611443', 'ATM', 20241012082106, '14611443', '7cca9df25129dc873d5d70c7b4fbf5e19a1910297fd01ee9474f342a932d7a54fffcd81946380cf12966ebc3636e529e562330bb5fc9c3b6bbf722a62005d7be'),
(18, 'SML', '0', 'napas', 1728696221, '0', 'e582b36ead53c3a60948a7ca0010df9138b09c71cf53135936f6796ad128ad86'),
(19, 'NCB', 'VNP14612264', 'ATM', 20241013112754, '14612264', 'ff9452eec3f7c2ce20eb7285144c6d71275bb8b980d9312df55db44d898c59efeea6c0e8cbb41de90774834a20916c90d80e4f0fb3c0ea4d35e4e9b655d00f2c'),
(20, 'NCB', 'VNP14612273', 'ATM', 20241013114400, '14612273', 'd3608ee615dd128f263ad3065354a37490f3610efb7576f525133aaf477db7de8b957abe6c2eb98f8c359cb0f8d7854d0933f0da7155f7eb77ea283162fea839'),
(21, 'SML', '0', 'napas', 1728797691, '0', '54911543087feb73059be0c6fda261c90ef304809c54d48e967f170cad2f3f2d'),
(22, 'NCB', 'VNP14612614', 'ATM', 20241013194851, '14612614', 'c45b4ba2f46554c94286b4983ccd99688c37f97dc1c1c9e62e290adfce6f870e9802a899a89f9e3fc3e8b575dee3b2973936cc219209e7eaffe3b643a32a8158');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` smallint(6) NOT NULL DEFAULT 0,
  `isVariant` tinyint(4) NOT NULL DEFAULT 0,
  `sold` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 50,
  `thumb` text NOT NULL,
  `totalRatings` float NOT NULL DEFAULT 0,
  `totalUserRatings` mediumint(9) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `cate_id` int(11) NOT NULL,
  `slug` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `view` mediumint(9) NOT NULL DEFAULT 0,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `brand_id`, `price`, `discount`, `isVariant`, `sold`, `quantity`, `thumb`, `totalRatings`, `totalUserRatings`, `short_description`, `description`, `cate_id`, `slug`, `status`, `view`, `create_at`, `update_at`) VALUES
(116, 'Máy ảnh Sony Alpha A6400 (Black)', 43, 1499998, 0, 1, 0, 50, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727868578/upload_ecommerce/rowjslp0z9vb2ceibgfx.png', 0, 0, 'Sony A6400 được coi là chiếc máy ảnh có tốc độ lấy nét nhanh nhất thế giới tại thời điểm ra mắt khi sở hữu tốc độ lấy nét chỉ 0.02 giây. Đây là thế hệ tiếp theo của chiếc Sony A6300, máy được cải tiến về màn hình có thể lật 180 độ để chụp ảnh tự sướng và quay vlog dễ dàng hơn.', '<h2>Thiết kế của Sony A6400 ( ILCE-6400 / ILCE-6400L / ILCE-6400M )</h2><p>Body Sony A6400 (ILCE-6400 / ILCE-6400L / ILCE-6400M)&nbsp;gần như không có thay đổi về ngoại hình so với các đàn anh dòng <a href=\"https://vjshop.vn/may-anh-mirrorless\">máy ảnh mirrorless</a>&nbsp;A6000 của nó, máy vẫn có thiết kế nhỏ gọn, đầy đủ các phím chức năng để nhanh chóng điều khiển mọi thông số.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-an-sony-a6400.jpg\" alt=\"máy ảnh Sony A6400\"></p><h2>Cảm biến hình ảnh trên Sony A6400</h2><p>Sony a6400 (body) được trang bị cảm biến hình ảnh APS-C 24,2MP kết hợp với bộ xử lý BIONZ X nâng cấp để mang lại chất lượng hình ảnh và tái tạo màu sắc được cải thiện trong mọi điều kiện chụp. ISO tiêu chuẩn lên tới ISO 32.000 cho cả ảnh tĩnh và quay phim và có thể mở rộng lên tới ISO 102.400 cho ảnh tĩnh, giảm nhiễu tốt ở độ nhạy trung bình và cao.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-1.jpg\" alt=\"màn hình máy ảnh Sony A6400\"></p><p>Sony A6400 cũng thừa hưởng nhiều thuật toán xử lý hình ảnh từ các dòng máy ảnh full-frame của Sony, loại bỏ nhiễu trong khi vẫn giữ được độ phân giải và cải thiện độ sắc nét của ảnh.</p><p>Sony trang bị cho Alpha A6400 khả năng quay phim 4K UHD/30p tốc độ 100 Mb/giây cùng khả năng đọc pixel đầy đủ và không có pixel để thu thập khoảng 2,4 lần lượng dữ liệu cần thiết cho phim 4K, sau đó ghi đè lên nó để tạo ra chất lượng cao với chi tiết và độ sâu.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-3.jpg\" alt=\"hình ảnh thưc tế của máy ảnh Sony A6400\"></p><h2>Công nghệ lấy nét&nbsp;Fast Hybrid AF</h2><p>Lấy nét trong khi quay phim rất nhanh và ổn định nhờ công nghệ Fast Hybrid AF được nâng cấp, giúp cho đối tượng luôn lấy nét mượt mà, ngay cả khi một đối tượng đi qua trước <a href=\"https://vjshop.vn/may-anh\">máy ảnh</a>. Chức năng lấy nét cảm ứng AF tiên tiến này giúp nó trở thành lựa chọn máy ảnh phù hợp cho nhiều vlogger và người tạo video thường xuyên tạo và tải lên nội dung trực tuyến.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-4.jpg\" alt=\"Cổng kết nối trên máy ảnh Sony A6400\"></p><h2>Các công nghệ mới được trang bị trên Sony A6400</h2><h3>HLG (Hybrid Log-Gamma)</h3><p>Ngoài ra, lần đầu tiên trong máy ảnh không gương lật Sony APS-C, A6400 được trang bị cấu hình HLG (Hybrid Log-Gamma), hỗ trợ luồng công việc Instant HDR, cho phép TV tương thích HDR (HLG) phát lại ở chất lượng cao và chân thực hình ảnh 4K HDR sống động. Hơn nữa, cả S-Log2 và S-Log3 đều có sẵn để tăng tính linh hoạt phân loại màu, cũng như chức năng Zebra, hỗ trợ Gamma Display và ghi proxy.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-5.jpg\" alt=\"Sony A6400 chiếc máy ảnh cho mọi công việc làm vlog\"></p><p>Máy ảnh&nbsp;cũng có thể quay Full HD ở tốc độ 120 khung hình / giây với tốc độ lên tới 100 Mb / giây, cho phép xem lại cảnh quay ở mức chậm hơn 4x rất mượt mà.</p><h3>Hệ thống lấy nét tự động</h3><p>Hệ thống lấy nét tự động trên Alpha a6400 (ILCE-6400 / ILCE-6400L / ILCE-6400M) thừa hưởng nhiều công nghệ từ các dòng máy ảnh full-frame của Sony, bao gồm các mẫu A9, A7R III và A7 III. A6400 có 425 điểm AF theo pha và 425 điểm AF theo tương phản được đặt dày đặc trên toàn bộ khu vực hình ảnh, chiếm khoảng 84% diện tích hình ảnh.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-6.jpg\" alt=\"Công nghệ lấy nét của máy ảnh Sony A6400\"></p><h3>Hệ thống AF</h3><p>Hệ thống AF theo dõi hiệu suất cao, tốc độ cao này được kết hợp với công cụ xử lý hình ảnh BIONZ X kết hợp với nhau cho phép máy ảnh lấy nét trong ít nhất 0,02 giây và duy trì khóa đối tượng hiệu quả, đảm bảo có thể theo dõi các đối tượng chuyển động nhanh nhất và chụp dễ dàng.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-7.jpg\" alt=\"real time tracking trên Sony A6400\"></p><h3>Real-time Eyes AF</h3><p>Sony A6400 giới thiệu Real-time Eyes AF, phiên bản mới nhất của công nghệ Eye AF của Sony. Khả năng này sử dụng nhận dạng đối tượng dựa trên trí thông minh nhân tạo để phát hiện và xử lý dữ liệu mắt theo thời gian thực, giúp cải thiện độ chính xác, tốc độ và hiệu suất theo dõi của Eye AF.</p><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-8.jpg\" alt=\"Real-time Eyes AF trên Sony A6400\"></p><h3>Tốc độ chụp nhanh</h3><p>Về tốc độ chụp tổng thể, máy có thể chụp với tốc độ tối đa 11 khung hình/giây khi sử dụng màn trập cơ và tối đa 8 khung hình/giây với màn trập điện tử. Máy có thể chụp ở mỗi tốc độ này cho tối đa 116 ảnh JPEG Standard và 46 ảnh Raw.</p><h3>Các kết nối không dây tiện lợi</h3><p><img src=\"https://cdn.vjshop.vn/may-anh/mirrorless/sony/sony-alpha-a6400/may-anh-sony-a6400-9.jpg\" alt=\"may-anh-Sony A6400-9\"></p><p>Tương tự như các máy đời trước, <a href=\"https://vjshop.vn/may-anh-mirrorless/sony-alpha-a6400-black-body-only\">Sony A6400</a> vẫn có thể chuyển hình ảnh vừa chụp qua các thiết bị di động thông qua Wifi, Bluetooth và NFC một cách nhanh chóng để bạn có thể chia sẻ lên mạng xã hội ngay lập tức.</p>', 6, 'may-anh-sony-alpha-a6400-black-66fd4059f395d', 1, 24, '2024-06-23 15:02:15', '2024-06-23 15:02:15'),
(118, 'Iphone 16', 1, 22990000, 0, 1, 0, 50, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727873641/upload_ecommerce/phpD165_jdupe5.png', 5, 1, 'Iphone 16', '<p><strong>Đánh dấu cuộc bứt phá về cả phần cứng và phần mềm, </strong><a href=\"https://fptshop.com.vn/dien-thoai/iphone-16\"><strong>iPhone 16 thường</strong></a><strong> phiên bản 128GB sở hữu chip xử lý A18 mạnh mẽ, đồng thời được thiết kế nhằm phát huy hết sức mạnh của bộ công cụ Apple Intelligence. Sản phẩm có nút Điều Khiển Camera tân tiến và đạt thời lượng pin cực kỳ ấn tượng.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_1_04ab3981a5.jpg\" alt=\"iPhone 16 1\"></figure><h2><strong>Điều khiển camera với nút bấm tiện dụng</strong></h2><p>Trải nghiệm chụp ảnh trên <a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a> chưa khi nào dễ dàng đến thế, sự xuất hiện của nút Điều Khiển Camera giúp người dùng <a href=\"https://fptshop.com.vn/dien-thoai/iphone-16-series\">iPhone 16</a> nhanh chóng quay chụp trong tích tắc. Mỗi khi cần chuyển đổi giữa các chức năng nhiếp ảnh, bạn chỉ cần vuốt nhẹ ngón tay trên nút bấm thay vì thao tác phức tạp qua màn hình như trước.</p><p>Bạn hãy nhấn một lần nếu muốn khởi chạy camera, nhấn thêm một lần nữa là có thể chụp hình ngay lập tức. Khi đang ở chế độ video, thao tác nhấn một lần sẽ ra lệnh cho iPhone 16 bắt đầu ghi hình. Tất cả nhằm giúp cho trải nghiệm quay chụp được thuận tiện hơn, chuyên nghiệp hơn.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_2_dea53b1022.jpg\" alt=\"iPhone 16 2\"></figure><h2><strong>Camera đẳng cấp và chụp ảnh tuyệt đẹp</strong></h2><p>Với hệ thống camera thế hệ mới, iPhone 16 thể hiện năng lực nhiếp ảnh tuyệt vời. Trong đó, camera Fusion 48MP cho phép chiếc <a href=\"https://fptshop.com.vn/dien-thoai\">điện thoại</a> bắt được những khuôn hình tuyệt đẹp với độ phân giải cực cao, đồng thời thực hiện tác vụ Telephoto đạt chất lượng quang học 2x.</p><p>Ngoài ra, camera Ultra Wide sẽ hỗ trợ người dùng chụp và quay video macro với độ sắc nét rất cao, đồng thời dễ dàng thu trọn các bối cảnh rộng lớn vào trong khuôn hình. Ưu thế vượt trội về khẩu độ và số lượng pixel khiến ống kính này có thể chụp ảnh sáng hơn đến 2,6x, thỏa sức sáng tạo những bức ảnh tuyệt đẹp ngay cả trong các bối cảnh ánh sáng yếu.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_3_21b3c73bc6.jpg\" alt=\"iPhone 16 3\"></figure><h2><strong>Chuyển đổi qua lại giữa các phong cách ảnh</strong></h2><p>Để người dùng chỉnh sửa ảnh dễ dàng hơn, <a href=\"https://fptshop.com.vn/apple\">Apple</a> cung cấp cho iPhone 16 nhiều lựa chọn Phong Cách Nhiếp Ảnh khi thực hiện tác vụ hậu kỳ. Bạn sẽ thoải mái biến tấu bức hình với các tông màu khác nhau và chọn phong cách ưng ý làm thiết lập mặc định nếu cần.</p><p>Trước khi áp dụng một nước ảnh nào đó cho bức hình của mình, bạn có thể xem trước hình ảnh thành phẩm ra sao sau khi chỉnh sửa. Sự mạnh mẽ của chip A18 tạo điều kiện cho người dùng sử dụng thanh trượt nhằm tăng/giảm độ đậm nhạt cho một số màu sắc cụ thể trong ảnh, nâng cao tính chuyên nghiệp khi chỉnh sửa ảnh hậu kỳ.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_5_b4182fbf83.jpg\" alt=\"iPhone 16 5\"></figure><h2><strong>Apple A18 – Bước nhảy vọt hơn hai thế hệ chip</strong></h2><p>Được thiết kế nhằm mang lại sức mạnh vượt trội cho iPhone 16, bộ vi xử lý A18 là cuộc bứt phá hơn hai thế hệ chip so với phiên bản A16 Bionic trước kia. Sự trợ giúp đắc lực từ A18 cho phép chiếc điện thoại xử lý mượt những tác vụ phức tạp như Phong Cách Nhiếp Ảnh, Điều Khiển Camera hay chơi game với mức thiết lập đồ họa cao.</p><p>So với chip của <a href=\"https://fptshop.com.vn/dien-thoai/iphone-15\">iPhone 15</a>, bộ vi xử lý A18 có CPU 6 lõi nhanh hơn đến 30% và GPU 5 lõi nhanh hơn đến 40%. Bạn có thể cảm nhận rõ ràng sự mượt mà, sức mạnh và độ hiệu quả mà thế hệ chip mới mang lại khi sử dụng iPhone 16.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_6_6e7636168a.jpg\" alt=\"iPhone 16 6\"></figure><h2><strong>Thỏa sức trải nghiệm với thời lượng pin dài lâu</strong></h2><p>iPhone 16 được tái thiết kế cấu trúc thân máy để có được không gian cho viên pin lớn hơn. Nhờ đó, sản phẩm đạt thời lượng sử dụng hết sức dài lâu. Thiết bị có thể phát video liên tục đến 22 tiếng, nghe nhạc không ngừng nghỉ suốt 80 giờ và trải nghiệm xem phim online đạt ngưỡng 18 tiếng ấn tượng.</p><p>Người dùng iPhone 16 sẽ thỏa mái chơi game, xem phim, lướt mạng xã hội, quay video, chỉnh sửa ảnh và làm mọi tác vụ mình thích suốt ngày dài mà không bận tâm nhiều về vấn đề sạc pin. Ngoài ra, cơ chế sạc không dây MagSafe được cải tiến với công suất đến 25W sẽ cung cấp thời gian sạc nhanh ấn tượng khi bạn sử dụng cùng bộ tiếp hợp nguồn 30W.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_8_195609318c.jpg\" alt=\"iPhone 16 8\"></figure><h2><strong>Thiết kế đẹp xuất sắc, khung vỏ siêu bền chắc</strong></h2><p>Bộ khung vỏ của iPhone 16 được chế tạo từ chất liệu nhôm đạt chuẩn hàng không vũ trụ, đem lại trọng lượng nhẹ nhàng cùng độ bền xuất sắc cho chiếc điện thoại. Lớp kính Ceramic Shield cứng cáp sẽ bảo vệ màn hình iPhone 16 theo cách hiệu quả hơn.</p><p>Sự tái thiết cấu trúc bên trong thân máy giúp chiếc điện thoại đạt hiệu suất tản nhiệt rất tốt, qua đó nâng cao hiệu suất tổng thể cho thiết bị, giúp ích rất nhiều cho những tác vụ đặc thù như chơi game. Về màu sắc, iPhone 16 khoe dáng thanh lịch với các gam màu ấn tượng gồm: Đen, Trắng, Hồng, Xanh Lưu Ly và Xanh Mòng Két.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_9_3471d57a07.jpg\" alt=\"iPhone 16 19\"></figure><h2><strong>Làm vô vàn điều hay ho cùng nút Tác Vụ</strong></h2><p>Sự xuất hiện của nút Tác Vụ thay cho phím gạt tắt âm trên iPhone 16 đem lại trải nghiệm tiện lợi với nhiều cách sử dụng khác nhau. Bạn có thể thiết lập cho nút bấm này tính năng Đèn Pin, Ghi Âm, Nhận Dạng Nhạc, Dịch Thuật, Trợ Năng, Kính Lúp, Chế độ Im Lặng...</p><p>Nút Tác Vụ linh hoạt đến mức cho phép bạn thay đổi chức năng nút bấm tùy theo từng khoảng thời gian trong ngày, hoặc thiết lập các tác vụ cụ thể bên trong một ứng dụng nhất định nào đó như báo thức hoặc order món ăn yêu thích.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_a_79af17d4f8.jpg\" alt=\"iPhone 16 11\"></figure><h2><strong>Trải nghiệm hoàn toàn mới với Apple Intelligence</strong></h2><p>Là thế hệ iPhone đầu tiên được thiết kế để vận hành Apple Intelligence, iPhone 16 cung cấp trải nghiệm trí tuệ cá nhân tiện lợi chưa từng có. Bạn có thể dùng Công Cụ Viết để hiệu chỉnh văn bản trong chớp mắt, chuyển dữ liệu ghi âm sang dạng chữ và tóm lược nội dung nhanh chóng trong vài thao tác nhanh gọn.</p><p>Apple Intelligence cũng đánh dấu kỷ nguyên mới cho Siri khi giúp trợ lý ảo nổi tiếng của iPhone nhận thức bối cảnh hiệu quả hơn, giao tiếp tự nhiên hơn, thấu hiểu ý muốn người dùng hơn để đưa ra các phản hồi vô cùng hiệu quả, hữu ích.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_b_cf807472fc.jpg\" alt=\"iPhone 16 39\"></figure>', 29, 'iphone-16-66fd4260137d3', 1, 28, '2024-10-02 19:53:54', '2024-10-03 09:19:08'),
(119, 'Iphone 16 Pro', 1, 28990000, 0, 1, 0, 50, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874198/upload_ecommerce/php53F1_xw99sv.png', 4, 2, 'Iphone 16 Pro', '<p><strong>Với chip A18 Pro đẳng cấp, iPhone 16 Pro đem lại trải nghiệm bứt phá trong mọi tác vụ. Sản phẩm được gia tăng mạnh mẽ về thời lượng pin và có nút Điều Khiển Camera hoàn toàn mới. Ngoài ra, đây còn là dòng iPhone đầu tiên được thiết kế để vận hành với bộ tính năng Apple Intelligence tiện dụng.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_c_2fc3606c38.jpg\" alt=\"iPhone 16 Pro 1\"></figure><h2><strong>Thiết kế đẳng cấp với chất liệu Titanium</strong></h2><p>Toàn bộ cấu trúc khung vỏ iPhone 16 Pro được hoàn thiện từ chất liệu Titanium Cấp 5 sang trọng. Nhờ đó, thiết bị không chỉ đạt độ cứng cáp ấn tượng mà còn cực kỳ nhẹ nhàng khi cầm trên tay. Việc cải tiến cấu trúc tản nhiệt ở thân máy và mặt sau giúp duy trì hiệu suất tốt hơn 20% so với thế hệ tiền nhiệm.</p><p>Chất liệu Ceramic Shield bảo vệ không gian hiển thị rất tốt trong quá trình sử dụng, từ đó giúp iPhone 16 Pro đạt đến đẳng cấp mới về độ bền. Viền màn hình với độ mỏng gần như biến mất tạo nên vẻ đẹp tinh tế cho chiếc điện thoại, đồng thời giúp chúng ta tập trung hơn khi trải nghiệm nội dung trên màn hình.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_l_7f855c1944.jpg\" alt=\"iPhone 16 Pro 11\"></figure><h2><strong>Chụp ảnh tiện dụng với nút Điều Khiển Camera</strong></h2><p>Đến thế hệ iPhone 16 Pro, Apple đã bổ sung thêm nút Điều Khiển Camera ở cạnh phải thân máy, hỗ trợ người dùng kích hoạt nhanh cơ chế chụp ảnh và quay video. Bạn có thể tận dụng nút bấm này để truy cập các chức năng tinh chỉnh độ phơi sáng, độ sâu trường ảnh, chuyển đổi qua lại giữa các ống kính hoặc zoom khung hình nhanh chóng...</p><p>Quá trình thao tác với nút bấm cũng hết sức dễ dàng, bạn chỉ cần nhấn một lần để mở nhanh ứng dụng Camera và nhấn thêm lần nữa để chụp ảnh cấp tốc. Khi đang ở chế độ video, thao tác nhấn một lần sẽ ra lệnh cho iPhone 16 Pro bắt đầu ghi hình. Trong trường hợp muốn lựa chọn các thiết lập camera, bạn hãy nhấn nhẹ hai lần và vuốt ngón tay trên nút bấm để lựa chọn các cài đặt mình cần.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_k_2f4eea05fd.jpg\" alt=\"iPhone 16 Pro 10\"></figure><h2><strong>Trợ thủ quay video xuất sắc trong tầm tay</strong></h2><p>Với khả năng quay video 4K Dolby Vision tốc độ 120 fps, iPhone 16 Pro sẽ giúp bạn sáng tạo những thước phim có độ phân giải siêu nét và tốc độ khung hình cao chưa từng có trên dòng iPhone. Để làm được điều này, Apple đã khéo léo tận dụng sức mạnh từ chip A18 Pro nhằm xử lý hiệu quả dữ liệu hình ảnh do camera Fusion 48MP thu được</p><p>Trong quá trình quay video, iPhone 16 Pro tận dụng hệ thống bốn micro chuẩn studio để thu âm chất lượng cao, đảm bảo mọi thước phim bạn thực hiện đều trọn vẹn về âm và sắc. Các micro này sẽ phân biệt âm thanh chính xác nhằm loại bỏ tạp âm, mang lại trải nghiệm chân thật và rõ nét.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_f_1a59ad2721.jpg\" alt=\"iPhone 16 Pro 5\"></figure><p>&nbsp;</p><h2><strong>Sử dụng camera Ultra Wide 48MP cao cấp</strong></h2><p>Để tăng cường năng lực nhiếp ảnh, iPhone 16 Pro được trang bị thêm camera Ultra Wide 48MP sử dụng cảm biến quad-pixel cao cấp, cho phép chụp ảnh HEIF và ProRAW với độ phân giải ấn tượng cùng cơ chế bắt nét tự động.</p><p>Cầm iPhone 16 Pro trên tay, bạn sẽ dễ dàng thực hiện tác vụ zoom nhờ sự hỗ trợ từ camera Telephoto 5x, thoải mái bắt nét từ khoảng cách rất xa và chụp ảnh cận cảnh với độ chi tiết cực cao. Chủ nhân chiếc điện thoại như có trong tay một thiết bị chụp hình chuyên nghiệp với bảy ống kính chuyên dụng.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_g_ae4435681a.jpg\" alt=\"iPhone 16 Pro 6\"></figure><h2><strong>Sáng tạo các khuôn hình theo phong cách riêng</strong></h2><p>Hãy thỏa sức sáng tạo và biến tấu mọi bức ảnh của bạn với chế độ <i>Phong Cách Nhiếp Ảnh&nbsp;</i>trên iPhone 16 Pro. Khả năng xử lý xuất sắc của chip A18 Pro tạo điều kiện để người dùng thoải mái chuyển đổi tông màu, nước ảnh và thực hiện các bước tinh chỉnh hậu kỳ nhằm tạo nên những khuôn hình ưng ý.</p><p>Trong trường hợp không thích các phong cách sẵn có mà hệ thống cung cấp, người dùng có thể cá nhân hóa tông màu và màu sắc của ảnh qua bảng điều khiển chuyên nghiệp bên trong ứng dụng Camera. Thanh trượt tiện lợi cho phép điều chỉnh sắc độ đậm/nhạt dễ dàng.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_h_cadbcf4730.jpg\" alt=\"iPhone 16 Pro 8\"></figure><h2><strong>Bứt phá hiệu năng với chip A18 Pro đình đám</strong></h2><p>Chip A18 Pro đem lại cho iPhone 16 Pro hiệu năng mạnh mẽ phi thường. Không chỉ đạt tốc độ vượt trội, bộ vi xử lý này còn gây ấn tượng bởi năng lực tiết kiệm điện hiệu quả và hỗ trợ cực tốt cho các tác vụ đặc thù như chơi game AAA, quay phim và chụp ảnh.</p><p>A18 Pro sở hữu 6 lõi CPU nhanh hơn 15% và 6 lõi GPU nhanh hơn 20%. Hệ thống 16 lõi Neural Engine giúp iPhone 16 Pro vận hành hiệu quả và đạt thời lượng pin xuất sắc. Công nghệ dò tia tốc độ cao bằng phần cứng khiến người dùng có được trải nghiệm ấn tượng, trung thực và sống động như thật khi chơi game.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_m_76d9e9398d.jpg\" alt=\"iPhone 16 Pro 12\"></figure><h2><strong>Bước nhảy vọt về pin của iPhone 16 Pro</strong></h2><p>Nhờ thiết kế không gian bên trong thân máy rộng rãi cho viên pin lớn, iPhone 16 Pro sẽ khiến bạn ngạc nhiên bởi thời lượng sử dụng ấn tượng giữa mỗi lần sạc. Lợi thế tiết kiệm năng lượng của chip A18 Pro góp phần giúp chiếc điện thoại đạt được bước nhảy vọt về trải nghiệm pin.</p><p>Kết hợp iPhone 16 Pro với bộ sạc MagSafe mới cùng bộ tiếp hợp nguồn 30W trở lên, bạn có thể sạc tới 50% pin cho thiết bị chỉ trong nửa tiếng ngắn ngủi. Sản phẩm đạt thời lượng xem video đến 27 giờ và hỗ trợ nghe nhạc liên tục xuyên suốt 85 giờ.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_o_afcb1afb39.jpg\" alt=\"iPhone 16 Pro 16\"></figure><h2><strong>Apple Intelligence tiện dụng chưa từng có</strong></h2><p>Là thế hệ iPhone đầu tiên được thiết kế tương thích với Apple Intelligence, iPhone 16 Pro tận dụng trí tuệ nhân tạo để hỗ trợ hiệu quả trong những tác vụ như sáng tạo, giao tiếp, viết lách, tóm tắt văn bản, tóm lược nội dung ghi âm, đề xuất các email quan trọng và đưa ra nhắc nhở về các thông tin cần thiết.</p><p>Ngoài ra, Siri trên iPhone 16 Pro cũng hỗ trợ đắc lực hơn với khả năng thấu hiểu ngôn ngữ phong phú, giao tiếp hiệu quả cùng người dùng và giải đáp cho bạn mọi vướng mắc trong quá trình sử dụng iPhone.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/800x0/iphone_16_pro_max_i_3b6aeb850b.jpg\" alt=\"iPhone 16 Pro 9\"></figure>', 29, 'iphone-16-pro-66fd44edd88c4', 1, 34, '2024-10-02 20:03:19', '2024-10-03 09:23:40'),
(120, 'MacBook Air 13 inch M2 2022', 1, 23990000, 0, 1, 0, 50, 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727891134/upload_ecommerce/phpB055_lzkpmu.jpg', 0, 0, 'MacBook Air 13 inch M2 2022', '<p><strong>Không chỉ khơi gợi cảm hứng qua việc cách tân thiết kế, </strong><a href=\"https://fptshop.com.vn/may-tinh-xach-tay/macbook-air-m2-2022-13-inch\"><strong>MacBook Air M2</strong></a><strong> 2022 còn chứa đựng nguồn sức mạnh lớn lao với chip M2 siêu mạnh, thời lượng pin chạm&nbsp; ngưỡng 18 giờ, màn hình Liquid Retina tuyệt đẹp và hệ thống camera kết hợp cùng âm thanh tân tiến.</strong></p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-1.JPG\" alt=\"MacBook Air M2 2022 13 inch\"></figure><h3><strong>Mỏng, nhẹ và tràn đầy cảm hứng</strong></h3><p>Ngắm nhìn MacBook Air M2 2022, bạn sẽ say đắm trước vẻ đẹp tinh xảo đến từng góc cạnh và độ mỏng đặc trưng vốn có làm nên thương hiệu <a href=\"https://fptshop.com.vn/may-tinh-xach-tay/macbook-air\">MacBook Air</a>. Mỗi thiết bị đều được Apple chế tác và hoàn thiện từ chất liệu nhôm đặc biệt nhằm đảm bảo cả độ nhẹ và sự bền bỉ. Bạn sẽ thoải mái cầm nắm để mang theo thiết bị đi bất cứ đâu. Sản phẩm mang lại bốn tùy chọn màu tuyệt đẹp gồm Xanh, Xám, Bạc và Vàng.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-2.JPG\" alt=\"MacBook Air M2 - Mỏng, nhẹ và tràn đầy cảm hứng\"></figure><h3><strong>Chip M2 nội lực, hiệu quả, êm ái</strong></h3><p>Điểm đột phá về sức mạnh của MacBook Air M2 2022 đến từ chip xử lý <a href=\"https://fptshop.com.vn/tin-tuc/tin-moi/bo-xu-ly-apple-m2-duoc-cong-bo-trong-su-kien-wwdc-2022-146411\">Apple M2</a> với tốc độ ấn tượng hơn nhiều so với <a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tat-tan-tat-ve-chip-apple-m1-bo-vi-xu-ly-dinh-cao-moi-danh-cho-mac-128095\">chip Apple M1</a>, đồng thời sử dụng năng lượng hiệu quả hơn. Bạn có thể hoàn thành công việc của mình nhanh chóng hơn với sự hỗ trợ của bộ CPU 8 nhân cực độ mạnh mẽ. Tạo hình ảnh và chỉnh sửa các tác vụ đồ họa với GPU 8&nbsp;lõi. So với M1, chip M2 nhanh hơn 1.4 lần và giúp MacBook Air M2 ghi nhận thời lượng pin kéo dài 18 tiếng.</p><p>Khả năng vận hành hiệu quả của chip M2 cho phép MacBook Air M2 hoạt động với cường độ cao mà không cần đến sự hỗ trợ của quạt tản nhiệt, đảm bảo độ mỏng gọn và êm ái vượt trội so với các mẫu <a href=\"https://fptshop.com.vn/may-tinh-xach-tay\">laptop</a> khác trên thị trường.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-3.JPG\" alt=\"MacBook Air M2 - Chip M2 nội lực, hiệu quả, êm ái\"></figure><h3><strong>Tối ưu năng lực vận hành với macOS</strong></h3><p>Độ tương thích và khả năng tối ưu phần cứng tuyệt vời của macOS giúp MacBook Air M2 2022 phản hồi nhanh chóng mọi tác vụ bạn mong muốn – bao gồm các phần mềm văn phòng Microsoft 365. Sự linh hoạt của <a href=\"https://fptshop.com.vn/apple\">hệ sinh thái Apple</a> giúp bạn dễ dàng nhận cuộc gọi <a href=\"https://fptshop.com.vn/dien-thoai/apple-iphone\">iPhone</a> ngay trên máy <a href=\"https://fptshop.com.vn/may-tinh-xach-tay/apple-macbook\">Macbook</a>, sử dụng <a href=\"https://fptshop.com.vn/may-tinh-bang/apple-ipad\">iPad</a> như một màn hình phụ và đăng nhập vào MacBook Air M2 thông qua <a href=\"https://fptshop.com.vn/smartwatch/apple-watch\">Apple Watch</a> một cách linh hoạt, mượt mà.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-4.JPG\" alt=\"MacBook Air M2 - Tối ưu năng lực vận hành với macOS\"></figure><h3><strong>Vẻ tuyệt sắc của màn hình Liquid Retina</strong></h3><p>Màn hình Liquid Retina kích cỡ 13.6 inch của MacBook Air M2 2022 có độ sáng cao và cực kỳ sắc nét, dễ dàng tái hiện mọi khung hình sống động nhờ hỗ trợ 1 tỷ màu. Mọi văn bản, hình ảnh và thước phim đều được tái hiện rực rỡ và sống động hơn trên không gian hiển thị này. Bạn sẽ ngỡ ngàng trước độ tương phản phong phú và khả năng tái hiện khuôn hình sắc nét, chi tiết mà MacBook Air M2 2022 có được.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-5.JPG\" alt=\"MacBook Air M2 - Vẻ tuyệt sắc của màn hình Liquid Retina\"></figure><h3><strong>Hình ảnh sắc nét, thanh âm trọn vẹn</strong></h3><p>Mỗi cuộc gọi video call được thực hiện trên MacBook Air M2 2022 đều cho thấy chất lượng xuất sắc nhờ camera FaceTime HD 1080p và hệ thống ba micro&nbsp;thu âm đạt chuẩn chất lượng phòng thu. Bạn hoàn toàn có thể đắm mình vào trong những giai điệu hợp gu và cảm nhận sự xuất sắc mà hệ thống bốn loa ngoài với Spatial Audio đem lại. MacBook Air M2 được thiết kế và hoàn thiện để kích thích mọi giác quan trong bạn.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-6.JPG\" alt=\"MacBook Air M2 - Hình ảnh sắc nét, thanh âm trọn vẹn\"></figure><h3><strong>Truy cập siêu tốc nhờ Touch ID</strong></h3><p>Hệ thống <a href=\"https://fptshop.com.vn/apple/ban-phim\">bàn phím Magic Keyboard</a> đem lại cảm nhận mượt mà khi soạn thảo văn bản. Thiết kế thông minh đem tới trải nghiệm thoải mái mà vẫn yên tĩnh khi sử dụng.</p><p>Apple đã bố trí công nghệ nhận diện vân tay Touch ID ở góc phải thiết bị, giúp chủ nhân MacBook Air M2 2022 dễ dàng đăng nhập vào màn hình chính mà không cần phải gõ mật khẩu rườm rà, đồng thời nhanh chóng xác thực khi tiến hành giao dịch trên môi trường internet. Không gian cảm ứng Force Touch lớn hỗ trợ tối ưu cho quá trình thao tác với độ nhạy và chính xác rất cao.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-7.JPG\" alt=\"MacBook Air M2 - Truy cập siêu tốc nhờ Touch ID\"></figure><h3><strong>Linh hoạt trong phương thức tương tác</strong></h3><p>Phiên bản MacBook Air M2 2022 tiếp tục duy trì phương thức sạc qua cổng MagSafe – cực kỳ tiện lợi cho thao tác kết nối, tháo lắp nhờ cơ chế từ tính thông minh. Nhằm tối ưu khả năng tương tác cho sản phẩm, Apple đặt ở cạnh trái của máy hai cổng Thunderbolt với nhiều ưu thế về năng lực kết nối. Sự hỗ trợ của Thunderbolt cho phép chủ nhân MacBook Air M2 xuất tín hiệu hình ảnh 6K ra màn hình ngoài. Ngoài ra, cổng âm thanh 3.5 mm quen thuộc vẫn được hiện diện ở cạnh phải thiết bị.</p><figure class=\"image\"><img src=\"https://cdn2.fptshop.com.vn/unsafe/564x0/filters:quality(80)/Uploads/images/2015/Tin-Tuc/BaoPK/TechAwards/macbook-air-m2-2022-13-inch-8cpu-8gpu-8gb-256gb-8.JPG\" alt=\"MacBook Air M2 - Linh hoạt trong phương thức tương tác\"></figure>', 10, 'macbook-air-13-inch-m2-2022-66fd86d393c2a', 1, 21, '2024-10-03 00:45:34', '2024-10-03 00:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL DEFAULT 50,
  `discount` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `prod_id`, `price`, `quantity`, `discount`, `weight`) VALUES
(64, 106, 16990000, 335, 6, 0),
(65, 106, 17990000, 332, 0, 0),
(77, 111, 40000000, 23, 0, 0),
(78, 111, 30000000, 34, 25, 0),
(79, 111, 30000000, 78, 0, 0),
(80, 112, 30000000, 33, 0, 0),
(81, 112, 36000000, 45, 0, 0),
(82, 116, 1500000, 50, 0, 500),
(85, 118, 22990000, 50, 0, 500),
(97, 118, 22990000, 50, 0, 500),
(98, 120, 23990000, 50, 0, 1200),
(99, 120, 25990000, 50, 0, 1200),
(100, 119, 25990000, 50, 0, 500),
(101, 119, 28990000, 50, 0, 500),
(102, 116, 1800000, 50, 0, 800);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_orders`
--

INSERT INTO `purchase_orders` (`id`, `supplier_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED DEFAULT 0,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_money` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `prod_id`, `user_id`, `star`, `comment`, `status`, `create_at`, `update_at`) VALUES
(2, 83, 4, 4, 'San pham that su chat luong', 1, '2023-11-23 14:58:53', '2023-12-06 20:30:05'),
(3, 83, 25, 4, 'Người dùng không để lại cảm nghĩ.', 1, '2023-11-23 15:03:49', '2023-11-23 15:27:00'),
(4, 92, 4, 5, 'Sản phẩm đỉnh thựt sự không thể tin nổi <3333', 1, '2023-12-01 20:36:40', '2023-12-01 20:37:08'),
(5, 85, 25, 5, 'Sản phẩm xịn', 1, '2023-12-05 10:07:41', '2023-12-05 10:07:41'),
(6, 86, 26, 4, 'Sản phẩm tốt nhỉ', 1, '2023-12-05 10:08:01', '2023-12-05 10:08:01'),
(7, 84, 28, 5, 'Sản phẩm đẹp hết nước chấm', 1, '2023-12-05 10:08:16', '2023-12-05 10:08:16'),
(8, 89, 27, 1, 'Sản phẩm cũ quá tệ', 1, '2023-12-05 10:08:29', '2023-12-05 10:08:29'),
(9, 90, 29, 5, 'Sản phẩm nhiều lượt mua', 1, '2023-12-05 10:08:56', '2023-12-05 10:08:58'),
(10, 110, 30, 1, 'Sản phẩm tồi quá', 1, '2023-12-08 22:01:34', '2023-12-08 22:01:55'),
(11, 83, 9, 5, 'Sản phẩm rất tốt', 1, '2023-12-09 09:33:59', '2023-12-09 09:33:59'),
(12, 108, 34, 5, 'San  pham rat sin', 1, '2023-12-22 20:53:04', '2023-12-22 20:53:04'),
(13, 105, 35, 5, 'San pham chat luong cao', 1, '2023-12-26 19:06:31', '2023-12-26 19:06:31'),
(14, 84, 4, 5, 'hello', 1, '2024-06-22 16:41:59', '2024-06-22 16:41:59'),
(15, 85, 37, 5, 'sản phẩm 10 điểm', 1, '2024-06-23 20:35:07', '2024-06-23 20:35:07'),
(16, 91, 38, 5, 'ok', 1, '2024-10-02 17:54:51', '2024-10-02 17:54:51'),
(17, 119, 4, 5, 'ngon lần 3', 1, '2024-10-03 00:47:23', '2024-10-03 09:23:40'),
(18, 119, 38, 3, 'ngon', 1, '2024-10-03 07:17:41', '2024-10-03 07:17:41'),
(19, 118, 4, 5, 'ngon', 1, '2024-10-03 09:19:08', '2024-10-03 09:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Người quản trị'),
(2, 'seller', 'Người bán hàng'),
(3, 'customer', 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `store_custom`
--

CREATE TABLE `store_custom` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `open_time` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store_custom`
--

INSERT INTO `store_custom` (`id`, `name`, `phone`, `email`, `address`, `logo`, `open_time`, `create_at`, `update_at`) VALUES
(1, 'NHOMCUATUI', '0862322549', 'admin@gmail.com', '17A, Cộng Hòa, Phường 4, Quận Tân Bình, Thành phố Hồ Chí Minh', 'https://res.cloudinary.com/dale7wvyi/image/upload/v1727874971/upload_ecommerce/php201F_rqk4pb.jpg', 'Thứ hai đến thứ 7: 9am - 10pm | Chủ nhật: 10am - 6pm ', '2023-11-22 20:10:13', '2023-11-22 20:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT '',
  `status` int(11) DEFAULT 1,
  `create_at` datetime DEFAULT current_timestamp(),
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `status`, `create_at`, `email`, `phone`, `address`) VALUES
(1, 'FPT', 1, '2024-06-02 03:10:00', 'khoacntt2003@gmail.com', '0336216500', 'Hẻm 51'),
(2, 'FTECH', 1, '2024-06-02 03:10:00', 'khoa@gmail.com', '0336216546', 'Hẻm 51');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg',
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `isBlock` tinyint(4) NOT NULL DEFAULT 0,
  `role_id` tinyint(4) NOT NULL DEFAULT 3,
  `accessToken` text DEFAULT NULL,
  `refreshToken` varchar(500) DEFAULT NULL,
  `create_At` datetime NOT NULL DEFAULT current_timestamp(),
  `update_At` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `avatar`, `address`, `phone`, `isBlock`, `role_id`, `accessToken`, `refreshToken`, `create_At`, `update_At`) VALUES
(4, 'Nguyễn Thanh Bảo', 'admin@gmail.com', '$2y$10$ZW26FPWyZU1s8A0MDeRfTemLwl/140j80Rb9lzfXrLDlMO7jJeAne', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', 'Cần Thơ', '0843175549', 0, 1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo0LCJyb2xlX2lkIjoxLCJmdWxsbmFtZSI6Ik5ndXlcdTFlYzVuIFRoYW5oIEJcdTFlYTNvIiwiYXZhdGFyIjoiaHR0cHM6XC9cL3Q0LmZ0Y2RuLm5ldFwvanBnXC8wNVwvNDlcLzk4XC8zOVwvMzYwX0ZfNTQ5OTgzOTcwX2JSQ2tZZmswUDZQUDVmS2JNaFpNSWIwN21DSjZlc1hMLmpwZyIsImlzQmxvY2siOjAsImV4cCI6MTcyODgwNDk2Mn0.M154HNRVAX8AdLKsr5efoSV-wKzdGqDTkdY3jbRFZJ0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjQsImV4cCI6MTcyOTQwMjU2Mn0.phTrbl7y_eVMcFqxlyvTV7_-lc9dfplFTOyJl-XmMZ0', '2023-10-02 08:15:37', '2024-10-13 12:36:02'),
(25, 'Tran Van E', 'tranvane@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0987654321', 0, 3, '', '', '2023-11-21 17:16:37', '2023-12-06 20:44:28'),
(27, 'Tran Van D', 'tranvand@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:43:18', '2023-12-06 20:43:18'),
(28, 'Tran Van A', 'tranvana@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:43:47', '2023-12-06 20:43:47'),
(29, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:45:03', '2023-12-06 20:45:03'),
(30, 'Nguyen Van B', 'nguyenvanb@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:45:33', '2023-12-06 20:45:33'),
(31, 'Nguyễn Văn C', 'nguyenvanc@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:46:12', '2023-12-06 20:46:12'),
(32, 'Nguyên Văn E', 'nguyenvane@gmail.com', '$2y$10$lUctaWcCDsBuqUDMfOjrgurE38WXuChJYqmD3MTLOlsYYbzK5zkTS', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '', 0, 3, '', '', '2023-12-06 20:46:36', '2023-12-06 20:46:36'),
(38, 'Nguyễn Thanh Bảo', 'nguyenthanhbao9a@gmail.com', '$2y$10$AD.s5LtYMRBrpKohPDC4uO4FhYLhNbxmEG3Om8kd0fbCm6o9iHpBm', 'https://t4.ftcdn.net/jpg/05/49/98/39/360_F_549983970_bRCkYfk0P6PP5fKbMhZMIb07mCJ6esXL.jpg', '', '0862322549', 0, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjozOCwicm9sZV9pZCI6MiwiZnVsbG5hbWUiOiJOZ3V5XHUxZWM1biBUaGFuaCBCXHUxZWEzbyIsImF2YXRhciI6Imh0dHBzOlwvXC90NC5mdGNkbi5uZXRcL2pwZ1wvMDVcLzQ5XC85OFwvMzlcLzM2MF9GXzU0OTk4Mzk3MF9iUkNrWWZrMFA2UFA1ZktiTWhaTUliMDdtQ0o2ZXNYTC5qcGciLCJpc0Jsb2NrIjowLCJleHAiOjE3Mjg3ODkzNDh9.OiuLZSUdnDVl6TGfH-78LOJupFGg96-iEkdwemxg-nA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyZWZyZXNoVG9rZW4iOjM4LCJleHAiOjE3MjkzODY5NDh9.jAhJaDQ84SjmqYOWPO2BWTNKXxb8hDKhxIgn8RI-1lA', '2024-10-01 20:00:47', '2024-10-13 08:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `variants_value`
--

CREATE TABLE `variants_value` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `variants_value`
--

INSERT INTO `variants_value` (`id`, `product_variant_id`, `attribute_id`, `attribute_value_id`) VALUES
(135, 64, 23, 43),
(136, 65, 23, 44),
(162, 77, 20, 17),
(163, 77, 21, 20),
(164, 77, 23, 28),
(165, 78, 20, 17),
(166, 78, 21, 21),
(167, 78, 23, 29),
(168, 79, 20, 18),
(169, 79, 23, 24),
(170, 80, 20, 17),
(171, 80, 21, 20),
(172, 80, 23, 44),
(173, 81, 20, 18),
(174, 81, 21, 20),
(175, 81, 23, 43),
(176, 82, 20, 18),
(182, 85, 20, 17),
(183, 85, 21, 20),
(184, 85, 23, 25),
(222, 97, 20, 18),
(223, 97, 21, 19),
(224, 97, 23, 43),
(225, 97, 32, 48),
(226, 98, 20, 18),
(227, 98, 21, 21),
(228, 98, 23, 23),
(229, 98, 32, 49),
(230, 99, 20, 18),
(231, 99, 21, 32),
(232, 99, 23, 22),
(233, 99, 32, 49),
(234, 100, 20, 18),
(235, 100, 21, 21),
(236, 100, 23, 23),
(237, 100, 32, 46),
(238, 101, 20, 30),
(239, 101, 21, 21),
(240, 101, 23, 23),
(241, 101, 32, 46),
(242, 102, 20, 30),
(243, 102, 21, 21),
(244, 102, 32, 46);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`) VALUES
(1, 9),
(2, 38),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist_item`
--

CREATE TABLE `wishlist_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `wishlist_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_variant_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist_item`
--

INSERT INTO `wishlist_item` (`id`, `wishlist_id`, `product_id`, `product_variant_id`) VALUES
(1, 1, 0, 8),
(2, 1, 0, 9),
(3, 2, 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_id` (`attribute_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`product_variant_id`),
  ADD KEY `prod_id_2` (`product_variant_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `product_variant_id` (`product_variant_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `images_product`
--
ALTER TABLE `images_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_variant_id` (`product_variant_id`),
  ADD KEY `product_id` (`product_variant_id`),
  ADD KEY `product_variant_id_2` (`product_variant_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_method_id` (`payment_method_id`,`payment_transaction_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`,`user_id`),
  ADD KEY `prod_id_2` (`prod_id`,`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_custom`
--
ALTER TABLE `store_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`phone`),
  ADD KEY `email_2` (`email`,`phone`),
  ADD KEY `email_3` (`email`,`phone`);

--
-- Indexes for table `variants_value`
--
ALTER TABLE `variants_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_id` (`product_variant_id`,`attribute_id`,`attribute_value_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images_product`
--
ALTER TABLE `images_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `store_custom`
--
ALTER TABLE `store_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `variants_value`
--
ALTER TABLE `variants_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist_item`
--
ALTER TABLE `wishlist_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
