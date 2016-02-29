-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Фев 29 2016 г., 01:46
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `e-shop2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `banner_description` varchar(1024) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `banner_description`) VALUES
(87, 1, 6, 'HP Banner', ''),
(93, 1, 8, 'Canon', ''),
(92, 1, 8, 'Burger King', ''),
(91, 1, 8, 'Coca Cola', ''),
(90, 1, 8, 'Disney', ''),
(89, 1, 8, 'Dell', ''),
(88, 1, 8, 'Harley Davidson', ''),
(94, 1, 8, 'NFL', ''),
(95, 1, 8, 'RedBull', ''),
(96, 1, 8, 'Sony', ''),
(97, 1, 8, 'Starbucks', ''),
(98, 1, 8, 'Nintendo', ''),
(95, 4, 8, 'RedBull', ''),
(94, 4, 8, 'NFL', ''),
(88, 4, 8, 'Harley Davidson', ''),
(89, 4, 8, 'Dell', ''),
(90, 4, 8, 'Disney', ''),
(91, 4, 8, 'Coca Cola', ''),
(92, 4, 8, 'Burger King', ''),
(93, 4, 8, 'Canon', ''),
(87, 4, 6, 'HP Banner', ''),
(87, 3, 6, 'HP Banner', ''),
(93, 3, 8, 'Canon', ''),
(92, 3, 8, 'Burger King', ''),
(91, 3, 8, 'Coca Cola', ''),
(90, 3, 8, 'Disney', ''),
(89, 3, 8, 'Dell', ''),
(88, 3, 8, 'Harley Davidson', ''),
(94, 3, 8, 'NFL', ''),
(95, 3, 8, 'RedBull', ''),
(96, 3, 8, 'Sony', ''),
(97, 3, 8, 'Starbucks', ''),
(98, 3, 8, 'Nintendo', ''),
(96, 4, 8, 'Sony', ''),
(97, 4, 8, 'Starbucks', ''),
(98, 4, 8, 'Nintendo', 'dsa'),
(155, 1, 7, '', 'Башенка выкатила крутой ивент на 1 марта http://vk.cc/4QDNRD. Да-да, это презентация проекта колонизации Марса &quot;Mars One&quot; в КПИ.\r\n\r\nЕщё было пару мемасиков в ленте, но это уже совсем другая история.\r\nСуббота как суббота — все отдыхали и в интернетиках не висели.\r\n\r\nВоскресенье.\r\n\r\nМожно собрать и зарегистрировать команду на игру &quot;Что? Где? Когда?&quot; http://vk.cc/4QDPps. Уважаемые знатоки, время показать кто тут самый крутой.\r\n\r\nПодкатила новая крутая видяшка нашего Хогвартса с высоты птичьего полёта http://vk.cc/4QDRbZ. \r\n\r\nНу и самое важное!\r\nhttps://vk.com/kpidata — пройдите опрос о своём факультете. Оцени преподавателя, как он когда-то оценивал тебя. \r\n\r\nВот и сказочке конец, прочитал — ну молодец!\r\nКто ложится спать — доброй ночи, а кто будет смотреть Оскар — победы Лео.'),
(155, 3, 7, '', ''),
(155, 4, 7, '', ''),
(156, 1, 7, '', ''),
(156, 3, 7, '', ''),
(156, 4, 7, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
