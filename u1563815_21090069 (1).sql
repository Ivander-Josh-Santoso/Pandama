-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 09:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1563815_21090069`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_wisma` varchar(255) NOT NULL,
  `alternative` char(2) NOT NULL,
  `nama_wisma` varchar(255) NOT NULL,
  `harga` int(32) NOT NULL,
  `luas_parkir` int(11) NOT NULL,
  `luas_kamar` int(11) NOT NULL,
  `jumlah_kasur` int(11) NOT NULL,
  `kamar_mandi` int(11) NOT NULL,
  `daya_tampung_tamu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `id_wisma`, `alternative`, `nama_wisma`, `harga`, `luas_parkir`, `luas_kamar`, `jumlah_kasur`, `kamar_mandi`, `daya_tampung_tamu`, `created_at`, `updated_at`, `slug`) VALUES
(1, '3', 'A1', 'Wisma Anggrek', 370, 36, 60, 2, 1, 1300, '2023-06-30 15:06:31', '2023-06-30 15:06:31', 'alora-springhill-cluster-minimalis-bekasi-utara'),
(2, '1', 'A2', 'Wisma Bintang', 1399, 250, 159, 5, 2, 2200, '2023-06-30 15:06:37', '2023-06-30 15:06:37', 'turun-harga-rumah-nyaman-asri-dan-siap-huni-riung-bandung'),
(3, '5', 'A3', 'Wisma Cendana', 370, 36, 60, 2, 1, 1300, '2023-06-30 15:06:44', '2023-06-30 15:06:44', 'stock-terbatas-segera-miliki-rumah-springhill-bekasi-utara'),
(5, '4', 'A4', 'Wisma Surya', 3900, 160, 162, 4, 4, 4400, '2023-06-30 15:10:25', '2023-06-30 15:10:25', 'rumah-mewah-siap-huni-pakuwon-indah'),
(6, '2', 'A5', 'Wisma Mawar', 975, 65, 90, 3, 1, 900, '2023-06-30 16:20:00', '2023-06-30 16:20:00', 'rumah-lingkungan-aman-lokasi-strategis-babata-pratama'),
(7, '0', 'A6', 'Wisma Teratai', 600, 120, 100, 3, 2, 1200, '2023-07-02 14:29:12', '2023-07-02 14:29:12', 'rumah-tongkrongan-gaming-dimas'),
(8, '7', 'A7', 'Wisma Melati', 2000, 120, 500, 3, 2, 3500, '2023-07-02 20:40:25', '2023-07-02 20:40:25', 'rumah-tanah-termurah-daerah-bekasi-barat'),
(9, '8', 'A8', 'Wisma Flamboyan', 4500, 446, 223, 1, 1, 2300, '2023-07-05 03:15:23', '2023-07-05 03:15:23', 'rumah-standard-2-5-lantai-lokasi-cakep-jl-kartini-jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Property', 'property', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 'House', 'house', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 'Apartment', 'apartment', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 'Hotel', 'hotel', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 'Furniture', 'furniture', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 'Interior', 'interior', '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `ci`
--

CREATE TABLE `ci` (
  `ci` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comparisons`
--

CREATE TABLE `comparisons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `harga` int(11) NOT NULL,
  `luas_parkir` int(11) NOT NULL,
  `luas_kamar` int(11) NOT NULL,
  `jumlah_kasur` int(11) NOT NULL,
  `kamar_mandi` int(11) NOT NULL,
  `daya_tampung_tamu` int(11) NOT NULL,
  `tahun_dibangun` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `criterias`
--

CREATE TABLE `criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL,
  `nama_wisma` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `luas_parkir` int(11) NOT NULL,
  `luas_kamar` int(11) NOT NULL,
  `jumlah_kasur` int(11) NOT NULL,
  `kamar_mandi` int(11) NOT NULL,
  `lantai` int(11) NOT NULL,
  `sertifikat` varchar(255) NOT NULL,
  `daya_tampung_tamu` int(11) NOT NULL,
  `interior` varchar(255) NOT NULL,
  `tahun_dibangun` varchar(255) NOT NULL,
  `kondisi_bangunan` tinyint(1) NOT NULL DEFAULT 1,
  `main_image` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `user_id`, `status`, `nama_wisma`, `slug`, `alamat`, `kota`, `provinsi`, `kode_pos`, `harga`, `deskripsi`, `luas_parkir`, `luas_kamar`, `jumlah_kasur`, `kamar_mandi`, `lantai`, `sertifikat`, `daya_tampung_tamu`, `interior`, `tahun_dibangun`, `kondisi_bangunan`, `main_image`, `image1`, `image2`, `image3`, `image4`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Wisma Bintang', 'turun-harga-rumah-nyaman-asri-dan-siap-huni-riung-bandung', 'Jl. Ranca Mulya Blok 2 B No. 24 Riung Bandung.', 'Bandung', 'Jawa Barat', '40295', 1399, '<div>Quia dolores harum voluptate et ipsum quo. Labore labore fuga culpa quia excepturi reiciendis. Optio molestias quis quia voluptatibus veniam ex.</div>', 250, 159, 5, 2, 2, 'SHM', 2200, 'Semi furnished', '1994', 0, 'house-images/f1h0bsucrdSU1ncpf9sIcPbzH6QoMsApYJxZzPPR.jpg', 'house-images/QOfBXvNXXCrUxuJAJX1qf1VcFnwe325Gs5SftYf6.jpg', 'house-images/boxyQT0gQlSkKbpqZf0KudRy6PP62KkXAtPQzQOK.jpg', 'house-images/q7E9zRxiDk0Ge4DeEfzmZ0G2dD8k73btSDhdyDFW.jpg', 'house-images/0RLqgbOL5ACAJd4nT2TDjst06Jm5vBaETbCx5mqm.jpg', '2023-06-07 17:50:30', '2023-06-28 17:20:50'),
