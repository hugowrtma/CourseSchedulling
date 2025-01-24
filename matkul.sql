-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2025 at 08:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matkul`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` bigint UNSIGNED NOT NULL,
  `npp_dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homebase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_staff` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `npp_dosen`, `nama_dosen`, `homebase`, `status_staff`, `created_at`, `updated_at`) VALUES
(1, '616028802', 'Taruna Budiono, S.Kom., M.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(2, '604047201', 'Dr. Fikri Budiman, M.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(3, '592065600', 'Nurhadi Prasetyo, S.T., M.Eng', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(4, '580083999', 'Laila Suhartini, M.Si', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(5, '568102398', 'Andi Setiawan, S.Kom., M.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(6, '556120797', 'Ratna Puspitasari, Ph.D', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(7, '544139196', 'Sugianto, S.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(8, '532157595', 'Jarwo, S.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(9, '520175994', 'Maryanto Abis, S.Kom', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(10, '508194393', 'Sujiwo Tejo, S.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(11, '496212792', 'Siti Alabama, S.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(12, '484231191', 'Maryanti Alibimi, S.Kom', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(13, '472249590', 'Tedi Irawan, S.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(14, '460267989', 'Harry Sugiono, S.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(15, '448286388', 'Marfuah Haybrid, S.Kom', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(16, '4528962187', 'Erna Sulistianti, M.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(17, '4785221886', 'Taufik Gabriel, M.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(18, '1786645844', 'Julian Aditya, M.Kom', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(19, '4795544887', 'Supri Gallagher, M.Kom', 'A11', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(20, '8541578965', 'Damon Sutejo, M.Kom', 'A12', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19'),
(21, '2158465494', 'Adrian Herlino, S.Kom', 'A22', 'Aktif', '2024-12-11 12:12:19', '2024-12-11 12:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matkul_optimasi`
--

CREATE TABLE `matkul_optimasi` (
  `id` bigint UNSIGNED NOT NULL,
  `dosen_id` bigint UNSIGNED NOT NULL,
  `penawaran_matkul_id` bigint UNSIGNED NOT NULL,
  `ruang_teori_id` bigint UNSIGNED DEFAULT NULL,
  `ruang_praktik_id` bigint UNSIGNED DEFAULT NULL,
  `jadwal_teori` json DEFAULT NULL,
  `jadwal_praktek` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matkul_optimasi`
--

INSERT INTO `matkul_optimasi` (`id`, `dosen_id`, `penawaran_matkul_id`, `ruang_teori_id`, `ruang_praktik_id`, `jadwal_teori`, `jadwal_praktek`, `created_at`, `updated_at`) VALUES
(1, 7, 8, 19, NULL, '{\"day\": \"Kamis\", \"time\": \"14:30-17:30\"}', NULL, '2024-12-11 13:50:21', '2024-12-11 13:50:21'),
(2, 8, 11, 42, NULL, '{\"day\": \"Rabu\", \"time\": \"12:15-15:15\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(3, 16, 75, 42, NULL, '{\"day\": \"Selasa\", \"time\": \"20:30-21:00\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(4, 19, 62, 42, NULL, '{\"day\": \"Senin\", \"time\": \"13:00-14:30\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(5, 16, 46, 38, NULL, '{\"day\": \"Kamis\", \"time\": \"19:45-21:00\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(6, 8, 5, 42, NULL, '{\"day\": \"Rabu\", \"time\": \"16:45-19:00\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(7, 6, 16, 38, NULL, '{\"day\": \"Rabu\", \"time\": \"11:30-13:45\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(8, 8, 33, NULL, 42, NULL, '{\"day\": \"Jumat\", \"time\": \"15:15-16:45\"}', '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(9, 6, 44, 38, NULL, '{\"day\": \"Selasa\", \"time\": \"20:30-21:00\"}', NULL, '2024-12-11 14:29:10', '2024-12-11 14:29:10'),
(10, 16, 9, 1, NULL, '{\"day\": \"Jumat\", \"time\": \"11:30-13:00\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(11, 13, 79, 14, NULL, '{\"day\": \"Rabu\", \"time\": \"16:00-17:30\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(12, 16, 74, 1, NULL, '{\"day\": \"Selasa\", \"time\": \"14:30-16:00\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(13, 6, 27, 14, NULL, '{\"day\": \"Senin\", \"time\": \"10:00-11:30\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(14, 8, 78, 1, NULL, '{\"day\": \"Jumat\", \"time\": \"16:00-17:30\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(15, 3, 53, NULL, 1, NULL, '{\"day\": \"Senin\", \"time\": \"08:30-10:00\"}', '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(16, 3, 70, 14, NULL, '{\"day\": \"Selasa\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(17, 6, 58, 1, NULL, '{\"day\": \"Rabu\", \"time\": \"15:15-17:30\"}', NULL, '2024-12-11 18:58:15', '2024-12-11 18:58:15'),
(18, 1, 49, 27, NULL, '{\"day\": \"Rabu\", \"time\": \"07:45-09:15\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(19, 13, 73, 41, NULL, '{\"day\": \"Senin\", \"time\": \"08:30-10:00\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(20, 13, 31, 27, NULL, '{\"day\": \"Selasa\", \"time\": \"09:15-11:30\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(21, 5, 35, NULL, 27, NULL, '{\"day\": \"Senin\", \"time\": \"18:15-19:45\"}', '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(22, 19, 54, 27, NULL, '{\"day\": \"Kamis\", \"time\": \"12:15-13:45\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(23, 17, 74, 41, NULL, '{\"day\": \"Kamis\", \"time\": \"17:30-19:00\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(24, 17, 21, 41, NULL, '{\"day\": \"Kamis\", \"time\": \"11:30-13:00\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(25, 13, 60, 41, NULL, '{\"day\": \"Selasa\", \"time\": \"07:00-09:15\"}', NULL, '2024-12-11 18:59:24', '2024-12-11 18:59:24'),
(26, 11, 50, 35, NULL, '{\"day\": \"Selasa\", \"time\": \"17:30-19:00\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(27, 11, 77, 14, NULL, '{\"day\": \"Kamis\", \"time\": \"17:30-19:00\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(28, 14, 36, 14, NULL, '{\"day\": \"Selasa\", \"time\": \"16:00-18:15\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(29, 8, 70, 14, NULL, '{\"day\": \"Kamis\", \"time\": \"10:00-11:30\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(30, 4, 66, 35, NULL, '{\"day\": \"Rabu\", \"time\": \"08:30-11:30\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(31, 11, 23, 14, NULL, '{\"day\": \"Senin\", \"time\": \"13:00-14:30\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(32, 11, 55, 14, NULL, '{\"day\": \"Jumat\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-15 16:28:54', '2024-12-15 16:28:54'),
(33, 16, 66, 27, NULL, '{\"day\": \"Rabu\", \"time\": \"08:30-11:30\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(34, 1, 19, 23, NULL, '{\"day\": \"Selasa\", \"time\": \"15:15-16:45\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(35, 14, 10, 23, NULL, '{\"day\": \"Senin\", \"time\": \"13:00-15:15\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(36, 5, 81, 23, NULL, '{\"day\": \"Kamis\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(37, 1, 62, 27, NULL, '{\"day\": \"Jumat\", \"time\": \"09:15-10:45\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(38, 16, 71, 27, NULL, '{\"day\": \"Senin\", \"time\": \"18:15-19:45\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(39, 1, 13, 23, NULL, '{\"day\": \"Rabu\", \"time\": \"16:45-18:15\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(40, 14, 13, NULL, 23, NULL, '{\"day\": \"Kamis\", \"time\": \"15:15-16:45\"}', '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(41, 5, 34, 27, NULL, '{\"day\": \"Kamis\", \"time\": \"07:45-10:00\"}', NULL, '2024-12-15 16:29:54', '2024-12-15 16:29:54'),
(42, 6, 45, 8, NULL, '{\"day\": \"Rabu\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(43, 10, 21, 24, NULL, '{\"day\": \"Kamis\", \"time\": \"20:30-21:00\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(44, 16, 39, 8, NULL, '{\"day\": \"Jumat\", \"time\": \"15:15-16:45\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(45, 16, 39, NULL, 8, NULL, '{\"day\": \"Selasa\", \"time\": \"16:00-17:30\"}', '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(46, 16, 46, 24, NULL, '{\"day\": \"Kamis\", \"time\": \"10:00-11:30\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(47, 16, 73, 8, NULL, '{\"day\": \"Jumat\", \"time\": \"16:45-18:15\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(48, 6, 19, 24, NULL, '{\"day\": \"Senin\", \"time\": \"11:30-13:00\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(49, 10, 2, 24, NULL, '{\"day\": \"Senin\", \"time\": \"07:45-10:00\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(50, 10, 15, 24, NULL, '{\"day\": \"Kamis\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-15 16:30:03', '2024-12-15 16:30:03'),
(51, 15, 62, 26, NULL, '{\"day\": \"Kamis\", \"time\": \"13:45-15:15\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(52, 8, 13, 26, NULL, '{\"day\": \"Jumat\", \"time\": \"14:30-16:00\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(53, 14, 13, NULL, 36, NULL, '{\"day\": \"Selasa\", \"time\": \"19:00-20:30\"}', '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(54, 15, 37, 36, NULL, '{\"day\": \"Selasa\", \"time\": \"13:45-16:45\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(55, 17, 47, 36, NULL, '{\"day\": \"Selasa\", \"time\": \"20:30-21:00\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(56, 14, 28, NULL, 36, NULL, '{\"day\": \"Senin\", \"time\": \"11:30-14:30\"}', '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(57, 5, 61, 36, NULL, '{\"day\": \"Jumat\", \"time\": \"19:00-20:30\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(58, 15, 7, 36, NULL, '{\"day\": \"Rabu\", \"time\": \"13:45-15:15\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59'),
(59, 14, 10, 36, NULL, '{\"day\": \"Senin\", \"time\": \"08:30-10:45\"}', NULL, '2024-12-16 12:30:59', '2024-12-16 12:30:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_13_153559_create_mata_kuliah_table', 1),
(5, '2024_09_13_153613_create_ruangan_table', 1),
(6, '2024_09_13_153619_create_dosen_table', 1),
(7, '2024_12_11_164246_matkul', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penawaran_matkul`
--

CREATE TABLE `penawaran_matkul` (
  `id` bigint UNSIGNED NOT NULL,
  `semester_matkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_matkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_matkul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teori` int NOT NULL,
  `praktek` int NOT NULL,
  `jumlah_sks` int NOT NULL,
  `pagi` int NOT NULL,
  `sore` int NOT NULL,
  `ruang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penawaran_matkul`
--

INSERT INTO `penawaran_matkul` (`id`, `semester_matkul`, `kode_matkul`, `nama_matkul`, `teori`, `praktek`, `jumlah_sks`, `pagi`, `sore`, `ruang`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '2', 'A11.64201', 'Matriks dan Ruang Vektor ', 3, 0, 3, 25, 8, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(2, '2', 'A11.64202', 'Organisasi dan Arsitektur Komputer', 3, 0, 3, 16, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(3, '2', 'A11.64203', 'Matematika Diskrit', 3, 0, 3, 16, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(4, '2', 'A11.64204', 'Algoritma dan Struktur Data', 2, 2, 4, 16, 4, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(5, '2', 'A11.64205', 'Interaksi Manusia dan Komputer ', 3, 0, 3, 25, 8, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(6, '2', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 16, 4, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(7, '2', 'U201701', 'Dasar Kewirausahaan', 2, 0, 2, 16, 4, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(8, '2', 'A12.76202', 'Infrastruktur Teknologi Informasi', 4, 0, 4, 4, 2, 'Teori', 'Kurikulum OBE 2023', '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(9, '2', 'AF201702', 'Literasi Informasi', 2, 0, 2, 4, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(10, '2', 'A12.76204', 'Statistika & Probabilitas', 3, 0, 3, 4, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(11, '2', 'A12.76201', 'Analisis dan perancangan sistem terstruktur', 4, 0, 4, 4, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(12, '2', 'A12.76203', 'Manajemen Proses Bisnis', 3, 0, 3, 4, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(13, '2', 'A12.76205', 'Strategi Algoritme', 2, 2, 4, 4, 2, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(14, '2', 'A12.66201', 'Algoritma Pemrograman I', 2, 2, 4, 2, 0, 'Teori & Praktek', 'Kurikulum 2021 (menyediakan kelas untuk mahasiswa angkatan 2022 keatas yang mengulang)', '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(15, '2', 'A12.66202', 'Basis Data', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(16, '2', 'A12.66205', 'Matematika Bisnis', 3, 0, 3, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(17, '2', 'A12.66402', 'Interaksi Manusia Dan Komputer', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(18, '2', 'A12.66704', 'Arsitektur Enterprise', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(19, '2', 'AF201702', 'Literasi Informasi', 2, 0, 2, 9, 2, 'KULINO', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(20, '2', 'U201701', 'Dasar Kewirausahaan', 2, 0, 2, 8, 2, 'KULINO', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(21, '2', 'AF201702', 'Literasi Informasi', 2, 0, 2, 8, 1, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(22, '2', 'U201701', 'Dasar Kewirausahaan', 2, 0, 2, 8, 1, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(23, '2', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(24, '2', 'A22.63206', 'Multimedia', 0, 4, 4, 20, 4, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(25, '2', 'A22.63207', 'Basis Data', 2, 2, 4, 20, 4, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(26, '2', 'A22.63208', 'Analisis dan Perancangan Perangkat Lunak', 3, 0, 3, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(27, '2', 'A22.63209', 'Interaksi Manusia dan Komputer', 2, 0, 2, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(28, '2', 'A22.63210', 'Sistem Informasi Geografis', 0, 4, 4, 20, 4, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(29, '2', 'A22.63211', 'Proyek Aplikasi Web II', 0, 4, 4, 20, 4, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(30, '4', 'A11.64401', 'Otomata dan Teori Bahasa', 3, 0, 3, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(31, '4', 'A11.64402', 'Jaringan Komputer ', 3, 0, 3, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(32, '4', 'A11.64403', 'Pemrograman Berorientasi Objek', 2, 2, 4, 20, 4, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(33, '4', 'A11.64404', 'Pemrograman Web Lanjut', 0, 2, 2, 20, 4, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(34, '4', 'A11.64405', 'Pembelajaran Mesin', 3, 0, 3, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(35, '4', 'A11.64406', 'Sistem Basis Data', 0, 2, 2, 20, 4, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(36, '4', 'A11.64407', 'Rangkaian Logika Digital', 3, 0, 3, 20, 4, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(37, '4', 'A12.66401', 'Analisa & Penrancangan Sistem Informasi II', 4, 0, 4, 6, 2, 'Teori', 'Kurikulum 2021  ', '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(38, '4', 'A12.66403', 'Pemrograman Berorientasi Obyek', 2, 2, 4, 6, 2, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(39, '4', 'A12.66404', 'Pemrograman Web', 2, 2, 4, 6, 2, 'Teori & Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(40, '4', 'A12.66601', 'Perencanaan Sumber Daya Perush.', 3, 0, 3, 6, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(41, '4', 'A12.66603', 'Perencanaan Strategis Sistem Informasi', 3, 0, 3, 6, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(42, '4', 'A12.66605', 'Manajemen Rantai Pasok', 3, 0, 3, 6, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(43, '4', 'AF201702', 'Literasi Informasi', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(44, '4', 'U201701', 'Dasar Kewirausahaan', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(45, '4', 'AF201703', 'Technopreunership', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(46, '4', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(47, '4', 'F201703', 'Technoprenership', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(48, '4', 'A22.63417', 'Proyek Aplikasi Mobile II', 0, 4, 4, 2, 0, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(49, '4', 'AF201702', 'Informasi literasi', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(50, '4', 'A22.63418', 'Metodologi Pengembangan Aplikasi', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(51, '4', 'A22.63419', 'Etika Profesi Teknologi Informasi', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(52, '4', 'A22.63420', 'Proyek Startup', 0, 4, 4, 2, 0, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(53, '4', 'A22.63421', 'Sertifikasi II', 0, 2, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(54, '5', 'A22.53517', 'KEAMANAN SISTEM INDUSTRI', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(55, '5', 'A22.53514', 'INTERPERSONAL SKILL INDUSTRI', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(56, '5', 'A22.53414', 'KULIAH KERJA INDUSTRI 1', 4, 0, 4, 2, 0, 'Kerja Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(57, '5', 'A22.53415', 'SERTIFIKASI I (PROYEK I)', 0, 0, 0, 2, 0, 'Bimbingan', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(58, '6', 'A11.64712', 'Penglihatan Komputer dan Analisis Citra', 3, 0, 3, 4, 1, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(59, '6', 'A11.64714', 'Komputasi Quantum', 3, 0, 3, 1, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(60, '6', 'A11.64716', 'Forensik Digital', 3, 0, 3, 4, 1, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(61, '6', 'AF201702', 'Literasi Informasi ', 2, 0, 2, 16, 4, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(62, '6', 'N201702', 'Bahasa Inggris', 2, 0, 2, 16, 4, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(63, '6', 'A12.66602', 'Implementasi dan Pengujian Sistem', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(64, '6', 'A12.66604', 'Sistem Pendukung Keputusan', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(65, '6', 'A12.66611', 'Implementasi Arsitektur Enterprise ', 4, 0, 4, 3, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(66, '6', 'A12.66621', 'Analitika Media Sosial ', 4, 0, 4, 3, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(67, '6', 'A12.66631', 'Aplikasi E-Bisnis ', 4, 0, 4, 3, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(68, '6', 'A12.66701', 'Kerja Praktek', 0, 2, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(69, '6', 'A12.66703', 'Teknologi Bergerak', 0, 2, 2, 5, 2, 'Praktek', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(70, '6', 'A12.66705', 'Metodologi Penelitian', 2, 0, 2, 3, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(71, '6', 'A12.66801', 'Etika Profesi', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(72, '6', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(73, '6', 'N201705', 'Pendidikan Agama', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(74, '6', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 5, 2, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(75, '6', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 7, 2, 'KULINO', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(76, '6', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 7, 2, 'KULINO', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(77, '6', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 0, 2, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(78, '6', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 0, 2, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(79, '6', 'N201707', 'Pancasila', 2, 0, 2, 1, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(80, '6', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 1, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(81, '6', 'N201701', 'Bahasa Indonesia', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(82, '6', 'N201707', 'Pendidikan Pancasila', 2, 0, 2, 2, 0, 'Kulino', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(83, '6', 'A22.53513', 'KULIAH KERJA INDUSTRI 2', 4, 0, 4, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(84, '6', 'A22.53610', 'Teknik Presentasi Industri', 2, 0, 2, 2, 0, 'Teori', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(85, '6', 'A22.53511', 'SERTIFIKASI II', 0, 0, 0, 2, 0, 'Bimbingan', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51'),
(86, '6', 'A22.53602', 'PROYEK AKHIR', 4, 0, 4, 2, 0, 'Bimbingan', NULL, '2024-12-11 11:55:51', '2024-12-11 11:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_psi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruang_kuliah` int NOT NULL,
  `status_ruangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruangan_open` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `ruang_psi`, `jenis_ruangan`, `ruang_kuliah`, `status_ruangan`, `ruangan_open`, `created_at`, `updated_at`) VALUES
(1, 'D.2.A', 'D.2.A', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(2, 'D.2.B', 'D.2.B', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(3, 'D.2.C', 'D.2.C', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(4, 'D.2.D', 'D.2.D', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(5, 'D.2.E', 'D.2.E', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(6, 'D.2.G', 'D.2.G', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(7, 'D.2.H', 'D.2.H', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(8, 'D.2.I', 'D.2.I', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(9, 'D.2.J', 'D.2.J', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(10, 'D.2.K', 'D.2.K', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(11, 'D.3.M', 'D.3.M', 'Lab', 40, 'praktek', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(12, 'H.3.1', 'H.3.1', 'H.3', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(13, 'H.3.10', 'H.3.10', 'H.3', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(14, 'H.3.11', 'H.3.11', 'H.3', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(15, 'H.3.2', 'H.3.2', 'H.3', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(16, 'H.3.8', 'H.3.8', 'H.3', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(17, 'H.3.9', 'H.3.9', 'H.3', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(18, 'H.4.1', 'H.4.1', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(19, 'H.4.10', 'H.4.10', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(20, 'H.4.11', 'H.4.11', 'H.4', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(21, 'H.4.12', 'H.4.12', 'H.4', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(22, 'H.4.2', 'H.4.2', 'H.4', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(23, 'H.4.3', 'H.4.3', 'H.4', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(24, 'H.4.4', 'H.4.4', 'H.4', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(25, 'H.4.5', 'H.4.5', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(26, 'H.4.6', 'H.4.6', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(27, 'H.4.7', 'H.4.7', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(28, 'H.4.8', 'H.4.8', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(29, 'H.4.9', 'H.4.9', 'H.4', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(30, 'H.5.1', 'H.5.1', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(31, 'H.5.10', 'H.5.10', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(32, 'H.5.11', 'H.5.11', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(33, 'H.5.12', 'H.5.12', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(34, 'H.5.13', 'H.5.13', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(35, 'H.5.14', 'H.5.14', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(36, 'H.5.2', 'H.5.2', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(37, 'H.5.3', 'H.5.3', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(38, 'H.5.4', 'H.5.4', 'H.5', 60, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(39, 'H.5.5', 'H.5.5', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(40, 'H.5.6', 'H.5.6', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(41, 'H.5.7', 'H.5.7', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(42, 'H.5.8', 'H.5.8', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(43, 'H.5.9', 'H.5.9', 'H.5', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(44, 'H.7.1', 'H.7.1', 'H.7', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(45, 'H.7.2', 'H.7.2', 'H.7', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(46, 'H.7.3', 'H.7.3', 'H.7', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11'),
(47, 'H.7.4', 'H.7.4', 'H.7', 40, 'teori', 1, '2024-12-11 11:59:11', '2024-12-11 11:59:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2qQiDXmUq1L3IKPYQEpGT6vheDGak624GVQ6ZuBa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE8zVGRkbm9ZSjdtNlZBbWl6RWx4VDM4UDRiRWkxSE1EbkxWVVFLdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9tYXRrdWwudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734068749),
('6WWZACA6Pw6o5xmQdLMG54Hgmn1B8OFifcuwLAW3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYURQNjJLVXhnc3ZHWnBsVzNsd2ZBU1BVMklQQTlMbE1TOHplN3VoZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9tYXRrdWwudGVzdC9vcHRpbWl6ZS1zY2hlZHVsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734305403),
('9sGg9Mb2UVBU7p4EzFshaXNA0HIxwnE2ll9B8Fn5', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMUcwMkFPcFRvZU5Lcm5LcTROZk92QmJRSW93bTlGYVU3TkRjV1R0TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9tYXRrdWwudGVzdC9tYXRrdWwvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734392171),
('b2fBGVOjWcODiOmVWCYLatdSvV9EZXO2biT62u0e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSmlFMXJDZXUyRUM1a2hSb2ZJQjFxTGVhNUhCTzJkVXZ3RVBQRDhFVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9tYXRrdWwudGVzdC9vcHRpbWl6ZS1zY2hlZHVsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734305394),
('KTC5HoPYRZnxE2fTlxwcUE8UJM8juAPpMC8v8nv8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWko2WGJVWkkyZ1ZzQkFnOVByTXlLU0dqQzAzY2VoYjZacmlJdFp3VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9tYXRrdWwudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734047022),
('NVN5GDQPeL4MBRDkB63XSCfbEEw6dCoSX4PgKpx9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid1llMUJVYXFSVXVIbDlnRnB6SXNBYVRFNVNtRG0zQnVieUdrd3RlUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9tYXRrdWwudGVzdC9vcHRpbWl6ZS1zY2hlZHVsZSI7fX0=', 1734305335),
('OnTQ9jAzjFke9nl57BY9iNEA7hf9ZpDSgoSyWy1R', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzNLbk1WNjJHWkdKb0F6S3dpQlU4aGk2NXZMNlQ4OGpJYk1rUUtCTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9tYXRrdWwudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734047024),
('qsBbTB4oIOaGOgvltcoI8F2dHUnJrI42v5HLPjFd', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzFDd1VaQUhoYU5BbHlpYzFpc3JtRlhSeE1yb3k3eW1lRFo3NkRndyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9tYXRrdWwudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734377947),
('Ry4yvOsaY6Ykxb9HSPIc6wH1aDJpiEuLqg96QkCY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVFJsbFNhS0ttUnFibkZXVVo4eWpGaXQzdXY5VU5DUEJkdlhUUjdncyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734305000),
('ulgQMhufhxfPXU88PI4pt0RSQud9jXcoaABPghYv', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieFBFb1lsVm8yMVVJSHBRNDFoNm43dU5xNGVnd2N5M21mMjNvU3ZlViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9tYXRrdWwudGVzdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1737706240),
('WdyOZdDXg6oK1dKPMRch94DbKGP53hXnYa5Cfq7b', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3BLNVNpa0g2Vk5iNHBHc0JYeWRrc3F6NUdGZ1U3cEszOURVakszdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9tYXRrdWwudGVzdC9pbXBvcnQtZG9zZW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1734007238);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkul_optimasi`
--
ALTER TABLE `matkul_optimasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matkul_optimasi_dosen_id_foreign` (`dosen_id`),
  ADD KEY `matkul_optimasi_penawaran_matkul_id_foreign` (`penawaran_matkul_id`),
  ADD KEY `matkul_optimasi_ruang_teori_id_foreign` (`ruang_teori_id`),
  ADD KEY `matkul_optimasi_ruang_praktik_id_foreign` (`ruang_praktik_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penawaran_matkul`
--
ALTER TABLE `penawaran_matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matkul_optimasi`
--
ALTER TABLE `matkul_optimasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penawaran_matkul`
--
ALTER TABLE `penawaran_matkul`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `matkul_optimasi`
--
ALTER TABLE `matkul_optimasi`
  ADD CONSTRAINT `matkul_optimasi_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matkul_optimasi_penawaran_matkul_id_foreign` FOREIGN KEY (`penawaran_matkul_id`) REFERENCES `penawaran_matkul` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matkul_optimasi_ruang_praktik_id_foreign` FOREIGN KEY (`ruang_praktik_id`) REFERENCES `ruangan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matkul_optimasi_ruang_teori_id_foreign` FOREIGN KEY (`ruang_teori_id`) REFERENCES `ruangan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
