-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jan 2026 pada 10.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `kategori` varchar(50) DEFAULT 'News'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `kategori`) VALUES
(1, 'Berita Otomotif: Topik Hangat Nomor 1', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(2, 'Berita Bisnis: Topik Hangat Nomor 2', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(3, 'Berita Lifestyle: Topik Hangat Nomor 3', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(4, 'Berita News: Topik Hangat Nomor 4', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(5, 'Berita Otomotif: Topik Hangat Nomor 5', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(6, 'Berita News: Topik Hangat Nomor 6', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(7, 'Berita Tekno: Topik Hangat Nomor 7', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(8, 'Berita Seleb: Topik Hangat Nomor 8', 'Ini adalah contoh artikel untuk kategori Seleb. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Seleb'),
(9, 'Berita Otomotif: Topik Hangat Nomor 9', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(10, 'Berita Otomotif: Topik Hangat Nomor 10', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(11, 'Berita News: Topik Hangat Nomor 11', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(12, 'Berita Tekno: Topik Hangat Nomor 12', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(13, 'Berita Tekno: Topik Hangat Nomor 13', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(14, 'Berita News: Topik Hangat Nomor 14', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(15, 'Berita Lifestyle: Topik Hangat Nomor 15', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(16, 'Berita Otomotif: Topik Hangat Nomor 16', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(17, 'Berita Otomotif: Topik Hangat Nomor 17', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(18, 'Berita News: Topik Hangat Nomor 18', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(19, 'Berita News: Topik Hangat Nomor 19', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(20, 'Berita Lifestyle: Topik Hangat Nomor 20', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(21, 'Berita Seleb: Topik Hangat Nomor 21', 'Ini adalah contoh artikel untuk kategori Seleb. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Seleb'),
(22, 'Berita Lifestyle: Topik Hangat Nomor 22', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(23, 'Berita Tekno: Topik Hangat Nomor 23', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(24, 'Berita Bisnis: Topik Hangat Nomor 24', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(25, 'Berita News: Topik Hangat Nomor 25', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(26, 'Berita Lifestyle: Topik Hangat Nomor 26', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(27, 'Berita Otomotif: Topik Hangat Nomor 27', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(28, 'Berita Lifestyle: Topik Hangat Nomor 28', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(29, 'Berita Seleb: Topik Hangat Nomor 29', 'Ini adalah contoh artikel untuk kategori Seleb. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Seleb'),
(30, 'Berita News: Topik Hangat Nomor 30', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(31, 'Berita Sport: Topik Hangat Nomor 31', 'Ini adalah contoh artikel untuk kategori Sport. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Sport'),
(32, 'Berita Seleb: Topik Hangat Nomor 32', 'Ini adalah contoh artikel untuk kategori Seleb. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Seleb'),
(33, 'Berita Sport: Topik Hangat Nomor 33', 'Ini adalah contoh artikel untuk kategori Sport. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Sport'),
(34, 'Berita Bisnis: Topik Hangat Nomor 34', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(35, 'Berita Bisnis: Topik Hangat Nomor 35', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(36, 'Berita Lifestyle: Topik Hangat Nomor 36', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(37, 'Berita News: Topik Hangat Nomor 37', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(38, 'Berita Tekno: Topik Hangat Nomor 38', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(39, 'Berita Tekno: Topik Hangat Nomor 39', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(40, 'Berita Sport: Topik Hangat Nomor 40', 'Ini adalah contoh artikel untuk kategori Sport. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Sport'),
(41, 'Berita Otomotif: Topik Hangat Nomor 41', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(42, 'Berita News: Topik Hangat Nomor 42', 'Ini adalah contoh artikel untuk kategori News. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'News'),
(43, 'Berita Otomotif: Topik Hangat Nomor 43', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(44, 'Berita Bisnis: Topik Hangat Nomor 44', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(45, 'Berita Bisnis: Topik Hangat Nomor 45', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(46, 'Berita Tekno: Topik Hangat Nomor 46', 'Ini adalah contoh artikel untuk kategori Tekno. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Tekno'),
(47, 'Berita Bisnis: Topik Hangat Nomor 47', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(48, 'Berita Otomotif: Topik Hangat Nomor 48', 'Ini adalah contoh artikel untuk kategori Otomotif. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Otomotif'),
(49, 'Berita Lifestyle: Topik Hangat Nomor 49', 'Ini adalah contoh artikel untuk kategori Lifestyle. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Lifestyle'),
(50, 'Berita Bisnis: Topik Hangat Nomor 50', 'Ini adalah contoh artikel untuk kategori Bisnis. Lorem ipsum dolor sit amet.', 'dummy_image.jpg', '2026-01-16 23:32:14', 'Bisnis'),
(51, 'Kondisi Aceh dan Sekitarnya Pasca Banjir Bandang Melanda', 'Kondisi saat ini terjadi karena banjir bandang yang melanda kawasan aceh hingga Sumatera Barazt', '1768629189_bencana1.jpeg', '2026-01-17 05:53:09', 'News'),
(52, 'Area yang Terdampak Banjir di Sumatera', 'Kondisi saat ini terjadi karena banjir bandang yang melanda kawasan aceh hingga Sumatera Barat\r\n', '1768638685_bencana2.jpeg', '2026-01-17 08:31:25', 'News');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