(2, 3, 1, 'Wisma Mawar', 'rumah-lingkungan-aman-lokasi-strategis-babata-pratama', 'Wiyung, Surabaya, Jawa Timur', 'Surabaya', 'Jawa Timur', '60228', 975, '<div>*BABATAN PRATAMA WIYUNG*<br><br>Siap Huni<br>LT 90 (6 x 15)<br>LB 65<br>KT 2 1<br>KM 1<br>Listrik 900 Watt<br>SHGB<br>PDAM<br>Carport 2 mobil<br>Hadap : Barat Daya<br>Row Jalan : 2 mobil<br>Atap full Galvalum<br><br>*Harga : 975 Jt*<br><br>Hubungi :<br>Fonnie - Brighton Premier<br>wa.me/628121640255<br>Web : https://www.brighton.co.id/foni1<br>Ig :https://www.instagram.com/fonnie_property/<br>Fb : https://www.facebook.com/FonnieProperty<br>Tiktok : https://www.tiktok.com/@fonnie_property</div>', 65, 90, 3, 1, 1, 'HGB', 900, '-', '1991', 0, 'house-images/9E5rX6uDTJvWLHMzLeR8x7ljKl9Zbhdo2euE6b18.jpg', 'house-images/J9jEb7OXmLpYB3SIhobaOcNxcg7QZw4gXVz1AXlr.jpg', 'house-images/UCMPkNxYWWgTVo5vqWr2IqwT37LUI49w6oZ41qqA.jpg', 'house-images/937En7noZuchn40hIMD4NIRIy7xxlQnUeGhCUltS.jpg', 'house-images/fFo4sUQGehdId6k7mWFvznNku9IM43Tm1yjED6qA.jpg', '2023-06-07 17:50:30', '2023-06-28 17:29:34'),
(3, 3, 1, 'Wisma Anggrek', 'alora-springhill-cluster-minimalis-bekasi-utara', 'jl. Pertamina ds Kedungjaya Babelan Bekasi Utara Jawa Barat', 'Bekasi', 'Jawa Barat', '17610', 370, '<div>*? ALORA SPRINGHILL by Lorenza Land BABELAN BEKASI UTARA?*<br><br><br>*DP 0%*<br>*Cukup Booking 5Juta All in s/d Serah terima Kunci - Promo Terbatas!*<br><br>STOCK TERBATAS!!<br><br>TYPE UNIT :<br><br>? HIMAWARI - 1 Lantai: 36/60<br>? TSUBAKI - 2 Lantai 55/60<br>? SAKURA - 2 Lantai: 60/72<br>? SHOPHOUSE - 2 Lantai: 60/45<br><br>Hot Promo Konsumen:<br>✅ BOOKING 5 Juta All in ( 1LT)<br>✅ DP 20JT Juta All in ( 2LT)<br>✅ FREE BPHTB<br>✅ FREE AJB, BALIK NAMA<br>✅ FREE BIAYA KPR<br>✅ FEATURED SMARTDOOR LOCK<br><br>JANGAN LEWATKAN!<br>? GRAND PRIZE HYUNDAI STARGAZER<br>? HADIAH LANGSUNG SMART TV/AC/KULKAS<br><br>Cara Bayar<br>? Cash Keras<br>? Cash Bertahap<br>? KPR<br><br>Akses Disekitar Lokasi :<br>?10 Menit ke Pintu Toll Tarumajaya<br>?15 Menit ke Tol Gabus<br>?10 Menit ke Eka Hospital Harapan Indah<br>?15 Menit ke IKEA &amp; AEON MALL JGC<br><br>Hubungi<br>Ahmad ello<br>085870000703<br><br>#bekasi #rumahmurahharapanindah #rumahminimalisbabelan #springhillbekasi #clusterminimalisbekasi #rumahbebasbanjir #rumahbebasbanjirbabelan #jualrumahsyariah #punyarumah #rumahdijualbekasiutara⁣<br>⁣ #rumah2lantaibekasi</div>', 36, 60, 2, 1, 1, 'HGB', 1300, 'D-', '2023', 1, 'house-images/nCydqcUqSKecFbfd99JkFNGax1GRhK8LP8wINhnj.png', 'house-images/4Sfr5qsHFo7PuotfNYJ4OGBfgP1CDqz0VE2LE9Jj.png', 'house-images/gDjrVHvZg04DmJHkZi4YWv0M7vAsQAwzxQNW7hbs.png', 'house-images/UBpewR83kriZTKWLInWP4ajSmi7R9rdziNjoov32.png', 'house-images/VP6x63WveK9cwvqClVulFA679NPoPKIVKV0EAUjk.png', '2023-06-07 17:50:30', '2023-06-28 17:40:00'),
(4, 1, 1, 'Wisma Surya', 'rumah-mewah-siap-huni-pakuwon-indah', 'Pakuwon Indah, Surabaya, Jawa Timur', 'Surabaya', 'Jawa Timur', '60216', 3900, '<div>*JUAL RUMAH PAKUWON INDAH*<br>*THE MANSION*<br><br>Siap Huni<br>LT 162 (9 x 18)<br>LB 160<br>2 Lt<br>KT 3 1<br>KM 3 1<br>Listrik 4500 Watt<br>SHM<br>PDAM<br>Carport 1 mobil<br>Hadap : tIMUR<br>Row Jalan : 8 METER<br>3 water heater, meja makan, sofa, 4 AC, bed<br>*Harga : 3,9 M*<br><br>Hubungi :<br>Fonnie - Brighton Premier<br>wa.me/628121640255<br>Web : https://www.brighton.co.id/foni1<br>Ig :https://www.instagram.com/fonnie_property/<br>Fb : https://www.facebook.com/FonnieProperty<br>Tiktok : https://www.tiktok.com/@fonnie_property</div>', 160, 162, 4, 4, 2, 'SHM', 4400, 'Semi furnished', '2021', 1, 'house-images/MtHJZGF2wE0s6uUWWl1rTmBsxlnXITBsCARjH8QQ.jpg', 'house-images/66piIy1mNdW8s11dhBkfU3daHbTKrvXOIcTzAYFH.jpg', 'house-images/jVFNWuGguXgJ85dtDO1dPARQMBszfcV3M3Pxuf4J.jpg', 'house-images/JNJT16saWSQdsAbk8aHwCAYeYMjK1XqfX9ziQyjP.jpg', 'house-images/ZEC4eZQvoYVfMTc8B7IpJG3cqK6ZWErvfD2cJcZf.jpg', '2023-06-07 17:50:30', '2023-06-28 17:45:53'),
(5, 3, 1, 'Wisma Cendana', 'stock-terbatas-segera-miliki-rumah-springhill-bekasi-utara', 'jl. Pertamina ds Kedungjaya Babelan Bekasi Utara  Jawa Barat', 'Bekasi', 'Jawa Barat', '17610', 370, '<div>*? ALORA SPRINGHILL by Lorenza Land BABELAN BEKASI UTARA?*<br><br><br>*DP 0%*<br>*Cukup Booking 5Juta All in s/d Serah terima Kunci - Promo Terbatas!*<br><br>STOCK TERBATAS!!<br><br>TYPE UNIT :<br><br>? HIMAWARI - 1 Lantai: 36/60<br>? TSUBAKI - 2 Lantai 55/60<br>? SAKURA - 2 Lantai: 60/72<br>? SHOPHOUSE - 2 Lantai: 60/45<br><br>Hot Promo Konsumen:<br>✅ BOOKING 5 Juta All in ( 1LT)<br>✅ DP 20JT Juta All in ( 2LT)<br>✅ FREE BPHTB<br>✅ FREE AJB, BALIK NAMA<br>✅ FREE BIAYA KPR<br>✅ FEATURED SMARTDOOR LOCK<br><br>JANGAN LEWATKAN!<br>? GRAND PRIZE HYUNDAI STARGAZER<br>? HADIAH LANGSUNG SMART TV/AC/KULKAS<br><br>Cara Bayar<br>? Cash Keras<br>? Cash Bertahap<br>? KPR<br><br>Akses Disekitar Lokasi :<br>?10 Menit ke Pintu Toll Tarumajaya<br>?15 Menit ke Tol Gabus<br>?10 Menit ke Eka Hospital Harapan Indah<br>?15 Menit ke IKEA &amp; AEON MALL JGC<br><br>Hubungi<br>Ahmad ello<br>085870000703<br><br>#bekasi #rumahmurahharapanindah #rumahminimalisbabelan #springhillbekasi #clusterminimalisbekasi #rumahbebasbanjir #rumahbebasbanjirbabelan #jualrumahsyariah #punyarumah #rumahdijualbekasiutara⁣<br>⁣ #rumah2lantaibekasi</div>', 36, 60, 2, 1, 1, 'HGB', 1300, '-', '2021', 1, 'house-images/eMIvvsqcfGMblvCCaMcL6LOfDmeoYuX0PFwf68mc.png', 'house-images/86RaLxNWHWcr63zfoDjs5LLZimsCRxG8JqkOPfFB.png', 'house-images/mty2vQMy8AzSbRnSpNBaac9wvaKr6yLuZujHGA2z.png', 'house-images/7O4nhJHQ78BBtgJpAtrw6Boxp8RBh8WOsI1Flvm0.png', 'house-images/QmN3YgCrz4ih2bzvTpSTeS4eeWolWm8wyJumYcB5.png', '2023-06-07 17:50:30', '2023-06-28 17:49:39'),
(6, 2, 1, 'Wisma Dahlia', 'sale-rumah-2-lantai-jl-mampang-prapatan-jakarta-selatan', 'Jl Mampang Prapatan Jakarta Selatan', 'Jakarta Selatan', 'DKI Jakarta', '12790', 7100, '<div>Jual Rumah 2 Lantai MURAH siap huni di Mampang Prapatan Jakarta Selatan<br><br>- Lt. 521/Lb 400<br>- SHM<br>- Kt. 8/Km. 6<br>- 2 Lantai siap huni<br>- Lebar jalan bisa 2 mobil lega<br>- Lokasi sangat strategis<br>- Akses jalan ke Trans TV, Mampang Raya, Pasar Minggu<br><br><br>Price Rp 7,1 M<br><br><br>Daniel (DC Projects)<br>0818 0483 5272<br><br>https://www.99.co/id/konrad<br>Email : dcompanyprojects@gmail.com<br>https://www.youtube.com/watch?v=TbMQqrLfCGc</div>', 400, 521, 8, 6, 2, 'HGB', 5500, 'Semi furnished', '2002', 0, 'house-images/fathchjBtnlQrvLlqbUXAVrdMexzP8a16vjgqr5Z.jpg', 'house-images/Q01J83ja5G01k86IGsvZthHsjn7rMgYDTnlkMlE7.jpg', 'house-images/Ybji2JFHbIGJ6GSDVQ3f9cYG9hfVCBC2v0TWE0mh.jpg', 'house-images/eQhOP0USNi6GcN0zz1evvXQvZuHkNoqcPjqNxs1B.jpg', 'house-images/VUUp5NsIbF6cGZgdRtq6hh6ueopMmnXRZC55V6dI.jpg', '2023-06-07 17:50:30', '2023-06-28 17:59:40'),
(7, 2, 1, 'Wisma Melati', 'rumah-tanah-termurah-daerah-bekasi-barat', 'Jaka Sampurna, Bekasi, Jawa Barat', 'Bekasi', 'Jawa Barat', '17145', 2000, '<div>Rumah Tanah &amp; Bebas Banjir daerah bekasi barat<br><br>• Luas Tanah: 500 M²<br>• Luas Bangunan: 120 M²<br>• Bangunan 1 Lantai<br>• KT: 3<br>• KM: 2<br>• Listrik: 3.500 Watt<br>• Lingkungan Aman, Tenang, &amp; Nyaman<br>• Akses di Depan Rumah Dapat Dilalui oleh *1 Buah Mobil*<br>• *SHM*<br>• *Bebas Banjir*<br>• Harga: *Rp 2 M (Nego)</div>', 120, 500, 3, 2, 1, 'SHM', 3500, '-', '-', 1, 'house-images/lNvcVMAyTsA85Yn59x6G2R87I4hF8sxkZoOe3cQd.jpg', 'house-images/tN0867mnoXTc6eJREZ6ZZJXERc3JuUI8xghWYG0g.jpg', 'house-images/Y26zGp1LwpSTS70Jcrmkknd5lvkxrIyrDYCF3aM6.jpg', 'house-images/b6ectfbVGKw6SEQasCNhQJzGdJMK1ulf6HPjwHBd.jpg', 'house-images/j3p3uNPZEf4pQhNIZfzEo4QkDCcu7fBOnhb3pqoL.jpg', '2023-06-07 17:50:30', '2023-06-28 20:32:23'),
(8, 1, 1, 'Wisma Flamboyan', 'rumah-standard-2-5-lantai-lokasi-cakep-jl-kartini-jakarta', 'Jl. Kartini, Sawah Besar, Jakarta Pusat, DKI Jakarta', 'Jakarta Pusat', 'DKI Jakarta', '10120', 4500, '<div>Rumah Standard 2,5 Lantai lokasi cakep di Jl Kartini Jakarta Pusat<br><br>Luas tanah 223 / Luas bangunan 446<br>SHM<br>Hadap Selatan<br>Cocok buat kos kosan<br>Dekat Pasar Baru<br>Lokasi sangat strategis<br>Bebas banjir<br>Harga ekonomis<br><br><br>Harga jual Rp. 4,5 M<br><br><br>Daniel (DC Projects)<br>0818 0483 5272<br><br>https://www.99.co/id/konrad<br>Email : dcompanyprojects@gmail.com</div>', 446, 223, 1, 1, 3, 'SHM', 2300, '-', '-', 0, 'house-images/GLH7Nmfpboqij4CX8FRPuvGqMRSSa7GrPc6L0Sxf.jpg', 'house-images/R7Ja8KaEcA1f4oB9cHhg6GMIrLBmUne8jv2jedLE.jpg', 'house-images/wPSagGv9jRCGPvhwc3FnV1NqVHCAeuva8ODqy8Sv.jpg', 'house-images/sKFfwuLXLU3QwBEshUip4mJXKMGohByt9unA1uMK.jpg', 'house-images/pROHIzLSUz2hCoB5u3NIzyupooeVOXFavSKiLwH4.jpg', '2023-06-07 17:50:30', '2023-06-28 20:39:34'),
(9, 2, 0, 'Wisma Seruni', 'rumah-minimalis-margonda-depok-aman-strategis-jalan-1-mobil', 'Jl. STM Mandiri Gg. Haji Jainih (Kampung Mangga VII), Margonda – Depok  Jawa Barat', 'Depok', 'Jawa Barat', '16436', 30, '<div>Harga Nego, Minimum Sewa 1 tahun (Tidak Melayani Sewa Bulanan), Pembayaran Full dibayar dimuka (Tidak Bisa di Angsur/Termin), Akses Jalan 1 Mobil, Hoek, Lingkungan Aman &amp; Nyaman, dekat Mesjid, Bebas Banjir.<br><br>✅ 5 menit ke Terminal &amp; Stasiun Depok Baru,<br>✅ 5 menit ke Pusat Perbelanjaan ITC Depok, Mall Detos &amp; Margo City,<br>✅ 10 menit ke Kampus Gunadharma &amp; Universitas Indonesia.<br>✅ Lokasi Strategis berada di Pusat Kota Depok dekat ke Margonda Raya.<br><br>Harga : Rp.30juta/tahun (Nego), Belum Termasuk Biaya Deposit.<br><br>Luas Tanah : 80 m2<br>Luas Bangunan : 120 m2<br>Lantai : 2<br>Kamar Tidur : 3<br>Kamar Mandi : 2<br>Carport : 1 mobil<br>Daya Listrik : 1300 watt<br>Kondisi : Baik dan Layak Huni<br>Fasilitas : Semi Furnish.. Beranda, Lemari, Air Jetpump, Toren Air, Lantai keramik.<br>Alamat Lokasi : Jl. STM Mandiri Gg. Haji Jainih (Kampung Mangga VII), Margonda - Depok<br><br>Peminat Serius.. Silahkan hubungi saya langsung di Nomor Kontak yang tertera atau di Profil Akun saya (No SMS/DM/inbox).<br><br>Dihimbau apabila ingin Survey ke lokasi Jangan Mendadak, harus buat janji terlebih dahulu. Maaf Tanpa Perantara.<br><br>HUBUNGI / WA Available : 0895 0954 4833</div>', 120, 80, 3, 2, 2, 'SHM', 1300, 'Semi furnished', '2011', 0, 'house-images/I4BRp7fXS6b5YkvLrl81ujR4UaZMILOU86FNcKjB.png', 'house-images/ul23RZQA4uUTRV9wQsd73ozs32bUfLihQE77o6IZ.png', 'house-images/7tNZKr0JQOr4lqPbiWk9QhvxrboDmfmpdsv6iePU.png', 'house-images/M4JfETNhl9tzD8FXET6L4XNPL9Pi8OBUgikaxxJZ.png', 'house-images/dLrZSYLX4OXVDnVOxsrAwOIFFgWTlTtnatZNHaTN.png', '2023-06-07 17:50:30', '2023-06-28 20:45:51'),
(10, 2, 0, 'Wisma Kenanga', 'rumah-minimalis-untuk-keluarga-kecil', 'Perum Alamanda Nomor D 8, Mertoyudan, Magelang, Jawa Tengah', 'Magelang', 'Jawa Tengah', '56172', 22, '<div>rumah bangunan di lokasi strategis, Perumahan Alamanda Estate Blok D8, Mertoyudan, Kab. Magelang<br>- Perumahan yang aman dengan hanya 1 pintu masuk dan keluar<br>- dekat dengan Arthos Mall,<br>- dekat jalan raya Jogja Magelang,<br>- dekat dengan Kawasan Ruko Metro Square<br>- dekat dengan pusat kuliner di Magelang<br>- Komplek perumahan aman buat keluarga yang punya anak kecil (jalan komplek cukup luas)<br>- lokasi rumah sekitar 50 meter dari musholla komplek<br><br>Fasilitas rumah:<br>- 2 kamar tidur (ukuran besar dan ukuran kecil)<br>- 1 buah AC ukuran 1 PK di kamar tidur ukuran besar<br>- 1 Kamar mandi (berada di antara 2 kamar tidur berupa WC jongkok)<br>- dapur di bagian dalam rumah dengan wastafel dengan Exhause Fan<br>- tempat dapur kotor di bagian belakang<br>- ada carport, cukup untuk 1 mobil dan motor<br>- Setiap jendela dilengkapi dengan gorden<br>- PLN berupa meteran listrik (bukan token dengan daya 1300 KWH)<br>- air berupa PDAM<br>- sudah di pagar keliling<br>- Pintu dan jendela rumah sudah dilengkapi dengan teralis<br><br>Catatan untuk Biaya sewa DIBUKA (masih bisa dikomunikasikan)<br>- 1 tahunan (22 juta)<br><br>info lebih lanjut bisa chat wa<br>Bagi bapak/ibu/mas/mbak yang ingin melihat ke lokasi aset, mohon konfirmasi ke nomor wa tersebut SEHARI SEBELUMNYA<br><br><br>terima kasih</div>', 90, 90, 2, 1, 1, 'SHM', 900, '-', '2011', 0, 'house-images/bksRxeWpNcnjqtzoPC6XJmf2UL7FnzuSEjLn1959.jpg', 'house-images/LJljzUk8MJeYApuJegpcJFDC2VTPJnj1qOnCVUKx.jpg', 'house-images/cuBleSCY7fsnTjArsPIxphqPs3HXTHh68C7oqGUD.jpg', 'house-images/KYvNq5El1FvNDqksK7LeCH8agEDEGjW9DEJ2lkIn.jpg', 'house-images/Y0b2teXm5nzLdYNKrRNEM04RPZtaLvmSvjXpq5La.jpg', '2023-06-07 17:50:30', '2023-06-28 20:52:09'),
(11, 1, 0, 'Minimalis Siaphuni, CitraLand Taman Puspa Raya, Surabaya', 'minimalis-siaphuni-citraland-taman-puspa-raya-surabaya', 'Taman Puspa Raya, Made, Kec. Sambikerep, Kota Surabaya, Jawa Timur 60217, Indonesia  Jawa Timur', 'Surabaya', 'Jawa Timur', '60213', 75, '<div>SEWA<br><br>Rumah Minimalis 2 Lantai, Siaphuni di CitraLand Cluster Taman Puspa Raya, Sambikerep, Surabaya.<br>.<br>• Lokasi Nyaman, Aman, dan Tenang.<br>• Ready for stay condition.<br>• Akses yang mudah menuju FreshMarket, Kuliner, dan Sekolah anak.<br>• Row Jalan ± 8Meter<br>• Bebas Banjir.<br>• Keamanan 24/7.<br>.<br>Spec.<br>Luas Tanah. 135m² ( 9x15 )<br>Luas Bangunan. 146m² (2 Lantai)<br>Kamar Tidur. 3 1<br>Kamar Mandi. 3 1<br>Tanpa Perabotan<br>4 Unit A/C<br>Hadap.Selatan / PLN.3300w / PAM. / Row Jalan ±8m<br>Harga Sewa. IDR. 75,000,000.- /Tahun Nego<br>Minimal 2 Tahun<br>.<br>Contact me now for your personal inspection :<br>Nancy Sie - XMarks North Citraland ( XMNC )<br>*0851.0543.9777 (Whatsapp)<br>*0878.5221.2755<br>IG. nancy_xmarks<br>https://nancysie.blogspot.com/2022/07/sewa-rumah-minimalis-siaphuni-citraland.html</div>', 146, 135, 4, 4, 2, 'SHM', 3500, '-', '-', 1, 'house-images/PJZB9xk1dYuxvQzQLZ3Kx3XAyAcnF5cfbrVxriiP.jpg', 'house-images/cKykCBq6ZPxynAXRimqOKjQMMXHOOWgf0ThAUlbW.jpg', 'house-images/tMEeMiIB3si9KIZuNYGQV1GKGsS8LdNC2T0KKwj9.jpg', 'house-images/gJyKF9xTgXQDEcaO07Y7WH8u6ak9dDxhPaCDs526.jpg', 'house-images/JyDc8DGvdtLwjLqOiz4iFjC3EzvrsQEmOFJumYsn.jpg', '2023-06-07 17:50:30', '2023-06-28 20:57:15'),
(12, 3, 0, 'Rumah Baru Unfurnished Citraland North West Lake, Surabaya', 'rumah-baru-unfurnished-citraland-north-west-lake-surabaya', 'Citraland, Surabaya, Jawa Timur', 'Surabaya', 'Jawa Timur', '60196', 70, '<div>DISEWAKAN<br>Rumah Nyaman dengan View Danau, Taman bermain dan kolam Renang di CitraLand North West Lake, Surabaya<br>.<br>&gt; Lingkungan yang Nyaman, Aman untuk Tempat tinggal.<br>&gt; Siap Huni.<br>&gt; View Danau, Taman bermain.<br>&gt; Hanya beberapa meter menuju Kolam Renang Cluster.<br>&gt; Dekat dengan Area Sekolah dan Pertokoan.<br>&gt; Row Jalan. 10meter (setara 3 mobil)<br>&gt; Keamanan 24 Jam.<br>&gt; One Gate System.<br>&gt; Bebas Banjir.<br>.<br>Spec.<br>Luas Tanah. 135 m² ( 9x15 )<br>Luas Bangunan. 138 m² ( 2 Lantai )<br>KamarTidur. 3 1<br>KamarMandi. 3 1<br>Hadap.Utara<br>PLN.3500w / PAM Jernih.<br>Harga Sewa. IDR. 69,500,000.- /Tahun Nego<br>Minimal sewa 2 Tahun<br>.<br>Contact me now for your personal inspection :<br>Nancy Sie<br>&gt; 0851.0543.9777 (Whatsapp)<br>&gt; 0878.5221.2755<br>IG. nancy_xmarks<br>https://nancysie.blogspot.com/2023/02/sewa-rumah-dg-view-danau-di-citraland.html<br>https://wa.me/qr/WCMHBTWNFNILH1</div>', 138, 135, 4, 4, 2, 'HGB', 3500, '-', '2022', 1, 'house-images/qbu9HaTEQGvEfcG3CiMETxauf6OwuQ3OreasVoN4.jpg', 'house-images/1HoRiHoRWSq6huwweUAra3GJQ4ZfHfhX9Wx2iipA.jpg', 'house-images/dD3mGFu11AlIdGES3VUAKX1hNPQndmBZmqJYhNvD.jpg', 'house-images/98ZTNsL5GFcdvnNm4CD4ZDfpESTcjoykrYpw8Lvn.jpg', 'house-images/YbPkAPVjZZYGG0WSXUb4bATtL6w3cB3V2kFkeoAP.jpg', '2023-06-07 17:50:30', '2023-06-28 21:00:49'),
(13, 1, 1, 'Wisma Kamboja', 'rumah-furnished-pakuwon-indah-the-mansion-lontar-surabaya', 'Pakuwon Indah The Mansion Jl. Ritz Golf Residence  Jawa Timur', 'Surabaya', 'Jawa Timur', '60216', 100, '<div>SEWA<br>Rumah 3 Kamar Tidur dengan Perabotan di Pakuwon Indah Cluster The Mansion, Lontar, Surabaya.<br>.<br>• Salah Satu Kawasan Perumahan Elite di Surabaya barat.<br>• Bebas Banjir.<br>• Lokasi Strategis, Aman, Nyaman dan Bersih.<br>• Hanya 5 Menit Menuju Pakuwon Mall.<br>• Keamanan 24Jam.<br>• Row Jalan ± 8 Meter.<br>.<br>Spec.<br>Luas Tanah. 190 m² (9.5x20)<br>Luas Bangunan.164 m² (2 Lantai)<br>Kamar Tidur. 3 1<br>Kamar Mandi. 3 1<br>•• 5 Unit AirCond.<br>•• Kitchen Set.<br>•• Fully Furnished.<br>•• Garage.<br>•• Carport.<br>Hadap.Selatan<br>PLN.4400w / PAM<br>Harga Sewa. IDR. 100,000,000.- /Tahun Nego.<br>Minimal Sewa 2 Tahun..<br>? Key On Hand<br>.<br>Contact me now for your personal inspection :<br>NancySie - XMarks North Citraland<br>*0851.0543.9777 (Whatsapp)<br>IG. nancy_xmarks<br>https://nancysie.blogspot.com/2022/07/sewa-rumah-furnished-pakuwon-indah.html</div>', 164, 190, 4, 4, 2, 'SHM', 4400, 'Full furnished', '-', 0, 'house-images/tVAQH592ngqqv2qZf6S1xXbYlQcEzFkvdcpNV43q.jpg', 'house-images/UmxejPmiGcf5ckSvy1NqmuIvbVjkjqsIklvFfrh9.jpg', 'house-images/luQdq2TF42HjrVfXcDL3HS0DJKT8Ete6wXFYfbd6.jpg', 'house-images/Sb8dR8xTphTWnVUc2N9bAdFLHfTPMBkmWHLUH3p9.jpg', 'house-images/HyKC3ITltnlgLquQtIdTSkT8jMxmFKpgonFkLgIe.jpg', '2023-06-07 17:50:30', '2023-06-28 21:04:46'),
(14, 1, 0, 'rumah villa bukit mas surabaya rumah villa bukit mas surabaya', 'rumah-villa-bukit-mas-surabaya-rumah-villa-bukit-mas-surabaya', 'Dukuh Pakis, Surabaya, Jawa Timur', 'Surabaya', 'Jawa Timur', '60225', 100, '<div>rumah disewakan villa bukit mas surabaya<br>2 lantai<br>LT/LB: 160/275<br>KT/KM: 3 1/3 1<br>4400W<br>*RR</div>', 42, 78, 7, 3, 0, 'SHM', 4400, '-', '-', 0, 'house-images/rbPwIUkW5sHTFPfOUfEHM75OlZ8uVGoWj4BZkOtL.jpg', 'house-images/Xla5CzSSRx9LquSfRbENLdyxKl2DoXsTCHJTNjvC.jpg', 'house-images/VD9uW7DNtgks5YWZ7F3B3nCBehcUAOhiLRybOqfk.jpg', 'house-images/dmabo8chrxzxLS7jEETBTR66Wdrk4MmcZ0TGvy1M.jpg', 'house-images/ddiH0lpWpdTObgCbSgceu30QP69il6M007gToYur.jpg', '2023-06-07 17:50:30', '2023-06-28 21:07:46'),
(15, 1, 1, 'Wisma Teratai', 'rumah-tongkrongan-gaming-dimas', 'Sindang Mania, Dukuhwaru', 'Tegal', 'Jawa Tengah', '52451', 600, '<div>Yhahaha Hayuk</div>', 120, 100, 3, 2, 1, 'SKU', 1200, '-', '2021', 1, 'house-images/MAy0QAqdpSGVv2PzCj2ZXUkujbadrETAi7UqGVrC.jpg', NULL, NULL, NULL, NULL, '2023-06-30 15:23:49', '2023-06-30 15:23:49'),
(17, 3, 1, 'Wisma Bougenville', 'rumah-mewah', 'Selapura', 'Tegal', 'Jawa Tengah', '52451', 1300, '<div>Hub. 1212121</div>', 120, 90, 3, 2, 2, 'SHM', 1300, 'Semi furnished', '2021', 1, NULL, NULL, NULL, NULL, NULL, '2023-07-05 03:43:18', '2023-07-05 03:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_bobot`
--

CREATE TABLE `jumlah_bobot` (
  `id` int(11) DEFAULT NULL,
  `jumlah_bobot` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jumlah_matriks`
--

CREATE TABLE `jumlah_matriks` (
  `harga` double DEFAULT NULL,
  `luas_parkir` double DEFAULT NULL,
  `luas_kamar` double DEFAULT NULL,
  `jumlah_kasur` double DEFAULT NULL,
  `kamar_mandi` double DEFAULT NULL,
  `daya_tampung_tamu` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `konsistensi`
--

CREATE TABLE `konsistensi` (
  `konsistensi` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(50) NOT NULL,
  `bobot` double NOT NULL,
  `label` enum('cost','benefit') NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kriteria`, `bobot`, `label`, `updated_at`) VALUES
(1, 'harga', 0.25, 'cost', '2023-07-05 03:17:15'),
(2, 'luas_parkir', 0.2, 'benefit', '2023-07-08 10:28:25'),
(3, 'luas_kamar', 0.15, 'benefit', '2023-07-08 10:28:33'),
(4, 'jumlah_kasur', 0.2, 'benefit', '2023-07-08 10:29:01'),
(5, 'kamar_mandi', 0.1, 'benefit', '2023-07-08 10:29:11'),
(6, 'daya_tampung_tamu', 0.1, 'benefit', '2023-06-30 15:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `matriks`
--

CREATE TABLE `matriks` (
  `id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `luas_parkir` double NOT NULL,
  `luas_kamar` double NOT NULL,
  `jumlah_kasur` double NOT NULL,
  `kamar_mandi` double NOT NULL,
  `daya_tampung_tamu` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matriks`
--

INSERT INTO `matriks` (`id`, `harga`, `luas_parkir`, `luas_kamar`, `jumlah_kasur`, `kamar_mandi`, `daya_tampung_tamu`) VALUES
(1, 1, 3, 3, 3, 5, 5),
(2, 0.3333333432674408, 1, 0.3333333432674408, 0.3333333432674408, 1, 1),
(3, 0.3333333432674408, 3, 1, 1, 5, 3),
(4, 0.3333333432674408, 3, 1, 1, 5, 5),
(5, 0.20000000298023224, 1, 0.20000000298023224, 0.20000000298023224, 1, 3),
(6, 0.20000000298023224, 1, 0.3333333432674408, 0.20000000298023224, 0.3333333432674408, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_003336_create_posts_table', 1),
(6, '2023_04_25_030108_create_categories_table', 1),
(7, '2023_04_28_071736_create_houses_table', 1),
(8, '2023_05_12_010154_create_contacts_table', 1),
(9, '2023_05_15_133118_create_roles_table', 1),
(10, '2023_06_07_132754_create_criterias_table', 1),
(11, '2023_06_08_025411_create_alternatives_table', 1),
(12, '2023_06_08_030048_create_comparisons_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `alternative` char(2) DEFAULT NULL,
  `harga` decimal(43,8) DEFAULT NULL,
  `luas_parkir` decimal(22,8) DEFAULT NULL,
  `luas_kamar` decimal(22,8) DEFAULT NULL,
  `jumlah_kasur` decimal(22,8) DEFAULT NULL,
  `kamar_mandi` decimal(22,8) DEFAULT NULL,
  `daya_tampung_tamu` decimal(22,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `normalisasi_matriks`
--

CREATE TABLE `normalisasi_matriks` (
  `id` int(11) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `luas_parkir` double DEFAULT NULL,
  `luas_kamar` double DEFAULT NULL,
  `jumlah_kasur` double DEFAULT NULL,
  `kamar_mandi` double DEFAULT NULL,
  `daya_tampung_tamu` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembagi`
--

CREATE TABLE `pembagi` (
  `alternative` char(2) DEFAULT NULL,
  `harga` decimal(35,4) DEFAULT NULL,
  `luas_parkir` decimal(14,4) DEFAULT NULL,
  `luas_kamar` decimal(14,4) DEFAULT NULL,
  `jumlah_kasur` decimal(14,4) DEFAULT NULL,
  `kamar_mandi` decimal(14,4) DEFAULT NULL,
  `daya_tampung_tamu` decimal(14,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perangkingan`
--

CREATE TABLE `perangkingan` (
  `alternative` char(2) DEFAULT NULL,
  `nama_wisma` varchar(255) DEFAULT NULL,
  `nilai_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Cum perspiciatis quidem quas voluptas deleniti error.', 'accusamus-laborum-expedita-et-dolorum-repellat-repudiandae-est-similique', NULL, 'Id in excepturi voluptatibus blanditiis quis. Repudiandae nisi sint nihil deleniti. Aut consequuntur dicta autem veritatis veniam eos temporibus. Explicabo sed vel ut aut dolorum.', '<p>Modi libero et dolores aliquam dolores eum. In facere neque eligendi sunt aliquam. Consequatur magni quod eum esse dolor voluptas sint qui. Voluptas earum accusamus qui est officia ratione.</p><p>Molestias doloribus nemo ut laudantium nostrum quia. Aliquid reiciendis pariatur ea. Voluptatem ut quis fugiat quas dolorum temporibus. Perferendis ullam ea natus laboriosam. Sit et accusantium asperiores omnis.</p><p>Explicabo illo deserunt est at ratione dolore. Eaque in voluptatum rerum quod maxime. Omnis quam et consectetur consequuntur dolore ut neque. Nulla aut reiciendis quia aut nihil eaque eligendi eveniet.</p><p>Tenetur est soluta temporibus vitae. Doloremque cupiditate unde ratione saepe assumenda qui sed. Aut nam nulla omnis illum voluptas cum.</p><p>Est et in at nisi fugiat libero excepturi. Quos et dolores voluptate consequuntur maiores delectus. Molestiae ratione minima et impedit aut ut facere. Sed magnam nostrum placeat.</p><p>Voluptatem in et dolor maxime veniam est. Molestias culpa unde consequuntur sequi omnis corporis voluptate.</p><p>Iusto molestiae ut ipsa nulla quam sed nisi vitae. Ipsam magnam qui asperiores alias fugit incidunt.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 3, 2, 'Doloribus nesciunt iusto veritatis qui tempore.', 'unde-corrupti-esse-sunt-quod-ut-perferendis', NULL, 'Distinctio neque voluptatem officia vero voluptas corporis et quidem. Iure est reprehenderit consectetur et non ipsum. Quia quam sit assumenda quo consequatur.', '<p>Necessitatibus illum expedita architecto quo omnis. Nihil illo quod consequuntur. Vel et ipsa dignissimos omnis occaecati. Repellat numquam et architecto fugiat officiis ratione.</p><p>Et omnis omnis vero culpa iusto. Et et quisquam delectus aut voluptas eius qui. Corporis qui sint cum ut pariatur saepe. Ad explicabo fuga nam id quidem error.</p><p>Unde exercitationem ratione quis sed. Necessitatibus facere et at ut ipsam delectus. Enim dolorem fugiat aut delectus.</p><p>Aut magnam dicta sint aliquid. Totam quo et corporis ea inventore eum neque. Voluptatem cum voluptatem id cupiditate. Necessitatibus autem placeat facilis rerum reprehenderit.</p><p>Reiciendis autem quae illum pariatur. Consequatur tempore explicabo possimus facere et velit aut. Adipisci consequatur voluptates sequi reiciendis.</p><p>Minima velit voluptatibus voluptates illum aut. Aut provident omnis in veniam incidunt incidunt et.</p><p>Sed enim pariatur ut dolorem dolor quo voluptate. Est harum reiciendis labore minima quibusdam dolores eveniet. Delectus mollitia quia est est mollitia molestiae soluta voluptatem.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 3, 1, 'Fugit reiciendis.', 'eos-facilis-et-tempora-architecto-inventore-itaque-harum', NULL, 'Voluptates labore ex distinctio natus et accusamus error est. Sunt ducimus veniam modi. Numquam rerum aut velit incidunt magnam iure. Eaque ut est inventore nihil beatae sequi.', '<p>Deserunt corrupti asperiores inventore et quos quasi. Dolores vitae mollitia commodi at et. Non beatae fuga consequatur vitae dolore. Vero voluptatum non iure assumenda. Optio excepturi magni ea ut maxime pariatur.</p><p>Incidunt mollitia blanditiis eius eveniet. Voluptatem iusto minus rerum et. Reiciendis quia ratione pariatur quam aut aut possimus.</p><p>Enim cupiditate aut expedita natus enim. Fugiat illo doloribus omnis quia id et. Alias et a quia non mollitia quia magni. In dolorem consequatur a. Minima et vitae nostrum.</p><p>Tenetur suscipit autem sapiente quis sit quia. Ut consequatur facere delectus libero modi. Ab assumenda ut aliquid ea accusamus maiores. Voluptatibus fuga nobis quos non voluptatem dolor at.</p><p>Et ut impedit quidem odit quo accusantium iste. Dolorem expedita odio recusandae ab perferendis aut et. Sequi aut dolorum quas est cupiditate dignissimos esse aut. Cumque atque dolor quo in sint.</p><p>Pariatur magni quos possimus quis voluptas maiores ut. Tenetur placeat aliquid ratione mollitia veniam. Et reprehenderit quam provident saepe unde.</p><p>Deserunt rerum modi atque nobis. Qui repellat pariatur ex vero ad. Molestiae qui iste aut. Delectus ullam temporibus quod et corrupti aut.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 4, 2, 'Deleniti officiis sapiente et aperiam voluptatem.', 'excepturi-assumenda-officiis-delectus-et-autem-et', NULL, 'Fuga rerum nisi perspiciatis voluptates. Aspernatur sint quae hic sunt voluptatem. Et culpa et rerum odit sapiente. Voluptas aut itaque vitae qui illo.', '<p>Molestiae dolor recusandae qui. Deleniti debitis eos voluptas neque. Pariatur aut totam molestiae aut velit. Minus doloribus aut sed et.</p><p>Fugit illum molestias eos nisi earum laborum libero. Omnis id consequatur eligendi consequatur.</p><p>Enim maxime asperiores dolorem quia qui. Vel omnis tempora dolor molestiae accusantium. Nihil nihil tempora consequuntur tempora.</p><p>Quia aut corporis architecto rerum. Consequatur est autem doloribus rem quia doloribus itaque. Accusantium ut dolores non excepturi quis amet totam. Ipsa quam repellendus ut.</p><p>Earum est quisquam in nobis nulla in rerum et. Rerum quos id dolorem. Perferendis sit explicabo et est accusamus voluptate tenetur.</p><p>Quas autem in expedita placeat deleniti modi. Ipsum quod ab quia assumenda velit aut. Pariatur corporis natus similique amet magnam tenetur. Error ex quia modi quas tempore.</p><p>Corporis pariatur est impedit qui. Modi et enim voluptas cumque sequi ducimus perspiciatis. Rerum iure harum rerum error debitis. Qui commodi corporis culpa culpa similique expedita.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 6, 4, 'Voluptatibus libero dolorum aut veniam cum.', 'error-sed-qui-maiores-fugit-alias-voluptas', NULL, 'Cupiditate laudantium delectus ab quo provident voluptatem ipsa. Quia magni ut iusto laboriosam. Odit commodi inventore rerum quia enim provident. Provident velit eveniet omnis et pariatur quia. Mollitia ex nemo ipsa occaecati doloremque.', '<p>Quia perspiciatis vel aliquam dolorum ipsa fugit. Nihil magnam consequatur ut id aliquam. Neque voluptatem dolorum incidunt quis eos harum voluptatibus. Quia perferendis voluptatem laborum repellendus ea consequatur.</p><p>Recusandae voluptas et nihil aliquam. Omnis officiis quas necessitatibus corrupti et. Vel officia omnis repudiandae ullam.</p><p>Quae quisquam similique illum ipsa totam repudiandae. Nihil quisquam officiis magnam omnis et sit. Voluptate exercitationem aut quas provident dolores. Maiores nostrum corrupti quae non tenetur.</p><p>Fugiat ea doloribus beatae officiis aut. Ut ipsam eos maxime non vero vel. Reprehenderit et inventore itaque et. Nesciunt facilis ut sunt et et totam officia. Ut quidem nemo optio et dolore fugiat.</p><p>Qui enim aut adipisci quidem inventore. Labore est labore molestias non et. Pariatur dolorem asperiores illo ratione qui est dolorem corrupti.</p><p>Est qui at est et ipsa. Nobis asperiores fugit omnis itaque in et qui quibusdam. Illum molestiae explicabo aut repellat qui.</p><p>Qui officiis pariatur sunt iusto. Rem eligendi est incidunt omnis magni dignissimos vel quia.</p><p>Iusto quia qui non accusamus. Quibusdam nisi architecto labore maxime rem omnis voluptas quaerat. Reprehenderit molestias porro earum delectus.</p><p>Delectus iste aut voluptatem accusamus sed est molestiae impedit. Dolore qui ipsam debitis recusandae est. Ea autem labore qui voluptatem quia quisquam. Aut id velit explicabo qui quisquam quo.</p><p>Odio voluptas illo et esse. Et quibusdam rerum consequatur totam eos et ea rem. Dolores iure possimus ut error doloremque.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 4, 2, 'Unde et laudantium deleniti magni.', 'dolorum-recusandae-iusto-enim-consequatur-quod-praesentium-consequatur', NULL, 'Alias sed libero est quibusdam voluptatem dicta. Ut aspernatur neque rerum accusantium. Itaque quia reiciendis porro aperiam.', '<p>Quam aut fuga maxime voluptatibus ut. Sunt doloremque magnam alias nihil est quo. Et voluptas omnis quasi nam. Aut nihil odio minima aut tempora consequatur.</p><p>Suscipit qui eligendi aut. Et voluptatem libero doloremque asperiores exercitationem praesentium. Ab quo quos enim fuga cumque. Doloremque dolor ducimus molestias voluptas perferendis inventore dolor. Ut rerum sit neque illum.</p><p>Iure rerum quisquam et. Laboriosam maiores laborum nobis cumque et. Et culpa reiciendis illum eum sit nemo in. Laborum impedit qui earum beatae aliquid.</p><p>Suscipit quaerat numquam excepturi officiis. Reiciendis dignissimos natus rem vel. Officia id a officiis veritatis et.</p><p>Libero consectetur rem id. Iusto aut reiciendis laudantium repellendus saepe vitae. Enim minima pariatur fugit maiores illum reiciendis quasi.</p><p>Est quia corporis quidem et et architecto. Dolorum quasi magni repellat voluptatem suscipit quisquam voluptatum aut. Quam dolorum occaecati voluptates architecto et.</p><p>Dolore inventore impedit sint modi. Earum excepturi voluptatem praesentium sed voluptatem ut a. Debitis adipisci pariatur labore commodi voluptate aut. Harum odit occaecati velit rerum omnis quaerat.</p><p>Id dolores minus pariatur animi. Doloribus nam esse est quos et et sunt. Rerum ut magnam suscipit maxime distinctio omnis. Quas tempora sit reprehenderit minima tempora aliquam.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(7, 6, 2, 'Nihil architecto fugiat animi ex qui est et alias itaque ut.', 'laborum-est-iure-eum-quod-aliquam-est', NULL, 'Ad illo odit reprehenderit architecto totam. Dolor quisquam ipsum reiciendis reprehenderit qui. Aperiam dolor blanditiis ducimus velit non molestiae est ea.', '<p>Accusantium exercitationem est quia tenetur et. Ea ad libero perspiciatis ipsa mollitia. Ducimus a et vel perferendis.</p><p>Cupiditate quaerat est ex exercitationem eaque voluptas. Sequi voluptates natus aut excepturi laudantium. Quam ut aliquam animi et corporis molestiae neque.</p><p>Repudiandae nihil id dolores et ut. Error illo ut possimus. Beatae animi eveniet porro pariatur quo.</p><p>Cupiditate perferendis nihil reiciendis sed occaecati dolore consequatur. Corporis atque molestiae id fugit. Est qui dolores quos enim qui vel.</p><p>Tempore tempore enim qui sed. Illo culpa placeat rerum sit ipsa voluptas. Dicta itaque ut modi adipisci perferendis earum.</p><p>Nulla veritatis qui quis tempora et error corporis. Expedita facilis qui est et aliquam. Quo corrupti rem nemo perferendis deserunt minus.</p><p>Aspernatur odio atque eius est commodi amet. Molestiae corporis rem dolor ad. Voluptates qui itaque eaque non sed facilis aut.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(8, 1, 1, 'Sint consequatur facere ut.', 'necessitatibus-officia-suscipit-consequatur-quos-adipisci-ut-aperiam-distinctio', NULL, 'Magnam sequi omnis autem qui ratione. Sed voluptatem a ex voluptas dolore numquam. Consectetur cumque aut hic.', '<p>Qui cupiditate omnis pariatur tenetur nihil ut non. Doloremque corporis repellat in. Tempore nisi id quasi nihil quaerat.</p><p>Dolor officia laudantium ab qui. Sit quo dolor aspernatur atque. Enim quo rerum possimus debitis qui ipsam omnis. Et eveniet iusto quisquam et et.</p><p>Sint sint enim accusamus voluptates est enim. Ut minima quidem voluptates cumque quisquam fugit dolores. Et porro suscipit eos facilis ea. Modi voluptatem cumque dolores dolor ut neque quia. Quis provident facilis aut facilis fugiat ut.</p><p>Necessitatibus eligendi esse accusamus minima. Fugit eos nihil consequatur molestiae. Suscipit est molestiae in architecto quis qui omnis maxime.</p><p>Nemo error eligendi perferendis id omnis autem. Tempora voluptate eum rem perspiciatis ipsa laudantium adipisci error. Voluptatem provident incidunt quidem iure rerum possimus. Eveniet nam veniam esse voluptatem expedita vel.</p><p>Ex quis nihil voluptates mollitia deserunt. Aut sunt repudiandae molestias veniam quia dolores. Ab et maiores quos officiis. Earum dolor pariatur porro molestias perferendis.</p><p>Numquam veniam odio aut quisquam. Magnam sit voluptas debitis tempora omnis exercitationem qui omnis. Soluta et molestiae ut et asperiores. Aut doloremque recusandae alias maiores ea.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(9, 2, 4, 'Sunt corporis dolores.', 'consequatur-quia-at-odit-voluptatibus-ut', NULL, 'Dolores alias mollitia hic. Facere vero voluptatum quisquam mollitia blanditiis corrupti. Iusto id rerum nemo.', '<p>Error optio dignissimos omnis. Nemo repellat praesentium perferendis dolor tenetur. Dolorem a corporis tenetur ut molestiae. Dolores rerum numquam facere odio asperiores non fugit molestias.</p><p>Officia sint est est saepe et in doloremque. Necessitatibus neque error consectetur cupiditate magni. Porro doloremque dolor possimus velit ut accusantium recusandae.</p><p>Voluptatem tempora quae fuga sint eos maxime ad sit. Aliquid error facilis rem inventore neque et aut.</p><p>Eos est excepturi repudiandae odit rem. Labore laborum explicabo blanditiis et necessitatibus saepe. Ad dolores eveniet rerum atque et quam veritatis. Maxime exercitationem deleniti laboriosam voluptatem illo.</p><p>Similique distinctio eum suscipit reprehenderit rerum incidunt et. Odio fuga dolores tenetur occaecati. Ducimus sed accusantium labore qui.</p><p>Suscipit autem non et. Dolores expedita placeat veniam. Cumque tempora minus dolorem.</p><p>Placeat voluptatum perspiciatis aut sunt labore minus ea. Nihil omnis explicabo incidunt incidunt velit repudiandae excepturi voluptas. Quod esse nihil saepe vero et accusamus.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(10, 3, 3, 'Alias itaque ut.', 'molestiae-explicabo-distinctio-et-sequi-eius-quasi-qui', NULL, 'Omnis corporis quo error ipsum ipsa qui. Corrupti rerum aut error rerum. Deserunt eos illum ad velit labore reiciendis.', '<p>Excepturi voluptas blanditiis voluptatem fugit eum ut perferendis. Eum voluptatem voluptas pariatur nostrum quia.</p><p>Voluptatibus repellat iure cupiditate a aut. Eius quae sapiente eum quisquam cum. Ea doloremque et et sint quo ut repellendus. Aut temporibus assumenda odit et aut rerum ab in.</p><p>Nulla voluptas modi et repellendus. Voluptate molestiae dicta qui officia qui et quidem placeat.</p><p>Dolor ea praesentium consectetur culpa molestiae quia ea nam. Aliquam id vel quas qui odit natus. Qui ut consectetur laudantium. Nisi labore voluptas laboriosam adipisci.</p><p>Sequi aut inventore numquam commodi soluta quo inventore. Aut delectus ut beatae vero.</p><p>Aliquam sint autem minus ipsum perspiciatis quos. Sit explicabo saepe ipsa fuga iure aut. A nisi laborum labore cumque. Id quasi corporis non est velit repudiandae blanditiis.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(11, 2, 3, 'Illo atque soluta autem est quisquam quo sunt.', 'quis-reprehenderit-ut-iusto-eaque-non-quam-architecto', NULL, 'Nesciunt est laborum et reiciendis dolorem fugiat in. Minima molestiae exercitationem repudiandae modi in. Laudantium veniam cupiditate omnis dolorem ducimus quis aperiam. Repellendus doloribus quae dolorem aut ipsam velit. Aspernatur possimus fugit quisquam quidem blanditiis quia.', '<p>Sed eveniet laborum explicabo qui sit dignissimos. Odio eum quia quos corporis expedita. Est facilis voluptas sapiente.</p><p>Fugiat praesentium voluptatem quia quibusdam perspiciatis repudiandae modi. Non incidunt et quo ut molestiae aut recusandae. Eos sint alias commodi possimus. Ut asperiores aut est rerum iure sapiente culpa aut.</p><p>Et quam nisi odio quia. Et labore sed dolores laboriosam sapiente praesentium. Ut consequatur nihil a similique qui a. Explicabo explicabo tempore ea possimus. Et sapiente ipsum ad consectetur assumenda voluptate vero.</p><p>Velit recusandae odio qui harum quo. Sint et alias quibusdam vel eos autem reiciendis. Dignissimos debitis qui ut eligendi qui et. Pariatur facilis sequi aperiam enim pariatur ut.</p><p>Voluptatem deleniti molestiae similique. Eligendi id corporis sit sed quisquam. Sed excepturi et pariatur. Accusantium rerum est consequuntur quos culpa ad.</p><p>Perspiciatis non voluptate velit vero est. Qui voluptatibus quia et sint illo delectus. Dolores sint fuga enim aliquid ut consequatur. Non ad in rerum qui quis.</p><p>Tempore error doloribus tempora nesciunt. Ut et quibusdam inventore aut. Autem et aliquid eum ut.</p><p>Sint in exercitationem debitis corporis. Aspernatur inventore ut illo eius natus repellendus. Harum eius autem quia dolores repellendus et est architecto. Cumque molestiae architecto nemo.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(12, 5, 1, 'Dolore qui deleniti.', 'nobis-nobis-repudiandae-modi-quo-porro-voluptates', NULL, 'Omnis voluptatibus officia eum maxime labore. Et et praesentium ut fugit quod consequatur. Harum voluptatum dicta alias voluptatum sit voluptatem. Et suscipit nostrum qui pariatur repudiandae rerum aut.', '<p>Ex modi enim minima atque sint. Officia ducimus non aut eos tempora non perferendis. Repellendus illo enim aut nulla officia molestiae velit. Incidunt ipsum aspernatur ullam quia delectus nobis possimus. Architecto rem ducimus asperiores ut modi.</p><p>Dolores adipisci impedit fugiat laudantium autem. Dolorem non sint omnis natus ratione nihil maxime molestiae. Quos facilis ex accusantium asperiores voluptatem deserunt provident.</p><p>Quas eos enim dolor velit et. Autem debitis ab vero alias autem pariatur. Consequatur quis molestiae odio similique dolorem maiores odit.</p><p>Labore ea quae eius autem illum. Pariatur qui est dolorum beatae numquam nihil sed veniam. Et sunt perspiciatis minima ipsum quidem nesciunt.</p><p>Hic qui maiores tempore animi dolore. Consectetur ut quidem laborum dolorum nesciunt animi dolor. Quis ut vel est qui fugiat.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(13, 6, 3, 'Quaerat accusantium aut.', 'et-quae-exercitationem-quo', NULL, 'Quis molestias dolorum ut natus. Beatae aut autem exercitationem. Sed necessitatibus blanditiis aut repellendus eaque qui. Earum quis reiciendis aut. Cumque dolores totam molestias aut error non sunt eum.', '<p>Harum fugiat impedit ab iure consectetur ut. Eum tempora et et et hic maiores provident. Deleniti repellendus sit quasi rerum. Repellendus iure labore in eaque.</p><p>Omnis suscipit omnis recusandae explicabo nihil enim. Voluptatem qui non necessitatibus non. Minima et aut quis atque. Ut ea at vel dolores. Natus voluptatum esse eveniet reprehenderit sunt dolorem.</p><p>Officia velit provident natus magnam praesentium voluptatem et ut. Fugiat odio numquam incidunt. Est molestias ipsum magni.</p><p>Esse ipsam aperiam tempore esse repellendus in. Sint ipsum in quia. Quae et quisquam iste aut eos.</p><p>Omnis animi dolore pariatur ipsum blanditiis. Nisi deserunt minus in ipsa voluptas maiores voluptatem et.</p><p>Debitis voluptatum dolorum omnis accusantium incidunt quia ipsa. Vitae atque aperiam ipsam voluptas dicta. Officia voluptas deleniti delectus ut consequatur. Vitae aut qui cum illum voluptas. Molestiae aut aliquam in.</p><p>Cumque ut eligendi similique ducimus. Magni blanditiis est minima sit excepturi aliquid iure. Doloribus in et omnis omnis expedita et.</p><p>Accusamus maiores neque soluta atque qui deserunt. Et minima tenetur ut officiis. Eaque sit dolor ad deserunt sit. Officia sed accusamus non et repellat consectetur. Ratione similique fugit dolorum exercitationem quia rem minima.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(14, 6, 2, 'Sed nesciunt ipsam.', 'dolores-suscipit-voluptatem-minus-voluptas-et-ut-mollitia', NULL, 'Rem et rem omnis explicabo nam dolorem in. Consequatur corporis facere et totam. Mollitia enim reiciendis enim atque repudiandae molestiae. Sint repellendus veniam iste aut tenetur impedit aut.', '<p>Et eius sequi et exercitationem. Eos tenetur aut ullam non at tempora consequatur. Harum dolor et vel ab. Possimus repudiandae et animi provident.</p><p>Optio iure eius et recusandae distinctio. Delectus sed fuga distinctio illo aut. Voluptatem quia ab unde inventore et libero autem. Eos recusandae pariatur dolores atque perspiciatis sint et explicabo.</p><p>Voluptatem magnam reiciendis qui consequatur ea praesentium consequatur soluta. Tempora qui repellat debitis hic.</p><p>Nihil pariatur aut blanditiis doloremque. Est vel autem vel animi aut animi.</p><p>Dicta ut praesentium fugiat ea ipsum et. Quibusdam pariatur veritatis atque harum eaque rerum odit. Sint mollitia qui rerum hic magni est eveniet illum.</p><p>Eum voluptates tempore enim quos qui. Recusandae autem impedit voluptatem et deserunt error. Quam sit quis nisi quo excepturi dolores ipsa. Eaque ex dolores et delectus iure sequi.</p><p>Mollitia autem qui aliquid pariatur fugiat qui. Qui cupiditate vel in aut ipsum quod non. Architecto aliquid non rerum quia quod nisi dolores repellendus. Illum aut placeat recusandae nemo amet modi. Velit est provident id et porro quia dolore.</p><p>Adipisci ut molestiae animi consequatur et consequatur. Sunt nesciunt provident doloribus perferendis eum. In dolorem quam incidunt fuga quasi velit ut sapiente. Atque necessitatibus laudantium eum eius enim.</p><p>Qui sunt accusantium eveniet quis sit perferendis. Aliquam quasi voluptates dolorum aliquam. Quae tempore vitae tempore et.</p><p>Aut cupiditate perferendis deleniti omnis expedita. Molestiae laudantium dolores recusandae exercitationem. Sapiente eos provident modi. Quibusdam voluptatem aut aut impedit commodi consectetur.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(15, 2, 4, 'In occaecati fugiat.', 'quam-dolor-voluptas-facere-corrupti', NULL, 'Quis nisi iure dolor facere qui. Rerum quidem enim aliquam similique nulla voluptatem hic. Sint placeat ut voluptatibus impedit voluptatem odit. Aut dolor tempora sunt necessitatibus nam.', '<p>Voluptatem laboriosam inventore debitis accusantium officia ut. Magni atque voluptas repellat quia nihil porro rerum. Eum sint fugiat et iusto.</p><p>Soluta quo expedita omnis. Ut aspernatur eveniet quia sapiente sapiente quod provident. Ducimus a sunt commodi non eius a. Fuga minima sed odit molestias at.</p><p>Qui est incidunt voluptate sit cum. Id dolor iusto sit. Voluptatem mollitia cupiditate recusandae non illum. Pariatur voluptas voluptatem quis inventore esse minima aut. Ut reiciendis nulla sed possimus velit minima neque.</p><p>Officia distinctio enim perspiciatis tenetur. Quia saepe assumenda ab et quod necessitatibus. Quas impedit nobis ut quia.</p><p>Aliquid porro at illo dolorem. Ut et magni delectus minus. Et qui atque exercitationem at voluptas illum.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(16, 3, 1, 'Eos autem quas explicabo.', 'qui-doloribus-et-dolorem-culpa-repudiandae-hic-ipsum', NULL, 'Qui quaerat at iusto sit laudantium. Doloribus aliquam sunt ducimus est minus molestiae et.', '<p>Excepturi ea laudantium omnis nihil et libero. Qui rerum asperiores exercitationem minima voluptate vel consectetur. Doloremque quo expedita qui architecto.</p><p>Unde vero modi et praesentium dolore vitae voluptas. Quis labore animi nam. Ut autem tenetur nihil delectus consequatur aliquam. Est placeat at eos facere quis est distinctio.</p><p>Est distinctio sed hic et placeat officiis. Consectetur porro consequatur repellat quidem. Voluptatem velit quia nobis sint. Eveniet id consectetur sequi.</p><p>Incidunt et dignissimos dolores pariatur culpa. Nostrum sit iure architecto eligendi itaque sed.</p><p>Eveniet eius nihil dignissimos. Est qui magni debitis soluta. Recusandae sit aut voluptas reiciendis tenetur. Eum dignissimos dolores vitae ipsum. Temporibus quia sint nulla debitis sequi consectetur id in.</p><p>Eos tempore nostrum voluptatem quis ut error odit. Perspiciatis iure corrupti cumque ea quasi quo officiis. Itaque repellendus atque inventore sed vel consequuntur et. Placeat soluta voluptatem optio necessitatibus laborum dolor.</p><p>Neque quas ut corrupti occaecati nisi soluta. Doloribus autem doloribus a non et modi odit. Ut tenetur alias necessitatibus occaecati.</p><p>In qui voluptatem qui sed harum sed. Expedita alias voluptate modi neque ut non sint.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(17, 6, 2, 'Odio eveniet nisi esse.', 'facere-sed-velit-non-voluptatibus-dolorem', NULL, 'Animi qui deleniti maiores. Quia dolore corporis autem dolorum. Quod quis quidem voluptatem impedit earum et enim.', '<p>Aut voluptates veritatis autem blanditiis voluptatem sit molestiae impedit. In molestiae omnis sint et quia voluptate et debitis. Ipsam repellat doloremque quod eos voluptas quia consectetur.</p><p>Omnis ea voluptate voluptatum voluptas et est. Inventore omnis incidunt dignissimos nisi ut est. Eveniet quae nobis at sit repudiandae sit. Quasi consectetur rerum ut dolor.</p><p>Rerum nostrum impedit provident non similique. Reiciendis fuga quia magni tenetur. Possimus consequuntur et esse blanditiis.</p><p>Sit qui laboriosam rerum culpa sed laudantium rerum quaerat. Assumenda distinctio enim vel harum hic et doloribus. Ducimus voluptatem et deleniti. Cum nam ut non cupiditate.</p><p>Eum aliquam libero qui est atque provident explicabo. Enim ad possimus soluta quidem quo consequuntur quibusdam. Voluptatem optio suscipit iure et nesciunt mollitia voluptas. Ad dolores autem corrupti et.</p><p>Quia veniam nemo aut quia qui ut omnis repellat. Nobis beatae dolore accusantium deserunt sint ut. Aut perferendis temporibus deserunt nesciunt hic. Enim sequi magnam cum odio quo corporis. Exercitationem nostrum quo in sint dolorem alias delectus.</p><p>Laboriosam placeat est magni vitae laboriosam sit. Corporis dolor ea consequatur nulla. Consequatur neque mollitia libero quia eveniet. Consequatur sunt totam ratione dolor.</p><p>Modi temporibus modi est amet. Sequi magni rerum impedit molestiae minima voluptatem. Quia ut quae quia sint. Alias officia commodi praesentium autem iusto.</p><p>Illo suscipit inventore tempora in eum rem ipsa. Et vel sint dicta et et sunt. Eum aut cupiditate aut tenetur soluta dolor.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(18, 2, 3, 'Dolor laborum et voluptatibus.', 'totam-nobis-repellat-eius-consequuntur-cumque', NULL, 'Laboriosam voluptas inventore explicabo dolor. Porro voluptatibus porro ipsa aut et. In porro non soluta et. Veniam sint rerum consequatur similique cum.', '<p>Ut id et officia sunt exercitationem dolor. Officiis omnis assumenda numquam sed. Voluptatem minima earum iure corrupti. Laudantium expedita qui sit laborum.</p><p>Fugit sed ex ut enim dolorem eligendi. Ut neque non id consequatur nulla. Quod iste optio aspernatur tenetur nemo nulla. Reprehenderit tempora qui magnam nulla ut doloribus excepturi.</p><p>Consequuntur voluptas itaque dolorum in aspernatur nihil. Quas est alias et voluptatem ut. Aut autem ut nihil autem. Voluptas beatae et porro quaerat in occaecati et reiciendis.</p><p>Et sed id dignissimos adipisci in voluptatem voluptatem. Alias blanditiis veniam repellat animi quis. Ullam repellendus libero velit accusamus. Fuga rerum voluptate laborum beatae explicabo accusantium eum.</p><p>Odio quod eius excepturi. Ut fugiat animi animi ad rerum quae quaerat. Et sunt sequi beatae atque non. Nihil perferendis ea dolor.</p><p>Aut magnam tempore deleniti necessitatibus enim. Omnis corrupti et eos cumque repudiandae magni. Omnis accusantium quis placeat autem tempore ut. Non quisquam quo cumque consequatur.</p><p>Eos mollitia molestias eum cum dicta. Numquam aliquid assumenda fugiat velit voluptatibus. In deleniti distinctio non commodi.</p><p>Voluptas tempore et velit corrupti non animi asperiores doloribus. Omnis placeat et debitis. Ipsa laboriosam dolorem fuga cupiditate doloribus.</p><p>Tempore id suscipit aut tempore expedita rerum reiciendis. Voluptates eum dolorum nobis dolor ad.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(19, 3, 3, 'Tempore est quos veniam occaecati est voluptate voluptatem voluptatum odit.', 'aliquam-mollitia-neque-harum-velit', NULL, 'Voluptatem reprehenderit et aut officia praesentium velit. Voluptatibus eum culpa facilis odit quis. Tempore vitae ea laborum sapiente dolores.', '<p>Totam accusantium quo blanditiis nesciunt consequuntur tenetur neque minus. Dignissimos velit quia suscipit quam. Magnam vel est vitae velit harum vel vel. Aliquid molestiae tempora temporibus culpa.</p><p>Mollitia nihil qui et beatae et aperiam qui. Quia et ut ea qui. Quisquam molestias assumenda modi ullam assumenda et alias.</p><p>Vitae alias molestiae nostrum suscipit repudiandae numquam. Id provident officia fugiat ut. Necessitatibus vel velit aperiam repellendus et dolorem.</p><p>Voluptas officiis veniam voluptatem. Sapiente non quis quibusdam fuga doloribus. Nulla ullam est quasi velit natus architecto. Quam delectus necessitatibus ut id velit non.</p><p>Soluta vitae explicabo vel. Omnis sunt blanditiis aliquam est. Mollitia sit corrupti laudantium enim.</p><p>Cumque eaque quibusdam amet error sunt amet. Nisi cum voluptate sunt. Sapiente adipisci dolorem voluptatem consequatur perspiciatis.</p><p>Qui perferendis excepturi quia repellendus. Omnis tenetur ullam enim et impedit. Autem eligendi quisquam inventore beatae dolore. Exercitationem quia nam totam cupiditate deserunt.</p><p>Magni ut quis inventore aut nemo. Nesciunt sequi est cumque quam explicabo. Optio vel est aut rerum est. Debitis aut corporis autem vel vitae alias nihil dolorum. Alias doloribus cum sed vero libero repudiandae vel.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(20, 5, 1, 'Quia quo sed.', 'facere-fuga-molestiae-dolore', NULL, 'Voluptatem consequatur non odit adipisci enim ad. Pariatur omnis qui accusantium qui. Quisquam cupiditate adipisci nesciunt. Necessitatibus dolore illum perferendis mollitia dolores unde. Ut aperiam ipsum ad voluptatem eveniet ab voluptatibus distinctio.', '<p>Similique aspernatur omnis quisquam ex. Beatae enim dolor quo vitae natus. Mollitia ut voluptas et quod sit ullam odio deleniti. Laboriosam quos suscipit vel nostrum accusamus eos repellendus.</p><p>Ut ab consequatur suscipit. Qui dolorum fugiat molestias.</p><p>Qui repellat et quae iste quae quia nisi. Ex quibusdam eum nisi eos natus. Mollitia vel explicabo sunt aperiam dolorum consequatur quas voluptates. Temporibus optio voluptatum error animi amet.</p><p>Ullam at maiores molestiae ullam est. Impedit laborum necessitatibus voluptate eius enim ab. Incidunt qui ad eius vel rerum earum est.</p><p>Dignissimos fugiat sed animi doloremque cupiditate voluptatem ea. Quisquam est at itaque quasi perferendis natus. Saepe dolorem et aut pariatur. Voluptates fugiat sequi et. Et officia voluptatem non voluptatem labore.</p>', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 'user', '2023-06-08 00:50:30', '2023-06-08 00:50:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_hasil`
-- (See below for the actual view)
--
CREATE TABLE `saw_hasil` (
`nilai_akhir` double
,`alternative` char(2)
,`nama_wisma` varchar(255)
,`lihat` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_normalisasi`
-- (See below for the actual view)
--
CREATE TABLE `saw_normalisasi` (
`alternative` char(2)
,`harga` decimal(14,4)
,`luas_parkir` decimal(14,4)
,`luas_kamar` decimal(14,4)
,`jumlah_kasur` decimal(14,4)
,`kamar_mandi` decimal(14,4)
,`daya_tampung_tamu` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_pembagi`
-- (See below for the actual view)
--
CREATE TABLE `saw_pembagi` (
`harga` int(3)
,`luas_parkir` int(3)
,`luas_kamar` int(3)
,`jumlah_kasur` int(1)
,`kamar_mandi` int(1)
,`daya_tampung_tamu` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `saw_pengkali`
-- (See below for the actual view)
--
CREATE TABLE `saw_pengkali` (
`alternative` char(2)
,`harga` double
,`luas_parkir` double
,`luas_kamar` double
,`jumlah_kasur` double
,`kamar_mandi` double
,`daya_tampung_tamu` double
);

-- --------------------------------------------------------

--
-- Table structure for table `t`
--

CREATE TABLE `t` (
  `t` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jk` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `jk`, `tanggal_lahir`, `alamat`, `no_hp`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'Aswani Kenzie Maheswara S.Farm', 'saptono.sidiq', 'ozulaika@example.org', '1', '1999-02-14', 'Gg. Barasak No. 180, Tual 30449, Jabar', '024 8218 312', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2sYR1fo43f', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(2, 1, 'Rachel Usada', 'lalita.simbolon', 'bahuwirya15@example.net', '1', '2008-08-22', 'Ki. Cokroaminoto No. 265, Jambi 16138, Jabar', '(+62) 381 1004 1875', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8r82QYqMZPqmSc2vQwIsCCawQT36SNhqw1JurBsEXiZacQJqkdEhPmVp4Oef', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(3, 2, 'Almira Oni Handayani S.E.I', 'dagel13', 'vmegantara@example.net', '0', '1998-07-01', 'Gg. Baabur Royan No. 842, Banda Aceh 32921, Kalsel', '(+62) 757 2713 9109', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SZhuij8Vld3oMNxpgwnyRipPss9NX1pqJ7RK8E7Kc7IFRCO46XXqzNF8kWwv', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(4, 2, 'Raisa Puspasari', 'baktianto.riyanti', 'kusumo.nurul@example.net', '0', '2009-07-28', 'Dk. Acordion No. 658, Langsa 57753, NTT', '021 6308 0027', '2023-06-08 00:50:30', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2NhQpCBish', '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(5, 1, 'Annur Riyadhus Solikhin', 'annurrs', 'annurriyadhus17@gmail.com', '1', '2002-12-27', 'selapura city', '085642240515', NULL, '$2y$10$rluGXS5NTR.04gcV5yrpGOQMXlEG1rvYCqVfRDi1Sh6.8VzqT5sJy', NULL, '2023-06-08 00:50:30', '2023-06-08 00:50:30'),
(6, 2, 'Aji', 'aji', 'aji@gmail.com', '1', '2023-06-26', 'Bumijawa', '+6285642240515', NULL, '$2y$10$ipr0QTPoWFRpmUC0MRgqbOHmzmzoS..LKNBhKQPUN1cO.lfMfCSLK', NULL, '2023-07-05 10:50:42', '2023-07-05 10:50:42'),
(0, 2, 'Ivander Josh Santoso', 'ivan', 'ivan@example.com', '1', '2002-12-31', 'Jln. Duku Gang 3', '087803112002', NULL, '$2y$10$KKjIo4pd5TwT4x8jWnqaMeXOx8CwTAzBz5Ri2UNNSe4JgiC1YukUm', NULL, '2023-07-06 10:34:44', '2023-07-06 10:34:44');

-- --------------------------------------------------------

--
-- Structure for view `saw_hasil`
--
DROP TABLE IF EXISTS `saw_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_hasil`  AS SELECT `saw_pengkali`.`harga`+ `saw_pengkali`.`luas_parkir` + `saw_pengkali`.`luas_kamar` + `saw_pengkali`.`jumlah_kasur` + `saw_pengkali`.`kamar_mandi` + `saw_pengkali`.`daya_tampung_tamu` AS `nilai_akhir`, `saw_pengkali`.`alternative` AS `alternative`, `alternatives`.`nama_wisma` AS `nama_wisma`, `alternatives`.`slug` AS `lihat` FROM (`saw_pengkali` join `alternatives` on(`alternatives`.`alternative` = `saw_pengkali`.`alternative`)) ORDER BY `saw_pengkali`.`harga`+ `saw_pengkali`.`luas_parkir` + `saw_pengkali`.`luas_kamar` + `saw_pengkali`.`jumlah_kasur` + `saw_pengkali`.`kamar_mandi` + `saw_pengkali`.`daya_tampung_tamu` AS `DESCdesc` ASC  ;

-- --------------------------------------------------------

--
-- Structure for view `saw_normalisasi`
--
DROP TABLE IF EXISTS `saw_normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_normalisasi`  AS SELECT `alternatives`.`alternative` AS `alternative`, `saw_pembagi`.`harga`/ `alternatives`.`harga` AS `harga`, `alternatives`.`luas_parkir`/ `saw_pembagi`.`luas_parkir` AS `luas_parkir`, `alternatives`.`luas_kamar`/ `saw_pembagi`.`luas_kamar` AS `luas_kamar`, `alternatives`.`jumlah_kasur`/ `saw_pembagi`.`jumlah_kasur` AS `jumlah_kasur`, `alternatives`.`kamar_mandi`/ `saw_pembagi`.`kamar_mandi` AS `kamar_mandi`, `alternatives`.`daya_tampung_tamu`/ `saw_pembagi`.`daya_tampung_tamu` AS `daya_tampung_tamu` FROM (`alternatives` join `saw_pembagi`)  ;

-- --------------------------------------------------------

--
-- Structure for view `saw_pembagi`
--
DROP TABLE IF EXISTS `saw_pembagi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_pembagi`  AS SELECT 370 AS `harga`, 446 AS `luas_parkir`, 500 AS `luas_kamar`, 5 AS `jumlah_kasur`, 4 AS `kamar_mandi`, 4400 AS `daya_tampung_tamu``daya_tampung_tamu`  ;

-- --------------------------------------------------------

--
-- Structure for view `saw_pengkali`
--
DROP TABLE IF EXISTS `saw_pengkali`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `saw_pengkali`  AS SELECT `saw_normalisasi`.`alternative` AS `alternative`, `saw_normalisasi`.`harga`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'harga') AS `harga`, `saw_normalisasi`.`luas_parkir`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'luas_parkir') AS `luas_parkir`, `saw_normalisasi`.`luas_kamar`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'luas_kamar') AS `luas_kamar`, `saw_normalisasi`.`jumlah_kasur`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'jumlah_kasur') AS `jumlah_kasur`, `saw_normalisasi`.`kamar_mandi`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'kamar_mandi') AS `kamar_mandi`, `saw_normalisasi`.`daya_tampung_tamu`* (select `kriteria`.`bobot` from `kriteria` where `kriteria`.`kriteria` = 'daya_tampung_tamu') AS `daya_tampung_tamu` FROM (`saw_normalisasi` join `kriteria`) GROUP BY `saw_normalisasi`.`alternative``alternative`  ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
