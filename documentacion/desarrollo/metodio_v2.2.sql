SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `asterisk`
--
CREATE DATABASE IF NOT EXISTS `asterisk` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `asterisk`;

-- --------------------------------------------------------

--
-- Remove old tables if they exist
--

DROP TABLE IF EXISTS `canales`;
DROP TABLE IF EXISTS `extensions`;
DROP TABLE IF EXISTS `funcionarios`;
DROP TABLE IF EXISTS `perfil`;
DROP TABLE IF EXISTS `perfil_permiso`;
DROP TABLE IF EXISTS `permisos`;
DROP TABLE IF EXISTS `prefijos`;
DROP TABLE IF EXISTS `privilegios`;
DROP TABLE IF EXISTS `usuario`;

-- --------------------------------------------------------

--
-- Table structure for table `abbreviates`
--

CREATE TABLE IF NOT EXISTS `abbreviates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbreviate` varchar(16) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=122 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Remove data to prevent problems
--

TRUNCATE TABLE `acos`;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, NULL, NULL, 'controllers', 1, 126),
(90, 45, NULL, NULL, 'parseData', 47, 48),
(13, 1, NULL, NULL, 'Users', 2, 25),
(14, 13, NULL, NULL, 'login', 3, 4),
(15, 13, NULL, NULL, 'logout', 5, 6),
(23, 13, NULL, NULL, 'view', 7, 8),
(24, 13, NULL, NULL, 'edit', 9, 10),
(33, 1, NULL, NULL, 'AclExtras', 26, 27),
(34, 1, NULL, NULL, 'SipDispositivos', 28, 43),
(35, 34, NULL, NULL, 'index', 29, 30),
(36, 34, NULL, NULL, 'view', 31, 32),
(37, 34, NULL, NULL, 'add', 33, 34),
(38, 34, NULL, NULL, 'edit', 35, 36),
(39, 34, NULL, NULL, 'delete', 37, 38),
(117, 13, NULL, NULL, 'inicializarAcl', 23, 24),
(116, 13, NULL, NULL, 'delete', 21, 22),
(115, 13, NULL, NULL, 'add', 19, 20),
(45, 1, NULL, NULL, 'Cdrs', 44, 67),
(52, 45, NULL, NULL, 'reporte', 45, 46),
(53, 1, NULL, NULL, 'CostCenters', 68, 83),
(54, 53, NULL, NULL, 'index', 69, 70),
(55, 53, NULL, NULL, 'view', 71, 72),
(56, 53, NULL, NULL, 'add', 73, 74),
(57, 53, NULL, NULL, 'edit', 75, 76),
(58, 53, NULL, NULL, 'delete', 77, 78),
(64, 1, NULL, NULL, 'Departments', 84, 99),
(65, 64, NULL, NULL, 'index', 85, 86),
(66, 64, NULL, NULL, 'view', 87, 88),
(67, 64, NULL, NULL, 'add', 89, 90),
(68, 64, NULL, NULL, 'edit', 91, 92),
(69, 64, NULL, NULL, 'delete', 93, 94),
(114, 111, NULL, NULL, 'searchFilter', 123, 124),
(113, 111, NULL, NULL, 'CSVExport', 121, 122),
(112, 111, NULL, NULL, 'display', 119, 120),
(111, 1, NULL, NULL, 'Pages', 118, 125),
(75, 13, NULL, NULL, 'verificarAcceso', 11, 12),
(76, 13, NULL, NULL, 'index', 13, 14),
(77, 1, NULL, NULL, 'Abbreviates', 100, 117),
(107, 45, NULL, NULL, 'informeNumeroOrigen', 59, 60),
(79, 77, NULL, NULL, 'index', 101, 102),
(80, 77, NULL, NULL, 'view', 103, 104),
(81, 77, NULL, NULL, 'add', 105, 106),
(82, 77, NULL, NULL, 'edit', 107, 108),
(83, 77, NULL, NULL, 'delete', 109, 110),
(106, 45, NULL, NULL, 'informeExtension', 57, 58),
(105, 45, NULL, NULL, 'informeGeneral', 55, 56),
(104, 45, NULL, NULL, 'getDates', 53, 54),
(91, 77, NULL, NULL, 'CSVExport', 111, 112),
(92, 77, NULL, NULL, 'searchFilter', 113, 114),
(93, 45, NULL, NULL, 'CSVExport', 49, 50),
(94, 45, NULL, NULL, 'searchFilter', 51, 52),
(95, 53, NULL, NULL, 'CSVExport', 79, 80),
(96, 53, NULL, NULL, 'searchFilter', 81, 82),
(97, 64, NULL, NULL, 'CSVExport', 95, 96),
(98, 64, NULL, NULL, 'searchFilter', 97, 98),
(99, 34, NULL, NULL, 'CSVExport', 39, 40),
(100, 34, NULL, NULL, 'searchFilter', 41, 42),
(101, 13, NULL, NULL, 'CSVExport', 15, 16),
(102, 13, NULL, NULL, 'searchFilter', 17, 18),
(103, 77, NULL, NULL, 'popularDesdeArchivo', 115, 116),
(108, 45, NULL, NULL, 'informeNumeroDestino', 61, 62),
(109, 45, NULL, NULL, 'informeDepartamento', 63, 64),
(110, 45, NULL, NULL, 'informeCentroCosto', 65, 66);

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
-- Remove data to prevent problems
--

