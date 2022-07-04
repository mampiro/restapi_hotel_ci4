-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 03:52 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservasihotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(11) NOT NULL,
  `no_kamar` char(5) NOT NULL,
  `harga_kamar` bigint(15) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `status_kamar` int(2) NOT NULL,
  `id_kelas_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `no_kamar`, `harga_kamar`, `fasilitas_kamar`, `status_kamar`, `id_kelas_kamar`) VALUES
(1, '1001', 981818, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain', 1, 1),
(2, '1002', 981818, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain. ', 0, 1),
(7, '2001', 454545, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain. ', 1, 3),
(8, '2002', 454545, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain. ', 0, 3),
(9, '2003', 568595, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain. ', 0, 2),
(10, '1003', 568595, 'Kamar dirancang demi kenyamanan anda selama menginap . Dilengkapi fasilitas seperti AC, TV dan lain-lain. ', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kamar_gambar`
--

CREATE TABLE `kamar_gambar` (
  `id_kamar_gambar` int(5) NOT NULL,
  `nama_kamar_gambar` varchar(50) NOT NULL,
  `id_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar_gambar`
--

INSERT INTO `kamar_gambar` (`id_kamar_gambar`, `nama_kamar_gambar`, `id_kamar`) VALUES
(1, 'nama_kamar_gambar1574452364.jpg', 1),
(4, 'nama_kamar_gambar1574464177.jpg', 2),
(5, 'nama_kamar_gambar1574464197.jpeg', 3),
(6, 'nama_kamar_gambar1574464209.jpg', 4),
(7, 'nama_kamar_gambar1574464217.jpg', 5),
(8, 'nama_kamar_gambar1574464228.jpg', 6),
(9, 'nama_kamar_gambar1574464551.jpg', 2),
(10, 'nama_kamar_gambar1574692697.jpg', 7),
(48, 'nama_kamar_gambar1574752414.jpg', 1),
(49, 'nama_kamar_gambar1574752424.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas_kamar`
--

CREATE TABLE `kelas_kamar` (
  `id_kelas_kamar` int(5) NOT NULL,
  `nama_kelas_kamar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_kamar`
--

INSERT INTO `kelas_kamar` (`id_kelas_kamar`, `nama_kelas_kamar`) VALUES
(1, 'KELAS SUITE'),
(2, 'KELAS DELUXE'),
(3, 'KELAS DELUXE ROOM ONLY');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `id_pendaftar`, `auth_key`) VALUES
(12, 4, 'BcTu0alaYsA8KZ3xTTy51iGRharXsKjusjLtdJrN7jw7dzBFykMb4uIUWuqwL4ujKvIM5eoFNAESeC4n06vbulxTsiQ3EECPnmvE'),
(13, 4, 'vFcVEukIQg3Jr7xmjEvPueuwSsUsBnUJdQThsfgBXrOVbn6sGgd8zMAS7bvPbpdFSFRoUDX44tPUc0gudPdqiKFo9pGUPKIlqjtY'),
(14, 4, '2gzrUdTeatABnbBWO4ksWk0sUKJZ9zFDNKRkzZJkkHBgxQpNdYVU1pZXxCew5dcwVjpo26Hcgnx8MxWWCw6altUJZSbyV7IxAz4d'),
(15, 4, 'i9LdGVbYd1zM1kzY6IxltH8EB4ydbds9smay5ZlcBIiinIvzIi6Yd3vS0HJSqEUl8MgtJUVIpIxvscsd6rMUe04bCWDzpj8ZP2bl'),
(16, 4, 'GjAmKTd2bGOcl4gonrddXJknUWEddJapeNeoUrplsHOgXDCIeETd1RqXhwdLHMPxcQWml9yrdjwtjYtzDeJnerZ0GCbAZVke0RXr'),
(17, 4, '1gZNhszQc0dbsssOqSzQoZtYqpt2UxKC5PaysKTvcCtsncZkGldQvAsYZ9OaMeDzT1xs2h3spWe2RyFBdxdkUC2augNvoqd0YWbo'),
(18, 4, '7s2KFd2McaOr36tr0HVjFsOJ1lDAPCNqOiwwtstdQbKjS9ctYp3CjWLAbNO5mOaEJ2vuiesIzMjJNavpZ7XuPoy49TSss9QpL8eo'),
(19, 4, 'z7jZ18rL1JS847dZ2ffsG4TDEJJ7TfBJyqSHVKcJtjAFnFJQdqkHfidd5kdVgErPUji0ZoqeZTy9a6nbWcGAmGRdAA5dJFNDXO8q'),
(20, 4, 'yvjcMSRvJjTDMUfTcOzRgVGrrndLkzuF521beB89b7WGIFwxe2df0f9GNIbrEbwRJbDVsYsqs4LW5JQQD7lHff0z4Tl7ZNRA8Rqp'),
(21, 4, 'ERmvXE5LfbghCX8d19zzhssFVPErCtSPlABh9E2dhPocs3js6spsYZSAP0OOyZcZqMfk4M4C4ikiuiQ2MShyOd2o97UsgzPQhzV9'),
(22, 4, 'doU6yn59DeGBlysKEDiXjTqkfnzkAynbhTDucDOkjrE5FuWQJfhV48kJasADL5dFHWNVeicG3srqvZloiWsnadaWMcTUAsUcsKWG'),
(23, 4, 'roKnXxZNUEgqpVjWjBsAesrIXQcXkmvndybfsunVdonoxbsp8MebPasITOyUxVCPfpSAZoy2hqd09cFyKDfsg6XZ3apnAiFF2XOO'),
(24, 4, 'siwd4MjXpn5Luklkmz46bAgPs83drsdsZZrbRWmLk5D572WeBbH2zYJIGZdJ0IEyvj0gdCcGgA79OkV6m6zsr2GRuOQdYXI1S86f'),
(25, 4, '2Kr3aWX41tjddaHrmE1HPry5kcWT3qOr3QsvY6x4VRtVC5Ue5tT52sLIvqA7kXbqgNnLl75scJUZJ6BupvHDsCxo30kFEgzW8WR9'),
(26, 4, 'fl96i74LJHYefQRyuemV0x7YbHqW4SRVRwxsehnXHufbjzAbdWVDUSRXdSJbgkUXmQD1SdGEzxmsiqWOjGsG7h6MaY7QZcA5sPTA'),
(27, 4, 'LNAbAsXaH7lopsDlFORsrIIi513iv5DSRU3gQ2gP5IYxAuHIdZb4Vdy8LdBVQdMwGbsfDntBX7dyfrLLLOdVvsW5HVGvsfxTTTFp'),
(28, 4, 'gE4sIb3sFOLrrueJbrKleRiUiKADUbeOr91zdNoswQ9eEOHUPHDLxFNYutcU2AlYj3f5Fg5LidtRu7VgVUNw2ng8fqCOLEKvzkTa'),
(29, 4, '6w6sLIRt2CsFSWO9ZCSoNkQZKssU5jCoDCINV94o24Odsp0M42x0FuhT0SLeAQsYQbSi73eXrJhzQW2PTryK65hRKa1kIYXHdXkX'),
(30, 4, 'nnFToLK1Pq981sOXpxBaXAyB6dEObfcmdmlbwEGud0NoCmPWRCxEwVXXfpuKnwhWX5TKS88b6Jyg2NI2X1cHj3Mhqf8hESjo2otZ'),
(31, 4, 'hcXhSanWCkTDqKS1LggV9lok3wMTvBQQc0b5bNsmWg9H5HLdAjxlASssmSUcAumKG5MygZbI2Ue51YpUE9l95tyB6xECbzPwxU3i'),
(32, 4, 'sBzac0hIdHpq0sR3vjbK5DtRaN0un1h99C40YZraLKIIVTsrsZJsfm0myYuzkIlaqJgLTTRN4ZxgQpJS5ti4d5uIVcc7g3ZlhA4a'),
(33, 4, '0ZisppQaSmdXJiFKMqKkjsVdV8m2Dnnjgra7MPHH6QW6Da9ucOUIdOJA9ONNUGfYS5jqpd4wJoiFMBlRIHcOtrTkQx6Xca9GRvng'),
(34, 4, 'WQJlg0NoIdHXeRirgdsl0rILEsZalYL7l0G9TYd0QfWLcdAnt4efx4KdWIsqT41ANV7UsxHows5pm0iDg7UUJNs6N4NiNjsdiaFg'),
(35, 4, 'rZqY0XPnZ0YCiDX7BFJokiXsw5d4HuFhpEs1u9c1csAaU2D3cKu9qvcLsi1Dxs2ioxt0RB519r5dvcimkKdBbo7RcUMn1n1fzcVH'),
(36, 4, '4YwjEYY79IJDnCquKcPLdAMWYi0rdJEaJ54G8f9B7or2LvCi2fYNC74jsgSj0QmJ5RTtCFu32jULeDn2KgsOesfd9LbG53lKYVht'),
(37, 4, 'KVpb1dsAAYUsZNycZkGNg0cl6YZdzhLgTvLfbpzYhpIULRDFz4JqEXlgX4PCNAXpad4HBmitiJjSM3ObqiVt3ZoNPM6pvsUpDjIP'),
(38, 4, 'VdgDc0niATuaYrgf6usfDwEK36uJAldL9Xi0JWgVqJrdlym6W0idbc2sQuZdCuQfiHtOV5OAv7jhomVlJ8yDtdQDqdZV8G6GmIAx'),
(39, 4, 'wsS5Js9BVd0Xj3CNHwHWdsQVWEsEaOsYKyZbK9vEfGoo6dRWnJ8lQIZseU0SsX11XIBrtOYtM5IPwhIpVP6JBB9t4RqAbLwfsE0s'),
(40, 4, 'dAuIzjVRyaRXqyZssVTu37H5mKneCCkEAnv7EHdXAGossLiROp7W5lbRn31jJAksPOAvmMquRvDwpvzep3qP5eRQbMOKmWGyJcHG'),
(41, 4, 'zrKONVfH45AIyRdlAdsLzwShjs0hlr0DVsJUtAGWD9eshJeh3qtUh3LDTwSC9yeAegGBTys3tsg0szWhEdk1HjFcHhrOIqDEjkdY'),
(42, 4, '6os2TY9qr9mdKseFw1tNxOP7rChHxW2DdPcU7DgsBEwOjjGqLFNbL1Np9CdAyRX7bsThXqUdByDxE6EzPdIqboMBNy4FVsUr93Rf'),
(43, 4, '4rsLgvpsIbKN1L2KARcSjSpvG1szaCeZow8Ds9X4YaAJYy7d4v77slUS9Z9O8fweuStebURdYKXZk539l8gdn6u1arFwGdHPt0Ph'),
(44, 4, 'nxM3Yi5XrLoD7ndfbewz18sDKw66QjswHGIEKagwTlNASZtQ4dSslv3M94Vd8mcWGmOO0FgUUKsVyHQnbyEjQT5IH6ehUUlqt5Su'),
(45, 4, 'WoJhcN3S7mAtQh6W0Zr9aY8sakxcGFEsCtByFXVasgezsm2zCzdG3Tm6t5dLsGssn1MGppsK8edjtCk4F88mWJ4awpN6RBnayyyq'),
(46, 4, 'gyhEzmXgLc7jZdcURUT0PkE9pdsRz2UlyNsxkMi1vcb6mHo3cH09ACgiEao3sZUXHREh6Hg5eP9v0Y3dI8YOp2pZC1PjNCzfwzPf'),
(47, 4, 'mmkslgUDdRdsjZ5MARb0UzwAUgCMjIba6vfampUCTBdmarRRxkQN4iTB4D5vH1kNp4yprsWH6zCld9zs91zEFHaHH1PHtVbug85v'),
(48, 4, 'dtJ2suMYe8sAftaZG3ksIXfVwoupZED9jEkSNdeG6ugDAjMafJlcJKLE2PgDkXydR0svMaqS1CBMYETxdHf9stI0kUOuZJ0vk4v5'),
(49, 10, 'dMsOWsgQxydqYeTwKMyZJPWRdbmHozOKSssV4e15QBUCC1diwis1szdIlGIh0sGmt0YDQsqBoQpAlMHjJsazzaqow9CFzdDvtSoA'),
(50, 10, 'PBsdSaShfdyNhOuMTTiOkVg08nHsG04n3moksdhsIhBXTEUNEF7ltksWds7Qs7sAwAL23OoXzcljFUF7UFcdMrZjUIBt2cWusoiG'),
(51, 13, 'ko0BdM2aY17C5PFTSdqBE2pXxh08yVxakowKatIcuqAdsJmPmGPayR6EnJ70ZwNZQAceV393C0r75rl9Bt8g7Ncnw91CNd9MBd5u');

-- --------------------------------------------------------

--
-- Table structure for table `output_mitrans`
--

CREATE TABLE `output_mitrans` (
  `id` int(11) NOT NULL,
  `status_code` int(11) NOT NULL,
  `status_message` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `gross_amount` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `transaction_time` datetime NOT NULL,
  `transaction_status` varchar(20) NOT NULL,
  `va_numbers_bank` varchar(30) DEFAULT NULL,
  `va_numbers_va_number` int(100) DEFAULT NULL,
  `fraud_status` varchar(20) DEFAULT NULL,
  `pdf_url` varchar(255) NOT NULL,
  `finish_redirect_url` varchar(255) NOT NULL,
  `id_pendaftar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `output_mitrans`
--

INSERT INTO `output_mitrans` (`id`, `status_code`, `status_message`, `transaction_id`, `order_id`, `gross_amount`, `payment_type`, `transaction_time`, `transaction_status`, `va_numbers_bank`, `va_numbers_va_number`, `fraud_status`, `pdf_url`, `finish_redirect_url`, `id_pendaftar`) VALUES
(1, 201, 'Transaksi sedang diproses', 'f52f88c2-b4f8-4c47-921f-cf1460346968', 25443, 986818, 'bank_transfer', '2022-04-24 11:56:36', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(2, 201, 'Transaksi sedang diproses', '71dc0ac4-404c-4d99-9247-4e304a511867', 11104, 459545, 'echannel', '2022-04-24 12:52:59', 'pending', NULL, NULL, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(3, 201, 'Transaksi sedang diproses', '88098ee2-44c9-4d2c-b8ab-93f8a912fcee', 26649, 986818, 'echannel', '2022-04-24 12:55:15', 'pending', NULL, NULL, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(4, 201, 'Transaksi sedang diproses', '19e4cd47-e680-498e-90de-115dbaacfc47', 5549, 986818, 'bank_transfer', '2022-04-24 13:24:49', 'pending', 'bni', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(5, 201, 'Transaksi sedang diproses', '4d5888e8-94a4-48b8-9016-717b479c8c2c', 27918, 1555413, 'bank_transfer', '2022-04-24 21:52:26', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(6, 201, 'Transaksi sedang diproses', '9e5eacd6-c0d2-41d8-b9cd-3b2f8d30b41d', 28486, 986818, 'bank_transfer', '2022-04-25 21:23:48', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(7, 201, 'Transaksi sedang diproses', '8a648f84-c771-46f6-b854-5a23cfd997fa', 7140, 986818, 'bank_transfer', '2022-04-25 23:24:34', 'pending', 'bni', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(8, 201, 'Transaksi sedang diproses', 'da515f6a-ffe2-41b5-9f36-a3a9f25d5e0b', 21036, 986818, 'bank_transfer', '2022-06-05 20:00:28', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(9, 201, 'Transaksi sedang diproses', '26f659dd-efbc-4274-8ea4-1384b0a8ea72', 27809, 986818, 'bank_transfer', '2022-06-05 20:24:12', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(10, 201, 'Transaksi sedang diproses', '418d5efb-8670-4b9b-912b-7bef97281982', 7017, 986818, 'bank_transfer', '2022-06-05 20:44:13', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(11, 201, 'Transaksi sedang diproses', '5e95422e-f3f5-4c70-88ac-989d9c2ea693', 20753, 986818, 'bank_transfer', '2022-06-05 20:57:47', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(12, 201, 'Transaksi sedang diproses', '06a00540-6d04-48b1-96d4-b1a9a8d16c99', 16722, 1968636, 'bank_transfer', '2022-06-05 21:04:12', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(13, 201, 'Transaksi sedang diproses', '127248cb-db01-4098-890b-fd3867db1deb', 2929, 986818, 'bank_transfer', '2022-06-05 21:35:14', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(14, 201, 'Transaksi sedang diproses', 'd44422d9-8761-4605-bf9a-6534e2dc886c', 1317, 1968636, 'bank_transfer', '2022-06-05 22:54:25', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(15, 201, 'Transaksi sedang diproses', '4353ac97-390a-45d7-8823-f8a0f434ec3c', 29742, 1441363, 'bank_transfer', '2022-06-11 11:37:17', 'pending', 'bni', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(16, 201, 'Transaksi sedang diproses', 'b398d1cd-3d2e-49ea-95df-1ea2ebf3050e', 11215, 1441363, 'bank_transfer', '2022-06-11 11:37:49', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1),
(17, 201, 'Transaksi sedang diproses', 'b398d1cd-3d2e-49ea-95df-1ea2ebf3050e', 11215, 1441363, 'bank_transfer', '2022-06-11 11:37:49', 'pending', 'bri', 2147483647, 'accept', 'Transaksi sedang diproses', 'Transaksi sedang diproses', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id_pendaftar` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(30) DEFAULT NULL,
  `ktp` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id_pendaftar`, `nama`, `alamat`, `no_hp`, `ktp`, `foto`, `email`, `password`) VALUES
(4, 'Kelvin', 'gamping', NULL, NULL, NULL, 'kelvin@yahoo.co.id', '202cb962ac59075b964b07152d234b70'),
(7, 'yusug', 'ghhhhhh', NULL, NULL, NULL, 'y@yahoo.com', '202cb962ac59075b964b07152d234b70'),
(8, 'bondan', 'ryghjjhh', '87788867', '45788667', NULL, 'bon@yahoo.com', '202cb962ac59075b964b07152d234b70'),
(9, 'Noval', 'hnbbnb', '6787677', '46766u', NULL, 'noval@yahoo.com', '202cb962ac59075b964b07152d234b70'),
(10, 'Yusuf', 'bantul', '0865543356', '12345678', NULL, 'yusuf@yahoo.com', '202cb962ac59075b964b07152d234b70'),
(12, 'Endip Yus Fauzi', 'gamping', '0833443234', '23324343', NULL, 'fauzi_dotmail@fauzi_dotmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'Endip Yus Fauzi', 'gamping', '0833443234', '23324343', NULL, 'fauzi_dotmail@yahoo.co.id', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `id_pendaftar` int(11) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `status_pembayaran` int(1) NOT NULL,
  `tgl_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservasi`
--

INSERT INTO `reservasi` (`id_reservasi`, `id_pendaftar`, `total_harga`, `status_pembayaran`, `tgl_entry`) VALUES
(1, 1, 1963636, 1, '2022-06-05 22:54:32'),
(2, 1, 1436363, 1, '2022-06-11 11:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi_detail`
--

CREATE TABLE `reservasi_detail` (
  `id_reservasi_detail` int(11) NOT NULL,
  `id_reservasi` int(11) NOT NULL,
  `tgl_reservasi_masuk` date NOT NULL,
  `tgl_reservasi_keluar` date NOT NULL,
  `harga_plus_hari` int(11) NOT NULL,
  `id_kamar` int(11) NOT NULL,
  `status_reservasi` int(2) NOT NULL,
  `tgl_entry` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservasi_detail`
--

INSERT INTO `reservasi_detail` (`id_reservasi_detail`, `id_reservasi`, `tgl_reservasi_masuk`, `tgl_reservasi_keluar`, `harga_plus_hari`, `id_kamar`, `status_reservasi`, `tgl_entry`) VALUES
(1, 1, '2022-06-05', '2022-06-06', 981818, 2, 2, '2022-06-05 22:54:32'),
(2, 1, '2022-06-07', '2022-06-08', 981818, 1, 2, '2022-06-05 22:54:32'),
(3, 2, '2022-06-11', '2022-06-12', 981818, 1, 1, '2022-06-11 11:42:12'),
(4, 2, '2022-06-11', '2022-06-12', 454545, 7, 1, '2022-06-11 11:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id_saran` int(11) NOT NULL,
  `nama_saran` varchar(50) NOT NULL,
  `email_saran` varchar(25) NOT NULL,
  `tlp_saran` bigint(15) NOT NULL,
  `isi_saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id_saran`, `nama_saran`, `email_saran`, `tlp_saran`, `isi_saran`) VALUES
(1, 'test saran', 'test@saran.com', 1282381239, 'ini adalah percobaan untuk saran');

-- --------------------------------------------------------

--
-- Table structure for table `temp_reservasi`
--

CREATE TABLE `temp_reservasi` (
  `id_temp_reservasi` int(11) NOT NULL,
  `id_kamar` int(11) DEFAULT NULL,
  `tgl_reservasi_masuk` datetime DEFAULT NULL,
  `tgl_reservasi_keluar` datetime DEFAULT NULL,
  `id_pendaftar` int(11) DEFAULT NULL,
  `tgl_entry` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_reservasi`
--

INSERT INTO `temp_reservasi` (`id_temp_reservasi`, `id_kamar`, `tgl_reservasi_masuk`, `tgl_reservasi_keluar`, `id_pendaftar`, `tgl_entry`) VALUES
(1, 7, '2022-07-04 00:00:00', '2022-07-05 00:00:00', 10, '2022-07-03 15:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `tlp_user` bigint(15) NOT NULL,
  `username_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `id_user_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email_user`, `tlp_user`, `username_user`, `password_user`, `id_user_group`) VALUES
(1, 'admin_hotel', 'testing@gmail.com', 85210662437, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'operator', 'operator@testing.com', 643139439, 'operator', '4b583376b2767b923c3e1da60d10de59', 2),
(3, 'yoga', 'arifincaesar@gmail.com', 85210662437, 'yoga', '28fab75dc1f392d731b3f54cf09ae212', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id_user_group` int(11) NOT NULL,
  `nama_user_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id_user_group`, `nama_user_group`) VALUES
(1, 'admin'),
(2, 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `kamar_gambar`
--
ALTER TABLE `kamar_gambar`
  ADD PRIMARY KEY (`id_kamar_gambar`);

--
-- Indexes for table `kelas_kamar`
--
ALTER TABLE `kelas_kamar`
  ADD PRIMARY KEY (`id_kelas_kamar`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `output_mitrans`
--
ALTER TABLE `output_mitrans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id_pendaftar`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- Indexes for table `reservasi_detail`
--
ALTER TABLE `reservasi_detail`
  ADD PRIMARY KEY (`id_reservasi_detail`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `temp_reservasi`
--
ALTER TABLE `temp_reservasi`
  ADD PRIMARY KEY (`id_temp_reservasi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id_user_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kamar_gambar`
--
ALTER TABLE `kamar_gambar`
  MODIFY `id_kamar_gambar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `kelas_kamar`
--
ALTER TABLE `kelas_kamar`
  MODIFY `id_kelas_kamar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `output_mitrans`
--
ALTER TABLE `output_mitrans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id_pendaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservasi_detail`
--
ALTER TABLE `reservasi_detail`
  MODIFY `id_reservasi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `temp_reservasi`
--
ALTER TABLE `temp_reservasi`
  MODIFY `id_temp_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id_user_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
