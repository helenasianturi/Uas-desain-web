-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2025 pada 11.53
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.4.8

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
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `slug` text DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `description`, `kategori`, `image`, `slug`, `author`, `created_at`, `updated_at`) VALUES
(19,	 'Putusan MK Terkait Batas Usia Capres-Cawapres Jad...',	'JAKARTA - Panggung politik Indonesia memanas pasca...',	'politik',	'684ad41907177.jpg',	'putusan-mk-terkait-batas-usia-capres-cawapres-jadi...',	'Rei Putra'	'2025-06-12 20:20:25',	NULL),	
(20,	'Perang di Gaza Berlanjut, Dunia Internasional Terb...',	'GAZA - Konflik antara Israel dan Hamas terus berke...',	'politik',	'684ad473822f9.jpg',	'perang-di-gaza-berlanjut-dunia-internasional-terbe...',	'Nurdin',	'2025-06-12 20:21:55',	NULL),
(21,	'TikTok Shop Kembali Beroperasi di Indonesia Melalu...',	'JAKARTA - Setelah sempat ditutup oleh pemerintah k...',	'ekonomi',	'684ad4c739841.png',	'tiktok-shop-kembali-beroperasi-di-indonesia-melalu...',	'Raka',	'2025-06-12 20:23:19',	NULL),
(22,	'"Oppenheimer" Borong Piala di Ajang Oscar, Christo...',	'LOS ANGELES - Film biografi epik "Oppenheimer" men...',	'hiburan',	'684ad516e3ee9.jpg',	'oppenheimer-borong-piala-di-ajang-oscar-christophe...',	'Agus',	'2025-06-12 20:24:38',	NULL),
(23,	 'Apple Vision Pro Resmi Meluncur, Membuka Era Baru...',	'CUPERTINO - Apple akhirnya secara resmi meluncurka...',	'teknologi',	'684ad58adfbd4.jpeg',	'apple-vision-pro-resmi-meluncur-membuka-era-baru-s...',	'Erha',	'2025-06-12 20:26:34',	NULL),	
(24,	'Tren "Quiet Luxury": Tampil Mewah Tanpa Pamer Logo...',	'PARIS - Dunia mode tengah diramaikan oleh tren "Qu...',	'gayahidup',	'684ad5fc4fe05.jpg',	'tren-quiet-luxury-tampil-mewah-tanpa-pamer-logo-ja...',	'Razmi',	'2025-06-12 20:28:28',	NULL),
(26,	 'Hasil Timnas Indonesia vs Jepang di Kualifikasi Pi...',	'OSAKA – Tim Nasional (Timnas) Indonesia menelan ke...',	'olahraga',	'684bd3bcb2160.jpg',	'hasil-timnas-indonesia-vs-jepang-di-kualifikasi-pi...',	'Bambang Pamungkas',	'2025-06-13 14:31:08'	NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `namalengkap`, `email`, `password`, `created_at`, `updated_at`) VALUES
(4,	'helena',	'helena3@gmail.com',	'$2y$10$JhighMgpddUP.xFHG0VFa.5zzHtMGzU9fWb5VHWTq0V...',	'2025-06-12 16:15:56',	NULL),	
(5,	'jennie'	'jennie29@gmail.com',	'$2y$10$dU4R3FhnDsCzCBd/b5rF7OFk8vtzFw/9vnDPaV99Rqr...',	'2025-06-12 16:16:46',	NULL);	

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);
  

--
-- Indeks untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
