-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2025 pada 16.21
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
-- Database: `design_prediction`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `designs`
--

CREATE TABLE `designs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `likes_data_file` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `designs`
--

INSERT INTO `designs` (`id`, `title`, `description`, `image_url`, `image_path`, `category`, `user_id`, `likes_data_file`, `created_at`, `updated_at`) VALUES
(1, '3D Graphic Design', 'Prediksi popularitas 3D Graphic Design menggunakan DES', 'https://example.com/3d_design.jpg', NULL, '3D', 1, '1_3D_Graphic_Design.csv', '2025-07-21 23:27:50', '2025-07-21 23:27:50'),
(2, 'AI Graphic Design', 'Prediksi popularitas AI Graphic Design menggunakan DES', 'https://example.com/ai_design.jpg', NULL, 'AI', 1, '1_AI_Graphic_Design.csv', '2025-07-21 23:27:50', '2025-07-21 23:27:50'),
(3, 'Typography Design', 'Prediksi popularitas Typography Design menggunakan DES', 'https://example.com/typography.jpg', NULL, 'Typography', 1, '1_Typography_Design.csv', '2025-07-21 23:27:51', '2025-07-21 23:27:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `profile_pic` text DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `name`, `created_at`, `last_login`, `google_id`, `profile_pic`, `is_admin`) VALUES
(7, 'asis@gmai.com', 'scrypt:32768:8:1$31yuawXBgxnNJVnk$7468d343b9650d0dbb1eed11918d468be856431f8ef8b3390b8e7f35378266856d521cd8f36e5804f9315e41bd56bc03420541ea58e34b4aea356830ba4ac842', 'Abdul Aziz', '2025-07-23 02:17:51', NULL, NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `designs`
--
ALTER TABLE `designs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `designs`
--
ALTER TABLE `designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
