-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2012 at 06:33 PM
-- Server version: 5.1.58
-- PHP Version: 5.3.6-13ubuntu3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asterisk`
--
CREATE DATABASE `asterisk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `asterisk`;

-- --------------------------------------------------------

--
-- Table structure for table `abbreviates`
--

CREATE TABLE IF NOT EXISTS `abbreviates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbreviate` varchar(16) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `abbreviates`
--

INSERT INTO `abbreviates` (`id`, `abbreviate`, `phone`, `created`, `updated`) VALUES
(1, '*601', '3105174334', '2012-01-13 17:07:05', '2012-01-13 17:53:09'),
(2, '*602', '322278798', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(3, '*603', '3113165266', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(4, '*604', '018000510003', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(5, '*605', '3117333390', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(6, '*606', '3155841535', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(7, '*607', '8080322428627', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(8, '*608', '8080322248226', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(9, '*609', '3117466950', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(10, '*610', '3113378358', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(11, '*611', '018000113390', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(12, '*612', '3147450668', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(13, '*613', '8080328284000', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(14, '*614', '3147711804', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(15, '*615', '3156819695', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(16, '*616', '3155488046', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(17, '*617', '3113726794', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(18, '*618', '3155672675', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(19, '*619', '3106924910', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(20, '*620', '3137919563', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(21, '*621', '13466530', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(22, '*622', '8080328821252', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(23, '*623', '3002822785', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(24, '*624', '3164639738', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(25, '*625', '3206454555', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(26, '*626', '3156612031', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(27, '*627', '3108408453', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(28, '*628', '8080314161666', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(29, '*629', '3137373630', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(30, '*630', '3136617378', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(31, '*631', '3114447406', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(32, '*632', '3146430304', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(33, '*633', '3122675073', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(34, '*634', '3102254953', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(35, '*635', '3102575886', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(36, '*636', '87383247', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(37, '*637', '3113604575', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(38, '*638', '8080328282222', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(39, '*639', '018000941414', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(40, '*640', '8080328282141', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(41, '*641', '8080328283050', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(42, '*642', '06818488', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(43, '*643', '06818900', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(44, '*644', '3136972015', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(45, '*645', '3165263248', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(46, '*646', '3146609931', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(47, '*647', '3108313515', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(48, '*648', '3105174344', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(49, '*649', '8080328293936', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(50, '*650', '8080363363977', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(51, '*651', '8080328258330', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(52, '*652', '808032293856', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(53, '*653', '3108243368', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(54, '*654', '8080328281598', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(55, '*655', '0112', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(56, '*656', '0119', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(57, '*657', '8080325166958', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(58, '*658', '8080328234175', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(59, '*659', '8080325561444', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(60, '*660', '3147711800', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(61, '*661', '8080327217605', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(62, '*662', '8080327246046', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(63, '*663', '8080327798083', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(64, '*664', '3155146648', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(65, '*665', '3137659344', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(66, '*666', '3207253403', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(67, '*667', '3137321359', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(68, '*668', '3113474171', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(69, '*669', '3137103270', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(70, '*670', '3113150233', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(71, '*671', '3104212242', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(72, '*672', '8080328259364', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(73, '*673', '018000511414', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(74, '*674', '3113940634', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(75, '*675', '3137354714', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(76, '*676', '3117466954', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(77, '*677', '3113165264', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(78, '*678', '52840048', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(79, '*679', '3113580500', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(80, '*680', '3165674043', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(81, '*681', '3117466343', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(82, '*682', '06644320', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(83, '*683', '3108218670', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(84, '*684', '3174375534', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(85, '*685', '3103754044', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(86, '*686', '3116384808', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(87, '*687', '05543543', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(88, '*688', '3175380419', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(89, '*689', '3007762483', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(90, '*690', '3113220573', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(91, '*691', '3113150257', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(92, '*692', '3113150260', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(93, '*693', '3113150258', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(94, '*694', '3122137892', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(95, '*695', '22718986', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(96, '*696', '3136406498', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(97, '*697', '3113150247', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(98, '*698', '4476028', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(99, '*699', '06848686', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(100, '*700', '3155711314', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(101, '*701', '8080328294283', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(102, '*702', '3135322046', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(103, '*703', '3105174355', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(104, '*704', '3145951490', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(105, '*705', '3206547338', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(106, '*706', '3206862707', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(107, '*707', '06686528', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(108, '*708', '3122894792', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(109, '*709', '3154813773', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(110, '*710', '3113165273', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(111, '*711', '3206454555', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(112, '*712', '3137409676', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(113, '*713', '3155500549', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(114, '*714', '3206750545', '2012-01-13 17:07:05', '2012-01-13 17:07:05'),
(115, '*715', '3206750562', '2012-01-13 17:07:06', '2012-01-13 17:07:06'),
(116, '*716', '8080328293603', '2012-01-13 17:07:06', '2012-01-13 17:07:06'),
(117, '*717', '04898900', '2012-01-13 17:07:06', '2012-01-13 17:07:06'),
(120, '*800', '93307737', '2012-01-13 17:43:57', '2012-01-13 17:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 144),
(90, 45, NULL, NULL, 'parseData', 73, 74),
(13, 1, NULL, NULL, 'Users', 2, 33),
(14, 13, NULL, NULL, 'login', 3, 4),
(15, 13, NULL, NULL, 'logout', 5, 6),
(23, 13, NULL, NULL, 'view', 7, 8),
(24, 13, NULL, NULL, 'edit', 9, 10),
(25, 13, NULL, NULL, 'admin_login', 11, 12),
(26, 13, NULL, NULL, 'admin_logout', 13, 14),
(27, 13, NULL, NULL, 'admin_index', 15, 16),
(28, 13, NULL, NULL, 'admin_view', 17, 18),
(29, 13, NULL, NULL, 'admin_add', 19, 20),
(30, 13, NULL, NULL, 'admin_edit', 21, 22),
(31, 13, NULL, NULL, 'admin_delete', 23, 24),
(32, 13, NULL, NULL, 'initAcl', 25, 26),
(33, 1, NULL, NULL, 'AclExtras', 34, 35),
(34, 1, NULL, NULL, 'SipDispositivos', 36, 57),
(35, 34, NULL, NULL, 'index', 37, 38),
(36, 34, NULL, NULL, 'view', 39, 40),
(37, 34, NULL, NULL, 'add', 41, 42),
(38, 34, NULL, NULL, 'edit', 43, 44),
(39, 34, NULL, NULL, 'delete', 45, 46),
(40, 34, NULL, NULL, 'admin_index', 47, 48),
(41, 34, NULL, NULL, 'admin_view', 49, 50),
(42, 34, NULL, NULL, 'admin_add', 51, 52),
(43, 34, NULL, NULL, 'admin_edit', 53, 54),
(44, 34, NULL, NULL, 'admin_delete', 55, 56),
(45, 1, NULL, NULL, 'Cdrs', 58, 75),
(46, 45, NULL, NULL, 'reporteGeneral', 59, 60),
(47, 45, NULL, NULL, 'reporteExtension', 61, 62),
(48, 45, NULL, NULL, 'reporteNumeroOrigen', 63, 64),
(49, 45, NULL, NULL, 'reporteNumeroDestino', 65, 66),
(50, 45, NULL, NULL, 'reporteDepartamento', 67, 68),
(51, 45, NULL, NULL, 'reporteCentroCosto', 69, 70),
(52, 45, NULL, NULL, 'reporte', 71, 72),
(53, 1, NULL, NULL, 'CostCenters', 76, 97),
(54, 53, NULL, NULL, 'index', 77, 78),
(55, 53, NULL, NULL, 'view', 79, 80),
(56, 53, NULL, NULL, 'add', 81, 82),
(57, 53, NULL, NULL, 'edit', 83, 84),
(58, 53, NULL, NULL, 'delete', 85, 86),
(59, 53, NULL, NULL, 'admin_index', 87, 88),
(60, 53, NULL, NULL, 'admin_view', 89, 90),
(61, 53, NULL, NULL, 'admin_add', 91, 92),
(62, 53, NULL, NULL, 'admin_edit', 93, 94),
(63, 53, NULL, NULL, 'admin_delete', 95, 96),
(64, 1, NULL, NULL, 'Departments', 98, 119),
(65, 64, NULL, NULL, 'index', 99, 100),
(66, 64, NULL, NULL, 'view', 101, 102),
(67, 64, NULL, NULL, 'add', 103, 104),
(68, 64, NULL, NULL, 'edit', 105, 106),
(69, 64, NULL, NULL, 'delete', 107, 108),
(70, 64, NULL, NULL, 'admin_index', 109, 110),
(71, 64, NULL, NULL, 'admin_view', 111, 112),
(72, 64, NULL, NULL, 'admin_add', 113, 114),
(73, 64, NULL, NULL, 'admin_edit', 115, 116),
(74, 64, NULL, NULL, 'admin_delete', 117, 118),
(75, 13, NULL, NULL, 'verificarAcceso', 27, 28),
(76, 13, NULL, NULL, 'index', 29, 30),
(77, 1, NULL, NULL, 'Abbreviates', 120, 143),
(78, 77, NULL, NULL, 'admin_fillDB', 121, 122),
(79, 77, NULL, NULL, 'index', 123, 124),
(80, 77, NULL, NULL, 'view', 125, 126),
(81, 77, NULL, NULL, 'add', 127, 128),
(82, 77, NULL, NULL, 'edit', 129, 130),
(83, 77, NULL, NULL, 'delete', 131, 132),
(84, 77, NULL, NULL, 'admin_index', 133, 134),
(85, 77, NULL, NULL, 'admin_view', 135, 136),
(86, 77, NULL, NULL, 'admin_add', 137, 138),
(87, 77, NULL, NULL, 'admin_edit', 139, 140),
(88, 77, NULL, NULL, 'admin_delete', 141, 142),
(89, 13, NULL, NULL, 'userRedirect', 31, 32);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Role', 1, 'administradores', 1, 4),
(2, NULL, 'Role', 2, 'usuarios', 5, 8),
(3, 1, 'User', 1, NULL, 2, 3),
(4, 2, 'User', 2, NULL, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 15, '1', '1', '1', '1'),
(4, 2, 35, '1', '1', '1', '1'),
(5, 2, 36, '1', '1', '1', '1'),
(6, 2, 54, '1', '1', '1', '1'),
(7, 2, 55, '1', '1', '1', '1'),
(8, 2, 65, '1', '1', '1', '1'),
(9, 2, 66, '1', '1', '1', '1'),
(10, 2, 79, '1', '1', '1', '1'),
(11, 2, 80, '1', '1', '1', '1'),
(12, 2, 90, '1', '1', '1', '1'),
(13, 2, 52, '1', '1', '1', '1'),
(14, 2, 46, '1', '1', '1', '1'),
(15, 2, 47, '1', '1', '1', '1'),
(16, 2, 48, '1', '1', '1', '1'),
(17, 2, 49, '1', '1', '1', '1'),
(18, 2, 50, '1', '1', '1', '1'),
(19, 2, 51, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cdr`
--

CREATE TABLE IF NOT EXISTS `cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `calldate` datetime DEFAULT NULL,
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `cdr`
--

INSERT INTO `cdr` (`id`, `calldate`, `clid`, `src`, `dst`, `dcontext`, `channel`, `dstchannel`, `lastapp`, `lastdata`, `duration`, `billsec`, `disposition`, `amaflags`, `accountcode`, `userfield`) VALUES
(1, '2011-12-16 18:29:21', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/94898900', 7, 7, 'ANSWERED', 2, '', ''),
(2, '2011-12-16 18:48:23', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/94898900', 5, 5, 'ANSWERED', 2, '', ''),
(3, '2011-12-16 18:49:54', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/94898900', 6, 6, 'ANSWERED', 2, '', ''),
(4, '2011-12-16 18:55:27', '"Pedro" <107>', '107', 's', 'disponible', 'SIP/107-0000000a', 'SIP/107-0000000b', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 4, 0, 'NO ANSWER', 3, '', ''),
(5, '2011-12-16 18:57:39', '"Pedro" <107>', '107', '107', 'localnacional', 'SIP/107-0000000c', 'SIP/107-0000000d', 'Dial', 'SIP/107,38,tr', 23, 18, 'ANSWERED', 3, '', ''),
(6, '2011-12-16 18:59:21', '"Pedro" <107>', '107', 's', 'disponible', 'SIP/107-0000000e', 'SIP/107-0000000f', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 5, 0, 'NO ANSWER', 3, '', ''),
(7, '2011-12-16 18:59:57', '"Pedro" <107>', '107', '7200', 'localnacional', 'SIP/107-00000010', '', 'MeetMe', '200', 1, 1, 'ANSWERED', 3, '', ''),
(8, '2011-12-16 19:00:17', '"Pedro" <107>', '107', '7200', 'localnacional', 'SIP/107-00000011', '', 'MeetMe', '200', 1, 1, 'ANSWERED', 3, '', ''),
(9, '2011-12-16 19:00:36', '"Pedro" <107>', '107', '7201', 'localnacional', 'SIP/107-00000012', '', 'MeetMe', '201', 0, 0, 'ANSWERED', 3, '', ''),
(10, '2011-12-24 06:06:29', '"107" <107>', '107', 's', 'disponible', 'SIP/107-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 3, 0, 'NO ANSWER', 3, '', ''),
(11, '2011-12-24 06:07:00', '"107" <107>', '107', '93307737', 'localnacional', 'SIP/107-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/93307737', 5, 4, 'ANSWERED', 2, '', ''),
(12, '2011-12-24 06:07:16', '"107" <107>', '107', '93955242', 'localnacional', 'SIP/107-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/93955242', 6, 6, 'ANSWERED', 2, '', ''),
(13, '2011-12-29 01:31:39', '"Bloom" <107>', '107', 's', 'disponible', 'SIP/107-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 3, 0, 'NO ANSWER', 3, '', ''),
(14, '2011-12-29 01:33:36', '107', '107', '93955242', 'localnacional', 'SIP/107-00000003', 'SIP/24898940-00000004', 'Dial', 'SIP/24898940/93955242', 8, 7, 'ANSWERED', 2, '', ''),
(15, '2011-12-29 01:35:28', '107', '107', '93955242', 'localnacional', 'SIP/107-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/93955242', 9, 8, 'ANSWERED', 2, '', ''),
(16, '2011-12-29 03:14:36', '107', '107', '107', 'localnacional', 'SIP/107-00000000', 'SIP/107-00000001', 'Dial', 'SIP/107,38,tr', 7, 0, 'NO ANSWER', 3, '', ''),
(17, '2011-12-29 04:16:39', '107', '107', '107', 'interno', 'SIP/107-00000004', 'SIP/107-00000005', 'Dial', 'SIP/107,38,tr', 9, 0, 'NO ANSWER', 3, '', ''),
(18, '2011-12-29 04:17:49', '107', '107', '107', 'interno', 'SIP/107-00000006', 'SIP/107-00000007', 'Dial', 'SIP/107,38,tr', 6, 0, 'NO ANSWER', 3, '', ''),
(19, '2011-12-29 04:18:18', '107', '107', '93307737', 'localnacional', 'SIP/107-00000008', 'SIP/24898940-00000009', 'Dial', 'SIP/24898940/93307737', 4, 3, 'ANSWERED', 2, '', ''),
(20, '2011-12-29 04:18:45', '107', '107', '93955242', 'localnacional', 'SIP/107-0000000a', 'SIP/24898940-0000000b', 'Dial', 'SIP/24898940/93955242', 1, 0, 'ANSWERED', 2, '', ''),
(21, '2011-12-29 05:00:51', '195', '195', 's', 'disponible', 'SIP/195-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 4, 0, 'NO ANSWER', 3, '', ''),
(22, '2011-12-29 05:02:11', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-00000003', 'SIP/107-00000004', 'Dial', 'SIP/107,38,tr', 6, 0, 'NO ANSWER', 3, '', ''),
(23, '2011-12-29 05:02:34', '107', '107', 's', 'disponible', 'SIP/107-00000005', 'SIP/195-00000006', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 5, 0, 'NO ANSWER', 3, '', ''),
(24, '2011-12-29 05:03:02', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000007', 'SIP/24898940-00000008', 'Dial', 'SIP/24898940/93307737', 2, 2, 'ANSWERED', 2, '', ''),
(25, '2011-12-29 05:03:38', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000009', 'SIP/24898940-0000000a', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
(26, '2011-12-29 05:03:42', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-0000000b', 'SIP/107-0000000c', 'Dial', 'SIP/107,38,tr', 3, 0, 'NO ANSWER', 3, '', ''),
(27, '2011-12-29 05:04:41', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-0000000d', 'SIP/107-0000000e', 'Dial', 'SIP/107,38,tr', 4, 0, 'NO ANSWER', 3, '', ''),
(28, '2011-12-29 05:04:50', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-0000000f', 'SIP/195-00000010', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 2, 0, 'NO ANSWER', 3, '', ''),
(29, '2011-12-29 05:05:04', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-00000011', 'SIP/195-00000012', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 6, 0, 'NO ANSWER', 3, '', ''),
(30, '2011-12-29 05:05:19', '107', '107', '195', 'localnacional', 'SIP/107-00000013', 'SIP/195-00000014', 'Dial', 'SIP/195,38,tr', 4, 0, 'NO ANSWER', 3, '', ''),
(31, '2012-01-02 18:09:03', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-00000000', 'SIP/195-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 2, 0, 'NO ANSWER', 3, '', ''),
(32, '2012-01-02 18:09:09', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/93955242', 7, 6, 'ANSWERED', 2, '', ''),
(33, '2012-01-02 18:19:28', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/93955242', 6, 5, 'ANSWERED', 2, '', ''),
(34, '2012-01-02 18:19:49', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/93955242', 7, 7, 'ANSWERED', 2, '', ''),
(35, '2012-01-02 18:44:12', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000008', 'SIP/24898940-00000009', 'Dial', 'SIP/24898940/93955242', 2, 2, 'ANSWERED', 2, '', ''),
(36, '2012-01-02 18:46:33', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-0000000a', 'SIP/24898940-0000000b', 'Dial', 'SIP/24898940/93955242', 2, 2, 'ANSWERED', 2, '', ''),
(37, '2012-01-02 18:53:24', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-0000000c', 'SIP/24898940-0000000d', 'Dial', 'SIP/24898940/93955242', 3, 2, 'ANSWERED', 2, '', ''),
(38, '2012-01-03 03:18:27', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000003', 'SIP/24898940-00000004', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
(39, '2012-01-03 03:24:44', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000005', 'SIP/24898940-00000006', 'Dial', 'SIP/24898940/93307737', 2, 1, 'ANSWERED', 2, '', ''),
(40, '2012-01-03 03:24:58', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000007', 'SIP/24898940-00000008', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
(41, '2012-01-03 03:31:45', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000009', 'SIP/24898940-0000000a', 'Dial', 'SIP/24898940/93307737', 2, 1, 'ANSWERED', 2, '', ''),
(42, '2012-01-03 03:40:28', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-0000000b', 'SIP/24898940-0000000c', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
(43, '2012-01-11 05:24:45', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000000', 'SIP/24898940-00000001', 'Dial', 'SIP/24898940/93307737', 19, 19, 'NO ANSWER', 2, '', ''),
(44, '2012-01-11 05:25:08', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/93307737', 5, 5, 'NO ANSWER', 2, '', ''),
(45, '2012-01-11 05:25:26', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-00000005', 'SIP/195-00000006', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 2, 0, 'NO ANSWER', 3, '', ''),
(46, '2012-01-11 05:25:33', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000007', 'SIP/24898940-00000008', 'Dial', 'SIP/24898940/93307737', 13, 13, 'NO ANSWER', 2, '', ''),
(47, '2012-01-12 04:27:47', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000000', 'SIP/24898940-00000001', 'Dial', 'SIP/24898940/93307737', 8, 8, 'NO ANSWER', 2, '', ''),
(48, '2012-01-12 04:39:50', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000003', 'SIP/24898940-00000004', 'Dial', 'SIP/24898940/93307737', 4, 4, 'NO ANSWER', 2, '', ''),
(49, '2012-01-12 07:00:59', '"Bloom" <196>', '196', '93307737', 'localnacional', 'SIP/196-00000005', 'SIP/24898940-00000006', 'Dial', 'SIP/24898940/93307737', 9, 9, 'NO ANSWER', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cost_centers`
--

CREATE TABLE IF NOT EXISTS `cost_centers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cost_centers`
--

INSERT INTO `cost_centers` (`id`, `name`, `description`, `created`, `updated`) VALUES
(1, 'CCenter 1', '', '2012-01-12 01:01:13', '2012-01-12 01:08:52'),
(3, 'CCenter 2', '', '2012-01-12 01:02:56', '2012-01-12 01:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `created`, `updated`) VALUES
(1, 'Dep 1', '', '2012-01-12 00:38:55', '2012-01-12 00:48:48'),
(3, 'Dep 2', '', '2012-01-12 00:44:46', '2012-01-12 00:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE IF NOT EXISTS `privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `created`, `updated`) VALUES
(1, 'interno', NULL, NULL),
(2, 'interno2', NULL, NULL),
(3, 'interno3', NULL, NULL),
(4, 'interno4', NULL, NULL),
(5, 'local', NULL, NULL),
(6, 'localTemp1', NULL, NULL),
(7, 'privilegio2', NULL, NULL),
(8, 'restringido', NULL, NULL),
(9, 'DF', NULL, NULL),
(10, 'localnacional', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `queue_members`
--

CREATE TABLE IF NOT EXISTS `queue_members` (
  `uniqueid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `membername` varchar(40) DEFAULT NULL,
  `queue_name` varchar(128) DEFAULT NULL,
  `interface` varchar(128) DEFAULT NULL,
  `penalty` int(11) DEFAULT NULL,
  `paused` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`),
  UNIQUE KEY `queue_interface` (`queue_name`,`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE IF NOT EXISTS `queues` (
  `name` varchar(128) NOT NULL,
  `musiconhold` varchar(128) DEFAULT NULL,
  `announce` varchar(128) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `monitor_type` varchar(50) NOT NULL,
  `monitor_format` varchar(128) DEFAULT NULL,
  `queue_youarenext` varchar(128) DEFAULT NULL,
  `queue_thereare` varchar(128) DEFAULT NULL,
  `queue_callswaiting` varchar(128) DEFAULT NULL,
  `queue_holdtime` varchar(128) DEFAULT NULL,
  `queue_minutes` varchar(128) DEFAULT NULL,
  `queue_seconds` varchar(128) DEFAULT NULL,
  `queue_lessthan` varchar(128) DEFAULT NULL,
  `queue_thankyou` varchar(128) DEFAULT NULL,
  `queue_reporthold` varchar(128) DEFAULT NULL,
  `announce_frequency` int(11) DEFAULT NULL,
  `announce_round_seconds` int(11) DEFAULT NULL,
  `announce_holdtime` varchar(128) DEFAULT NULL,
  `retry` int(11) DEFAULT NULL,
  `wrapuptime` int(11) DEFAULT NULL,
  `maxlen` int(11) DEFAULT NULL,
  `servicelevel` int(11) DEFAULT NULL,
  `strategy` varchar(128) DEFAULT NULL,
  `joinempty` varchar(128) DEFAULT NULL,
  `leavewhenempty` varchar(128) DEFAULT NULL,
  `eventmemberstatus` varchar(4) DEFAULT NULL,
  `eventwhencalled` varchar(4) DEFAULT NULL,
  `reportholdtime` tinyint(1) DEFAULT NULL,
  `memberdelay` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `timeoutrestart` tinyint(1) DEFAULT NULL,
  `periodic_announce` varchar(50) DEFAULT NULL,
  `periodic_announce_frequency` int(11) DEFAULT NULL,
  `ringinuse` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `prueba` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created`, `updated`, `prueba`) VALUES
(1, 'administrador', NULL, NULL, NULL, NULL),
(2, 'usuario', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sip_dispositivos`
--

CREATE TABLE IF NOT EXISTS `sip_dispositivos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `host` varchar(31) NOT NULL DEFAULT '',
  `nat` varchar(5) NOT NULL DEFAULT 'no',
  `type` enum('user','peer','friend') NOT NULL DEFAULT 'friend',
  `accountcode` varchar(20) DEFAULT NULL,
  `amaflags` varchar(13) DEFAULT NULL,
  `callgroup` varchar(10) DEFAULT NULL,
  `callerid` varchar(80) DEFAULT NULL,
  `notifyhold` varchar(5) DEFAULT 'yes',
  `notifybusy` varchar(5) DEFAULT 'yes',
  `notifyringing` varchar(5) DEFAULT 'yes',
  `allowsubscribe` varchar(5) DEFAULT 'yes',
  `subscribecontext` varchar(80) DEFAULT 'interno',
  `call-limit` int(5) DEFAULT '99',
  `cancallforward` char(3) DEFAULT 'yes',
  `canreinvite` char(3) DEFAULT 'yes',
  `context` varchar(80) DEFAULT NULL,
  `defaultip` varchar(15) DEFAULT NULL,
  `dtmfmode` varchar(7) DEFAULT NULL,
  `fromuser` varchar(80) DEFAULT NULL,
  `fromdomain` varchar(80) DEFAULT NULL,
  `insecure` varchar(4) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `mailbox` varchar(50) DEFAULT NULL,
  `md5secret` varchar(80) DEFAULT NULL,
  `deny` varchar(95) DEFAULT NULL,
  `permit` varchar(95) DEFAULT NULL,
  `mask` varchar(95) DEFAULT NULL,
  `musiconhold` varchar(100) DEFAULT NULL,
  `pickupgroup` varchar(10) DEFAULT NULL,
  `qualify` char(3) DEFAULT NULL,
  `regexten` varchar(80) DEFAULT NULL,
  `restrictcid` char(3) DEFAULT NULL,
  `rtptimeout` char(3) DEFAULT NULL,
  `rtpholdtimeout` char(3) DEFAULT NULL,
  `secret` varchar(80) DEFAULT NULL,
  `setvar` varchar(100) DEFAULT NULL,
  `disallow` varchar(100) DEFAULT 'all',
  `allow` varchar(100) DEFAULT 'g729;ilbc;gsm;ulaw;alaw',
  `fullcontact` varchar(80) NOT NULL DEFAULT '',
  `ipaddr` varchar(15) NOT NULL DEFAULT '',
  `port` smallint(5) unsigned NOT NULL DEFAULT '0',
  `regseconds` int(11) NOT NULL DEFAULT '0',
  `t38pt_usertpsource` enum('yes','no') DEFAULT NULL,
  `registertrying` enum('yes','no') DEFAULT 'yes',
  `transport` enum('tcp','udp','tcp,udp') DEFAULT NULL,
  `lastms` int(11) NOT NULL,
  `regserver` varchar(100) NOT NULL,
  `username` varchar(80) NOT NULL DEFAULT '',
  `useragent` varchar(50) NOT NULL,
  `exten` varchar(20) DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `department_id` int(11) DEFAULT NULL,
  `cost_center_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2018 ;

--
-- Dumping data for table `sip_dispositivos`
--

INSERT INTO `sip_dispositivos` (`id`, `name`, `host`, `nat`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `notifyhold`, `notifybusy`, `notifyringing`, `allowsubscribe`, `subscribecontext`, `call-limit`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regseconds`, `t38pt_usertpsource`, `registertrying`, `transport`, `lastms`, `regserver`, `username`, `useragent`, `exten`, `priority`, `department_id`, `cost_center_id`) VALUES
(1, '101', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '101@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, 'yes', 'yes', NULL, 0, '', '101', '', NULL, 0, NULL, NULL),
(2, '102', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio2', NULL, NULL, NULL, NULL, NULL, NULL, '102@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '102', '', NULL, 0, NULL, NULL),
(3, '103', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '103@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '103', '', NULL, 0, NULL, NULL),
(5, '105', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '105@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '105', '', NULL, 0, NULL, NULL),
(6, '106', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '106@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:106@192.168.20.20:31858;rinstance=3338f88f2ecfcb44', '192.168.20.20', 31858, 1307131605, NULL, 'yes', NULL, 0, '', '106', 'eyeBeam release 1102u stamp 52345', NULL, 0, NULL, NULL),
(7, '107', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localnacional', NULL, NULL, NULL, NULL, NULL, NULL, '107@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '107', '', NULL, 0, NULL, NULL),
(2015, '195', 'dynamic', 'yes', 'friend', '', '', '', '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localnacional', '', '', '', '', '', '', '195@default', '', '', '', '', '', '', '', '', '', '', '', 'met0d10*', '', 'all', 'ulaw;alaw;gsm', 'sip:195@192.168.1.6:53080;rinstance=fba63ccdc4a49c7f', '0.0.0.0', 53080, 1326362095, NULL, 'yes', NULL, 0, '', '195', '3CXPhone 6.0.20943.0', '', 0, NULL, NULL),
(10, '110', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '110@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, 'all', 'ulaw;alaw;gsm', 'sip:110@192.168.20.29:22630;rinstance=2694fe897aaf4a7c', '192.168.20.29', 22630, 1307130942, NULL, 'yes', NULL, 0, '', '110', 'eyeBeam release 1003s stamp 31159', NULL, 0, NULL, NULL),
(11, '111', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '111@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307123474, NULL, 'yes', NULL, 0, '', '111', '', NULL, 0, NULL, NULL),
(12, '112', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '112@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1302840736, NULL, 'yes', NULL, 0, '', '112', '', NULL, 0, NULL, NULL),
(13, '113', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '113@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '113', '', NULL, 0, NULL, NULL),
(14, '114', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '114@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '114', '', NULL, 0, NULL, NULL),
(15, '115', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '4898915', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localTemp1', NULL, NULL, NULL, NULL, NULL, NULL, '115@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:115@190.1.210.160:5061', '190.1.210.160', 5061, 1307131527, NULL, 'yes', NULL, 0, '', '115', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0, NULL, NULL),
(16, '116', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '4898916', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '116@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:116@192.168.0.171:5060', '186.87.154.245', 59317, 1307129793, NULL, 'yes', NULL, 0, '', '116', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0, NULL, NULL),
(17, '117', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Hogar Diego Barreto 117', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '117@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:117@192.168.0.171:5061', '186.87.154.245', 62879, 1307129793, NULL, 'yes', NULL, 0, '', '117', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0, NULL, NULL),
(18, '118', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '118@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '118', '', NULL, 0, NULL, NULL),
(19, '119', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Metodio', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '119@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '119', '', NULL, 0, NULL, NULL),
(20, '120', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '120@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307019017, NULL, 'yes', NULL, 0, '', '120', '', NULL, 0, NULL, NULL),
(21, '121', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Oscar varela (Ibague)', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno5', NULL, NULL, NULL, NULL, NULL, NULL, '121@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1sc0rv0rel0***', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307128110, NULL, 'yes', NULL, 0, '', '121', '', NULL, 0, NULL, NULL),
(22, '122', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '122@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '122', '', NULL, 0, NULL, NULL),
(23, '123', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegiopruebaDF', NULL, NULL, NULL, NULL, NULL, NULL, '123@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '123', '', NULL, 0, NULL, NULL),
(24, '124', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Alberto Kadoch', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio3', NULL, NULL, NULL, NULL, NULL, NULL, '124@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:124@69.92.215.113:5060', '69.92.215.113', 5060, 1307132207, NULL, 'yes', NULL, 0, '', '124', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0, NULL, NULL),
(25, '125', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '125@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '125', '', NULL, 0, NULL, NULL),
(26, '126', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '126@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '126', '', NULL, 0, NULL, NULL),
(27, '127', 'dynamic', 'no', 'friend', NULL, NULL, NULL, 'Dayan', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '127@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1302727399, NULL, 'yes', NULL, 0, '', '127', '', NULL, 0, NULL, NULL),
(28, '128', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '128@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '128', '', NULL, 0, NULL, NULL),
(29, '129', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '129@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '129', '', NULL, 0, NULL, NULL),
(30, '130', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '130@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1306874259, NULL, 'yes', NULL, 0, '', '130', '', NULL, 0, NULL, NULL),
(31, '131', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '131@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(32, '132', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '132@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '132', '', NULL, 0, NULL, NULL),
(33, '133', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '133@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '133', '', NULL, 0, NULL, NULL),
(34, '134', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '134@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '134', '', NULL, 0, NULL, NULL),
(35, '135', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '135@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '135', '', NULL, 0, NULL, NULL),
(36, '136', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '136@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '136', '', NULL, 0, NULL, NULL),
(37, '137', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '137@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '137', '', NULL, 0, NULL, NULL),
(38, '138', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '138@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '138', '', NULL, 0, NULL, NULL),
(39, '139', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '139@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '139', '', NULL, 0, NULL, NULL),
(40, '140', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Arley', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'local', NULL, NULL, NULL, NULL, NULL, NULL, '140@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '140', '', NULL, 0, NULL, NULL),
(41, '141', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '141@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(42, '142', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '142@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(43, '143', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '143@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '143', '', NULL, 0, NULL, NULL),
(44, '144', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '144@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'g729', 'sip:144@192.168.20.31:5061', '192.168.20.31', 5061, 1307112188, NULL, 'yes', NULL, 0, '', '144', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0, NULL, NULL),
(45, '145', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno4', NULL, NULL, NULL, NULL, NULL, NULL, '145@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '145', '', NULL, 0, NULL, NULL),
(46, '104', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '104@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'g729', 'sip:104@192.168.20.31:5060', '192.168.20.31', 5060, 1307131356, NULL, 'yes', NULL, 0, '', '104', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0, NULL, NULL),
(47, '200', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '200@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '200', '', NULL, 0, NULL, NULL),
(48, '201', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '201@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '201', '', NULL, 0, NULL, NULL),
(49, '202', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '202@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '202', '', NULL, 0, NULL, NULL),
(50, '203', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '203@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '203', '', NULL, 0, NULL, NULL),
(51, '204', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '204@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '204', '', NULL, 0, NULL, NULL),
(52, '205', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '205@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '205', '', NULL, 0, NULL, NULL),
(53, '206', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '206@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '206', '', NULL, 0, NULL, NULL),
(54, '207', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '207@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '207', '', NULL, 0, NULL, NULL),
(55, '208', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '208@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '208', '', NULL, 0, NULL, NULL),
(56, '209', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '209@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '209', '', NULL, 0, NULL, NULL),
(57, '210', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '210@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '210', '', NULL, 0, NULL, NULL),
(58, '211', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '211@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '211', '', NULL, 0, NULL, NULL),
(59, '212', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno2', NULL, NULL, NULL, NULL, NULL, NULL, '212@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '212', '', NULL, 0, NULL, NULL),
(60, '213', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '213@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '213', '', NULL, 0, NULL, NULL),
(61, '214', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '214@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '214', '', NULL, 0, NULL, NULL),
(62, '215', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '215@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '215', '', NULL, 0, NULL, NULL),
(63, '216', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '216@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '216', '', NULL, 0, NULL, NULL),
(64, '217', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '217@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '217', '', NULL, 0, NULL, NULL),
(65, '218', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '218@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '218', '', NULL, 0, NULL, NULL),
(66, '219', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '219@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '219', '', NULL, 0, NULL, NULL),
(67, '220', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'restringido', NULL, NULL, NULL, NULL, NULL, NULL, '220@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '220', '', NULL, 0, NULL, NULL),
(68, '221', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '221@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '221', '', NULL, 0, NULL, NULL),
(69, '222', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '222@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '222', '', NULL, 0, NULL, NULL),
(70, '223', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '223@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '223', '', NULL, 0, NULL, NULL),
(71, '224', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '224@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '224', '', NULL, 0, NULL, NULL),
(72, '225', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '225@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '225', '', NULL, 0, NULL, NULL),
(73, '226', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '226@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '226', '', NULL, 0, NULL, NULL),
(74, '227', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '227@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '227', '', NULL, 0, NULL, NULL),
(75, '228', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '228@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '228', '', NULL, 0, NULL, NULL),
(76, '229', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '229@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '229', '', NULL, 0, NULL, NULL),
(77, '230', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '230@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '230', '', NULL, 0, NULL, NULL),
(78, '231', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '231@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '231', '', NULL, 0, NULL, NULL),
(79, '232', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '232@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '232', '', NULL, 0, NULL, NULL),
(80, '233', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '233@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '233', '', NULL, 0, NULL, NULL),
(81, '234', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '234@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '234', '', NULL, 0, NULL, NULL),
(82, '235', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '235@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '235', '', NULL, 0, NULL, NULL),
(83, '236', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '236@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '236', '', NULL, 0, NULL, NULL),
(84, '237', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '237@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '237', '', NULL, 0, NULL, NULL),
(85, '238', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '238@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '238', '', NULL, 0, NULL, NULL),
(86, '239', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '239@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '239', '', NULL, 0, NULL, NULL),
(87, '240', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '240@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '240', '', NULL, 0, NULL, NULL),
(88, '241', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '241@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '241', '', NULL, 0, NULL, NULL),
(89, '242', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '242@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '242', '', NULL, 0, NULL, NULL),
(90, '243', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '243@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '243', '', NULL, 0, NULL, NULL),
(91, '244', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '244@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '244', '', NULL, 0, NULL, NULL),
(92, '245', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '245@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '245', '', NULL, 0, NULL, NULL),
(307, '306', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '306@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:306@190.125.113.29:36607;transport=UDP', '190.125.113.29', 36607, 1307130178, NULL, 'yes', NULL, 0, '', '306', 'Bria Android 1.0.3', NULL, 0, NULL, NULL),
(301, '300', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '300@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(302, '301', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '301@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:301@192.168.20.23:16002;rinstance=931ce515197166aa', '192.168.20.23', 16002, 1307132603, NULL, 'yes', NULL, 0, '', '301', 'eyeBeam release 1100z stamp 47739', NULL, 0, NULL, NULL),
(303, '302', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '302@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:mexzglpy@192.168.20.24:61882', '192.168.20.24', 61882, 1307129964, NULL, 'yes', NULL, 0, '', 'mexzglpy', 'Blink 0.24.1 (MacOSX)', NULL, 0, NULL, NULL),
(304, '303', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '303@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 1306246237, NULL, 'yes', NULL, 0, '', '303', '', NULL, 0, NULL, NULL),
(305, '304', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '304@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:304@192.168.20.194:47850;rinstance=7264d0429a7a6b34', '192.168.20.194', 47850, 1307132403, NULL, 'yes', NULL, 0, '', '304', 'eyeBeam release 1102u stamp 52345', NULL, 0, NULL, NULL),
(306, '305', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '305@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(2006, '590', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '590@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(308, '307', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '307@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(309, '308', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '308@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:308@392.368.2.9:3061', '392.368.2.9', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '308', '', NULL, 0, NULL, NULL),
(310, '309', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '309@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:309@392.368.2.36:3060', '392.368.2.36', 3060, 2147483647, NULL, 'yes', NULL, 0, '', '309', '', NULL, 0, NULL, NULL),
(311, '310', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio4', NULL, NULL, NULL, NULL, NULL, NULL, '310@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:310@192.168.20.31:5061', '192.168.20.31', 5061, 1307131356, NULL, 'yes', NULL, 0, '', '310', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0, NULL, NULL),
(312, '311', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '311@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:311@192.168.20.200', '192.168.20.200', 5060, 1307130093, NULL, 'yes', NULL, 0, '', '311', 'Panasonic KX-HGT100CE/01.34', NULL, 0, NULL, NULL),
(313, '312', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '312@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:322@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '312', '', NULL, 0, NULL, NULL),
(314, '313', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '313@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:333@392.368.2.36:3860', '392.368.2.36', 3860, 2147483647, NULL, 'yes', NULL, 0, '', '313', '', NULL, 0, NULL, NULL),
(315, '314', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '314@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:334@392.368.2.36:3861', '392.368.2.36', 3861, 2147483647, NULL, 'yes', NULL, 0, '', '314', '', NULL, 0, NULL, NULL),
(317, '315', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '315@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:335@392.368.2.36:3360', '392.368.2.36', 3360, 2147483647, NULL, 'yes', NULL, 0, '', '315', '', NULL, 0, NULL, NULL),
(318, '316', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '316@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(319, '317', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '317@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(320, '318', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '318@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:338@392.368.2.39:3061', '392.368.2.39', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '318', '', NULL, 0, NULL, NULL),
(321, '319', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '319@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(322, '320', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '320@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(323, '321', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '321@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '321', '', NULL, 0, NULL, NULL),
(324, '322', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '322@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '322', '', NULL, 0, NULL, NULL),
(325, '323', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '323@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(326, '324', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '324@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '324', '', NULL, 0, NULL, NULL),
(327, '325', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '325@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '325', '', NULL, 0, NULL, NULL),
(328, '326', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '326@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(329, '327', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '327@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '327', '', NULL, 0, NULL, NULL),
(330, '328', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '328@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '328', '', NULL, 0, NULL, NULL),
(331, '329', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '329@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '329', '', NULL, 0, NULL, NULL),
(332, '330', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '330@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:330@392.368.2.36:3061', '392.368.2.36', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '330', '', NULL, 0, NULL, NULL),
(333, '331', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '331@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:331@392.368.2.36:3360', '392.368.2.36', 3360, 2147483647, NULL, 'yes', NULL, 0, '', '331', '', NULL, 0, NULL, NULL),
(334, '332', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '332@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '332', '', NULL, 0, NULL, NULL),
(335, '333', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '333@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '333', '', NULL, 0, NULL, NULL),
(336, '334', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '334@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '334', '', NULL, 0, NULL, NULL),
(337, '335', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '335@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '335', '', NULL, 0, NULL, NULL),
(338, '336', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '336@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '336', '', NULL, 0, NULL, NULL);
INSERT INTO `sip_dispositivos` (`id`, `name`, `host`, `nat`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `notifyhold`, `notifybusy`, `notifyringing`, `allowsubscribe`, `subscribecontext`, `call-limit`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regseconds`, `t38pt_usertpsource`, `registertrying`, `transport`, `lastms`, `regserver`, `username`, `useragent`, `exten`, `priority`, `department_id`, `cost_center_id`) VALUES
(339, '337', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '337@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '337', '', NULL, 0, NULL, NULL),
(340, '338', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '338@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '338', '', NULL, 0, NULL, NULL),
(341, '339', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '339@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '339', '', NULL, 0, NULL, NULL),
(342, '340', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '340@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(343, '341', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '341@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:341@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '341', '', NULL, 0, NULL, NULL),
(344, '342', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '342@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(345, '343', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '343@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:343@392.368.2.36:3861', '392.368.2.36', 3861, 2147483647, NULL, 'yes', NULL, 0, '', '343', '', NULL, 0, NULL, NULL),
(346, '344', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '344@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '344', '', NULL, 0, NULL, NULL),
(347, '345', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '345@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '345', '', NULL, 0, NULL, NULL),
(348, '346', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '346@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '346', '', NULL, 0, NULL, NULL),
(349, '347', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '347@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '347', '', NULL, 0, NULL, NULL),
(350, '348', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '348@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '348', '', NULL, 0, NULL, NULL),
(351, '349', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '349@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '349', '', NULL, 0, NULL, NULL),
(352, '350', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '350@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '350', '', NULL, 0, NULL, NULL),
(353, '351', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '351@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:531@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '351', '', NULL, 0, NULL, NULL),
(354, '352', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '352@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:532@392.368.2.81:83936;rinstance=5ad037bda38fce9f', '392.368.2.81', 65535, 2147483647, NULL, 'yes', NULL, 0, '', '352', '', NULL, 0, NULL, NULL),
(355, '353', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '353@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '353', '', NULL, 0, NULL, NULL),
(356, '354', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '354@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '354', '', NULL, 0, NULL, NULL),
(357, '355', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '355@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '355', '', NULL, 0, NULL, NULL),
(358, '356', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '356@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '356', '', NULL, 0, NULL, NULL),
(359, '357', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '357@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '357', '', NULL, 0, NULL, NULL),
(360, '358', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '358@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '358', '', NULL, 0, NULL, NULL),
(361, '359', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '359@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '359', '', NULL, 0, NULL, NULL),
(362, '360', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '360@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '360', '', NULL, 0, NULL, NULL),
(363, '361', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '361@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '361', '', NULL, 0, NULL, NULL),
(364, '362', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '362@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '362', '', NULL, 0, NULL, NULL),
(365, '363', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '363@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '363', '', NULL, 0, NULL, NULL),
(366, '364', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '364@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '364', '', NULL, 0, NULL, NULL),
(367, '365', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '365@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '365', '', NULL, 0, NULL, NULL),
(368, '366', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '366@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '366', '', NULL, 0, NULL, NULL),
(369, '367', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '367@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '367', '', NULL, 0, NULL, NULL),
(370, '368', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '368@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '368', '', NULL, 0, NULL, NULL),
(371, '369', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '369@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '369', '', NULL, 0, NULL, NULL),
(372, '370', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '370@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:330@392.368.2.31:9736;rinstance=a8099c1a5341c3db', '392.368.2.31', 9736, 2147483647, NULL, 'yes', NULL, 0, '', '370', '', NULL, 0, NULL, NULL),
(373, '371', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '371@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:531@392.368.2.30:43648;rinstance=f8333393931c5b5b', '392.368.2.30', 43648, 2147483647, NULL, 'yes', NULL, 0, '', '371', '', NULL, 0, NULL, NULL),
(374, '372', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '372@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:532@392.368.2.32:80830;rinstance=6a1ed5f090afe464', '392.368.2.32', 65535, 2147483647, NULL, 'yes', NULL, 0, '', '372', '', NULL, 0, NULL, NULL),
(375, '373', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '373@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:533@392.368.2.34:40348;rinstance=48e2d889ecf2f532', '392.368.2.34', 40348, 2147483647, NULL, 'yes', NULL, 0, '', '373', '', NULL, 0, NULL, NULL),
(376, '374', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '374@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:534@392.368.2.7:347;rinstance=00b35c49bb6a3bc8', '392.368.2.7', 347, 2147483647, NULL, 'yes', NULL, 0, '', '374', '', NULL, 0, NULL, NULL),
(377, '375', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '375@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:735@392.368.2.38:38306;rinstance=38ac4c86f4ba9303', '392.368.2.38', 38306, 2147483647, NULL, 'yes', NULL, 0, '', '775', '', NULL, 0, NULL, NULL),
(378, '376', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '376@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '376', '', NULL, 0, NULL, NULL),
(379, '377', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '377@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '377', '', NULL, 0, NULL, NULL),
(380, '378', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '378@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '378', '', NULL, 0, NULL, NULL),
(381, '379', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '379@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '379', '', NULL, 0, NULL, NULL),
(382, '380', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '380@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '380', '', NULL, 0, NULL, NULL),
(383, '381', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '381@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '381', '', NULL, 0, NULL, NULL),
(384, '382', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '382@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '382', '', NULL, 0, NULL, NULL),
(385, '383', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '383@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '383', '', NULL, 0, NULL, NULL),
(386, '384', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '384@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '384', '', NULL, 0, NULL, NULL),
(387, '385', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '385@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '385', '', NULL, 0, NULL, NULL),
(388, '386', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '386@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '386', '', NULL, 0, NULL, NULL),
(389, '387', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '387@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '387', '', NULL, 0, NULL, NULL),
(390, '388', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '388@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '388', '', NULL, 0, NULL, NULL),
(391, '389', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '389@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '389', '', NULL, 0, NULL, NULL),
(392, '390', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '390@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0, NULL, NULL),
(393, '391', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '391@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '391', '', NULL, 0, NULL, NULL),
(394, '392', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '392@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '392', '', NULL, 0, NULL, NULL),
(395, '393', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '393@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '393', '', NULL, 0, NULL, NULL),
(396, '394', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '394@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '394', '', NULL, 0, NULL, NULL),
(397, '395', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '395@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '395', '', NULL, 0, NULL, NULL),
(398, '396', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '396@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '396', '', NULL, 0, NULL, NULL),
(399, '397', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '397@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '397', '', NULL, 0, NULL, NULL),
(2004, '398', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '398@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '398', '', NULL, 0, NULL, NULL),
(2005, '399', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '399@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '399', '', NULL, 0, NULL, NULL),
(2017, '196', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localnacional', NULL, NULL, NULL, NULL, NULL, NULL, '196@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '', '196', '', NULL, 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `is_active`, `created`, `updated`) VALUES
(1, 1, 'admin', '5edbcb6de015c7091eca823abea0a871ca69e595', 1, '2012-01-17 18:31:17', '2012-01-17 18:31:17'),
(2, 2, 'user', 'bdb088f3be0758a3c2ae9f72c7c83cd0b5c57e62', 1, '2012-01-17 18:31:17', '2012-01-17 18:31:17');

-- --------------------------------------------------------

--
-- Table structure for table `voicemail_users`
--

CREATE TABLE IF NOT EXISTS `voicemail_users` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(11) NOT NULL DEFAULT '0',
  `context` varchar(50) NOT NULL DEFAULT '',
  `mailbox` varchar(11) NOT NULL DEFAULT '0',
  `password` varchar(5) NOT NULL DEFAULT '0',
  `fullname` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `pager` varchar(50) NOT NULL DEFAULT '',
  `tz` varchar(10) NOT NULL DEFAULT 'central',
  `attach` varchar(4) NOT NULL DEFAULT 'yes',
  `saycid` varchar(4) NOT NULL DEFAULT 'yes',
  `dialout` varchar(10) NOT NULL DEFAULT '',
  `callback` varchar(10) NOT NULL DEFAULT '',
  `review` varchar(4) NOT NULL DEFAULT 'no',
  `operator` varchar(4) NOT NULL DEFAULT 'no',
  `envelope` varchar(4) NOT NULL DEFAULT 'no',
  `sayduration` varchar(4) NOT NULL DEFAULT 'no',
  `saydurationm` tinyint(4) NOT NULL DEFAULT '1',
  `sendvoicemail` varchar(4) NOT NULL DEFAULT 'no',
  `delete` varchar(4) NOT NULL DEFAULT 'no',
  `nextaftercmd` varchar(4) NOT NULL DEFAULT 'yes',
  `forcename` varchar(4) NOT NULL DEFAULT 'no',
  `forcegreetings` varchar(4) NOT NULL DEFAULT 'no',
  `hidefromdir` varchar(4) NOT NULL DEFAULT 'yes',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uniqueid`),
  KEY `mailbox_context` (`mailbox`,`context`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
