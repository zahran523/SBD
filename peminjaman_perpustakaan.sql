-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2023 pada 17.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peminjaman_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_perpustakaan`
--

CREATE TABLE `member_perpustakaan` (
  `nama_member` varchar(50) DEFAULT NULL,
  `id_member` char(10) NOT NULL,
  `kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `kontak` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member_perpustakaan`
--

INSERT INTO `member_perpustakaan` (`nama_member`, `id_member`, `kelamin`, `alamat`, `kontak`) VALUES
('M. Azzukhruf', '2111511002', 'L', 'Nagari Isekai', '084863568365'),
('Adi Nazif', '2111511003', 'L', 'Padang Laweh', '082380724055'),
('Teguh Alam Nashrah', '2111512026', 'L', 'Payung Sekaki', '082160353966'),
('Anisa Putri', '2111512027', 'P', 'Tampan', '082160353967'),
('Budi Santoso', '2111512028', 'L', 'Sukajadi', '082160353968'),
('Dewi Anggraeni', '2111512029', 'P', 'Pauh', '082160353969'),
('Faisal Rahman', '2111512030', 'L', 'Limapuluh', '082160353970'),
('Gina Putri', '2111512031', 'P', 'Bangkinang', '082160353971'),
('Hendra Yusuf', '2111512032', 'L', 'Simpang', '082160353972'),
('Indah Sari', '2111512033', 'P', 'Payung Sekaki', '082160353973'),
('Kartika Sari', '2111512035', 'P', 'Senapelan', '082160353975');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_buku`
--

