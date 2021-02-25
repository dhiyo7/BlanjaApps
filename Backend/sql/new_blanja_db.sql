-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 26 Feb 2021 pada 02.42
-- Versi Server: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_blanja_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `address_customer`
--

CREATE TABLE `address_customer` (
  `id_address` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `address_customer`
--

INSERT INTO `address_customer` (`id_address`, `fullname`, `address`, `city`, `region`, `zip_code`, `country`, `id_user`) VALUES
(1, 'Dhiya Reksa', 'Jl. Sindoro Dalam 5 Rt.2 Rw.22', 'Pemalang', 'Jawa Tengah', '35513', 'Indonesia', 4),
(2, 'Faqih', 'Jl. Sumbodro', 'Tegal', 'Jawa Tengah', '35587', 'Indonesia', 4),
(3, 'Cek Debug', 'Jl. Lele Dumbo', 'Pemalang', 'Jawa Tengah', '32178', 'Indonesia', 4),
(4, 'Dhiyo Lagi Update 2', 'Jl. Nusa Indah', 'Pemalang', 'Jawa Tengah', '52341', 'Indonesia', 4),
(5, 'User Gans', 'Jl. Sumbing 7', 'Pemalang', 'Jawa Tengah', '36428', 'Indonesia', 8),
(6, 'Rizal', 'Jl. Kupang 8', 'Tegal', 'Jawa Tengah', '42421', 'Indonesia', 8),
(7, 'Paijo', 'Jl. Semangka 7 rt 2 rw 20', 'Pemlanag', 'Jawa Tengah', '23192', 'Indonesia', 8),
(8, 'Dhiyo', 'Jl. Piranha 7', 'Pemalang', 'Jawa Tengah', '452341', 'Indonesia', 9),
(9, 'Dhiya Resa', 'JL. Sindoro 5', 'Pemalang', 'Jawa Tengah', '52123', 'Indonesia', 12),
(10, 'Akbar', 'Jl Sindoro', 'Pemalang', 'Jawa Tengah', '124321', 'Indonesia', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_photo` varchar(255) NOT NULL,
  `color_hexa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id_categories`, `category_name`, `category_photo`, `color_hexa`) VALUES
(4, 'Short', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/ShortCategory_czom62.png', '#1C3391'),
(5, 'Jacket', 'https://res.cloudinary.com/devloops7/image/upload/v1605447840/newBlanja/JacketCategory_jvjeee.png', '#F67B02'),
(9, 'T-Shirt', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/TshirtCategory_odymmz.png', '#CC0B04'),
(13, 'Hat', 'https://res.cloudinary.com/devloops7/image/upload/v1605888520/newBlanja/hiclipart_40_s4ugon.png', '#53D850'),
(14, 'Glasses', 'https://res.cloudinary.com/devloops7/image/upload/v1605888519/newBlanja/hiclipart_38_qyywq0.png', '#5086D8'),
(15, 'High heels', 'https://res.cloudinary.com/devloops7/image/upload/v1605888519/newBlanja/hiclipart_30_hw7ic8.png', '#5650D8'),
(16, 'Wristwatch', 'https://res.cloudinary.com/devloops7/image/upload/v1605888519/newBlanja/hiclipart_xhd2tw.png', '#B5D850'),
(17, 'Handbag', 'https://res.cloudinary.com/devloops7/image/upload/v1605888520/newBlanja/hiclipart-1_goxcip.png', '#50C8D8'),
(18, 'Bagback', 'https://res.cloudinary.com/devloops7/image/upload/v1605888519/newBlanja/hiclipart_10_zqsyov.png', '#\r\nAC50D8'),
(19, 'Socks', 'https://res.cloudinary.com/devloops7/image/upload/v1605888519/newBlanja/hiclipart_36_onssfd.png', '#D85089'),
(20, 'Tie', 'https://res.cloudinary.com/devloops7/image/upload/v1605888520/newBlanja/hiclipart_42_aw0nhy.png', '#D8BA50'),
(21, 'Formal suit', 'https://res.cloudinary.com/devloops7/image/upload/v1605888520/newBlanja/hiclipart_44_jozszj.png', '#50D8AF'),
(22, 'Pants', 'https://res.cloudinary.com/devloops7/image/upload/v1605447840/newBlanja/PantsCategory_qz4r9h.png', '#E31F51'),
(23, 'Shoes', 'https://res.cloudinary.com/devloops7/image/upload/v1605447841/newBlanja/ShoesCategory_kd4uah.png', '#57CD9E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `seller` int(11) NOT NULL,
  `buyyer` int(11) NOT NULL,
  `chatroom` varchar(255) NOT NULL,
  `sender` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `seller`, `buyyer`, `chatroom`, `sender`, `message`, `created_at`) VALUES
(46, 6, 13, 'S6B13', 13, 'apakah barang ini masih Ada?', '2021-02-26'),
(47, 6, 13, 'S6B13', 6, 'masih', '2021-02-26'),
(48, 6, 13, 'S6B13', 6, 'mau ambil berapa gan?', '2021-02-26'),
(49, 6, 13, 'S6B13', 13, '2 kayaknya ...', '2021-02-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `color_name` varchar(30) NOT NULL,
  `color_hexa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_hexa`) VALUES
(1, 'Blue', '#0000FF'),
(2, 'Red', '#FF0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `conditions`
--

CREATE TABLE `conditions` (
  `id` int(11) NOT NULL,
  `conditions` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `conditions`
--

INSERT INTO `conditions` (`id`, `conditions`) VALUES
(1, 'New'),
(2, 'Second');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_detail`
--

CREATE TABLE `customer_detail` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `levels`
--

INSERT INTO `levels` (`id`, `level`) VALUES
(1, 'customer'),
(2, 'seller');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_code` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `id_address` int(11) NOT NULL,
  `status_order` set('On Process','Delivery','Delivered') NOT NULL DEFAULT 'On Process',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `transaction_code`, `total`, `user_id`, `seller_id`, `id_address`, `status_order`, `created_at`, `updated_at`) VALUES
(22, 7707, 21000, 4, NULL, 1, 'Delivery', '2021-01-17 04:12:24', '2021-01-28 01:28:19'),
(23, 9007, 80000, 4, NULL, 1, 'On Process', '2021-01-17 04:27:57', '2021-01-26 03:18:43'),
(24, 7777, 50000, 4, NULL, 1, 'On Process', '2021-01-17 21:53:57', '2021-01-26 03:18:43'),
(25, 39627, 550000, 4, NULL, 1, 'On Process', '2021-01-18 01:28:21', '2021-01-26 03:18:43'),
(26, 787, 400000, 4, NULL, 1, 'On Process', '2021-01-20 23:47:49', '2021-01-26 03:18:43'),
(27, 50800, 360000, 4, NULL, 1, 'On Process', '2021-01-20 23:50:40', '2021-01-26 03:18:43'),
(28, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:52:12', '2021-01-26 03:18:43'),
(29, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:52:34', '2021-01-26 03:18:43'),
(30, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:58:59', '2021-01-26 03:18:43'),
(31, 16600, 150000, 4, NULL, 1, 'On Process', '2021-01-20 23:59:57', '2021-01-26 03:18:43'),
(32, 74026, 100000, 4, NULL, 1, 'On Process', '2021-01-21 00:01:39', '2021-01-26 03:18:43'),
(33, 52815, 240000, 4, NULL, 1, 'On Process', '2021-01-21 01:04:25', '2021-01-26 03:18:43'),
(34, 13207, 600000, 4, NULL, 1, 'On Process', '2021-01-21 01:09:01', '2021-01-26 03:18:43'),
(35, 6072, 450000, 4, NULL, 1, 'On Process', '2021-01-21 01:16:11', '2021-01-26 03:18:43'),
(36, 42502, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:20:13', '2021-01-26 03:18:43'),
(37, 64165, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:26:45', '2021-01-26 03:18:43'),
(38, 90739, 20000, 4, NULL, 1, 'On Process', '2021-01-21 01:29:44', '2021-01-26 03:18:43'),
(39, 29247, 160000, 4, NULL, 1, 'On Process', '2021-01-21 01:42:13', '2021-01-26 03:18:43'),
(40, 26289, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:43:21', '2021-01-26 03:18:43'),
(41, 78107, 80000, 4, NULL, 1, 'On Process', '2021-01-21 01:44:12', '2021-01-26 03:18:43'),
(42, 67011, 240000, 4, NULL, 1, 'On Process', '2021-01-21 08:42:12', '2021-01-26 03:18:43'),
(43, 85013, 180000, 4, NULL, 1, 'On Process', '2021-01-21 08:43:14', '2021-01-26 03:18:43'),
(44, 88249, 180000, 4, NULL, 1, 'On Process', '2021-01-21 08:50:39', '2021-01-26 03:18:43'),
(45, 4577, 400000, 4, NULL, 1, 'On Process', '2021-01-21 09:17:24', '2021-01-26 03:18:43'),
(46, 12794, 540000, 4, NULL, 1, 'On Process', '2021-01-21 09:23:03', '2021-01-26 03:18:43'),
(47, 508, 450000, 4, NULL, 1, 'On Process', '2021-01-21 09:37:13', '2021-01-26 03:18:43'),
(48, 43908, 160000, 4, NULL, 1, 'On Process', '2021-01-21 09:37:32', '2021-01-26 03:18:43'),
(49, 60017, 460000, 4, NULL, 1, 'On Process', '2021-01-21 10:42:24', '2021-01-26 03:18:43'),
(50, 57133, 760000, 4, NULL, 1, 'On Process', '2021-01-21 14:53:49', '2021-01-26 03:18:43'),
(51, 89420, 340000, 4, NULL, 1, 'On Process', '2021-01-21 15:57:26', '2021-01-26 03:18:43'),
(52, 43566, 840000, 4, NULL, 1, 'On Process', '2021-01-21 19:39:32', '2021-01-26 03:18:43'),
(53, 27509, 1350000, 4, NULL, 1, 'On Process', '2021-01-21 20:39:56', '2021-01-26 03:18:43'),
(54, 14092, 1350000, 8, NULL, 0, 'On Process', '2021-01-24 05:20:18', '2021-01-24 05:20:18'),
(55, 70454, 120000, 8, NULL, 0, 'On Process', '2021-01-24 07:18:51', '2021-01-24 07:18:51'),
(56, 55129, 240000, 8, NULL, 0, 'On Process', '2021-01-24 22:39:12', '2021-01-24 22:39:12'),
(57, 7707, 21000, 9, NULL, 2, 'On Process', '2021-01-26 03:23:38', '2021-01-26 03:23:38'),
(58, 7707, 21000, 9, NULL, 2, 'On Process', '2021-01-26 03:47:34', '2021-01-26 03:47:34'),
(59, 28018, 480000, 8, NULL, 5, 'On Process', '2021-01-27 10:28:10', '2021-01-27 10:28:10'),
(60, 23821, 80000, 8, NULL, 5, 'On Process', '2021-01-27 12:30:26', '2021-01-27 12:30:26'),
(61, 59486, 1160000, 8, NULL, 5, 'On Process', '2021-01-27 14:00:22', '2021-01-27 14:00:22'),
(62, 15989, 360000, 8, NULL, 5, 'Delivered', '2021-01-27 23:02:07', '2021-02-24 20:06:05'),
(65, 2601, 21000, 9, 7, 2, 'Delivered', '2021-01-28 01:07:27', '2021-01-28 01:29:13'),
(66, 2801, 21000, 9, 7, 2, 'On Process', '2021-01-28 02:17:36', '2021-01-28 02:17:36'),
(67, 36692, 320000, 9, NULL, 8, 'On Process', '2021-01-28 14:07:39', '2021-01-28 14:07:39'),
(68, 22416, 240000, 12, NULL, 9, 'On Process', '2021-01-28 17:10:36', '2021-01-28 17:10:36'),
(69, 45381, 120000, 12, NULL, 9, 'On Process', '2021-01-28 17:25:28', '2021-01-28 17:25:28'),
(70, 70991, 1000000, 8, NULL, 5, 'On Process', '2021-01-29 08:57:00', '2021-01-29 08:57:00'),
(71, 99352, 270000, 4, NULL, 1, 'On Process', '2021-02-15 16:13:40', '2021-02-15 16:13:40'),
(72, 27228, 100000, 4, NULL, 1, 'On Process', '2021-02-15 16:15:42', '2021-02-15 16:15:42'),
(73, 73245, 165000, 4, 6, 1, 'On Process', '2021-02-22 20:35:23', '2021-02-22 20:41:40'),
(74, 64802, 165000, 4, NULL, 1, 'On Process', '2021-02-22 20:56:10', '2021-02-22 20:56:10'),
(75, 58623, 120000, 4, NULL, 1, 'On Process', '2021-02-22 23:52:16', '2021-02-22 23:52:16'),
(76, 61562, 120000, 4, 7, 1, 'On Process', '2021-02-22 23:56:45', '2021-02-22 23:56:45'),
(77, 79630, 165000, 4, 6, 1, 'On Process', '2021-02-22 23:57:55', '2021-02-22 23:57:55'),
(78, 15639, 230000, 4, 6, 1, 'On Process', '2021-02-23 00:00:55', '2021-02-23 00:00:55'),
(79, 96691, 460000, 4, 6, 1, 'On Process', '2021-02-23 00:03:59', '2021-02-23 00:03:59'),
(80, 72173, 165000, 4, 6, 1, 'On Process', '2021-02-23 00:26:07', '2021-02-23 00:26:07'),
(81, 98551, 100000, 4, 6, 1, 'On Process', '2021-02-23 00:33:55', '2021-02-23 00:33:55'),
(82, 91081, 165000, 4, 6, 4, 'On Process', '2021-02-24 01:29:19', '2021-02-24 01:29:19'),
(83, 70461, 165000, 13, 6, 10, 'Delivery', '2021-02-24 01:47:00', '2021-02-25 19:19:52'),
(84, 56180, 240000, 4, 7, 1, 'On Process', '2021-02-24 19:16:16', '2021-02-24 19:16:16'),
(85, 15890, 330000, 14, 6, 10, 'Delivered', '2021-02-24 22:17:28', '2021-02-25 16:33:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `sub_total_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `product_qty`, `sub_total_item`) VALUES
(22, 1, 2, 6000),
(22, 2, 3, 15000),
(23, 7, 5, 35000),
(23, 2, 3, 15000),
(23, 10, 3, 30000),
(24, 9, 5, 35000),
(24, 2, 3, 15000),
(25, 44, 1, 550000),
(26, 36, 5, 400000),
(27, 33, 2, 360000),
(28, 30, 1, 150000),
(29, 30, 1, 150000),
(30, 30, 1, 150000),
(31, 30, 1, 150000),
(32, 32, 5, 100000),
(33, 36, 3, 240000),
(34, 36, 3, 240000),
(34, 33, 2, 360000),
(35, 30, 3, 450000),
(36, 36, 1, 80000),
(37, 36, 1, 80000),
(38, 32, 1, 20000),
(39, 36, 2, 160000),
(40, 37, 1, 80000),
(41, 35, 1, 80000),
(42, 31, 2, 240000),
(43, 33, 1, 180000),
(44, 33, 1, 180000),
(45, 42, 4, 400000),
(46, 33, 3, 540000),
(47, 30, 3, 450000),
(48, 35, 2, 160000),
(49, 30, 2, 300000),
(49, 35, 2, 160000),
(50, 43, 2, 400000),
(50, 33, 2, 360000),
(51, 32, 5, 100000),
(51, 35, 3, 240000),
(52, 30, 2, 300000),
(52, 33, 3, 540000),
(53, 44, 3, 1350000),
(54, 33, 5, 900000),
(54, 30, 3, 450000),
(55, 31, 1, 120000),
(56, 36, 3, 240000),
(57, 31, 2, 6000),
(57, 32, 3, 15000),
(58, 31, 2, 6000),
(58, 32, 3, 15000),
(59, 31, 2, 240000),
(59, 37, 3, 240000),
(60, 37, 1, 80000),
(61, 31, 5, 600000),
(61, 37, 3, 240000),
(61, 38, 4, 320000),
(62, 31, 3, 360000),
(63, 1, 2, 6000),
(63, 2, 3, 15000),
(64, 1, 2, 6000),
(64, 2, 3, 15000),
(65, 31, 2, 6000),
(65, 32, 3, 15000),
(66, 31, 2, 6000),
(66, 32, 3, 15000),
(67, 68, 2, 200000),
(67, 31, 1, 120000),
(68, 31, 2, 240000),
(69, 31, 1, 120000),
(70, 70, 1, 1000000),
(71, 31, 1, 120000),
(71, 30, 1, 150000),
(72, 68, 1, 100000),
(73, 74, 1, 165000),
(74, 74, 1, 165000),
(75, 31, 1, 120000),
(76, 31, 1, 120000),
(77, 74, 1, 165000),
(78, 72, 1, 230000),
(79, 72, 2, 460000),
(80, 74, 1, 165000),
(81, 75, 1, 100000),
(82, 74, 1, 165000),
(83, 74, 1, 165000),
(84, 37, 3, 240000),
(85, 74, 2, 330000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `otp_reset`
--

CREATE TABLE `otp_reset` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `condition_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_photo` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `category_id`, `condition_id`, `product_price`, `product_qty`, `product_desc`, `product_photo`, `user_id`, `status_product_id`, `created_at`, `updated_at`) VALUES
(30, 'Kaos State Of Javascript 2019 2', 9, 1, 150000, 20, 'Kaos State Of JS adalah kaos yang di buat special pada event State Of Javascript pada tahun 2019, event ini diadakan setiap tahun untuk melihat hasil survei di seluruh dunia terhadap perkembangan Javascript', '[\"/image/1610299176962-image.jpg \",\"/image/1610299176965-image.jpg \"]', 7, 3, '2021-01-11 00:19:36', '2021-02-22 04:12:16'),
(31, 'Kaos Github', 9, 1, 120000, 11, 'Kaos Github adem, bahan catoon combat 30s nyerep, dan kere', '[\"/image/1610317505488-image.jpg \",\"/image/1610317505493-image.jpg \"]', 7, 3, '2021-01-11 05:25:05', '2021-02-22 04:12:32'),
(32, 'Hoodie Node JS', 5, 1, 20000, 15, 'Hoodie Node JS keren , dibuat untuk kamu yang penggemar JS banget, bahanya babytery adem banget dan lembut', '[\"/image/1610400117211-image.jpg \",\"/image/1610400117214-image.jpeg \"]', 7, 3, '2021-01-12 04:21:57', '2021-02-22 04:12:46'),
(33, 'Hoodie Javascript', 5, 1, 180000, 10, 'Hoodie  JS keren , dibuat untuk kamu yang penggemar JS banget, bahanya babytery adem banget dan lembut', '[\"/image/1610481637671-image.png \"]', 7, 3, '2021-01-13 03:00:37', '2021-02-22 04:12:52'),
(35, 'Ripped Jeans', 4, 1, 80000, 10, 'Ripped Jenas Pendek, keren untuk nyantai , model kekinian abis, murah meriah bahan dan kualitas sangat terjamin, pokoknya keren', '[\"/image/1610641317419-image.jpg \",\"/image/1610641317420-image.jpeg \"]', 7, 3, '2021-01-14 23:21:57', '2021-02-22 04:13:06'),
(36, 'Ripped Jeans 2', 4, 1, 80000, 10, 'Ripped Jenas Pendek, keren untuk nyantai , model kekinian abis, murah meriah bahan dan kualitas sangat terjamin, pokoknya keren', '[\"/image/1610642840640-image.jpg \",\"/image/1610642840643-image.jpeg \"]', 7, 3, '2021-01-14 23:47:20', '2021-02-22 04:13:19'),
(37, 'Ripped Jeans 3', 4, 1, 80000, 10, 'Ripped Jenas Pendek, keren untuk nyantai , model kekinian abis, murah meriah bahan dan kualitas sangat terjamin, pokoknya keren', '[\"/image/1610915098727-image.jpg \",\"/image/1610915098729-image.jpeg \"]', 7, 3, '2021-01-18 03:24:58', '2021-02-22 04:13:32'),
(38, 'Ripped Jeans Paling Baru', 4, 1, 80000, 10, 'Ripped Jenas Pendek, keren untuk nyantai , model kekinian abis, murah meriah bahan dan kualitas sangat terjamin, pokoknya keren', '[\"/image/1611635757604-image.jpg \",\"/image/1611635757607-image.jpeg \"]', 7, 3, '2021-01-26 11:35:57', '2021-02-22 04:13:44'),
(68, 'Bismillah Cek Add', 14, 1, 100000, 10, 'Cek', '[\"/image/1611813715984-image.jpg \"]', 11, 3, '2021-01-28 13:01:56', '2021-02-22 04:13:53'),
(69, 'kaos hitam polos', 9, 1, 30000, 1, 'kaos hitam punya temen saya sendiri', '[\"/image/1611814323244-image.jpg \"]', 11, 3, '2021-01-28 13:12:03', '2021-02-22 04:13:59'),
(70, 'karpet', 14, 1, 1000000, 10, 'karpet tes', '[\"/image/1611814438978-image.jpg \"]', 11, 3, '2021-01-28 13:13:58', '2021-02-22 04:14:06'),
(71, 'cek', 14, 1, 100000, 2, 'cek', '[\"/image/1611817382892-image.jpg \"]', 7, 3, '2021-01-28 14:03:02', '2021-02-22 04:14:13'),
(74, 'Kaos Deus', 9, 1, 165000, 10, 'Kaos Deus Original, Bahan catoon combet 30s, dijamin kualitasnya', '[\"/image/1614000825320-image.jpeg\",\"/image/1614000825342-image.jpeg\",\"/image/1614000825345-image.jpeg\"]', 6, 3, '2021-02-22 20:33:45', '2021-02-22 20:33:45'),
(75, 'Deus New Banget', 4, 1, 100000, 10, 'Deus New Kere', '[\"/image/1614249465567-image.jpeg\",\"/image/1614249465589-image.jpeg\"]', 6, 1, '2021-02-23 00:33:14', '2021-02-25 17:37:45'),
(79, 'Celana Cargo', 13, 1, 120000, 10, 'Celana Cargo', '[\"/image/1614249328541-image.jpeg\",\"/image/1614249328553-image.jpeg\",\"/image/1614249328557-image.jpeg\",\"/image/1614249328606-image.jpeg\"]', 6, 3, '2021-02-25 17:35:28', '2021-02-25 17:35:28'),
(81, 'Topi Distro', 13, 1, 70000, 10, 'Topi Distro', '[\"/image/1614250374177-image.jpeg\"]', 6, 3, '2021-02-25 17:52:54', '2021-02-25 17:54:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`) VALUES
(1, 31, 1),
(2, 31, 2),
(4, 37, 1),
(5, 38, 1),
(6, 39, 1),
(7, 39, 2),
(8, 44, 1),
(9, 44, 2),
(10, 46, 1),
(11, 46, 2),
(12, 50, 1),
(13, 50, 2),
(14, 68, 1),
(15, 68, 2),
(16, 70, 1),
(17, 70, 2),
(18, 71, 1),
(19, 71, 2),
(26, 74, 1),
(40, 79, 1),
(41, 79, 2),
(44, 75, 1),
(45, 75, 2),
(50, 81, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`) VALUES
(1, 31, 3),
(2, 31, 4),
(4, 37, 4),
(5, 39, 1),
(6, 39, 2),
(7, 38, 2),
(8, 44, 1),
(9, 44, 2),
(10, 46, 1),
(11, 46, 2),
(12, 50, 1),
(13, 50, 2),
(14, 68, 2),
(15, 68, 3),
(16, 68, 4),
(17, 68, 5),
(18, 70, 6),
(19, 70, 7),
(20, 71, 1),
(21, 71, 4),
(22, 71, 5),
(34, 74, 3),
(35, 74, 4),
(36, 74, 5),
(57, 79, 4),
(58, 79, 5),
(59, 79, 6),
(63, 75, 3),
(64, 75, 4),
(74, 81, 2),
(75, 81, 3),
(76, 81, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `rating`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 1, 3),
(4, 3, 3),
(5, 3, 3),
(6, 3, 5),
(7, 3, 5),
(8, 4, 5),
(9, 4, 5),
(10, 4, 2),
(11, 5, 2),
(12, 5, 5),
(13, 7, 1),
(14, 8, 1),
(15, 5, 5),
(16, 13, 1),
(17, 14, 1),
(18, 15, 1),
(19, 16, 1),
(20, 17, 1),
(21, 18, 1),
(22, 19, 1),
(23, 20, 1),
(24, 21, 1),
(25, 22, 1),
(26, 23, 1),
(27, 24, 1),
(28, 22, 1),
(29, 23, 1),
(30, 24, 1),
(31, 25, 1),
(32, 26, 1),
(33, 27, 1),
(34, 28, 1),
(35, 29, 1),
(36, 30, 5),
(37, 31, 3),
(38, 32, 3),
(39, 33, 4),
(40, 34, 1),
(41, 35, 1),
(42, 36, 1),
(43, 37, 1),
(44, 38, 1),
(45, 39, 1),
(46, 40, 1),
(47, 41, 1),
(48, 42, 1),
(49, 43, 1),
(50, 44, 1),
(51, 30, 3),
(52, 30, 3),
(53, 30, 4),
(54, 30, 4),
(55, 30, 4),
(56, 30, 2),
(57, 30, 2),
(58, 30, 2),
(59, 30, 2),
(60, 30, 2),
(61, 30, 2),
(62, 30, 5),
(63, 30, 5),
(64, 30, 5),
(65, 30, 5),
(66, 30, 5),
(67, 30, 5),
(68, 30, 5),
(69, 30, 5),
(70, 30, 5),
(71, 30, 5),
(72, 30, 5),
(73, 30, 5),
(74, 30, 5),
(75, 30, 5),
(76, 30, 5),
(77, 30, 5),
(78, 30, 1),
(79, 32, 4),
(80, 31, 4),
(81, 31, 2),
(82, 32, 5),
(83, 35, 4),
(84, 33, 5),
(85, 74, 5),
(86, 74, 5),
(87, 74, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `review`) VALUES
(1, 30, 8, 'Barangnya bagus,, sesuai pesanan'),
(2, 30, 4, 'Barangnya keren, sesuai pesanan'),
(3, 34, 9, 'Barangnya keren, sesuai pesanan'),
(4, 32, 9, 'Barangnya keren, sesuai pesanan'),
(5, 31, 9, 'Barangnya keren, sesuai pesanan'),
(6, 35, 9, 'Barangnya keren, sesuai pesanan'),
(7, 72, 9, 'Barangnya keren, sesuai pesanan'),
(8, 71, 9, 'Barangnya keren, sesuai pesanan'),
(9, 31, 4, 'game sesuai pesanan'),
(10, 32, 4, 'keren'),
(11, 35, 4, 'nice product'),
(12, 33, 4, 'nice product'),
(13, 74, 4, 'Barang keren'),
(14, 74, 13, 'Keren'),
(15, 74, 14, 'Not Bad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seller_detail`
--

CREATE TABLE `seller_detail` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(20) NOT NULL,
  `store_desc` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `size`
--

INSERT INTO `size` (`id`, `size`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'L'),
(5, 'XL'),
(6, 'XXL'),
(7, 'XXXL'),
(8, '28'),
(9, '29'),
(10, '30'),
(11, '31'),
(12, '32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_history`
--

CREATE TABLE `status_history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_history`
--

INSERT INTO `status_history` (`id`, `name`) VALUES
(1, 'On Process'),
(2, 'Delivery'),
(3, 'Finish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_product`
--

CREATE TABLE `status_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_product`
--

INSERT INTO `status_product` (`id`, `name`) VALUES
(1, 'sold out'),
(2, 'archived'),
(3, 'ready');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_whitelist`
--

CREATE TABLE `token_whitelist` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `token_whitelist`
--

INSERT INTO `token_whitelist` (`id`, `token`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjksImVtYWlsIjoidGhpbmtwYWRAZ21haWwuY29tIiwiaWF0IjoxNjExNjAxOTQ3fQ.QkIwr7zWNA4ppjDPuSHBBsWNTv5Fq1M1u1jDpPheE_k'),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE2MDM4NjZ9.XyDvxcj41llps3x83HEl9SleRQZER2XaufgmVwVB4FM'),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjksImVtYWlsIjoidGhpbmtwYWRAZ21haWwuY29tIiwiaWF0IjoxNjExNjA1OTY4fQ.uV_6rS8N1sFTYfg8_mGpTl01v0D4eX9M6BqZSXkt4LY'),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNjA5ODM3fQ.3q6kl9pNfMPgRA_SAdB3wTT_kTsasHPYybfl_5yXUCw'),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMTYwOTg3Mn0.7QUKcPJEDWxAJs7L3AnB_EdPuhrxQpE0P-PuCp_-gLE'),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzEzNDIzfQ.QfXA7rdT-sLW3KKwNTkKW6pBwmIPu9rv5ujE1k1ectk'),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzE5NzA3fQ.iUw9SHyaFNeQiZ9rVdQ-nPPkOzzHgQsnO4eG6hin_6k'),
(18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMTc3MjQ3M30.-7yor0w2ZE7gRlXsbtU_4iTLTLhqHp0V12NHS_psNwQ'),
(21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzg3MTgzfQ.1tkWYzAevCs2IwIj09uuInznpqToLTGPg9G3nc84XQg'),
(23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzk5MjA5fQ.EYUJKvs-KMeK2EkJzzq2y6wgCZPNqirBNDYJdkZvkW0'),
(24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjgsImVtYWlsIjoidXNlcmJhcnVAZ21haWwuY29tIiwiaWF0IjoxNjExNzk5NTg2fQ.FoIW8qp_Ye9Id4Uj4BETJzocfaUK47mioVwt-jgpnOA'),
(26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE4MDA1NDh9.V1JnlT3ZR9BYVUeJFUCd8jsSiAyS74XtcyI9lYYQAFE'),
(27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjExLCJlbWFpbCI6ImFya2FkZW15QGdtYWlsLmNvbSIsImlhdCI6MTYxMTgxMzY0NX0.TBXW1hA23afqxO9EXGZHYAbEyuaq5ejwiKSKleZaFrY'),
(32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjcsImVtYWlsIjoicGVuanVhbEBnbWFpbC5jb20iLCJpYXQiOjE2MTE4MTczMjJ9.MCLmeduww2iPHx8OGdGExA1nBzZ0FmLPvebvH-BzA8U'),
(45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMTg5OTY2NH0.RaER1uxrr8GAl7ECJUkVMzPIfuw_no47QpylFWrb5s4'),
(48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMjg1NTE4M30.x9F8XK7QJfM1PiX1dyHSvB-QzU23v4YVulqZ_4-JYQw'),
(49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMjg1NTM3OH0.W8jW4pz9YYiXjV3Pgy2wHtNR2_q7DxEU5UGq98ex27o'),
(50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMjg1NTg2NX0.ypzglVSm1bzsRMAOr0h_B1GHgmTt6YTPrRicstIRHu0'),
(51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjksImVtYWlsIjoidGhpbmtwYWRAZ21haWwuY29tIiwiaWF0IjoxNjEyODU1ODk1fQ.bZI3EYDhEITqhrk7Af_2mYV7kkKL1o0AZBh8QV3SNcg'),
(52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMjg1Njk1N30.PCmj_5JhiyQPIZHOzGoK3CdgCcHM6fX9LUcma24ZdQo'),
(54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMjg2MzIwOX0.urY0V3eqkhDdOYw5Ao8vWgOyAcAuUYFmjexPqUv-uYM'),
(55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMzA2Mzc1MX0.5VJ0sve4gR9P46gWSsZIKX-2K4-1mBiH67IEu2D5Yck'),
(56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMzEzNjM3Nn0.04bbFKolmsN0UAAl-HheL1ggTl-WqlCnmsli4qFbBQc'),
(57, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMzM4NTE5Mn0.Q3ESzYDwB-oTJMZVXWTu7aHerC5352l5pB5F_AD7JYo'),
(58, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMzkzNDM4Nn0.VmtpOEsVzGo_yTvefSgTrTrUIK5U6JsiAPnBO-64Psk'),
(59, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxMzkzNjEyNX0.o64zj-FjjBCNAd0YiCHyPVmuKMFl4veu8e4cenU8DOU'),
(60, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxMzkzNjg2NX0.aiOQ5fDauqdD_bgtdDYVj1-fxwBkbY-VW6vrJ8N59n0'),
(61, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxNDAwMTU2M30.lZu51bYfr4h_HS7V-clbfeEuaxXJOWZvcbpiiB7Zg1s'),
(64, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxNDEwNzQxMX0.Ub-EZoYVDqwqg6OSYaq_3tEbMGsiPsbPrpxNC-JIppw'),
(68, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MiwiaWQiOjYsImVtYWlsIjoic2VsbGVyQGdtYWlsLmNvbSIsImlhdCI6MTYxNDE2NDQ5M30.EVQ_U2dG9Rb2s6VCFH8b7WxqifiVtAyjZF8TaMO454Q'),
(69, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxNDE2ODcxMH0.Luxs-ritbPkN967A12P_zC42mu5h470bwuSvvxoOYUI'),
(70, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjQsImVtYWlsIjoiZGhpeW9kZXY3QGdtYWlsLmNvbSIsImlhdCI6MTYxNDE3OTY0N30.tGzHoOfOOSGzhpGWrcj0z5_zVYbgRPPwEk7iKJduNQY'),
(71, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjE0LCJlbWFpbCI6ImFrYmFyenVsODk2QGdtYWlsLmNvbSIsImlhdCI6MTYxNDE3OTc0OX0.0INKj-DUCI-9kEEyuXawtjqyxM_6z5j0xYJVW03UOjs'),
(73, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJsZXZlbF9pZCI6MSwiaWQiOjEzLCJlbWFpbCI6InJhZ2lsQGdtYWlsLmNvbSIsImlhdCI6MTYxNDE5OTAzMn0.Eztbqv8bsO8a1e4dVmYQGEsa7dH4Johacd4RUS6uGYw');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `password`, `level_id`) VALUES
(2, 'seller1', '', '', '$2b$10$3E/n0K9/VBGgYAhtg9e77eL7lVA5ZsGI6jmx/BA0gZA3ibC3w7Pta', 2),
(4, 'dhiyo', 'Dhiya Reksa Kusumojati B', 'dhiyodev7@gmail.com', '$2b$10$dsL/15U0wTPyIvwsxJqPze3X0lHiJlWuptXWng.9u/94A9xZMlOoK', 1),
(6, 'Seller Ganteng', 'Sellernya Gans', 'seller@gmail.com', '$2b$10$gR31aZMsZJTkzPppU6DUEu36AtFkuNhtPpTBPzp0xzf0exBBmNdDu', 2),
(7, 'Penjual', 'Penjual Tampan', 'penjual@gmail.com', '$2b$10$0C8dTnJ8QHMmVs7E.Y9vGuAjmYl3RG94tKOSBaVRcuxLFfztfCnTa', 2),
(8, 'User', 'User Baru', 'userbaru@gmail.com', '$2b$10$Lk1pb3eFWKWnol5q2eIoxe.srNxE8Pkfkh6Dm9Q6q1gvJpO3vwR3O', 1),
(9, 'Thinkpad', 'Thinkpad', 'thinkpad@gmail.com', '$2b$10$tOyCAzYTMWtpx3YsenfOPuC01h17PaqJmad8yvbgSZJGMmBCjMh66', 1),
(10, 'felixyunianto', 'Felix Yunianto Gunawan', 'felixyunianto@gmail.com', '$2b$10$ksh1g2ttbgXA77mv04mRau2bO9RuNlYiS0VAU9YaTeQ6j3RK0emuK', 1),
(11, 'Arkademy', 'Arkademy Tech', 'arkademy@gmail.com', '$2b$10$2AyEGj///BOmr3.402IhNeOWAUZ48faq.XhU2StOqR7sEla4pbmRi', 2),
(12, 'DhiyoReksa', 'Dhiyo Reksa', 'dhiyo@gmail.com', '$2b$10$pRBPMUL2sJzc3YPEXksKDu8WBi9n17AWrOFgyVWoPNAr.mKyk/yjm', 1),
(13, 'Ragil', 'Ragil', 'ragil@gmail.com', '$2b$10$obpd3evzazmn.5PvlcRPrOfi62.yxmBrFUuCnXXhIV2l1JwUtakDa', 1),
(14, 'akbar', 'Akbar Zulfikar', 'akbarzul896@gmail.com', '$2b$04$VCT3GopOcqa5BAK0j0zq6OfQ5mNop04LYM0F/dxHki6mFbdcquoUe', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_customer`
--
ALTER TABLE `address_customer`
  ADD PRIMARY KEY (`id_address`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conditions`
--
ALTER TABLE `conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_reset`
--
ALTER TABLE `otp_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_detail`
--
ALTER TABLE `seller_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_history`
--
ALTER TABLE `status_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_product`
--
ALTER TABLE `status_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_whitelist`
--
ALTER TABLE `token_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_customer`
--
ALTER TABLE `address_customer`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `conditions`
--
ALTER TABLE `conditions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customer_detail`
--
ALTER TABLE `customer_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `otp_reset`
--
ALTER TABLE `otp_reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `seller_detail`
--
ALTER TABLE `seller_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `status_history`
--
ALTER TABLE `status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_product`
--
ALTER TABLE `status_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `token_whitelist`
--
ALTER TABLE `token_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
