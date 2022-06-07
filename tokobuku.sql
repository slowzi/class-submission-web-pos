-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Apr 2022 pada 07.09
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `release_year` int(4) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` decimal(4,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `book_category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `book`
--

INSERT INTO `book` (`book_id`, `title`, `slug`, `release_year`, `author`, `price`, `discount`, `stock`, `cover`, `book_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Mencari Cahaya', 'mencari-cahaya', 2014, '-', 55000, '0.99', 45, 'default.jpg', 2, '2022-03-14 18:37:57', '2022-03-14 18:37:57', '0000-00-00 00:00:00'),
(4, 'Laskar Puisi', 'laskar-puisi', 2001, 'Budi', 100000, '2.00', 1, '', 3, '2022-03-14 19:06:03', '2022-03-14 19:09:11', '2022-03-14 19:09:11'),
(5, 'The Witcher', 'the-witcher', 1993, 'Andrezj', 525000, '0.99', 1, 'default.jpg', 2, '2022-03-14 19:11:02', '2022-03-14 19:11:02', '0000-00-00 00:00:00'),
(6, 'Trilogic MAZE', 'trilogic-maze', 1998, 'Dr. Udin', 2000000, '0.10', 34, '1648379512_7c05886e335a1ca56682.png', 3, '2022-03-14 19:28:36', '2022-03-27 06:11:52', '0000-00-00 00:00:00'),
(7, 'Belajar Hand Lettering', 'belajar-hand-lettering', 2020, 'Budiii', 200000, '0.60', 10, '', 1, '2022-03-14 19:44:30', '2022-03-14 19:44:50', '2022-03-14 19:44:50'),
(8, 'apa tu man', 'apa-tu-man', 1900, 'siapa tu', 100000, '0.10', 10, '', 2, '2022-03-14 20:43:31', '2022-03-21 20:52:11', '2022-03-21 20:52:11'),
(9, 'What', 'what', 1990, 'juice', 34500, '0.10', 14, 'default.jpg', 2, '2022-03-21 19:56:04', '2022-03-21 19:56:18', '2022-03-21 19:56:18'),
(10, 'Dark Vampire', 'dark-vampire', 1890, 'Dr. ucup bin udin', 120000, '5.00', 40, '1648374357_f329579ddcfd765d6e69.jpg', 2, '2022-03-27 04:45:57', '2022-03-27 05:28:23', '2022-03-27 05:28:23'),
(11, 'Sepeda Warna', 'sepeda-warna', 1990, 'Dr. Udin', 1234000, '12.00', 90, '1648374666_926c1d0e71cb4450ead0.png', 2, '2022-03-27 04:51:06', '2022-03-27 05:24:59', '2022-03-27 05:24:59'),
(12, 'Warna Warni Sepeda jilid 2', 'warna-warni-sepeda-jilid-2', 1999, 'siapa tu din', 400000, '0.10', 12, '1648379471_994fb3c751b02d25161f.png', 2, '2022-03-27 05:58:47', '2022-03-27 06:11:11', '0000-00-00 00:00:00'),
(13, 'askdfmaskdk', 'askdfmaskdk', 2002, 'asdkf', 55000, '0.99', 12, '1648513823_80a84602108a4f2af027.jpg', 2, '2022-03-28 19:24:52', '2022-03-28 19:30:28', '2022-03-28 19:30:28'),
(14, 'Riski Dimas Agung', 'riski-dimas-agung', 2022, 'Dimas', 1500, '0.00', 1, '1650517143_13381f7e71465e6f6d2a.jpg', 1, '2022-04-20 23:59:03', '2022-04-20 23:59:03', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_category`
--

CREATE TABLE `book_category` (
  `book_category_id` int(5) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `book_category`
--

INSERT INTO `book_category` (`book_category_id`, `name_category`) VALUES
(1, 'Buku Pelajaran'),
(2, 'Novel'),
(3, 'Komik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `no_customer` varchar(30) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `no_customer`, `gender`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Ki Anom', '1', 'L', 'Jalan janti 65', 'example@mail.com', '081234567', '2022-04-02 01:30:43', '2022-04-02 01:30:43'),
(3, 'Dharma', '2', 'L', 'Jalan janti 65', 'example@mail.com', '08132456', '2022-04-02 01:37:16', '2022-04-02 01:37:16'),
(4, 'Bekti', '3', 'L', 'Jalan janti 65', 'example@mail.com', '08455677', '2022-04-02 01:37:16', '2022-04-02 01:37:16'),
(5, 'Soleh Kawaya Widodo', '3307691503190024', 'L', 'Ki. Supomo No. 774, Administrasi Jakarta Timur 39490, Sulut', 'dirja.pudjiastuti@gmail.co.id', '0517 4284 133', '1971-09-02 09:30:20', '1986-03-29 22:08:41'),
(7, 'Elvin', '12', 'P', 'Jogja', 'elvin@.biz', '0333 2222 1111', '2015-10-21 23:43:03', '2022-04-02 02:43:55'),
(8, 'Puput Pudjiastuti', '1607260702051937', 'L', 'Ki. Jagakarsa No. 541, Tomohon 36883, Sumut', 'yance04@nababan.biz', '(+62) 840 549 048', '2016-04-21 09:14:39', '1974-04-01 05:00:38'),
(9, 'Anastasia Novitasari', '3577364310144148', 'L', 'Ki. Kiaracondong No. 200, Gorontalo 34133, Kalsel', 'karman.melani@ramadan.mil.id', '(+62) 250 0253 1084', '2018-09-09 05:00:53', '2008-05-14 21:59:37'),
(10, 'Yoga Prasetyo S.I.Kom', '1274274801168065', 'L', 'Jr. Honggowongso No. 688, Tangerang Selatan 70336, NTT', 'putra.ratna@hartati.asia', '(+62) 22 0766 934', '1979-09-03 09:55:37', '1998-04-24 14:11:09'),
(11, 'Ellis Vanya Anggraini S.Pd', '1807796906966675', 'L', 'Ds. Raya Setiabudhi No. 780, Banjar 48345, Jateng', 'agunawan@santoso.sch.id', '(+62) 767 6209 3869', '2003-03-24 13:11:38', '2015-05-25 17:15:09'),
(12, 'Gandi Cahyadi Ramadan S.E.', '3505943112192293', 'L', 'Kpg. Baranangsiang No. 341, Palopo 25331, Jatim', 'hardana.farida@gmail.co.id', '025 0505 0407', '1996-11-28 18:27:47', '1973-03-10 02:34:07'),
(13, 'Ratna Padmasari', '3322604104172908', 'L', 'Jr. Supono No. 796, Banda Aceh 72952, Lampung', 'hpratama@yahoo.co.id', '0657 9499 809', '1972-05-08 10:57:58', '2019-11-10 09:05:24'),
(14, 'Agus Zulkarnain', '7204366209068766', 'L', 'Ds. Casablanca No. 381, Pangkal Pinang 10671, Papua', 'kartika06@yahoo.co.id', '0458 9074 980', '2021-10-31 14:10:29', '1994-07-25 02:48:22'),
(15, 'Karimah Susanti', '7109961802094595', 'L', 'Psr. Bahagia  No. 942, Ternate 82691, Sumsel', 'adriansyah.ana@yuniar.info', '0885 1837 475', '2020-10-12 13:52:29', '1978-06-02 12:38:07'),
(16, 'Vivi Zulaika', '3671842601930074', 'L', 'Dk. Merdeka No. 502, Binjai 72217, Riau', 'cindy.maheswara@prakasa.biz', '0810 7454 419', '2020-08-03 12:38:58', '2000-05-24 18:17:08'),
(17, 'Febi Melani M.Farm', '3575186006145414', 'L', 'Kpg. Bayam No. 842, Bitung 51110, Pabar', 'purwanti.kani@napitupulu.mil.id', '(+62) 749 5955 8265', '2018-09-25 07:28:47', '2004-11-22 11:02:08'),
(18, 'Kanda Pradipta', '3275955611061960', 'L', 'Jr. Bak Mandi No. 264, Blitar 78934, Bali', 'marwata.melani@gmail.co.id', '(+62) 947 8471 0079', '1994-08-18 06:35:27', '1981-01-30 13:21:14'),
(19, 'Cinthia Titi Astuti', '7410931404186326', 'L', 'Ki. Dahlia No. 449, Blitar 91401, Sulbar', 'laras.purnawati@gmail.co.id', '0859 0455 632', '2004-02-28 04:33:55', '2015-11-23 19:29:25'),
(20, 'Cahyadi Sitompul', '7605030602011636', 'L', 'Psr. Wora Wari No. 867, Blitar 89377, Kalsel', 'dodo.purwanti@yahoo.co.id', '(+62) 268 4812 076', '1973-01-08 17:22:39', '1996-01-23 07:26:55'),
(21, 'Asirwada Hutasoit', '7471821809202435', 'L', 'Psr. Muwardi No. 983, Banjarmasin 54621, Malut', 'cayadi17@yahoo.com', '(+62) 367 8549 9199', '1978-09-19 11:16:05', '1992-05-15 03:57:28'),
(22, 'Fitria Michelle Andriani S.IP', '1312042309938011', 'L', 'Dk. Suryo Pranoto No. 19, Payakumbuh 75289, Papua', 'susanti.cemeti@prakasa.ac.id', '(+62) 316 5233 6011', '1985-11-04 11:52:48', '1977-03-10 13:37:16'),
(23, 'Suci Padmasari', '9206584109920876', 'L', 'Jln. Sukajadi No. 717, Kediri 25418, Sumbar', 'xrahmawati@hasanah.id', '0684 6181 6144', '1993-05-26 18:42:05', '1979-08-29 05:16:54'),
(24, 'Jaka Margana Tampubolon', '6403424103120847', 'L', 'Ds. Kyai Mojo No. 53, Tebing Tinggi 32238, Malut', 'yulia54@gmail.co.id', '(+62) 460 2678 829', '1975-09-16 14:34:19', '2017-03-13 08:10:13'),
(25, 'Queen Mandasari', '6110086906090231', 'L', 'Ds. Bayam No. 734, Probolinggo 26353, Kaltim', 'yuliarti.cahya@gmail.com', '(+62) 344 6635 296', '2008-05-25 16:40:51', '1978-08-27 22:54:37'),
(26, 'Rina Nurdiyanti', '5309292506033608', 'L', 'Dk. Daan No. 458, Manado 78426, DKI', 'gasti74@samosir.biz.id', '0505 6879 9304', '2008-06-13 13:46:28', '1985-03-07 18:21:36'),
(27, 'Febi Mulyani', '1611991606004929', 'L', 'Psr. Casablanca No. 282, Sungai Penuh 11708, Kaltara', 'wani82@lailasari.com', '(+62) 417 4297 920', '2021-01-25 03:03:54', '1984-03-11 07:37:51'),
(28, 'Galih Wasita M.Farm', '7310176403102934', 'L', 'Ds. Bacang No. 892, Banjar 80859, Sulbar', 'sanggraini@uwais.biz', '(+62) 931 5960 724', '1996-01-11 18:53:45', '1976-12-19 03:12:50'),
(29, 'Ida Astuti', '7317916709171100', 'L', 'Dk. Halim No. 20, Pekanbaru 48231, Malut', 'zulfa.laksita@hutagalung.biz.id', '0572 1015 569', '1999-09-03 05:40:30', '2001-11-16 21:09:49'),
(30, 'Endah Winarsih M.Pd', '6472120310006358', 'L', 'Psr. Aceh No. 560, Pariaman 61964, Gorontalo', 'ssihombing@yahoo.com', '(+62) 225 8875 626', '1985-03-02 06:39:14', '1980-01-27 12:27:31'),
(31, 'Juli Puspita S.Gz', '1210524209176625', 'L', 'Ki. Mulyadi No. 468, Probolinggo 87141, Sulsel', 'aryani.irfan@farida.org', '(+62) 216 4388 6317', '2001-02-03 02:52:03', '1970-05-19 22:07:11'),
(32, 'Gilda Cindy Riyanti', '1375202603933450', 'L', 'Jln. Bakhita No. 450, Tanjungbalai 10143, Sulbar', 'carla.astuti@nuraini.go.id', '021 5740 0062', '2005-07-26 05:12:30', '1975-08-23 10:57:11'),
(33, 'Bagya Teddy Pratama S.Pd', '3528842406951293', 'L', 'Jr. Yogyakarta No. 330, Sawahlunto 99722, Kaltara', 'yani.fujiati@yahoo.co.id', '0773 4110 224', '1981-09-05 18:32:55', '2002-04-01 09:56:30'),
(34, 'Viman Pangestu S.IP', '5208414310983238', 'L', 'Jr. Laksamana No. 590, Medan 85364, Maluku', 'phabibi@andriani.name', '0599 6371 1473', '2015-02-22 18:12:20', '2013-10-03 17:31:56'),
(35, 'Rendy Hutasoit', '7314446207962120', 'L', 'Ki. Cut Nyak Dien No. 767, Bima 97332, Bali', 'suartini.widya@yahoo.co.id', '0834 342 542', '2001-05-11 15:28:04', '1970-08-29 03:43:42'),
(36, 'Hartaka Timbul Mansur', '3508832405118462', 'L', 'Ki. Baranang Siang Indah No. 461, Kupang 24363, Malut', 'cahyono.kusumo@gmail.co.id', '0436 0210 056', '2020-03-15 01:41:53', '1988-10-25 03:26:59'),
(37, 'Kariman Kajen Ramadan S.IP', '1214146910993957', 'L', 'Gg. Dewi Sartika No. 687, Denpasar 79206, Kalteng', 'bsuwarno@halim.id', '(+62) 956 6552 5457', '2015-01-27 23:17:00', '1983-01-18 14:50:44'),
(38, 'Patricia Suartini', '1376860502121172', 'L', 'Dk. Thamrin No. 739, Padang 69559, Pabar', 'mardhiyah.padma@wulandari.biz', '0467 3450 9452', '1976-03-30 23:25:36', '2000-10-30 10:27:59'),
(39, 'Nrima Widodo M.TI.', '1409596111054368', 'L', 'Ds. Abdul Rahmat No. 912, Bekasi 39822, Kalteng', 'fsuryono@gmail.com', '(+62) 585 0600 808', '1970-02-27 19:24:30', '2005-08-20 18:35:58'),
(40, 'Gangsa Natsir', '3326601512167853', 'L', 'Ki. Kalimalang No. 410, Pangkal Pinang 51074, Banten', 'eka38@yahoo.co.id', '(+62) 565 8292 329', '2003-11-21 09:56:33', '1997-06-05 14:26:46'),
(41, 'Asmianto Wacana', '1771956408936086', 'L', 'Ds. Bara No. 457, Pariaman 72008, Maluku', 'gaiman.mansur@yahoo.co.id', '025 0945 2029', '2014-08-23 10:55:31', '1990-07-02 15:29:27'),
(42, 'Adiarja Sitorus', '1210600501101015', 'L', 'Ds. Kusmanto No. 76, Bandar Lampung 60589, Babel', 'pnasyidah@yulianti.asia', '(+62) 898 5337 566', '2009-09-26 05:46:56', '2009-08-06 05:13:54'),
(43, 'Rizki Simanjuntak', '6112651905941489', 'L', 'Gg. Laksamana No. 530, Padangsidempuan 24233, Gorontalo', 'rahayu.mayasari@nurdiyanti.mil.id', '(+62) 406 4361 219', '2003-07-25 12:13:58', '1993-06-28 04:27:05'),
(44, 'Karma Ibun Habibi S.Sos', '7401805205154203', 'L', 'Gg. Basoka No. 553, Cimahi 65012, Kaltara', 'owacana@yahoo.co.id', '(+62) 475 9015 1194', '2006-12-11 06:08:43', '1994-05-26 11:32:43'),
(45, 'Gamanto Siregar', '6104331607031702', 'L', 'Jr. Ketandan No. 572, Ambon 78618, Sumbar', 'olga83@riyanti.asia', '0271 2557 6603', '2018-02-02 17:10:58', '2007-08-01 18:06:00'),
(46, 'Mitra Sihombing S.H.', '7305532811072914', 'L', 'Kpg. Surapati No. 317, Kendari 12151, Malut', 'ksuwarno@yahoo.com', '0571 1785 0766', '1987-05-04 10:16:08', '1975-02-20 00:32:30'),
(47, 'Nilam Eka Puspita', '3528731009095549', 'L', 'Ki. Elang No. 772, Prabumulih 68886, Sulbar', 'siska.haryanti@gmail.com', '0996 2331 0274', '2012-08-26 20:48:52', '1991-06-19 07:21:42'),
(48, 'Tina Palastri', '6411190907061437', 'L', 'Gg. Soekarno Hatta No. 720, Sabang 88401, Bengkulu', 'unatsir@padmasari.or.id', '(+62) 716 3001 8344', '2008-08-30 08:28:00', '1983-10-17 18:49:16'),
(49, 'Rahayu Maya Permata', '1673852702084524', 'L', 'Kpg. Gajah No. 902, Administrasi Jakarta Barat 99803, Maluku', 'ulya81@rahimah.ac.id', '(+62) 983 1965 552', '2004-03-01 11:40:38', '1974-09-11 10:35:36'),
(50, 'Kiandra Kusmawati S.IP', '9118057008185423', 'L', 'Kpg. Sutarjo No. 887, Blitar 35899, Kalteng', 'lsitorus@yahoo.co.id', '0971 5300 1739', '2010-09-24 17:46:29', '2021-07-11 00:48:36'),
(51, 'Lidya Karen Handayani', '8104050504964063', 'L', 'Ki. Setiabudhi No. 305, Administrasi Jakarta Selatan 49568, Sulut', 'banara91@gmail.co.id', '(+62) 22 5105 4413', '2006-12-27 12:48:48', '1995-11-25 05:16:39'),
(52, 'Jaga Lega Prakasa S.E.', '6409260905935641', 'L', 'Ki. Diponegoro No. 346, Subulussalam 82724, Jatim', 'dagel.puspasari@haryanti.biz', '(+62) 952 7158 904', '2013-02-20 05:09:48', '2000-08-06 05:43:49'),
(53, 'Liman Santoso', '8172296911127406', 'L', 'Dk. Bata Putih No. 442, Bima 29144, Sulbar', 'mahmud93@suwarno.mil.id', '0621 1657 8710', '2020-04-29 17:35:11', '1998-11-09 16:16:11'),
(54, 'Asman Rajata S.Pt', '7605614410099905', 'L', 'Jln. Kyai Mojo No. 247, Bitung 95932, Jambi', 'irfan95@maulana.go.id', '(+62) 711 5754 175', '2018-07-30 21:51:03', '1972-09-18 06:34:20'),
(55, 'Zelda Purwanti S.E.', '3401490508197815', 'L', 'Jln. Bakti No. 464, Padang 69631, Kaltara', 'fitria92@gmail.co.id', '0920 7779 077', '2021-03-03 13:40:06', '1977-02-27 07:33:02'),
(56, 'Darman Sirait', '3210092705945874', 'L', 'Psr. Ki Hajar Dewantara No. 146, Palembang 40481, Sulteng', 'hasan.yolanda@maryati.asia', '(+62) 23 1485 5259', '2000-08-13 10:35:38', '1981-09-13 02:26:27'),
(57, 'Hilda Namaga', '7209701312942733', 'L', 'Dk. Laswi No. 49, Pekalongan 76346, Maluku', 'enteng.saputra@novitasari.biz.id', '0966 8463 8352', '1985-10-09 22:23:08', '2015-03-22 11:26:56'),
(58, 'Ihsan Megantara', '1118371609118482', 'L', 'Jr. Arifin No. 130, Sukabumi 89449, Sulbar', 'victoria59@hardiansyah.mil.id', '0852 3766 6093', '2005-06-09 04:14:11', '2010-07-05 00:02:14'),
(59, 'Kani Wulan Lailasari', '3315614102025486', 'L', 'Ds. Halim No. 558, Sorong 75429, DKI', 'ajeng72@wibowo.my.id', '(+62) 943 7925 740', '1980-10-27 21:35:18', '1980-07-15 07:06:31'),
(60, 'Kusuma Dabukke M.Ak', '3173660704194786', 'L', 'Jr. Radio No. 586, Mojokerto 63444, DKI', 'vsimanjuntak@gmail.co.id', '0288 1882 8212', '2015-06-02 12:12:05', '1991-06-11 03:52:23'),
(61, 'Emas Najmudin', '1217241507163690', 'L', 'Kpg. Asia Afrika No. 81, Pasuruan 88560, Jabar', 'xpurnawati@gmail.com', '(+62) 301 0895 316', '1997-05-16 05:36:56', '2018-02-01 06:17:07'),
(62, 'Jati Hidayanto S.H.', '8171151308169419', 'L', 'Dk. Sudiarto No. 750, Singkawang 94058, Jambi', 'vino.fujiati@gmail.co.id', '0939 8338 6309', '1982-02-08 05:25:40', '1981-12-27 02:52:47'),
(63, 'Rahmi Yuniar', '6201424506004325', 'L', 'Ds. Moch. Ramdan No. 746, Subulussalam 37283, Jambi', 'yulianti.marwata@hariyah.my.id', '(+62) 841 2352 6765', '1986-04-18 06:55:11', '2004-06-18 22:26:55'),
(64, 'Yessi Dian Laksita S.I.Kom', '1505675001041272', 'L', 'Gg. Bagas Pati No. 279, Payakumbuh 58116, Sulteng', 'rnurdiyanti@wibowo.net', '(+62) 518 2710 3352', '1982-05-07 20:48:18', '2019-12-01 14:44:54'),
(65, 'Gandewa Sinaga', '1406920111161480', 'L', 'Dk. Bayam No. 285, Palangka Raya 24401, Gorontalo', 'yfirmansyah@yahoo.com', '0242 3893 081', '1987-10-27 00:28:35', '1980-09-27 09:34:06'),
(66, 'Gaman Pangestu', '7324644105166051', 'L', 'Ds. PHH. Mustofa No. 353, Subulussalam 99295, Maluku', 'abudiman@nasyidah.id', '(+62) 322 9363 320', '2016-12-11 13:52:52', '1985-09-09 05:34:40'),
(67, 'Prakosa Prasetyo', '7212914404975386', 'L', 'Gg. Jend. Sudirman No. 388, Kotamobagu 52903, Sulbar', 'inajmudin@yahoo.com', '(+62) 785 4584 413', '1985-10-01 18:56:31', '2001-10-24 17:17:29'),
(68, 'Tedi Adika Nugroho', '7403882208100150', 'L', 'Ds. Lada No. 327, Sorong 82187, Lampung', 'eli58@gmail.com', '022 9144 515', '1986-02-26 12:33:02', '1993-03-09 10:36:20'),
(69, 'Embuh Situmorang S.Gz', '5371905310987147', 'L', 'Dk. Sutarto No. 697, Langsa 97746, Malut', 'elazuardi@yahoo.com', '(+62) 22 9598 5139', '2009-09-16 01:08:25', '2011-06-06 06:38:55'),
(70, 'Karen Samiah Nurdiyanti', '2103771308988352', 'L', 'Kpg. Ters. Pasir Koja No. 343, Mojokerto 38131, Gorontalo', 'emandala@gmail.com', '0687 1866 5497', '1978-03-17 09:18:19', '1996-06-04 08:12:19'),
(71, 'Genta Rahimah S.Psi', '1112681711140404', 'L', 'Gg. Thamrin No. 796, Ambon 29102, Bengkulu', 'tmardhiyah@yahoo.co.id', '(+62) 463 0943 236', '2003-01-08 06:21:17', '2020-04-02 17:39:05'),
(72, 'Icha Mardhiyah', '7373970812039443', 'L', 'Dk. Ujung No. 412, Bengkulu 46026, Kalsel', 'palastri.ana@saptono.or.id', '(+62) 813 9078 968', '2013-12-24 21:31:12', '1986-10-20 05:09:34'),
(73, 'Kayla Tina Nurdiyanti', '9210970412019042', 'L', 'Gg. Sunaryo No. 257, Subulussalam 24310, Lampung', 'radika.simbolon@yuliarti.ac.id', '0346 6977 7637', '2003-04-03 21:07:00', '2017-07-09 13:43:42'),
(74, 'Usyi Queen Melani S.E.I', '8271075303047023', 'L', 'Kpg. Abdullah No. 473, Kotamobagu 82252, Kaltara', 'ade.irawan@wibowo.biz', '(+62) 373 5643 3884', '2010-12-28 18:42:58', '2014-06-17 14:36:02'),
(75, 'Diah Rahmawati M.Pd', '7107722602189017', 'L', 'Gg. Sugiono No. 282, Binjai 55853, Gorontalo', 'hhasanah@gmail.co.id', '0416 4010 394', '2018-11-18 14:26:46', '1998-03-02 17:51:36'),
(76, 'Daliono Prasetyo', '8207661409204693', 'L', 'Ki. Baan No. 331, Bandung 70361, DIY', 'suci.putra@permata.id', '(+62) 20 8380 0054', '1993-10-11 01:15:01', '1977-03-07 08:07:33'),
(77, 'Hendra Saefullah', '1472953006188878', 'L', 'Jr. Dipatiukur No. 961, Palu 99451, Maluku', 'ysihombing@yahoo.com', '(+62) 857 5187 618', '2016-02-08 10:40:59', '2014-04-06 06:05:10'),
(78, 'Mitra Jaga Gunarto S.E.I', '5102786403012091', 'L', 'Dk. Babadan No. 703, Administrasi Jakarta Barat 86172, Kepri', 'andriani.aris@yahoo.co.id', '(+62) 551 1011 4418', '1985-09-18 23:14:14', '2009-12-14 06:54:08'),
(79, 'Violet Calista Wahyuni S.Gz', '1301325001210018', 'L', 'Psr. Tambun No. 207, Yogyakarta 95049, Gorontalo', 'xadriansyah@gmail.co.id', '0450 4581 698', '1992-07-02 18:19:21', '1987-09-30 05:08:53'),
(80, 'Bala Sihombing', '9101034606012825', 'L', 'Dk. Baranang Siang Indah No. 745, Banjar 18420, Jambi', 'syahrini.kuswoyo@safitri.asia', '0929 2957 9615', '2010-05-17 10:46:10', '2014-02-13 10:50:35'),
(81, 'Lala Karimah Pertiwi M.Ak', '1373165110091147', 'L', 'Dk. Banda No. 768, Samarinda 85094, Jambi', 'heru62@hidayanto.org', '(+62) 934 4856 221', '1975-08-27 20:00:47', '1984-06-12 12:55:02'),
(82, 'Kiandra Suryatmi', '9107202611044348', 'L', 'Psr. B.Agam 1 No. 539, Palembang 84405, Bengkulu', 'wyulianti@yahoo.co.id', '0386 2590 243', '2020-01-14 02:23:09', '2008-02-07 05:47:00'),
(83, 'Indah Nurdiyanti', '6504322106170769', 'L', 'Jln. Gambang No. 780, Administrasi Jakarta Pusat 65620, Kaltim', 'ira.sihombing@yahoo.com', '(+62) 26 7276 332', '1993-08-31 15:00:47', '2010-08-27 23:52:01'),
(84, 'Diah Wijayanti', '3571416507028702', 'L', 'Jln. K.H. Maskur No. 750, Gunungsitoli 94927, Sumsel', 'canggraini@gmail.co.id', '024 8817 6359', '2014-05-22 01:21:55', '2015-02-08 09:46:48'),
(85, 'Eka Gilda Anggraini', '8106896404167461', 'L', 'Ds. Perintis Kemerdekaan No. 22, Batu 40580, Sumbar', 'reza.nainggolan@suwarno.org', '(+62) 631 2832 0465', '2000-08-12 13:54:08', '2015-06-01 10:55:35'),
(86, 'Cahyadi Kenzie Sirait M.TI.', '8107200108939161', 'L', 'Ds. Wahidin No. 942, Tanjungbalai 32510, Papua', 'bakti63@gmail.com', '(+62) 354 5275 863', '2013-11-11 22:10:57', '1977-11-06 07:12:15'),
(87, 'Kezia Pertiwi', '3301501705087558', 'L', 'Ds. Bakit  No. 537, Magelang 36600, Sumbar', 'ibrahim49@yahoo.com', '(+62) 893 1489 0129', '2005-06-08 08:11:50', '2009-01-10 00:58:47'),
(88, 'Bahuwarna Abyasa Sihombing', '6402224901099078', 'L', 'Ki. Yoga No. 501, Ambon 77295, Pabar', 'titin82@anggraini.sch.id', '0303 5207 416', '1973-11-09 14:12:13', '2020-11-09 06:05:06'),
(89, 'Vinsen Pandu Permadi M.Kom.', '6208771103128413', 'L', 'Jln. Nanas No. 475, Pontianak 74514, Aceh', 'kusumo.ulya@jailani.asia', '(+62) 970 4327 2085', '2002-10-22 13:43:21', '1972-05-20 21:19:04'),
(90, 'Vivi Novitasari S.Gz', '6401522607967089', 'L', 'Ds. Kalimantan No. 338, Batam 73780, NTT', 'ami27@gmail.co.id', '(+62) 728 4072 7927', '1978-09-24 07:39:04', '2011-06-11 02:50:01'),
(91, 'Jaya Kambali Pratama', '1308992105022181', 'L', 'Psr. Daan No. 540, Administrasi Jakarta Pusat 87709, Riau', 'qmandala@salahudin.net', '(+62) 498 5392 7946', '1993-06-21 06:27:37', '2008-04-18 03:24:10'),
(92, 'Adiarja Gunawan', '3520060511188507', 'L', 'Jln. Ketandan No. 420, Tidore Kepulauan 45462, Sulbar', 'ysantoso@gmail.com', '029 1244 156', '2007-05-12 06:51:19', '2019-12-09 09:02:00'),
(93, 'Sakura Suryatmi', '1404357011174894', 'L', 'Ki. Nanas No. 116, Palu 53227, Bali', 'riyanti.muhammad@yahoo.co.id', '0261 2332 3726', '2013-11-20 02:37:48', '1978-06-17 19:33:55'),
(94, 'Kezia Rahmawati', '3319965303167861', 'L', 'Dk. Dewi Sartika No. 304, Pekalongan 25696, Lampung', 'maryadi44@hastuti.biz', '(+62) 429 3152 1360', '1971-12-03 13:51:02', '1994-04-27 11:30:29'),
(95, 'Mutia Zelda Hastuti S.Sos', '3576521505986111', 'L', 'Kpg. Otto No. 996, Blitar 27213, Sulbar', 'mardhiyah.paulin@yahoo.co.id', '0896 8122 5033', '2020-11-15 11:26:18', '1970-03-16 09:14:00'),
(96, 'Rina Lestari', '9107512504067195', 'L', 'Kpg. Achmad Yani No. 426, Banjarmasin 14237, Sulsel', 'mahmud.pratiwi@sudiati.net', '0378 9243 556', '2000-02-12 12:32:18', '1980-04-21 11:01:18'),
(97, 'Jessica Pudjiastuti', '7324131603045049', 'L', 'Jr. Baranang Siang Indah No. 846, Palu 76767, Riau', 'sihombing.wira@ramadan.com', '(+62) 816 1576 7490', '1984-01-24 15:54:57', '1974-10-06 03:03:39'),
(98, 'Mila Mardhiyah S.Psi', '6213850707920750', 'L', 'Psr. Bacang No. 826, Jayapura 41132, DIY', 'purnawati.hardana@gmail.co.id', '0816 333 534', '1972-10-23 18:37:48', '1979-02-26 00:21:16'),
(99, 'Nardi Dongoran', '3201241105125678', 'L', 'Gg. Dahlia No. 2, Singkawang 61247, Jatim', 'jjailani@yahoo.com', '(+62) 708 1680 6400', '1974-09-11 19:11:01', '2016-03-06 07:57:05'),
(100, 'Kariman Mursinin Marpaung', '3572061705042847', 'L', 'Ki. Sutarjo No. 678, Padangsidempuan 61170, DIY', 'mandasari.karen@gmail.co.id', '(+62) 496 9595 886', '1982-04-20 06:14:52', '1988-03-18 13:08:44'),
(101, 'Gawati Hartati S.Kom', '1404220903176558', 'L', 'Jr. Bagis Utama No. 334, Pematangsiantar 77316, Sumut', 'ibun18@yahoo.co.id', '(+62) 656 0543 8653', '1985-07-13 04:00:09', '1990-07-05 00:59:20'),
(102, 'Slamet Cayadi Winarno', '1214450606939814', 'L', 'Dk. Sutarto No. 420, Tanjung Pinang 86322, Malut', 'nhalim@yahoo.co.id', '0784 3948 542', '1998-07-28 22:30:13', '1974-02-20 23:25:49'),
(103, 'Rama Saragih S.Pd', '3518181701963350', 'L', 'Kpg. Yap Tjwan Bing No. 150, Bengkulu 41508, Malut', 'ryulianti@yahoo.com', '0311 2405 107', '2004-09-22 19:22:20', '2018-11-09 04:30:51'),
(104, 'Queen Puspasari S.Kom', '7201271105188756', 'L', 'Kpg. Ikan No. 107, Tanjung Pinang 78674, Jambi', 'pratama.bakti@budiman.ac.id', '0751 3957 4484', '2003-06-04 01:29:55', '1996-10-15 13:27:47'),
(105, 'Pa Udin cool', '5', 'P', 'Depok', 'aaaaa@gmail.com', '213444', '2022-04-02 02:47:14', '2022-04-02 02:47:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distributor`
--

CREATE TABLE `distributor` (
  `distributor_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `distributor`
--

INSERT INTO `distributor` (`distributor_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Pa Udin', 'Jogja', 'aaaaa@gmail.com', '12345', '2022-04-04 19:55:55', '2022-04-04 19:59:28'),
(3, 'Unjani Rahayu', 'Dk. Radio No. 750, Metro 18796, Jatim', 'thamrin.daniswara@ha', '0235 1274 133', '1997-05-16 09:51:39', '2005-04-16 06:32:40'),
(4, 'Alika Agustina', 'Kpg. Umalas No. 876, Banjarmasin 46651, Babel', 'zramadan@mangunsong.', '0788 3188 746', '1996-10-25 06:11:42', '1978-01-20 06:31:20'),
(5, 'Salwa Hasanah', 'Ds. Padang No. 190, Medan 57330, DKI', 'jasmin50@tampubolon.', '(+62) 634 4569 083', '1983-01-27 12:20:57', '1991-07-26 09:44:57'),
(6, 'Paramita Mardhiyah S.Sos', 'Ds. Madiun No. 982, Lhokseumawe 80500, Jabar', 'csinaga@prayoga.or.i', '0302 4241 9948', '1996-10-11 01:07:59', '2001-09-08 11:10:22'),
(7, 'Wage Situmorang', 'Kpg. Soekarno Hatta No. 465, Padangsidempuan 66715, Jatim', 'uyainah.faizah@manda', '(+62) 270 3217 4156', '1970-04-27 13:32:19', '1989-02-26 20:54:45'),
(8, 'Wirda Talia Rahmawati S.Farm', 'Jln. Merdeka No. 798, Palu 74061, Kalsel', 'pertiwi.jaya@yahoo.c', '(+62) 257 2657 228', '2017-04-08 05:58:59', '2004-11-30 20:18:17'),
(9, 'Prasetya Hidayanto', 'Ki. Sugiyopranoto No. 976, Palembang 40078, Jatim', 'ofujiati@gmail.com', '(+62) 526 3899 8447', '1999-02-15 14:22:36', '1996-05-12 06:39:28'),
(10, 'Oni Farida', 'Ki. Baiduri No. 837, Binjai 66159, Bengkulu', 'hardi24@permata.mil.', '0776 2115 7125', '1988-09-29 02:21:28', '2021-05-13 04:53:04'),
(11, 'Gada Jaga Saptono S.Psi', 'Gg. Nangka No. 525, Banda Aceh 90840, Bengkulu', 'hani72@gmail.com', '(+62) 797 5800 516', '2015-02-26 18:48:00', '1992-07-07 18:11:56'),
(12, 'Wani Ciaobella Anggraini', 'Ki. Baranang Siang No. 496, Ternate 61195, Pabar', 'yance14@yahoo.com', '(+62) 299 2205 607', '1981-06-28 09:08:36', '2003-04-15 18:35:23'),
(13, 'Tomi Kuswoyo', 'Jln. Cihampelas No. 174, Madiun 94840, DKI', 'karman.mulyani@manul', '0252 7599 058', '1997-11-19 16:49:54', '1983-11-18 15:27:53'),
(14, 'Abyasa Haryanto', 'Dk. Nangka No. 760, Cilegon 24297, Jabar', 'wtarihoran@farida.in', '0822 5682 493', '1983-12-05 19:00:19', '2017-01-05 12:43:55'),
(15, 'Ulya Dinda Usada S.H.', 'Kpg. Baik No. 731, Parepare 72034, Papua', 'uhartati@gmail.com', '(+62) 825 410 164', '1999-07-04 02:01:15', '1992-11-25 02:04:12'),
(16, 'Padma Wahyuni M.Farm', 'Gg. Pasirkoja No. 700, Cilegon 41426, Kalbar', 'hardiansyah.cici@sar', '0927 9585 691', '2011-11-20 11:01:05', '2021-04-16 04:11:24'),
(17, 'Cakrajiya Slamet Pranowo', 'Psr. Banal No. 482, Ternate 41069, Kaltara', 'hasanah.melinda@nasy', '0898 5367 4426', '1996-09-27 04:26:47', '2011-04-27 15:39:32'),
(18, 'Elisa Widiastuti', 'Gg. Ters. Jakarta No. 87, Tebing Tinggi 85248, Sumsel', 'unggul72@situmorang.', '(+62) 959 6700 4564', '1986-05-20 10:11:00', '1990-12-13 08:11:30'),
(19, 'Mahesa Tarihoran', 'Ds. Baranang Siang No. 181, Pematangsiantar 39288, Kaltim', 'radit67@widiastuti.c', '0855 2768 0396', '2022-01-05 18:02:24', '1987-01-31 23:47:06'),
(20, 'Intan Syahrini Agustina', 'Jr. Acordion No. 204, Tangerang Selatan 73596, DIY', 'umar.widiastuti@mary', '0366 7655 543', '2020-01-07 14:40:08', '2014-08-17 16:22:54'),
(21, 'Harimurti Maheswara', 'Gg. B.Agam 1 No. 234, Sungai Penuh 24863, Malut', 'zelda.prabowo@yahoo.', '(+62) 945 8194 0840', '2016-07-04 01:09:02', '1995-05-02 04:18:14'),
(22, 'Aisyah Sadina Yuniar', 'Ds. Cikutra Barat No. 665, Banjarmasin 56855, Sulut', 'mayasari.agus@gmail.', '(+62) 801 008 556', '2004-01-09 10:11:58', '1985-03-19 21:02:49'),
(23, 'Qori Widiastuti', 'Kpg. Basmol Raya No. 14, Cimahi 82977, Pabar', 'jessica.maulana@gmai', '(+62) 490 0475 7333', '2020-01-03 18:04:31', '2001-06-14 00:50:08'),
(24, 'Prabowo Megantara', 'Jr. Laswi No. 254, Medan 54359, Maluku', 'budiman.wakiman@angg', '0468 5876 5472', '1995-07-24 11:33:29', '1994-09-22 04:19:22'),
(25, 'Dadap Waskita', 'Kpg. S. Parman No. 40, Lhokseumawe 72668, Malut', 'phalimah@gmail.co.id', '0266 0776 3162', '1992-04-01 20:13:46', '1992-04-08 21:41:07'),
(26, 'Heryanto Permadi', 'Kpg. Sutarjo No. 714, Bandung 29753, Kaltara', 'lpadmasari@narpati.c', '(+62) 506 5803 2862', '1976-11-30 12:17:30', '1999-03-30 09:34:02'),
(27, 'Jelita Lestari', 'Jr. Jaksa No. 940, Batam 91132, Jateng', 'ratih53@yahoo.co.id', '(+62) 843 6447 4705', '1982-06-11 19:14:45', '1983-02-16 15:11:09'),
(28, 'Zamira Purnawati S.Farm', 'Ki. Bak Air No. 668, Tanjung Pinang 10030, Maluku', 'endah41@yahoo.com', '0815 8733 7911', '1987-01-15 05:05:46', '1991-02-18 11:21:26'),
(29, 'Elvina Vivi Pudjiastuti M.Ak', 'Dk. Barasak No. 442, Bukittinggi 59457, Sulbar', 'usamah.irwan@ramadan', '0925 1514 5423', '1999-05-16 05:03:09', '1990-08-15 14:38:04'),
(30, 'Cinta Mayasari', 'Ds. Urip Sumoharjo No. 146, Solok 38694, Sumut', 'febi72@yahoo.co.id', '(+62) 365 4074 1681', '1992-11-12 07:22:42', '2014-09-27 07:44:08'),
(31, 'Halima Ajeng Namaga S.H.', 'Gg. Kebangkitan Nasional No. 46, Kediri 64060, Bali', 'koko49@gmail.com', '0947 9430 455', '2010-07-03 11:26:57', '1985-10-14 15:51:17'),
(32, 'Nadine Astuti', 'Dk. Pasir Koja No. 988, Tebing Tinggi 21360, Kalsel', 'firgantoro.almira@wa', '(+62) 620 9131 473', '2003-08-28 23:22:34', '1985-02-26 19:06:14'),
(33, 'Iriana Pudjiastuti S.H.', 'Ds. Sukabumi No. 263, Probolinggo 12807, Kepri', 'putra.gantar@saptono', '0744 4351 848', '1978-08-09 07:46:38', '2005-12-07 03:56:41'),
(34, 'Wulan Susanti', 'Kpg. Bak Mandi No. 364, Pematangsiantar 12125, Sumsel', 'jais.namaga@yahoo.co', '0895 8845 900', '2003-07-26 07:50:37', '1993-12-14 23:18:07'),
(35, 'Garan Samosir', 'Ds. Gardujati No. 173, Tegal 65123, Sultra', 'carub.firgantoro@wib', '0363 5431 865', '2010-03-30 16:28:18', '1990-09-23 20:48:27'),
(36, 'Wani Puspita', 'Ki. Rajiman No. 635, Samarinda 94277, Lampung', 'winarsih.paramita@gm', '0776 3765 366', '1973-03-05 06:29:18', '1973-06-28 02:00:58'),
(37, 'Elon Cahyadi Wibisono', 'Dk. Imam Bonjol No. 753, Tangerang Selatan 32924, Sumbar', 'putu.santoso@rahayu.', '(+62) 26 3993 304', '1991-01-30 06:53:22', '1973-07-04 00:14:24'),
(38, 'Balijan Haryanto', 'Gg. Arifin No. 460, Tasikmalaya 99209, Kepri', 'lestari.tari@nugroho', '(+62) 497 6464 0695', '2005-12-21 16:15:34', '1994-09-02 23:58:13'),
(39, 'Zizi Wijayanti', 'Dk. Kiaracondong No. 985, Samarinda 39177, Papua', 'rwijaya@usamah.name', '(+62) 28 6055 579', '1994-03-10 12:11:12', '1999-09-02 19:55:37'),
(40, 'Puji Yuliarti', 'Psr. Madiun No. 864, Padangpanjang 76536, Pabar', 'cinthia11@yahoo.co.i', '(+62) 644 4332 581', '1978-06-08 07:08:28', '1986-10-06 13:15:58'),
(41, 'Septi Rahmawati', 'Jr. Yogyakarta No. 380, Balikpapan 63590, Sultra', 'belinda23@yahoo.co.i', '(+62) 878 0490 7054', '1989-12-10 23:53:34', '2006-11-22 14:10:12'),
(42, 'Kusuma Firmansyah', 'Jr. Warga No. 600, Ambon 16223, Lampung', 'oman.wastuti@pradana', '(+62) 898 5537 526', '1994-10-17 21:58:38', '1999-05-07 23:55:50'),
(43, 'Silvia Nasyidah', 'Ki. Sugiyopranoto No. 643, Pasuruan 48465, Kepri', 'ohakim@wastuti.web.i', '026 9594 3269', '1992-01-27 09:39:46', '1997-02-12 09:32:17'),
(44, 'Ika Halimah', 'Jr. Baja No. 531, Langsa 52851, Sultra', 'adriansyah.shania@do', '(+62) 543 2502 421', '1972-08-24 17:51:14', '1975-04-17 16:18:45'),
(45, 'Garang Tamba', 'Dk. Warga No. 996, Tarakan 34363, Kaltara', 'nasyiah.wawan@yahoo.', '0515 9636 231', '2022-03-11 14:16:01', '2021-08-07 14:26:46'),
(46, 'Ibrani Prayoga', 'Ki. Ciumbuleuit No. 35, Singkawang 95077, Sultra', 'lailasari.limar@angg', '(+62) 764 4417 0882', '1984-05-17 17:11:31', '2004-10-23 12:22:56'),
(47, 'Dirja Radika Siregar', 'Psr. Flora No. 298, Mojokerto 47409, Sulbar', 'prayoga29@gmail.co.i', '0850 1388 849', '1991-08-02 15:56:40', '1993-06-02 20:10:01'),
(48, 'Alika Cinta Winarsih', 'Gg. Agus Salim No. 219, Pagar Alam 63510, Kaltim', 'koko63@gmail.com', '0955 4570 9724', '2007-11-27 10:57:49', '1993-02-28 00:08:55'),
(49, 'Amalia Kuswandari', 'Kpg. Bara No. 373, Sibolga 20596, Jabar', 'qprakasa@widodo.ac.i', '0573 9635 6111', '1984-03-05 01:08:04', '1972-04-14 02:18:27'),
(50, 'Ilsa Usada', 'Jln. Ronggowarsito No. 651, Kupang 58983, Papua', 'rosman40@gmail.com', '(+62) 459 5903 445', '1972-10-29 01:11:44', '1982-04-29 19:23:54'),
(51, 'Endah Winda Prastuti', 'Ds. Radio No. 141, Bukittinggi 88336, Maluku', 'kani40@hariyah.sch.i', '(+62) 499 0645 8489', '1985-11-07 08:39:41', '2009-11-17 14:11:35'),
(52, 'Cakrajiya Suwarno', 'Gg. Raya Setiabudhi No. 463, Pangkal Pinang 61031, Jateng', 'widiastuti.hasna@sae', '0805 1813 426', '1971-06-22 10:51:36', '1977-07-16 08:12:00'),
(53, 'Xanana Habibi', 'Gg. Ketandan No. 333, Palopo 11411, DKI', 'nardi77@nababan.info', '(+62) 791 8838 9343', '1974-10-04 19:49:07', '2010-06-20 05:21:04'),
(54, 'Dian Agustina', 'Psr. Raya Setiabudhi No. 235, Pekalongan 66267, Sumsel', 'drajat01@yahoo.com', '0516 3885 6439', '1985-10-19 23:05:41', '1991-05-14 02:55:10'),
(55, 'Maryanto Naradi Siregar M.Farm', 'Jln. Barasak No. 660, Probolinggo 48774, Banten', 'olga33@melani.info', '0900 2422 4978', '1998-10-07 16:57:48', '2012-04-22 00:03:39'),
(56, 'Prayoga Vega Dongoran', 'Gg. Panjaitan No. 823, Tanjung Pinang 18744, Sumsel', 'kuwais@yahoo.com', '0824 7518 2429', '2018-11-13 12:41:30', '2020-03-15 00:05:58'),
(57, 'Ganda Jailani', 'Ki. Uluwatu No. 17, Padangsidempuan 97318, Jabar', 'narpati.estiawan@gma', '(+62) 26 1149 653', '2017-10-23 07:41:15', '2013-08-17 23:34:28'),
(58, 'Paiman Simbolon', 'Jln. Pasir Koja No. 48, Madiun 52763, DIY', 'uwijayanti@gmail.com', '0590 0031 2863', '1980-03-23 08:02:56', '1970-11-15 09:11:36'),
(59, 'Najib Gadang Lazuardi', 'Dk. Moch. Yamin No. 245, Tangerang 13362, Babel', 'timbul74@yahoo.com', '027 6517 6306', '1978-09-01 06:14:31', '1973-04-11 00:17:11'),
(60, 'Laila Nasyidah', 'Jln. Orang No. 463, Bitung 78561, NTT', 'mrahayu@utama.desa.i', '(+62) 454 9827 709', '1994-11-26 18:51:20', '2002-03-20 10:58:03'),
(61, 'Jagaraga Mulyanto Widodo', 'Gg. Raden No. 13, Sabang 42011, Sumut', 'emong.nurdiyanti@yah', '(+62) 836 9803 7502', '1986-05-01 14:19:06', '2011-12-13 05:49:12'),
(62, 'Laila Ani Zulaika', 'Dk. Sukajadi No. 23, Manado 51325, Malut', 'namaga.icha@gmail.co', '(+62) 609 4477 935', '1974-12-11 09:58:21', '2014-03-02 06:56:08'),
(63, 'Kamila Prastuti', 'Jln. Baladewa No. 836, Mojokerto 87228, Sulsel', 'zelda14@gmail.co.id', '0625 6019 8715', '1988-03-13 19:26:47', '1971-09-02 05:22:03'),
(64, 'Xanana Utama', 'Gg. Flores No. 694, Tasikmalaya 99772, Papua', 'garda97@yahoo.com', '0636 2672 9946', '1998-06-26 18:58:18', '1993-02-15 20:36:06'),
(65, 'Aswani Manah Kurniawan S.E.I', 'Ki. Pacuan Kuda No. 191, Dumai 17292, Sultra', 'shakila.nababan@firg', '0484 4482 8994', '1990-12-07 20:00:30', '2007-12-10 23:16:39'),
(66, 'Kunthara Waskita', 'Kpg. Bara No. 18, Batam 46563, Maluku', 'lsuwarno@yahoo.co.id', '0278 7879 1500', '1993-07-24 21:05:42', '2017-08-30 06:59:31'),
(67, 'Irfan Napitupulu', 'Gg. Gajah No. 435, Padang 36621, Maluku', 'laksana.lailasari@gm', '(+62) 429 9073 9579', '1991-09-27 00:11:35', '1984-10-30 07:59:25'),
(68, 'Indra Saefullah', 'Ki. Wahidin Sudirohusodo No. 873, Dumai 95359, DKI', 'mansur.lidya@mulyani', '(+62) 914 1073 718', '2006-04-30 03:09:40', '1997-11-02 05:12:38'),
(69, 'Hardi Sihombing', 'Gg. Moch. Toha No. 487, Serang 89364, DKI', 'padma.suryatmi@yulia', '(+62) 436 5958 420', '1973-05-09 14:34:40', '2013-09-25 10:51:28'),
(70, 'Ifa Gawati Purwanti S.H.', 'Jr. Cemara No. 580, Kediri 28372, Pabar', 'nugraha.maheswara@wi', '(+62) 27 1534 883', '2021-01-01 02:55:46', '1996-08-20 03:00:33'),
(71, 'Yance Paris Aryani', 'Psr. Acordion No. 35, Palu 47144, Bali', 'kasiran.maryadi@yaho', '021 0960 2393', '1985-12-24 00:12:52', '1996-08-05 17:25:17'),
(72, 'Artanto Prakosa Salahudin M.Ak', 'Ki. Banda No. 644, Tual 63618, Sulsel', 'ade.maryati@wulandar', '(+62) 335 2640 537', '1984-01-06 03:36:46', '2015-11-07 16:15:43'),
(73, 'Jagapati Gunarto', 'Jr. R.M. Said No. 589, Makassar 23457, Aceh', 'nurdiyanti.elma@yola', '(+62) 873 258 011', '1971-01-23 00:02:16', '1996-04-27 15:31:38'),
(74, 'Ilsa Usada', 'Gg. Gajah Mada No. 523, Denpasar 51609, Pabar', 'usada.okto@yahoo.co.', '0773 3406 0379', '1988-03-19 08:06:26', '2013-05-14 22:33:48'),
(75, 'Azalea Hasanah S.Gz', 'Jr. Sam Ratulangi No. 607, Banda Aceh 40101, Sulut', 'septi54@gmail.com', '(+62) 917 3559 7171', '1995-06-18 02:36:30', '1995-05-14 23:57:03'),
(76, 'Hamima Rahmi Lailasari', 'Jln. Merdeka No. 148, Tidore Kepulauan 65455, Pabar', 'salwa42@gmail.co.id', '(+62) 592 5873 844', '2001-03-08 12:15:40', '1980-07-11 17:23:05'),
(77, 'Endah Haryanti', 'Gg. Dipatiukur No. 656, Bitung 19052, Kalsel', 'maida.lailasari@sudi', '0758 7739 295', '1974-05-03 08:18:55', '1976-04-27 03:15:05'),
(78, 'Halim Perkasa Latupono M.Farm', 'Jr. Suprapto No. 691, Tidore Kepulauan 65597, Sulut', 'hani96@saragih.or.id', '(+62) 872 6119 3807', '1990-05-08 05:57:59', '2020-07-29 20:05:43'),
(79, 'Kasiran Murti Latupono S.Gz', 'Kpg. Imam No. 964, Banjarmasin 37980, Riau', 'oliva42@gmail.com', '(+62) 26 9004 562', '1972-10-10 06:15:19', '1990-05-14 01:54:53'),
(80, 'Melinda Agnes Yuniar', 'Dk. Baya Kali Bungur No. 139, Denpasar 21657, Jatim', 'melani.kusuma@gmail.', '(+62) 580 8076 092', '1981-04-12 06:07:13', '2003-04-19 01:22:02'),
(81, 'Kemal Waluyo S.Psi', 'Jln. Bahagia  No. 906, Surabaya 63244, NTB', 'warji80@yahoo.co.id', '(+62) 993 8402 653', '1990-02-20 09:42:28', '2004-09-04 01:54:17'),
(82, 'Asmianto Suryono', 'Ds. Barasak No. 131, Singkawang 12161, Lampung', 'jaeman.nababan@gmail', '0354 8187 348', '1994-09-29 20:00:54', '2012-07-15 10:26:59'),
(83, 'Maida Laksmiwati', 'Ds. Dr. Junjunan No. 161, Kendari 33037, Jabar', 'gamblang.wastuti@gma', '0789 6828 9239', '1987-05-16 16:51:23', '1985-08-15 06:30:31'),
(84, 'Paulin Bella Yuniar', 'Psr. S. Parman No. 483, Subulussalam 56971, Banten', 'farhunnisa83@lestari', '(+62) 839 8508 6970', '1996-01-20 08:28:45', '1995-11-11 05:30:17'),
(85, 'Jati Simbolon', 'Jr. Bak Mandi No. 694, Gunungsitoli 94669, Kalsel', 'ade.kuswoyo@haryanti', '(+62) 714 9301 784', '2013-09-23 19:18:31', '2009-04-03 05:50:50'),
(86, 'Rudi Muhammad Mangunsong M.Pd', 'Ds. Bata Putih No. 145, Pagar Alam 78606, Malut', 'npertiwi@yahoo.co.id', '0800 499 500', '1986-08-14 16:34:02', '1999-04-12 22:41:32'),
(87, 'Ami Yessi Usamah S.T.', 'Jr. Banal No. 705, Palembang 13830, NTB', 'ghani54@setiawan.web', '(+62) 483 1525 162', '1978-02-11 20:25:00', '2021-07-16 18:16:47'),
(88, 'Kamila Paulin Novitasari S.Pd', 'Jr. Untung Suropati No. 517, Tangerang Selatan 42792, Papua', 'farah05@gmail.com', '0351 1678 1807', '2005-12-22 11:20:18', '1972-11-07 20:01:28'),
(89, 'Ghaliyati Winarsih S.E.I', 'Ds. Aceh No. 634, Administrasi Jakarta Utara 31299, Kaltim', 'uoktaviani@yahoo.com', '(+62) 961 2460 4407', '2020-07-16 15:13:17', '1975-09-20 12:30:57'),
(90, 'Natalia Suartini S.H.', 'Jln. Pacuan Kuda No. 691, Tebing Tinggi 24557, Sultra', 'violet80@dabukke.inf', '(+62) 943 7566 628', '2019-05-29 04:26:08', '2012-12-22 09:44:15'),
(91, 'Lala Astuti', 'Gg. Sutarjo No. 661, Tual 75686, Maluku', 'febi.wulandari@usada', '(+62) 24 5524 955', '1970-11-19 14:16:15', '1971-09-30 09:07:29'),
(92, 'Puji Suryatmi', 'Ki. Raya Setiabudhi No. 297, Cimahi 56948, Kalsel', 'csitorus@hasanah.asi', '(+62) 471 1726 347', '2021-02-17 02:20:16', '2007-01-20 13:14:11'),
(93, 'Laras Wastuti', 'Jln. Ronggowarsito No. 371, Administrasi Jakarta Barat 22059, Kalteng', 'karimah89@pranowo.tv', '(+62) 943 4684 419', '1970-12-20 16:43:45', '1993-07-21 08:47:44'),
(94, 'Satya Hakim', 'Ds. Ahmad Dahlan No. 956, Kupang 83249, Jabar', 'agnes14@gmail.co.id', '0621 5114 969', '2000-02-04 09:27:04', '1982-02-03 12:16:59'),
(95, 'Surya Galak Hardiansyah S.E.', 'Dk. Yos Sudarso No. 391, Kupang 20095, Sultra', 'ciaobella.siregar@ya', '(+62) 564 9216 8198', '1989-10-03 09:58:26', '2011-03-28 12:11:26'),
(96, 'Rahmi Wijayanti', 'Kpg. Muwardi No. 472, Lubuklinggau 28574, Maluku', 'lhardiansyah@gmail.c', '022 7776 4462', '1983-03-28 09:05:44', '1997-12-01 12:10:09'),
(97, 'Harjo Waluyo', 'Kpg. Gardujati No. 663, Surabaya 36104, Sultra', 'mila12@gmail.co.id', '0965 1790 764', '1991-11-08 07:17:50', '1973-08-05 03:52:31'),
(98, 'Himawan Rafi Lazuardi S.Psi', 'Jln. Fajar No. 166, Surabaya 86414, Banten', 'ksinaga@namaga.ac.id', '026 6581 762', '1996-04-08 08:06:16', '2006-10-25 01:03:25'),
(99, 'Zahra Winarsih', 'Psr. Pasirkoja No. 554, Bontang 54711, Bali', 'siregar.asmadi@gmail', '(+62) 884 7996 7513', '1990-06-09 14:01:41', '2009-02-02 07:16:55'),
(100, 'Siti Novi Lailasari', 'Kpg. Radio No. 858, Mataram 35934, Kalteng', 'tpratiwi@hartati.org', '(+62) 644 7241 0682', '1993-11-18 20:06:16', '1978-11-15 17:42:31'),
(101, 'Karja Maryadi', 'Ds. Lada No. 669, Banda Aceh 81563, DIY', 'gilda83@aryani.info', '(+62) 348 3420 334', '1985-05-18 17:07:05', '2012-07-26 18:53:50'),
(102, 'Bella Nasyiah', 'Jln. Eka No. 287, Sorong 72791, Sultra', 'flatupono@yahoo.com', '0581 6494 973', '1992-07-03 22:52:17', '1973-08-13 04:44:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `majalah`
--

CREATE TABLE `majalah` (
  `majalah_id` int(11) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `tahun` smallint(4) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `harga` float NOT NULL,
  `diskon` decimal(4,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `majalah_category_id` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `majalah`
--

INSERT INTO `majalah` (`majalah_id`, `judul`, `slug`, `tahun`, `penerbit`, `harga`, `diskon`, `stok`, `cover`, `majalah_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bapakku ternyata suamiku', 'bapakku-ternyata-suamiku', 2000, 'Udin', 50000, '0.50', 50, '', 2, '2022-03-15 04:23:57', '2022-03-28 19:50:23', '2022-03-28 19:50:23'),
(2, '', 'udin-pergi-ke-kampus', 2001, 'UdinMedia', 10000, '0.50', 10, '', 2, '2022-03-15 10:28:31', '2022-03-21 21:16:26', '2022-03-21 21:16:26'),
(3, '', 'malez-abis', 2012, 'bapak budi', 100000, '0.10', 1, '', 2, '2022-03-21 19:54:52', '2022-03-21 21:16:36', '2022-03-21 21:16:36'),
(4, 'Bebas', 'bebas', 2002, 'Bin Udin', 1200, '10.00', 120, '1648440535_14b83072034f6598b62d.jpg', 2, '2022-03-21 19:58:16', '2022-03-28 19:34:02', '2022-03-28 19:34:02'),
(5, 'Street Phone', 'street-phone', 1993, 'Ma Lady', 345000, '0.10', 1, '1648440473_035a9f571c8e7ad74cef.jpg', 1, '2022-03-21 20:04:08', '2022-03-27 23:07:53', '0000-00-00 00:00:00'),
(6, 'judul sudah ada', 'judul-sudah-ada', 2002, 'udah ada', 19000, '9.00', 7, '', 2, '2022-03-21 20:06:21', '2022-03-21 21:37:27', '2022-03-21 21:37:27'),
(7, 'Fino Alla Fine', 'fino-alla-fine', 1930, 'Old Lady', 1500000, '0.30', 10, '1648440011_23d0d94a2bfe5e71e7a1.jpg', 1, '2022-03-27 23:00:11', '2022-03-27 23:00:11', '0000-00-00 00:00:00'),
(8, 'Laskar bukan Pelangi', 'laskar-bukan-pelangi', 1998, 'Dr. Udin', 10000, '0.99', 10, '1648514254_99447cb45554e0150b2b.jpg', 2, '2022-03-28 19:36:39', '2022-03-28 19:37:44', '2022-03-28 19:37:44'),
(9, 'Riski Dimas', 'riski-dimas', 2022, 'Dims', 1500, '0.00', 1, '1650517272_d4fcb132edef1fecc8f2.jpg', 1, '2022-04-21 00:01:12', '2022-04-21 00:01:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `majalah_category`
--

CREATE TABLE `majalah_category` (
  `majalah_category_id` int(5) NOT NULL,
  `name_category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `majalah_category`
--

INSERT INTO `majalah_category` (`majalah_category_id`, `name_category`) VALUES
(1, 'Dewasa'),
(2, 'Remaja'),
(3, 'Anak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-04-02-054504', 'App\\Database\\Migrations\\Customer', 'default', 'App', 1648879377, 1),
(2, '2022-04-05-002223', 'App\\Database\\Migrations\\Distributor', 'default', 'App', 1649118415, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `address`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'MANGUNSASTRO', 'tambak bayan', 'mang@gmail.com', '082312134', '2022-04-01 17:29:28', NULL),
(2, 'Pa Udin', 'Jombor', 'Udin@gmail.com', '09123456', '2022-04-01 22:57:09', '0000-00-00 00:00:00'),
(4, 'Pak Ucupppp', 'Rumah Bapak Ucup', 'ucupp@gmail.com', '1223334444', '2022-04-01 23:52:34', '2022-04-02 00:13:29'),
(5, 'Siapa aja deh', 'Jogja', 'SiapaAja@gmail.com', '12345', '2022-04-02 00:37:03', '2022-04-02 00:37:03'),
(7, 'Mustofa Hutagalung', 'Dk. Veteran No. 394, Gunungsitoli 18996, Aceh', 'pardianto@laksmiwati.info', '0811 594 607', '1985-05-31 08:02:15', '1994-12-12 12:23:47'),
(8, 'Michelle Laksita', 'Jr. Gading No. 374, Dumai 39674, Bali', 'amelia.mansur@nuraini.biz.id', '(+62) 697 5799 1776', '1982-09-21 13:33:14', '2007-12-11 21:08:26'),
(9, 'Gaman Anggriawan M.TI.', 'Ds. Baranang Siang Indah No. 487, Metro 99966, Maluku', 'dewi69@yahoo.co.id', '0210 7507 123', '1994-06-25 08:06:08', '2015-11-30 23:11:16'),
(10, 'Prayoga Situmorang', 'Jr. Acordion No. 610, Ternate 53011, Sulut', 'mhassanah@yahoo.com', '0712 3161 1280', '1975-11-27 08:47:40', '1996-08-25 13:42:37'),
(11, 'Latika Farida', 'Kpg. Suryo Pranoto No. 15, Administrasi Jakarta Utara 71036, Kaltim', 'flaksita@fujiati.biz', '0385 1999 8690', '1981-03-15 06:34:44', '2018-04-07 22:25:23'),
(12, 'Dirja Kemal Ramadan', 'Jln. Orang No. 6, Ambon 16648, Kepri', 'ajimat72@kusmawati.biz.id', '0502 2564 721', '2008-10-19 22:11:57', '2018-05-22 13:10:32'),
(13, 'Dalimin Slamet Santoso S.Farm', 'Ds. Kalimalang No. 554, Dumai 88064, DKI', 'restu.puspita@hasanah.name', '(+62) 854 6684 3057', '1991-04-30 08:33:17', '1979-01-12 14:54:54'),
(14, 'Bahuwirya Sihombing', 'Gg. Bara Tambar No. 948, Lhokseumawe 89466, Kepri', 'gunawan.mujur@yahoo.com', '0680 8152 9347', '1982-11-28 10:19:08', '1987-01-13 10:21:13'),
(15, 'Michelle Yuliarti', 'Psr. Jend. Sudirman No. 920, Bontang 59054, Bali', 'purwanti.mala@widiastuti.com', '0918 4177 203', '1992-10-27 15:36:27', '2016-10-15 08:37:37'),
(16, 'Ikin Anggriawan', 'Dk. Imam No. 691, Lhokseumawe 69959, Kaltara', 'yolanda.vera@gmail.com', '0993 0160 1083', '1989-09-10 02:35:08', '1986-07-19 14:08:30'),
(17, 'Maida Ira Pertiwi S.H.', 'Ds. Labu No. 576, Lhokseumawe 66427, Sulsel', 'kiandra27@gmail.co.id', '0553 5568 050', '2012-02-12 15:45:35', '2015-02-23 17:31:28'),
(18, 'Titin Usada', 'Ds. Agus Salim No. 43, Madiun 18073, DKI', 'busamah@gmail.co.id', '0647 6609 575', '2006-01-27 10:58:14', '1971-06-30 18:21:01'),
(19, 'Bagiya Mandala S.Ked', 'Ki. Pattimura No. 869, Ternate 28919, Jabar', 'maryadi.zulaikha@yolanda.co', '(+62) 538 7660 0298', '1998-12-15 22:59:52', '2007-09-07 21:45:39'),
(20, 'Indah Laksita S.Farm', 'Jln. Jend. Sudirman No. 360, Tangerang 23123, Jatim', 'ganda40@novitasari.web.id', '0942 7882 055', '1988-08-20 18:55:12', '1984-04-09 23:45:08'),
(21, 'Siska Pia Andriani', 'Dk. Bakhita No. 762, Binjai 70061, Kalteng', 'ganep.hidayat@saptono.in', '023 6710 743', '2017-03-16 17:57:21', '2020-05-28 07:05:43'),
(22, 'Diah Azalea Halimah', 'Jr. Ir. H. Juanda No. 655, Padang 77350, Sulbar', 'qori.mandasari@wijaya.in', '025 5983 0128', '2004-08-01 06:27:51', '2022-03-31 16:01:18'),
(23, 'Elma Oktaviani', 'Dk. Mahakam No. 471, Tidore Kepulauan 47102, Maluku', 'wijaya.lamar@lazuardi.biz', '(+62) 292 4853 600', '1984-12-02 04:06:17', '1997-11-27 22:37:06'),
(24, 'Gambira Cahyono Nashiruddin', 'Ki. B.Agam Dlm No. 532, Batam 85850, Bali', 'nugroho.azalea@tarihoran.name', '(+62) 948 6264 8193', '2013-05-24 06:08:02', '1991-11-27 05:46:49'),
(25, 'Pandu Widodo', 'Ds. Nangka No. 879, Langsa 89795, Sumut', 'pradana.diana@yahoo.co.id', '0724 9443 7913', '2015-10-06 03:56:36', '2021-09-29 05:40:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indeks untuk tabel `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`book_category_id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indeks untuk tabel `majalah`
--
ALTER TABLE `majalah`
  ADD PRIMARY KEY (`majalah_id`);

--
-- Indeks untuk tabel `majalah_category`
--
ALTER TABLE `majalah_category`
  ADD PRIMARY KEY (`majalah_category_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `book_category`
--
ALTER TABLE `book_category`
  MODIFY `book_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `majalah`
--
ALTER TABLE `majalah`
  MODIFY `majalah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `majalah_category`
--
ALTER TABLE `majalah_category`
  MODIFY `majalah_category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
