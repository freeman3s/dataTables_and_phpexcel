-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 30 2016 г., 14:26
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `datatables`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `office` varchar(255) NOT NULL DEFAULT '',
  `start_date` datetime NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `first_name`, `last_name`, `position`, `office`, `start_date`, `salary`) VALUES
(1, 'Airi', 'Satou', 'Accountant', 'Tokyo', '2016-11-01 00:00:00', 100000),
(2, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'London', '2016-11-02 00:00:00', 200000),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'San Francisco', '2016-09-13 00:00:00', 5000),
(4, 'Bradley', 'Greer', 'Software Engineer', 'London', '2016-11-23 00:00:00', 132000),
(5, 'Brenden', 'Wagner', 'Software Engineer', 'San Francisco', '2016-06-14 00:00:00', 206000),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'New York', '2016-02-12 00:00:00', 372000),
(7, 'Bruno', 'Nash', 'Software Engineer', 'London', '2014-03-16 00:00:00', 122000),
(8, 'Donna', 'Snider', 'Customer Support', 'New York', '2015-09-09 00:00:00', 223000),
(9, 'Gavin', 'Joyce', 'Developer', 'Edinburgh', '2009-04-16 00:00:00', 600000),
(10, 'Jenette', 'Caldwell', 'Development Lead', 'Singapore', '2004-06-16 00:00:00', 423000),
(11, 'Timothy', 'Mooney', 'Office Manager', 'Tokyo', '2013-07-11 00:00:00', 254000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
