-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jul 2022 pada 07.24
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bellman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bellman`
--

CREATE TABLE `bellman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rute` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_barang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum terkirim',
  `long_before` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_before` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_after` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_after` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bellman`
--

INSERT INTO `bellman` (`id`, `rute`, `id_kurir`, `id_paket`, `status_barang`, `long_before`, `lat_before`, `long_after`, `lat_after`, `jarak`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', 'sudah dikirim', '106.46844212389237', '-6.266591540907143', '106.46938626146601', '-6.263690726608374', 339.01696513157, '2022-06-28 12:09:20', '2022-06-28 12:09:20'),
(2, '1', '1', '1', 'sudah dikirim', '106.46938626146601', '-6.263690726608374', '106.46672551012324', '-6.263221475722148', 298.68883248446, '2022-06-28 12:09:20', '2022-06-28 12:09:20'),
(3, '1', '1', '1', 'sudah dikirim', '106.46672551012324', '-6.263221475722148', '106.46672551012324', '-6.263221475722148', 0, '2022-06-28 12:09:20', '2022-06-28 12:09:20'),
(4, '1', '1', '1', 'sudah dikirim', '106.46672551012324', '-6.263221475722148', '106.46694008684511', '-6.2634347716312675', 33.541501340437, '2022-06-28 12:09:21', '2022-06-28 12:09:21'),
(5, '2', '1', '1', 'sudah dikirim', '106.46848503924082', '-6.266506223071119', '106.46882836199404', '-6.265482407932623', 120.00111040501, '2022-06-28 12:23:16', '2022-06-28 12:23:16'),
(6, '2', '1', '1', 'sudah dikirim', '106.46882836199404', '-6.265482407932623', '106.46805588579855', '-6.265397089914757', 85.907812450295, '2022-06-28 12:23:16', '2022-06-28 12:23:16'),
(7, '2', '1', '1', 'sudah dikirim', '106.46805588579855', '-6.265397089914757', '106.46668259478264', '-6.263349453279233', 273.64548397142, '2022-06-28 12:23:16', '2022-06-28 12:23:16'),
(8, '2', '1', '1', 'sudah dikirim', '106.46668259478264', '-6.263349453279233', '106.46668259478264', '-6.263349453279233', 0, '2022-06-28 12:23:16', '2022-06-28 12:23:16'),
(9, '2', '1', '1', 'sudah dikirim', '106.46668259478264', '-6.263349453279233', '106.46678988314699', '-6.263456101220314', 16.770748678792, '2022-06-28 12:23:16', '2022-06-28 12:23:16'),
(10, '1', '1', '2', 'belum terkirim', '106.46280824501315', '-6.263375826005358', '106.46280824501315', '-6.263375826005358', 0, '2022-07-02 01:46:05', '2022-07-02 01:46:05'),
(11, '1', '1', '2', 'belum terkirim', '106.46280824501315', '-6.263375826005358', '106.46261512596055', '-6.264165020205496', 90.313180127376, '2022-07-02 01:46:05', '2022-07-02 01:46:05'),
(12, '1', '1', '2', 'belum terkirim', '106.46261512596055', '-6.264165020205496', '106.46261512596055', '-6.264165020205496', 0, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(13, '1', '1', '2', 'belum terkirim', '106.46261512596055', '-6.264165020205496', '106.46071612198102', '-6.264261003201369', 210.17000566468, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(14, '1', '1', '2', 'belum terkirim', '106.46071612198102', '-6.264261003201369', '106.46071612198102', '-6.264261003201369', 0, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(15, '1', '1', '2', 'belum terkirim', '106.46071612198102', '-6.264261003201369', '106.46020650226939', '-6.264351653793767', 57.223551872582, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(16, '1', '1', '2', 'belum terkirim', '106.46020650226939', '-6.264351653793767', '106.46020650226939', '-6.264351653793767', 0, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(17, '1', '1', '2', 'belum terkirim', '106.46020650226939', '-6.264351653793767', '106.46021991331304', '-6.264394312887816', 4.9696954604489, '2022-07-02 01:46:06', '2022-07-02 01:46:06'),
(18, '2', '1', '2', 'belum terkirim', '106.4628225131566', '-6.263173670754881', '106.4628225131566', '-6.263173670754881', 0, '2022-07-02 01:59:05', '2022-07-02 01:59:05'),
(19, '2', '1', '2', 'belum terkirim', '106.4628225131566', '-6.263173670754881', '106.46205003695604', '-6.2625124528174325', 112.67658745688, '2022-07-02 01:59:05', '2022-07-02 01:59:05'),
(20, '2', '1', '2', 'belum terkirim', '106.46205003695604', '-6.2625124528174325', '106.46205003695604', '-6.2625124528174325', 0, '2022-07-02 01:59:05', '2022-07-02 01:59:05'),
(21, '2', '1', '2', 'belum terkirim', '106.46205003695604', '-6.2625124528174325', '106.46015103297367', '-6.264250814303878', 285.34432586884, '2022-07-02 01:59:05', '2022-07-02 01:59:05'),
(22, '2', '1', '2', 'belum terkirim', '106.46015103297367', '-6.264250814303878', '106.46017249064636', '-6.2642934734083155', 5.3033674181979, '2022-07-02 01:59:06', '2022-07-02 01:59:06'),
(23, '1', '2', '3', 'belum terkirim', '106.46843118478444', '-6.266341033175294', '106.46843118478444', '-6.266341033175294', 0, '2022-07-02 02:18:25', '2022-07-02 02:18:25'),
(24, '1', '2', '3', 'belum terkirim', '106.46843118478444', '-6.266341033175294', '106.4693749373775', '-6.263484042097275', 334.37075340304, '2022-07-02 02:18:25', '2022-07-02 02:18:25'),
(25, '1', '2', '3', 'belum terkirim', '106.4693749373775', '-6.263484042097275', '106.46272577138194', '-6.263164228687856', 735.8001787303, '2022-07-02 02:18:25', '2022-07-02 02:18:25'),
(26, '1', '2', '3', 'belum terkirim', '106.46272577138194', '-6.263164228687856', '106.46201795693639', '-6.262503280359169', 107.34151453025, '2022-07-02 02:18:25', '2022-07-02 02:18:25'),
(27, '1', '2', '3', 'belum terkirim', '106.46201795693639', '-6.262503280359169', '106.46201795693639', '-6.262503280359169', 0, '2022-07-02 02:18:26', '2022-07-02 02:18:26'),
(28, '1', '2', '3', 'belum terkirim', '106.46201795693639', '-6.262503280359169', '106.46007682944293', '-6.26443282071908', 303.42673061099, '2022-07-02 02:18:26', '2022-07-02 02:18:26'),
(29, '1', '2', '3', 'belum terkirim', '106.46007682944293', '-6.26443282071908', '106.45996958482971', '-6.264496783261038', 13.823846132322, '2022-07-02 02:18:26', '2022-07-02 02:18:26'),
(30, '2', '2', '3', 'belum terkirim', '106.46847408262806', '-6.2663604162874975', '106.46847408262806', '-6.2663604162874975', 0, '2022-07-02 02:20:39', '2022-07-02 02:20:39'),
(31, '2', '2', '3', 'belum terkirim', '106.46847408262806', '-6.2663604162874975', '106.46931059061427', '-6.263482104427595', 333.14140876944, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(32, '2', '2', '3', 'belum terkirim', '106.46931059061427', '-6.263482104427595', '106.46931059061427', '-6.263482104427595', 0, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(33, '2', '2', '3', 'belum terkirim', '106.46931059061427', '-6.263482104427595', '106.46496718379194', '-6.263194272366661', 481.1476365071, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(34, '2', '2', '3', 'belum terkirim', '106.46496718379194', '-6.263194272366661', '106.46496718379194', '-6.263194272366661', 0, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(35, '2', '2', '3', 'belum terkirim', '106.46496718379194', '-6.263194272366661', '106.46263461346217', '-6.2631196492147865', 257.95538026027, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(36, '2', '2', '3', 'belum terkirim', '106.46263461346217', '-6.2631196492147865', '106.46271504692209', '-6.264041777419607', 102.9206785074, '2022-07-02 02:20:40', '2022-07-02 02:20:40'),
(37, '2', '2', '3', 'belum terkirim', '106.46271504692209', '-6.264041777419607', '106.46069130558692', '-6.264229418628332', 224.65720947091, '2022-07-02 02:20:41', '2022-07-02 02:20:41'),
(38, '2', '2', '3', 'belum terkirim', '106.46069130558692', '-6.264229418628332', '106.4601175469079', '-6.264543901171763', 72.420148124366, '2022-07-02 02:20:41', '2022-07-02 02:20:41'),
(39, '2', '2', '3', 'belum terkirim', '106.4601175469079', '-6.264543901171763', '106.46007464906262', '-6.264533240749614', 4.8874669798723, '2022-07-02 02:20:41', '2022-07-02 02:20:41'),
(40, '1112348583', '1', '4', 'belum terkirim', '112.06417941559556', '-6.897193607302228', '112.06377171982444', '-6.898620865133168', 164.96183306224, '2022-07-15 01:06:29', '2022-07-15 01:06:29'),
(41, '1112348583', '1', '4', 'belum terkirim', '112.06377171982444', '-6.898620865133168', '112.0633962105623', '-6.900005514140815', 159.44845916408, '2022-07-15 01:06:29', '2022-07-15 01:06:29'),
(42, '1112348583', '1', '4', 'belum terkirim', '112.0633962105623', '-6.900005514140815', '112.06785940635774', '-6.901272996985867', 512.45146999808, '2022-07-15 01:06:29', '2022-07-15 01:06:29'),
(43, '1112348583', '1', '4', 'belum terkirim', '112.06785940635774', '-6.901272996985867', '112.06795596588313', '-6.901294299190155', 10.919153690552, '2022-07-15 01:06:29', '2022-07-15 01:06:29'),
(44, '1758876720', '1', '4', 'belum terkirim', '112.06418322249925', '-6.897211685620675', '112.06456038020787', '-6.895908965198942', 150.72050556935, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(45, '1758876720', '1', '4', 'belum terkirim', '112.06456038020787', '-6.895908965198942', '112.06580492519095', '-6.896292409062454', 143.84995053548, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(46, '1758876720', '1', '4', 'belum terkirim', '112.06580492519095', '-6.896292409062454', '112.06524702571579', '-6.898529158753931', 256.22679801713, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(47, '1758876720', '1', '4', 'belum terkirim', '112.06524702571579', '-6.898529158753931', '112.06476531808067', '-6.900372888608501', 211.79739689991, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(48, '1758876720', '1', '4', 'belum terkirim', '112.06476531808067', '-6.900372888608501', '112.06793032471847', '-6.90122497763187', 362.00245000386, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(49, '1758876720', '1', '4', 'belum terkirim', '112.06793032471847', '-6.90122497763187', '112.06796251122597', '-6.901235628735179', 3.7452391376376, '2022-07-15 01:07:12', '2022-07-15 01:07:12'),
(50, '1323451010', '1', '4', 'belum terkirim', '112.06417391380074', '-6.897249185275072', '112.06459233840997', '-6.895907133101247', 156.21437997186, '2022-07-15 01:07:45', '2022-07-15 01:07:45'),
(51, '1323451010', '1', '4', 'belum terkirim', '112.06459233840997', '-6.895907133101247', '112.06576178154029', '-6.896258623324812', 134.88208465263, '2022-07-15 01:07:45', '2022-07-15 01:07:45'),
(52, '1323451010', '1', '4', 'belum terkirim', '112.06576178154029', '-6.896258623324812', '112.0651931532289', '-6.898537977831907', 261.11002668234, '2022-07-15 01:07:45', '2022-07-15 01:07:45'),
(53, '1323451010', '1', '4', 'belum terkirim', '112.0651931532289', '-6.898537977831907', '112.06705997070043', '-6.899038582258456', 213.46330817527, '2022-07-15 01:07:45', '2022-07-15 01:07:45'),
(54, '1323451010', '1', '4', 'belum terkirim', '112.06705997070043', '-6.899038582258456', '112.06650207122527', '-6.900881228037363', 213.94849047909, '2022-07-15 01:07:46', '2022-07-15 01:07:46'),
(55, '1323451010', '1', '4', 'belum terkirim', '112.06650207122527', '-6.900881228037363', '112.06798265060144', '-6.901254016773734', 168.61486974489, '2022-07-15 01:07:46', '2022-07-15 01:07:46'),
(56, '1323451010', '1', '4', 'belum terkirim', '112.06798265060144', '-6.901254016773734', '112.06803629478145', '-6.901296621181572', 7.583530619679, '2022-07-15 01:07:46', '2022-07-15 01:07:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jarak` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_paket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_barang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum terkirim',
  `jarak` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id`, `id_jarak`, `id_paket`, `status_barang`, `jarak`, `created_at`, `updated_at`) VALUES
(1, '10', '2', 'belum terkirim', 362.67643312508693, NULL, NULL),
(2, '18', '2', 'belum terkirim', 403.3242807439179, NULL, NULL),
(4, '23', '3', 'belum terkirim', 1494.763023406902, NULL, NULL),
(5, '30', '3', 'belum terkirim', 1477.1299286193582, NULL, NULL),
(7, '40', '4', 'belum terkirim', 847.7809159149521, NULL, NULL),
(8, '50', '4', 'belum terkirim', 1155.816690325759, NULL, NULL),
(9, '44', '4', 'belum terkirim', 1128.3423401633677, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_wa_kurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id`, `nama_kurir`, `no_wa_kurir`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nanda', '08123456789', '12345', '2022-06-28 11:48:33', '2022-06-28 11:48:33'),
(2, 'Adit', '0882987654321', '12345', '2022-07-02 02:13:45', '2022-07-02 02:13:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_wa_pengirim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kurir` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kurir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_barang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum terkirim',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama_pengirim`, `no_wa_pengirim`, `nama_penerima`, `alamat_penerima`, `longitude`, `latitude`, `id_kurir`, `nama_kurir`, `status_barang`, `created_at`, `updated_at`) VALUES
(1, 'Ken Logistic', '081', 'Ibu Via', 'Alfamart Ds.Pete', '106.46684335444297', '-6.263697647237549', '1', 'Nanda', 'sudah dikirim', '2022-06-28 12:08:23', '2022-06-28 13:17:52'),
(2, 'Ken Logistic', '081', 'Dewi', 'Dekat Pertigaan Ds.Pete', '106.46022846934926', '-6.264382037011757', '1', 'Nanda', 'belum terkirim', '2022-07-02 01:44:26', '2022-07-02 01:44:26'),
(3, 'Ken Logistic', '088', 'Rafa', 'Ds.Pete', '106.4601155880701', '-6.2644912137429145', '2', 'Adit', 'belum terkirim', '2022-07-02 02:15:34', '2022-07-02 02:15:34'),
(4, 'wdaafw', 'wafcaw', 'wafafw', 'awvfawfv', '112.0679450996787', '-6.901305441620892', '1', 'Nanda', 'belum terkirim', '2022-07-15 01:05:57', '2022-07-15 01:05:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_30_103653_create_lokasi_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', 'admin@gmail.com', NULL, '$2y$10$UE1zvIjVSpUC/VFnI6.EAOw/79SqeIl/6ZwEikDpzLHIj1rfpY/Ay', NULL, '2022-06-06 18:59:44', '2022-06-29 10:25:34');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bellman`
--
ALTER TABLE `bellman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bellman`
--
ALTER TABLE `bellman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