TRUNCATE TABLE `aros`;

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Remove data to prevent problems
--

TRUNCATE TABLE `aros_acos`;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 1, 1, '1', '1', '1', '1'),
(2, 2, 1, '-1', '-1', '-1', '-1'),
(3, 2, 15, '1', '1', '1', '1'),
(4, 2, 75, '1', '1', '1', '1'),
(5, 2, 35, '1', '1', '1', '1'),
(6, 2, 36, '1', '1', '1', '1'),
(7, 2, 54, '1', '1', '1', '1'),
(8, 2, 55, '1', '1', '1', '1'),
(9, 2, 65, '1', '1', '1', '1'),
(10, 2, 66, '1', '1', '1', '1'),
(11, 2, 79, '1', '1', '1', '1'),
(12, 2, 80, '1', '1', '1', '1'),
(13, 2, 90, '1', '1', '1', '1'),
(14, 2, 52, '1', '1', '1', '1'),
(15, 2, 105, '1', '1', '1', '1'),
(16, 2, 106, '1', '1', '1', '1'),
(17, 2, 107, '1', '1', '1', '1'),
(18, 2, 108, '1', '1', '1', '1'),
(19, 2, 109, '1', '1', '1', '1'),
(20, 2, 110, '1', '1', '1', '1'),
(21, 2, 93, '1', '1', '1', '1');

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

INSERT IGNORE INTO `privileges` (`id`, `name`, `created`, `updated`) VALUES
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

INSERT IGNORE INTO `roles` (`id`, `name`, `description`, `created`, `updated`, `prueba`) VALUES
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
-- If sip_dispositivos exists check for the new columns
--

DELIMITER $$

	DROP PROCEDURE IF EXISTS add_cols $$
	CREATE PROCEDURE add_cols()

	BEGIN
		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='exten' AND TABLE_NAME='sip_dispositivos') ) THEN
		    ALTER TABLE `sip_dispositivos` ADD COLUMN `exten` varchar(20) DEFAULT NULL;
		END IF;

		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='priority' AND TABLE_NAME='sip_dispositivos') ) THEN
		    ALTER TABLE `sip_dispositivos` ADD COLUMN `priority` tinyint(4) NOT NULL DEFAULT '0';
		END IF;

		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='department_id' AND TABLE_NAME='sip_dispositivos') ) THEN
		    ALTER TABLE `sip_dispositivos` ADD COLUMN `department_id` int(11) DEFAULT NULL;
		END IF;

		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='cost_center_id' AND TABLE_NAME='sip_dispositivos') ) THEN
		    ALTER TABLE `sip_dispositivos` ADD COLUMN `cost_center_id` int(11) DEFAULT NULL;
		END IF;

		-- remove a column safely
		IF EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='asterisk.voicemessages' AND TABLE_NAME='sip_dispositivos') ) THEN
		    ALTER TABLE `sip_dispositivos` DROP COLUMN `asterisk.voicemessages`;
		END IF;

	END $$

	CALL add_cols() $$
	DROP PROCEDURE IF EXISTS add_cols $$

DELIMITER ;

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

INSERT IGNORE INTO `users` (`id`, `role_id`, `username`, `password`, `is_active`, `created`, `updated`) VALUES
(1, 1, 'admin', '5edbcb6de015c7091eca823abea0a871ca69e595', 1, NOW(), NOW());

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

-- --------------------------------------------------------

--
-- Table structure for table `cdr`
--

CREATE TABLE IF NOT EXISTS `cdr` (
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
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- If cdr exists check for the new columns
--

DELIMITER $$

	DROP PROCEDURE IF EXISTS add_cols $$
	CREATE PROCEDURE add_cols()

	BEGIN
		
		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='id' AND TABLE_NAME='cdr') ) THEN
		    ALTER TABLE `cdr` ADD COLUMN `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL;
		END IF;
		
		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='department' AND TABLE_NAME='cdr') ) THEN
		    ALTER TABLE `cdr` ADD COLUMN `department` varchar(100) DEFAULT NULL;
		END IF;

		-- add a column safely
		IF NOT EXISTS( (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA=DATABASE()
			AND COLUMN_NAME='cost_center' AND TABLE_NAME='cdr') ) THEN
		    ALTER TABLE `cdr` ADD COLUMN `cost_center` varchar(100) DEFAULT NULL;
		END IF;

	END $$

	CALL add_cols() $$
	DROP PROCEDURE IF EXISTS add_cols $$

DELIMITER ;

--
-- Add trigger for cdr table
--

DELIMITER $$

	DROP TRIGGER IF EXISTS append_cdr_data $$
	CREATE TRIGGER append_cdr_data BEFORE INSERT ON cdr
	FOR EACH ROW
	BEGIN
--		DECLARE dep_name varchar(100);
		DECLARE ccenter_name varchar(100);
--		SET dep_name = (SELECT name FROM `asterisk`.`departments` WHERE id IN (SELECT department_id FROM `asterisk`.`sip_dispositivos` WHERE name = NEW.src));
		SET ccenter_name = (SELECT name FROM `asterisk`.`cost_centers` WHERE id IN (SELECT cost_center_id FROM `asterisk`.`sip_dispositivos` WHERE name = NEW.src));
--		IF NEW.calldate = NOW() THEN
--			SET NEW.department = dep_name;
			SET NEW.cost_center = ccenter_name;
--		END IF;
	END $$

DELIMITER ;
