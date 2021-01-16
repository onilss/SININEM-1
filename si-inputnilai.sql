-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2021 at 01:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si-inputnilai`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyears`
--

CREATE TABLE `academicyears` (
  `idacad` bigint(20) UNSIGNED NOT NULL,
  `tahun_akademik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `academicyears`
--

INSERT INTO `academicyears` (`idacad`, `tahun_akademik`, `created_at`, `updated_at`) VALUES
(7, '2019/2020', '2020-12-30 05:56:53', '2020-12-30 05:56:53'),
(8, '2020/2021', '2020-12-30 05:57:08', '2020-12-30 05:57:08'),
(9, '2017/2018', '2020-12-30 21:26:17', '2020-12-30 21:27:00'),
(10, '2022/2023', '2020-12-30 21:26:32', '2020-12-30 21:26:32'),
(13, '2018/2019', '2021-01-09 00:10:01', '2021-01-09 00:10:01'),
(14, '2021/2022', '2021-01-09 00:10:25', '2021-01-09 00:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `collegestudents`
--

CREATE TABLE `collegestudents` (
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_studi` enum('Teknik Informatika','Sistem Informasi','Manajemen Informatika') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jk` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collegestudents`
--

INSERT INTO `collegestudents` (`nim`, `nama`, `program_studi`, `kelas`, `jk`, `created_at`, `updated_at`) VALUES
('A2.1700002', 'Said Agiel Darmawan', 'Teknik Informatika', 'Database TI-VII B', 'laki-laki', '2020-12-30 21:48:53', '2021-01-09 00:41:09'),
('A2.1700107', 'Ryan Samsudin', 'Teknik Informatika', 'Database TI-VII B', 'laki-laki', '2020-12-30 21:39:31', '2021-01-09 00:38:14'),
('A2.1700109', 'Deri Rinaldi', 'Teknik Informatika', 'Jaringan TI-VII B', 'laki-laki', '2021-01-09 00:39:35', '2021-01-09 00:39:35'),
('A2.1700111', 'Sintia Dewi Puspitasari', 'Teknik Informatika', 'Jaringan TI-VII A', 'perempuan', '2021-01-09 00:21:10', '2021-01-09 00:41:25'),
('A2.1700113', 'Sony Prayoga', 'Teknik Informatika', 'Jaringan TI-VII AB', 'laki-laki', '2020-12-22 22:14:44', '2021-01-09 00:38:52'),
('A3.1600066', 'Ipin Herlambang', 'Teknik Informatika', 'SI-IX A', 'laki-laki', '2021-01-09 00:25:33', '2021-01-09 00:25:43'),
('A3.1605059', 'Cecep Nurdin', 'Sistem Informasi', 'SI-IX A', 'laki-laki', '2021-01-09 00:40:40', '2021-01-09 00:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `kode_matkul` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mata_kuliah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(2) NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`kode_matkul`, `mata_kuliah`, `sks`, `semester`, `created_at`, `updated_at`) VALUES
('FT2001', 'Kalkulus', 3, 1, NULL, '2020-12-08 00:39:24'),
('FT3001', 'Pengantar Teknologi Informasi', 4, 1, NULL, '2020-12-07 23:23:05'),
('FT3009', 'Basis Data', 4, 1, '2020-11-18 18:15:42', '2020-12-02 17:27:43'),
('FT3012', 'Algoritma dan Struktur Data', 3, 2, '2020-12-08 00:52:18', '2020-12-08 00:52:18'),
('IF3104', 'Sistem Basis Data', 4, 2, '2020-12-08 00:52:54', '2020-12-08 00:53:17'),
('IF4001', 'Pengantar Sistem Digital', 3, 1, NULL, NULL),
('IF4002', 'Dasar Pemrograman', 4, 1, '2020-11-18 18:45:40', '2020-11-18 18:45:40'),
('RT3003', 'Arsitektur & Organisasi Komputer', 3, 2, '2020-12-08 17:47:28', '2020-12-08 17:48:12'),
('ST1001', 'Pendidikan Agama', 3, 2, '2020-12-08 02:28:46', '2020-12-08 02:28:46'),
('ST1018', 'Pendidikan Kewarganegaraan', 2, 1, '2020-11-18 18:43:01', '2020-11-18 18:43:01'),
('ST1020', 'Bahasa Indonesia', 2, 1, '2020-11-18 18:44:52', '2020-11-18 18:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `idnilai` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_matkul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tugas` int(11) NOT NULL,
  `quiz` int(11) NOT NULL,
  `uts` int(11) NOT NULL,
  `uas` int(11) NOT NULL,
  `grade` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`idnilai`, `nim`, `kode_matkul`, `tugas`, `quiz`, `uts`, `uas`, `grade`, `created_at`, `updated_at`) VALUES
(7, 'A2.1700111', 'FT2001', 90, 90, 90, 90, 'A', NULL, NULL),
(10, 'A2.1700113', 'FT2001', 90, 89, 99, 80, 'A', NULL, '2021-01-09 00:23:10'),
(12, 'A2.1700109', 'FT2001', 90, 90, 90, 80, 'A', NULL, '2021-01-09 00:23:18'),
(14, 'A2.1800002', 'FT2001', 90, 89, 90, 90, 'A', NULL, '2021-01-09 00:23:40'),
(16, 'A2.1700107', 'FT2001', 90, 89, 92, 90, 'A', NULL, NULL),
(17, 'A2.1700002', 'FT2001', 90, 89, 92, 90, 'A', NULL, NULL),
(18, 'A3.1600066', 'FT2001', 90, 89, 92, 90, 'A', NULL, NULL),
(19, 'A3.1605059', 'FT2001', 90, 89, 92, 90, 'A', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `nidn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nohp` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`nidn`, `nama_dosen`, `email`, `nohp`, `created_at`, `updated_at`) VALUES
('3211234566540881', 'Ryan Samsudin', 'a2.1700107@mhs.stmik-sumedang.ac.id', '085722822607', '2020-12-08 19:03:23', '2020-12-08 19:03:23'),
('3211234566540882', 'Sintia Dewi Puspitasari', 'a2.1700111@mhs.stmik-sumedang.ac.id', '082126211291', '2020-12-08 19:06:48', '2020-12-08 19:19:52'),
('3211234566540883', 'Said Agiel Darmawan', 'a2.1700108@mhs.stmik-sumedang.ac.id', '081313103994', '2020-12-08 19:21:44', '2020-12-08 19:21:44'),
('3211234566540884', 'Deri Rinaldi', 'a2.1700109@mhs.stmik-sumedang.ac.id', '081321771881', '2020-12-08 19:24:48', '2020-12-08 19:24:48'),
('3211234566540885', 'Ipin Herlambang', 'a3.1600066@mhs.stmik-sumedang.ac.id', '08998765430', '2021-01-09 00:17:16', '2021-01-09 00:17:16'),
('3211234566540886', 'Cecep Nurdin', 'a3.1605059@mhs.stmik-sumedang.ac.id', '087773636112', '2021-01-09 00:18:22', '2021-01-09 00:18:22'),
('3211234566540888', 'Sony Prayoga', 'a2.1700113@mhs.stmik-sumedang.ac.id', '087791117262', '2020-12-08 18:59:35', '2020-12-08 18:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_11_01_125032_create_grades_table', 2),
(8, '2020_11_01_133338_create_courses_table', 3),
(9, '2020_11_01_134555_create_collegestudent_table', 4),
(10, '2020_11_01_135226_create_courses_table', 5),
(11, '2020_11_01_135546_create_lecturer_table', 6),
(12, '2020_11_04_094255_create_teachs_table', 7),
(13, '2020_11_04_100247_create_academicyears_table', 8),
(15, '2020_12_10_125716_create_users_table', 9),
(16, '2020_12_12_012027_create_sticky_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teachs`
--

CREATE TABLE `teachs` (
  `idteachs` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_matkul` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idacad` int(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachs`
--

INSERT INTO `teachs` (`idteachs`, `nidn`, `kode_matkul`, `idacad`, `created_at`, `updated_at`) VALUES
(8, '3211234566540882', 'FT3001', 8, '2020-12-30 06:01:16', '2020-12-30 06:01:16'),
(20, '3211234566540881', 'ST1001', 10, NULL, '2020-12-30 21:28:56'),
(21, '3211234566540884', 'FT2001', 10, NULL, NULL),
(24, '3211234566540888', 'ST1020', 10, NULL, NULL),
(25, '3211234566540883', 'FT3009', 9, NULL, NULL),
(26, '3211234566540885', 'IF4001', 7, NULL, NULL),
(27, '3211234566540886', 'RT3003', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('admin','dosen') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'sony', 'sony@mail.co', NULL, '$2y$10$tTqWIc/geC.g1UUKt.zOU.idI8L88ZKdfDRPKy3nPEYsgws4HTxkO', 'admin', NULL, NULL, NULL),
(11, 'ryan', 'ryan@mail.co', NULL, '$2y$10$CYQu4t7THPgGlDGa/8YnIuwiAiGpFx8uqS8fJqSVuzVO0SMx3SsX.', 'dosen', NULL, NULL, NULL),
(16, 'cecep', 'cecep@mail.co', NULL, '$2y$10$cpuH/GmynUwfU69U00qNWO3KSAxNzLDkirvOvt6WEJKQJ5qAlTz7C', 'dosen', NULL, NULL, NULL),
(17, 'ipin', 'ipin@mail.co', NULL, '$2y$10$YBEEw0SVtPs9JEh5GRfKfuU8nwHTBFyZfOAPLR9xoHNd4HQGyQx2y', 'dosen', NULL, NULL, NULL),
(18, 'sintia', 'sintia@mail.co', NULL, '$2y$10$kE9NXTTEKdHf2zkNJIt8jur0SX4MW..d/lKyMmNdSSaa/12WXbbWC', 'admin', NULL, NULL, NULL),
(19, 'said', 'said@mail.co', NULL, '$2y$10$r9Ql2bMo3VY8dUsfVMV0Bu53UtNSWcu4J1iiDpCs6qwkR6ZiiUzIe', 'dosen', NULL, NULL, NULL),
(20, 'deri', 'deri@mail.co', NULL, '$2y$10$gIntnI3wACcm4CEfquCFOevoaJo3Nq0CtQKEH8QdZq4VmnuJQxgWu', 'dosen', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyears`
--
ALTER TABLE `academicyears`
  ADD PRIMARY KEY (`idacad`);

--
-- Indexes for table `collegestudents`
--
ALTER TABLE `collegestudents`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`idnilai`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `teachs`
--
ALTER TABLE `teachs`
  ADD PRIMARY KEY (`idteachs`);

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
-- AUTO_INCREMENT for table `academicyears`
--
ALTER TABLE `academicyears`
  MODIFY `idacad` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `idnilai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teachs`
--
ALTER TABLE `teachs`
  MODIFY `idteachs` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