CREATE TABLE `tabel_buku` (
  `id_buku` char(7) NOT NULL,
  `nama_buku` varchar(150) DEFAULT NULL,
  `jenis_buku` varchar(15) DEFAULT NULL,
  `jumlah_halaman` int(4) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_buku`
--

INSERT INTO `tabel_buku` (`id_buku`, `nama_buku`, `jenis_buku`, `jumlah_halaman`, `pengarang`) VALUES
('BB00001', 'Filosofi Teras', 'Buku Bacaan', 232, 'Henry Manapiring'),
('BB00002', 'STOIC dan EGOIS', 'Buku Bacaan', 153, 'tatang sutarman'),
('BB00004', 'Sejarah Dunia', 'Buku Bacaan', 411, 'Arief Setiawwan'),
('BB00005', 'Filsafat Hidup', 'Buku Bacaan', 189, 'Dewi Kusumawati'),
('BE00001', 'Namanya Apa?', 'bisnis-ekonomi', 240, 'Arto Biantoro'),
('BE00002', 'Branding Society 5.0', 'bisnis-ekonomi', 200, 'Cristofel Angelo & Johan Alvin Khosuma'),
('BG00001', 'Jejak Pengabdian Ulama', 'biografi', 328, 'M. Fuad Nasar'),
('BG00002', 'Hidup Sampai Usia 93 Tahun+!', 'biografi', 186, 'Anies Soengkar'),
('BG00003', 'Roulet Merah', 'biografi', 320, 'Desmond Shum'),
('BG00004', 'Ibnu Rusyd', 'biografi', 256, 'Ahmad Ridlo Shohibul Ulum'),
('BI00001', 'Sistem Tata Surya', 'Buku Ilmiah', 208, 'Tim penerbit'),
('BI00002', 'Sains Modern', 'Buku Ilmiah', 345, 'Prof. Sigit'),
('BI00003', 'Seni Murni', 'Buku Ilmiah', 178, 'Ari Wibowo'),
('FS00001', 'Seni Berperang Sun Tzu', 'filsafat', 192, 'Amber Books'),
('FS00002', 'Agnostisisme', 'filsafat', 204, 'Robin Le Poidevin'),
('KM00001', 'Meminang Waifu', 'Komik', 4005, 'Masashi Kishimoto'),
('NL00001', 'Sepasang Sepatu Tua', 'novel', 120, 'Sapardi Djoko Damono'),
('NL00002', 'Espresso', 'novel', 316, 'Bernard Batubara'),
('NL00003', 'Kisah Dari Halaman Belakang', 'novel', 360, 'Wacaku'),
('NL00004', 'Where Stories Begin', 'novel', 240, 'Wacaku'),
('NL00005', 'Segi Tiga', 'novel', 328, 'Sapardi Djoko Damono'),
('NL00006', 'Suti', 'novel', 202, 'Sapardi Djoko Damono'),
('NL00007', 'Babad Batu', 'novel', 96, 'Sapardi Djoko Damono'),
('NL00008', 'Bilang Begini Maksdunya Begitu', 'novel', 148, 'Sapardi Djoko Damono'),
('NL00009', 'Ayat - Ayat Api', 'novel', 100, 'Sapardi Djoko Damono'),
('NL00010', 'Kambing Hitam, Teori Rene Girard', 'novel', 550, 'Sindhunata'),
('NL00011', 'Anak Bajang Mengayun Bulan', 'novel', 556, 'Sindhunata'),
('NL00012', 'Air Kata-Kata', 'novel', 216, 'Sindhunata'),
('NL00013', 'Air Kejujuran', 'novel', 214, 'Sindhunata'),
('NL00014', 'Anak-anak Semar', 'novel', 204, 'Sindhunata'),
('PD00001', 'Mengembangkan Pendidikan Inklusi Di Sekolah/Madrasah', 'pendidikan', 194, 'Trianto, M.Pd'),
('PD00002', 'An Overview Semantics', 'pendidikan', 146, 'Prof. Dr. Drs. Himpun Panggabean, M.Hum.'),
('PD00003', 'Kimia Air', 'pendidikan', 190, 'Prof. Dr. Drs. Pranoto, M.Sc.'),
('PD00004', 'Liberalisasi Pendidikan Sekolah Swasta', 'pendidikan', 276, 'Sardjono Sigit dan Kidung Asmara Sigit'),
('PD00005', 'Sistem Penjamin Mutut Pendidikan', 'pendidikan', 228, 'Dr. Agus Zaenal Fitri, M.Pd.'),
('PS00001', 'Hidup Minimalais', 'psikologi', 178, 'Yazid Attafsir'),
('PS00002', 'The Miracle Of Fokus', 'psikologi', 122, 'Sony Adams'),
('PS00003', 'The Powerfull Habits', 'psikologi', 208, 'Dewi Indra P');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_peminjaman_member`
--

CREATE TABLE `tabel_peminjaman_member` (
  `nama_member` varchar(50) DEFAULT NULL,
  `id_member` char(10) NOT NULL,
  `kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `kontak` varchar(13) DEFAULT NULL,
  `id_buku` char(7) NOT NULL,
  `nama_buku` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_petugas`
--

CREATE TABLE `tabel_petugas` (
  `nama_petugas` varchar(50) DEFAULT NULL,
  `id_petugas` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_petugas`
--

INSERT INTO `tabel_petugas` (`nama_petugas`, `id_petugas`) VALUES
('Ikhwanul Arif', 'pe001'),
('Haris Fadhillah', 'pe002'),
('Ikhwanul Hakim', 'pe003'),
('Agung Subakti', 'pe004'),
('Shelysia Merendra\'', 'pe005'),
('Hadi Pranata', 'pe006'),
('Daniel Febrian T', 'pe007');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_tanggal_peminjaman`
--

CREATE TABLE `tabel_tanggal_peminjaman` (
  `tanggal_peminjaman` date DEFAULT NULL,
  `id_peminjaman` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_tanggal_peminjaman`
--

INSERT INTO `tabel_tanggal_peminjaman` (`tanggal_peminjaman`, `id_peminjaman`) VALUES
('2023-05-18', '000002'),
('2023-05-19', '000003'),
('2023-05-20', '000004'),
('2023-05-21', '000005'),
('2023-05-22', '000006'),
('2023-05-23', '000007'),
('2023-05-24', '000008'),
('2023-05-24', '000009'),
('2023-05-17', '00001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_transaksi_perpustakaan`
--

CREATE TABLE `tabel_transaksi_perpustakaan` (
  `tanggal_peminjaman` date DEFAULT NULL,
  `id_peminjaman` char(8) NOT NULL,
  `nama_member` varchar(50) DEFAULT NULL,
  `id_member` char(11) DEFAULT NULL,
  `nama_buku` varchar(150) DEFAULT NULL,
  `id_buku` char(7) DEFAULT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `id_petugas` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `member_perpustakaan`
--
ALTER TABLE `member_perpustakaan`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `tabel_buku`
--
ALTER TABLE `tabel_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tabel_peminjaman_member`
--
ALTER TABLE `tabel_peminjaman_member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `tabel_petugas`
--
ALTER TABLE `tabel_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tabel_tanggal_peminjaman`
--
ALTER TABLE `tabel_tanggal_peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `tabel_transaksi_perpustakaan`
--
ALTER TABLE `tabel_transaksi_perpustakaan`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_peminjaman_member`
--
ALTER TABLE `tabel_peminjaman_member`
  ADD CONSTRAINT `tabel_peminjaman_member_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tabel_buku` (`id_buku`),
  ADD CONSTRAINT `tabel_peminjaman_member_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `member_perpustakaan` (`id_member`);

--
-- Ketidakleluasaan untuk tabel `tabel_transaksi_perpustakaan`
--
ALTER TABLE `tabel_transaksi_perpustakaan`
  ADD CONSTRAINT `tabel_transaksi_perpustakaan_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member_perpustakaan` (`id_member`),
  ADD CONSTRAINT `tabel_transaksi_perpustakaan_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tabel_buku` (`id_buku`),
  ADD CONSTRAINT `tabel_transaksi_perpustakaan_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `tabel_petugas` (`id_petugas`),
  ADD CONSTRAINT `tabel_transaksi_perpustakaan_ibfk_4` FOREIGN KEY (`id_peminjaman`) REFERENCES `tabel_tanggal_peminjaman` (`id_peminjaman`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
