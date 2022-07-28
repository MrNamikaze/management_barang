-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Okt 2020 pada 10.42
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`) VALUES
(7, '70866614', 'Nasi Rames', 'wm'),
(8, '23413607', 'Sate Usus', 'm'),
(9, '95056748', 'Semen', 'Kg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengembalian`
--

CREATE TABLE `detail_pengembalian` (
  `id` int(11) NOT NULL,
  `no_barang` varchar(20) NOT NULL,
  `tgl_dikembalikan` varchar(20) NOT NULL,
  `tgl_diterima` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `gudang` varchar(30) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `kode_jurnal` varchar(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `no_urut` varchar(10) NOT NULL,
  `no_pk` varchar(10) NOT NULL,
  `kode_perkiraan` varchar(10) NOT NULL,
  `no_pk_a` varchar(10) NOT NULL,
  `no_pdl` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `no_normalisasi` varchar(10) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `kembali_a` varchar(10) NOT NULL,
  `kembali_b` varchar(30) NOT NULL,
  `diterima_a` varchar(10) NOT NULL,
  `diterima_b` varchar(30) NOT NULL,
  `kode_a` varchar(20) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `uang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pengembalian`
--

INSERT INTO `detail_pengembalian` (`id`, `no_barang`, `tgl_dikembalikan`, `tgl_diterima`, `nama`, `alamat`, `gudang`, `kode`, `kode_jurnal`, `jenis`, `no_urut`, `no_pk`, `kode_perkiraan`, `no_pk_a`, `no_pdl`, `nama_barang`, `no_normalisasi`, `satuan`, `kembali_a`, `kembali_b`, `diterima_a`, `diterima_b`, `kode_a`, `harga`, `uang`) VALUES
(5, '1601975869', '2020-10-03', '2020-10-14', 'ramadhan', 'Kutorejo', 't', 'c', '123', '1', '2', '3', '4', '5', '6', 'Nasi Rames', '4', 'hm', '1', '2', '3', '', '5', '6', '7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_barang` varchar(20) DEFAULT NULL,
  `tgl_diminta` varchar(20) DEFAULT NULL,
  `tgl_diberikan` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `gudang` varchar(30) DEFAULT NULL,
  `kode_a` varchar(20) DEFAULT NULL,
  `kode_jurnal` varchar(10) NOT NULL,
  `banyak_jenis` varchar(10) NOT NULL,
  `no_pk` varchar(10) NOT NULL,
  `no_pdf` varchar(10) NOT NULL,
  `no_ski` varchar(10) NOT NULL,
  `no_pk_a` varchar(10) NOT NULL,
  `kode_perkiraan` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `no_normalisasi` varchar(10) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `minta_a` varchar(10) NOT NULL,
  `minta_b` varchar(10) NOT NULL,
  `diterima_a` varchar(10) NOT NULL,
  `diterima_b` varchar(10) NOT NULL,
  `uang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_barang`, `tgl_diminta`, `tgl_diberikan`, `nama`, `alamat`, `gudang`, `kode_a`, `kode_jurnal`, `banyak_jenis`, `no_pk`, `no_pdf`, `no_ski`, `no_pk_a`, `kode_perkiraan`, `nama_barang`, `no_normalisasi`, `satuan`, `minta_a`, `minta_b`, `diterima_a`, `diterima_b`, `uang`) VALUES
('1601975779', '2020-10-03', '2020-10-15', 'a', 's', 'Selatan', '4', '5', '1', '2', '3', '4', '5', '6', 'Nasi Rames', '4', 'hm', '1', '2', '3', '4', '5'),
('1601975779', '2020-10-03', '2020-10-15', 'a', 's', 'Selatan', '4', '5', '1', '2', '3', '4', '5', '6', 'Sate Kucing', '4', 'km', '1', '2', '3', '4', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_surat`
--

CREATE TABLE `detail_surat` (
  `no_barang` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `nama_pengemudi` varchar(30) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_surat`
--

INSERT INTO `detail_surat` (`no_barang`, `nama`, `alamat`, `kode`, `tgl`, `tujuan`, `nopol`, `nama_pengemudi`, `nama_barang`, `satuan`, `jumlah`, `keterangan`) VALUES
('1600924419', 'syahrul', 'b', 'c', '2020-09-04', 'e', 'f', 'g', 'Nasi Rames', 'hm', '4', '1'),
('1600924419', 'syahrul', 'b', 'c', '2020-09-04', 'e', 'f', 'g', 'Sate Usus', 'm', '2', '3'),
('1601975779', '1', '2', '3', '2020-10-15', '4', '5', '6', 'Nasi Rames', 'hm', '1', '2'),
('1601975779', '1', '2', '3', '2020-10-15', '4', '5', '6', 'Sate Kucing', 'km', '3', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id` int(11) NOT NULL,
  `no_barang` varchar(20) NOT NULL,
  `tgl_dikembalikan` varchar(20) NOT NULL,
  `tgl_diterima` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `gudang` varchar(30) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `kode_jurnal` varchar(10) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `no_urut` varchar(10) NOT NULL,
  `no_pk` varchar(10) NOT NULL,
  `kode_perkiraan` varchar(10) NOT NULL,
  `no_pk_a` varchar(10) NOT NULL,
  `no_pdl` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id`, `no_barang`, `tgl_dikembalikan`, `tgl_diterima`, `nama`, `alamat`, `gudang`, `kode`, `kode_jurnal`, `jenis`, `no_urut`, `no_pk`, `kode_perkiraan`, `no_pk_a`, `no_pdl`) VALUES
(6, '1601975869', '2020-10-03', '2020-10-14', 'ramadhan', 'Kutorejo', 't', 'c', '123', '1', '2', '3', '4', '5', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode_pengguna` varchar(10) DEFAULT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `username_pengguna` varchar(20) DEFAULT NULL,
  `password_pengguna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode_pengguna`, `nama_pengguna`, `username_pengguna`, `password_pengguna`) VALUES
(1, 'PGN17', 'syahrul', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_barang` varchar(30) DEFAULT NULL,
  `tgl_diminta` varchar(20) DEFAULT NULL,
  `tgl_diberikan` varchar(20) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `gudang` varchar(30) NOT NULL,
  `kode_a` varchar(10) NOT NULL,
  `kode_jurnal` varchar(10) NOT NULL,
  `banyak_jenis` varchar(10) NOT NULL,
  `no_pk` varchar(10) NOT NULL,
  `no_pdf` varchar(10) NOT NULL,
  `no_ski` varchar(10) NOT NULL,
  `no_pk_a` varchar(10) NOT NULL,
  `kode_perkiraan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_barang`, `tgl_diminta`, `tgl_diberikan`, `nama`, `alamat`, `gudang`, `kode_a`, `kode_jurnal`, `banyak_jenis`, `no_pk`, `no_pdf`, `no_ski`, `no_pk_a`, `kode_perkiraan`) VALUES
(56, '1601975779', '2020-10-03', '2020-10-15', 'a', 's', 'Selatan', '4', '5', '1', '2', '3', '4', '5', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `id` int(10) NOT NULL,
  `no_barang` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `tgl` varchar(20) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `nopol` varchar(20) NOT NULL,
  `nama_pengemudi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`id`, `no_barang`, `nama`, `alamat`, `kode`, `tgl`, `tujuan`, `nopol`, `nama_pengemudi`) VALUES
(8, '1601975779', '1', '2', '3', '2020-10-15', '4', '5', '6');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_pengembalian`
--
ALTER TABLE `detail_pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `detail_pengembalian`
--
ALTER TABLE `detail_pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
