-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2021 at 09:47 AM
-- Server version: 5.7.33
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt-malelav2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `pm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `email`, `password`, `is_active`, `date_created`, `avatar`, `role`, `pm`) VALUES
(2, 'daffa', 'daffalifapr@gmail.com', '$2y$10$aDiTUrkgsFCVAl./muwNfuhDDd2mWdSgUnCcBoe0wyX.Ijni251Wa', 1, 1637831964, 'default.jpg', 1, '081291270634');

-- --------------------------------------------------------

--
-- Table structure for table `chat_materi`
--

CREATE TABLE `chat_materi` (
  `id_chat_materi` int(11) NOT NULL,
  `materi` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat_tugas`
--

CREATE TABLE `chat_tugas` (
  `id_chat_tugas` int(11) NOT NULL,
  `tugas` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `essay_detail`
--

CREATE TABLE `essay_detail` (
  `id_essay_detail` int(11) NOT NULL,
  `kode_ujian` varchar(100) NOT NULL,
  `soal` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `essay_siswa`
--

CREATE TABLE `essay_siswa` (
  `id_essay_siswa` int(11) NOT NULL,
  `essay_id` int(11) NOT NULL,
  `ujian` varchar(100) NOT NULL,
  `siswa` int(11) NOT NULL,
  `jawaban` longtext,
  `score` int(11) NOT NULL,
  `sudah_dikerjakan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id_file` int(11) NOT NULL,
  `kode_file` varchar(100) NOT NULL,
  `nama_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `guru_kelas` varchar(255) DEFAULT NULL,
  `guru_mapel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `email`, `password`, `role`, `is_active`, `date_created`, `avatar`, `guru_kelas`, `guru_mapel`) VALUES
(1, 'alif', 'alriansy@gmail.com', '$2y$10$m35x7h5LTb4QchJ5/zSEiOp9tCoXRh/XJcBmttDMuFmG6Vu8KEBKi', 3, 1, 1637831983, 'default.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru_kelas`
--

CREATE TABLE `guru_kelas` (
  `id_guru_kelas` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_kelas`
--

INSERT INTO `guru_kelas` (`id_guru_kelas`, `guru`, `kelas`, `nama_kelas`) VALUES
(1, 1, 4, 'Jepang Dasar 1');

-- --------------------------------------------------------

--
-- Table structure for table `guru_mapel`
--

CREATE TABLE `guru_mapel` (
  `id_guru_mapel` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_mapel`
--

INSERT INTO `guru_mapel` (`id_guru_mapel`, `guru`, `mapel`, `nama_mapel`) VALUES
(1, 1, 3, 'Hiragana ????'),
(2, 1, 4, 'Katakana ????'),
(3, 1, 5, 'Vocabullary'),
(4, 1, 6, 'Susunan Kalimat');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(4, 'Jepang Dasar 1'),
(5, 'Jepang Dasar 2');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(3, 'Hiragana'),
(4, 'Katakana'),
(5, 'Vocabullary'),
(6, 'Susunan Kalimat');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `kode_materi` varchar(100) NOT NULL,
  `nama_materi` varchar(255) NOT NULL,
  `guru` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `text_materi` longtext NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `kode_materi`, `nama_materi`, `guru`, `mapel`, `kelas`, `text_materi`, `date_created`) VALUES
(1, 'PG1CrfUe', 'Huruf-huruf katakana', 1, 4, 4, 'Berikut Huruf-huruf katakana', 1637885618);

-- --------------------------------------------------------

--
-- Table structure for table `materi_siswa`
--

CREATE TABLE `materi_siswa` (
  `id_materi_siswa` int(11) NOT NULL,
  `materi` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `siswa` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `no_induk_siswa` varchar(100) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `no_induk_siswa`, `nama_siswa`, `email`, `password`, `jenis_kelamin`, `kelas`, `role`, `is_active`, `date_created`, `avatar`) VALUES
(3, '31242', 'Apri', '4518210077@univpancasila.ac.id', '$2y$10$0JqAcfyhO1lDM1MvV.hShu0BZUksqSv/zr9hcEkreh4TD8kNA36M2', 'Laki - Laki', 4, 2, 1, 1638006241, 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `kode_tugas` varchar(100) NOT NULL,
  `kelas` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `guru` int(11) NOT NULL,
  `nama_tugas` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `date_created` int(11) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `date_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tugas_siswa`
--

CREATE TABLE `tugas_siswa` (
  `id_tugas_siswa` int(11) NOT NULL,
  `tugas` varchar(100) NOT NULL,
  `siswa` int(11) NOT NULL,
  `text_siswa` longtext,
  `file_siswa` varchar(100) DEFAULT NULL,
  `date_send` int(11) DEFAULT NULL,
  `is_telat` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `catatan_guru` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `kode_ujian` varchar(100) NOT NULL,
  `nama_ujian` varchar(255) NOT NULL,
  `guru` int(11) NOT NULL,
  `kelas` int(11) NOT NULL,
  `mapel` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `waktu_mulai` varchar(100) NOT NULL,
  `waktu_berakhir` varchar(100) NOT NULL,
  `jenis_ujian` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ujian_detail`
--

CREATE TABLE `ujian_detail` (
  `id_detail_ujian` int(11) NOT NULL,
  `kode_ujian` varchar(100) NOT NULL,
  `nama_soal` longtext NOT NULL,
  `pg_1` varchar(100) NOT NULL,
  `pg_2` varchar(100) NOT NULL,
  `pg_3` varchar(100) NOT NULL,
  `pg_4` varchar(100) NOT NULL,
  `pg_5` longtext NOT NULL,
  `jawaban` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ujian_siswa`
--

CREATE TABLE `ujian_siswa` (
  `id_ujian_siswa` int(11) NOT NULL,
  `ujian_id` int(11) NOT NULL,
  `ujian` varchar(100) NOT NULL,
  `siswa` int(11) NOT NULL,
  `jawaban` varchar(100) DEFAULT NULL,
  `benar` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id_user_token` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `chat_materi`
--
ALTER TABLE `chat_materi`
  ADD PRIMARY KEY (`id_chat_materi`);

--
-- Indexes for table `chat_tugas`
--
ALTER TABLE `chat_tugas`
  ADD PRIMARY KEY (`id_chat_tugas`);

--
-- Indexes for table `essay_detail`
--
ALTER TABLE `essay_detail`
  ADD PRIMARY KEY (`id_essay_detail`);

--
-- Indexes for table `essay_siswa`
--
ALTER TABLE `essay_siswa`
  ADD PRIMARY KEY (`id_essay_siswa`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id_file`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `guru_kelas`
--
ALTER TABLE `guru_kelas`
  ADD PRIMARY KEY (`id_guru_kelas`);

--
-- Indexes for table `guru_mapel`
--
ALTER TABLE `guru_mapel`
  ADD PRIMARY KEY (`id_guru_mapel`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `materi_siswa`
--
ALTER TABLE `materi_siswa`
  ADD PRIMARY KEY (`id_materi_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `tugas_siswa`
--
ALTER TABLE `tugas_siswa`
  ADD PRIMARY KEY (`id_tugas_siswa`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `ujian_detail`
--
ALTER TABLE `ujian_detail`
  ADD PRIMARY KEY (`id_detail_ujian`);

--
-- Indexes for table `ujian_siswa`
--
ALTER TABLE `ujian_siswa`
  ADD PRIMARY KEY (`id_ujian_siswa`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id_user_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_materi`
--
ALTER TABLE `chat_materi`
  MODIFY `id_chat_materi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_tugas`
--
ALTER TABLE `chat_tugas`
  MODIFY `id_chat_tugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essay_detail`
--
ALTER TABLE `essay_detail`
  MODIFY `id_essay_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essay_siswa`
--
ALTER TABLE `essay_siswa`
  MODIFY `id_essay_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru_kelas`
--
ALTER TABLE `guru_kelas`
  MODIFY `id_guru_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guru_mapel`
--
ALTER TABLE `guru_mapel`
  MODIFY `id_guru_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi_siswa`
--
ALTER TABLE `materi_siswa`
  MODIFY `id_materi_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tugas_siswa`
--
ALTER TABLE `tugas_siswa`
  MODIFY `id_tugas_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ujian_detail`
--
ALTER TABLE `ujian_detail`
  MODIFY `id_detail_ujian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ujian_siswa`
--
ALTER TABLE `ujian_siswa`
  MODIFY `id_ujian_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id_user_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
