-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 6 月 29 日 02:35
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `pr_dashboard`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `pr_dashboard_table`
--

CREATE TABLE `pr_dashboard_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `OPS` float(10,0) NOT NULL,
  `wOBA` decimal(10,0) NOT NULL,
  `Spd` decimal(10,0) NOT NULL,
  `IsoP` int(10) NOT NULL,
  `IsoD` int(10) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `pr_dashboard_table`
--

INSERT INTO `pr_dashboard_table` (`id`, `name`, `grade`, `position`, `OPS`, `wOBA`, `Spd`, `IsoP`, `IsoD`, `indate`) VALUES
(1, 'student1', 'Grade 1', 'Pitcher', 3, 5, 7, 0, 0, '2024-06-22 22:06:14'),
(14, 'Taro Yamada', 'Grade 3', 'Center Field', 1, 2, 3, 3, 5, '2024-06-29 08:58:52'),
(15, 'Tom', 'Grade 2', 'Catcher', 3, 6, 7, 8, 9, '2024-06-29 08:59:14'),
(16, 'Lisa', 'Grade 3', 'Center Field', 1, 9, 10, 5, 6, '2024-06-29 08:59:40'),
(17, 'Ken', 'Grade 2', 'Right Field', 7, 8, 9, 10, 11, '2024-06-29 09:00:03'),
(18, 'Oliver', 'Grade 1', 'Pitcher', 9, 13, 13, 2, 9, '2024-06-29 09:28:12'),
(19, 'Sho', 'Grade 1', 'Pitcher', 4, 7, 8, 9, 10, '2024-06-29 09:32:17'),
(20, 'Sho', 'Grade 1', 'Pitcher', 8, 9, 10, 4, 5, '2024-06-29 09:32:44');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `pr_dashboard_table`
--
ALTER TABLE `pr_dashboard_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `pr_dashboard_table`
--
ALTER TABLE `pr_dashboard_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
