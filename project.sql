-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Jun 2022 pada 16.46
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_buku`
--

CREATE TABLE `data_buku` (
  `judul` char(30) NOT NULL,
  `pengarang` char(20) NOT NULL,
  `penerbit` char(20) NOT NULL,
  `tahun_terbit` char(5) NOT NULL,
  `lokasi` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_buku`
--

INSERT INTO `data_buku` (`judul`, `pengarang`, `penerbit`, `tahun_terbit`, `lokasi`) VALUES
('Aku dan Rindu', 'fiersa', 'nrladilah', '2020', 'C1'),
('BrokenHome', 'Terta', 'Sari', '2012', 'A3'),
('Ceritaku', 'HandresVictor', 'Lois', '2022', 'B1'),
('CurupEmbun', 'NurulAdilah', 'CeryOktapia', '2019', 'B3'),
('GunungDempo', 'MadyLani', 'Arindi', '2021', 'A2'),
('massa', 'riri', 'anggun', '2011', 'B2'),
('perahu', 'fiersa', 'besari', '2022', 'C3'),
('Senja', 'Manurung', 'Abdi', '2019', 'C2'),
('siapadia', 'indrawani', 'niken', '2021', 'B11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`judul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
