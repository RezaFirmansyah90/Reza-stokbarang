-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2020 pada 05.46
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_helm`
--

CREATE TABLE `is_helm` (
  `kode_helm` varchar(7) NOT NULL,
  `nama_helm` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_user` int(3) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_helm`
--

INSERT INTO `is_helm` (`kode_helm`, `nama_helm`, `harga_beli`, `harga_jual`, `satuan`, `stok`, `created_user`, `created_date`, `updated_user`, `updated_date`) VALUES
('B000001', 'GM Evolution Motif', 220000, 250000, 'Buah', 5, 1, '2020-02-21 03:04:28', 1, '2020-02-21 06:44:29'),
('B000002', 'GM Evolution Kartun', 225000, 250000, 'Buah', 5, 1, '2020-02-21 03:04:58', 1, '2020-02-21 03:49:19'),
('B000003', 'GM Evolution Polos', 200000, 240000, 'Buah', 5, 1, '2020-02-21 03:05:22', 1, '2020-02-21 06:47:34'),
('B000004', 'KYT Galaxy Polos', 340000, 370000, 'Buah', 5, 1, '2020-02-21 06:40:33', 1, '2020-02-21 06:47:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_obat_keluar`
--

CREATE TABLE `is_obat_keluar` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `kode_helm` varchar(7) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_obat_keluar`
--

INSERT INTO `is_obat_keluar` (`kode_transaksi`, `tanggal_keluar`, `kode_helm`, `jumlah_keluar`, `created_user`, `created_date`) VALUES
('TK-2020-0000001', '2020-02-21', 'B000001', 2, 1, '2020-02-21 06:44:28'),
('TK-2020-0000002', '2020-02-21', 'B000004', 5, 1, '2020-02-21 06:47:13'),
('TK-2020-0000003', '2020-02-21', 'B000003', 10, 1, '2020-02-21 06:47:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_obat_masuk`
--

CREATE TABLE `is_obat_masuk` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `kode_helm` varchar(7) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_obat_masuk`
--

INSERT INTO `is_obat_masuk` (`kode_transaksi`, `tanggal_masuk`, `kode_helm`, `jumlah_masuk`, `created_user`, `created_date`) VALUES
('TM-2020-0000001', '2020-02-21', 'B000002', 5, 1, '2020-02-21 03:05:40'),
('TM-2020-0000002', '2020-02-21', 'B000001', 7, 1, '2020-02-21 03:28:45'),
('TM-2020-0000003', '2020-02-21', 'B000003', 15, 1, '2020-02-21 03:29:05'),
('TM-2020-0000004', '2020-02-21', 'B000004', 10, 1, '2020-02-21 06:40:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_users`
--

CREATE TABLE `is_users` (
  `id_user` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `hak_akses` enum('Super Admin','Manajer','Gudang') NOT NULL,
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `is_users`
--

INSERT INTO `is_users` (`id_user`, `username`, `nama_user`, `password`, `email`, `telepon`, `foto`, `hak_akses`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Jundi Alfaruqi', '21232f297a57a5a743894a0e4a801fc3', 'jundialfaruqi@gmail.com', '089507891427', 'avatar5.png', 'Super Admin', 'aktif', '2017-04-01 08:15:15', '2020-02-20 13:56:18'),
(2, 'leddy', 'Leddy Dinayanti Wijaya', '202cb962ac59075b964b07152d234b70', 'leddy@gmail.com', '085680892909', 'kadina.png', 'Manajer', 'aktif', '2017-04-01 08:15:15', '2018-11-13 18:19:46'),
(3, 'artha', 'Richo Artha Wijaya', '202cb962ac59075b964b07152d234b70', 'rartha@gmail.com', '085758858855', '', 'Gudang', 'aktif', '2017-04-01 08:15:15', '2018-11-13 18:20:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `is_helm`
--
ALTER TABLE `is_helm`
  ADD PRIMARY KEY (`kode_helm`),
  ADD KEY `created_user` (`created_user`),
  ADD KEY `updated_user` (`updated_user`);

--
-- Indeks untuk tabel `is_obat_keluar`
--
ALTER TABLE `is_obat_keluar`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `id_barang` (`kode_helm`),
  ADD KEY `created_user` (`created_user`);

--
-- Indeks untuk tabel `is_obat_masuk`
--
ALTER TABLE `is_obat_masuk`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `id_barang` (`kode_helm`),
  ADD KEY `created_user` (`created_user`);

--
-- Indeks untuk tabel `is_users`
--
ALTER TABLE `is_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `level` (`hak_akses`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `is_users`
--
ALTER TABLE `is_users`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `is_helm`
--
ALTER TABLE `is_helm`
  ADD CONSTRAINT `is_helm_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_helm_ibfk_2` FOREIGN KEY (`updated_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `is_obat_masuk`
--
ALTER TABLE `is_obat_masuk`
  ADD CONSTRAINT `is_obat_masuk_ibfk_1` FOREIGN KEY (`kode_helm`) REFERENCES `is_helm` (`kode_helm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_obat_masuk_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
