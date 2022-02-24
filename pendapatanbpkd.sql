-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2022 pada 06.58
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendapatanbpkd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pkb`
--

CREATE TABLE `pkb` (
  `No` int(2) NOT NULL,
  `Jenis_Kendaraan` text NOT NULL,
  `merk` varchar(18) NOT NULL,
  `tahun_pembuatan` year(4) NOT NULL,
  `nomor_rangka/nomor_mesin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pkb`
--

INSERT INTO `pkb` (`No`, `Jenis_Kendaraan`, `merk`, `tahun_pembuatan`, `nomor_rangka/nomor_mesin`) VALUES
(1, 'SEPEDA MOTOR SOLO', 'Honda', 2016, 'MH31PA002DK149678\r\n/JFZ2E1014439'),
(2, 'SEPEDA MOTOR SOLO', 'Yamaha', 2013, 'MH31PA002DK149678\r\n/1PA150122');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wajib_pajak`
--

CREATE TABLE `wajib_pajak` (
  `Status` varchar(15) NOT NULL,
  `kodebayar` varchar(15) NOT NULL,
  `nopol` varchar(15) NOT NULL,
  `kodewilayah` varchar(15) NOT NULL,
  `namawp` text NOT NULL,
  `tipekendaraan` varchar(15) NOT NULL,
  `warnakendaraan` text NOT NULL,
  `pkbpokok` decimal(30,0) NOT NULL,
  `pkbtunggakan` decimal(30,0) NOT NULL,
  `pkbdenda` decimal(30,0) NOT NULL,
  `SwdklljPokok` int(30) NOT NULL,
  `SwdklljDenda` int(30) NOT NULL,
  `Pnbp` int(30) NOT NULL,
  `TotalTagihan` int(30) NOT NULL,
  `Ntpd` int(30) NOT NULL,
  `TglAwal` datetime(6) NOT NULL,
  `TglAkhir` time(6) NOT NULL,
  `TglNtpd` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wajib_pajak`
--

INSERT INTO `wajib_pajak` (`Status`, `kodebayar`, `nopol`, `kodewilayah`, `namawp`, `tipekendaraan`, `warnakendaraan`, `pkbpokok`, `pkbtunggakan`, `pkbdenda`, `SwdklljPokok`, `SwdklljDenda`, `Pnbp`, `TotalTagihan`, `Ntpd`, `TglAwal`, `TglAkhir`, `TglNtpd`) VALUES
('0', 'A8620DE', 'A8620DE', '2807', 'GANJAR WAHYUDIN', 'D1B02N26', 'putih', '350000', '0', '0', 35000, 0, 1500000, 1885000, 0, '2016-10-19 00:00:00.000000', '00:00:00.000000', '2017-03-07 01:29:39.992041'),
('0', 'A8620DE', 'A8620DE', '2807', 'GANJAR WAHYUDIN', 'D1B02N26', 'putih', '350000', '0', '0', 35000, 0, 1500000, 1885000, 0, '2016-10-19 00:00:00.000000', '00:20:17.000000', '2017-03-06 17:00:00.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
