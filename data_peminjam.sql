-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 05:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa_buku_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjam`
--

CREATE TABLE `data_peminjam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_peminjam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_kelamin` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_peminjam`
--

INSERT INTO `jenis_kelamin` (`id`, `id_jenis_kelamin`, `nama_jenis_kelamin`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laki - laki', '', NULL, NULL),
(2, 2, 'Perempuan', '', NULL, NULL);

INSERT INTO `telepon` (`id_peminjam`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(1, '089987654321', '2022-06-09 21:05:38', '2022-06-09 21:05:38'),
(2, '089218271276', '2022-06-16 18:54:57', '2022-06-16 18:54:57'),
(6, '081325256753', '2022-06-16 19:30:28', '2022-06-16 19:30:28'),
(7, '081354313777', '2022-06-16 19:31:23', '2022-06-16 19:31:23'),
(8, '081123456789', '2022-06-16 19:32:08', '2022-06-16 19:32:08'),
(9, '081456321876', '2022-06-16 19:33:01', '2022-06-16 19:33:01');

INSERT INTO `data_peminjam` (`id`, `kode_peminjam`, `nama_peminjam`, `tanggal_lahir`, `alamat`, `pekerjaan`, `foto`, `id_jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 'P0001', 'M Rafli', '2000-01-01', 'Semarang', 'Mahasiswa', ' ', 1, '2022-06-09 21:05:38', '2022-06-09 21:05:38'),
(2, 'P0002', 'Stella', '2002-12-02', 'Bandung', 'Mahasiswa', ' ', 2, '2022-06-16 18:54:57', '2022-06-16 19:05:59'),
(6, 'P0003', 'M Ali', '2000-07-05', 'Jakarta', 'Database Admin', ' ', 1, '2022-06-16 19:30:28', '2022-06-16 19:30:28'),
(7, 'P0004', 'Jokam', '2004-03-05', 'Kediri', 'Santri', ' ', 1, '2022-06-16 19:31:23', '2022-06-16 19:31:23'),
(8, 'P0005', 'Aurora', '2002-02-02', 'Banten', 'Design Graphics', ' ', 2, '2022-06-16 19:32:08', '2022-06-16 19:32:08'),
(9, 'P0006', 'Zuyina', '2002-12-08', 'Semarang', 'Designer', ' ', 2, '2022-06-16 19:33:01', '2022-06-16 19:33:01');


INSERT INTO `data_buku` (`id`, `kode_buku`, `judul_buku`, `jumlah_halaman`, `ISBN`, `pengarang`, `tahun_terbit`, `created_at`, `updated_at`) VALUES
(1, 'B0001', 'Ten Years Challenge', 178, '10299293', 'Mutiarini', 2020, NULL, NULL),
(2, 'B0002', 'Kisah Tanah Jawa: Tikungan Maut', 200, '10092993', 'kisahtanahjawa', 2019, NULL, NULL),
(3, 'B0003', 'Rapijali', 257, '290399100', 'Dee Lestari', 2021, NULL, NULL),
(4, 'B0004', 'The Pragmatic Programmer Your Journey to Mastery', 560, '01929944', 'Andrew Hunt, David Thomas', 2020, NULL, NULL),
(5, 'B0005', 'HTML and CSS: Design and Build Websites', 482, '1092990393', 'Jon Duckett', 2020, NULL, NULL),
(6, 'B0006', 'Nusantara', 671, '019929922', 'Bernard H.M. Vlekke', 2020, NULL, NULL);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peminjam`
--
ALTER TABLE `data_peminjam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_peminjam_kode_peminjam_unique` (`kode_peminjam`),
  ADD KEY `data_peminjam_id_jenis_kelamin_foreign` (`id_jenis_kelamin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peminjam`
--
ALTER TABLE `data_peminjam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_peminjam`
--
ALTER TABLE `data_peminjam`
  ADD CONSTRAINT `data_peminjam_id_jenis_kelamin_foreign` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `jenis_kelamin` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
