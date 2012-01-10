-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2012 at 09:17 AM
-- Server version: 5.0.77
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asterisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `cdr`
--

CREATE TABLE IF NOT EXISTS `cdr` (
  `calldate` datetime NOT NULL default '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL default '',
  `src` varchar(80) NOT NULL default '',
  `dst` varchar(80) NOT NULL default '',
  `dcontext` varchar(80) NOT NULL default '',
  `channel` varchar(80) NOT NULL default '',
  `dstchannel` varchar(80) NOT NULL default '',
  `lastapp` varchar(80) NOT NULL default '',
  `lastdata` varchar(80) NOT NULL default '',
  `duration` int(11) NOT NULL default '0',
  `billsec` int(11) NOT NULL default '0',
  `disposition` varchar(45) NOT NULL default '',
  `amaflags` int(11) NOT NULL default '0',
  `accountcode` varchar(20) NOT NULL default '',
  `userfield` varchar(255) NOT NULL default '',
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`accountcode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cdr`
--

INSERT INTO `cdr` (`calldate`, `clid`, `src`, `dst`, `dcontext`, `channel`, `dstchannel`, `lastapp`, `lastdata`, `duration`, `billsec`, `disposition`, `amaflags`, `accountcode`, `userfield`) VALUES
('2011-12-16 18:29:21', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/94898900', 7, 7, 'ANSWERED', 2, '', ''),
('2011-12-16 18:48:23', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/94898900', 5, 5, 'ANSWERED', 2, '', ''),
('2011-12-16 18:49:54', '"Pedro" <107>', '107', '94898900', 'localnacional', 'SIP/107-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/94898900', 6, 6, 'ANSWERED', 2, '', ''),
('2011-12-16 18:55:27', '"Pedro" <107>', '107', 's', 'disponible', 'SIP/107-0000000a', 'SIP/107-0000000b', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 4, 0, 'NO ANSWER', 3, '', ''),
('2011-12-16 18:57:39', '"Pedro" <107>', '107', '107', 'localnacional', 'SIP/107-0000000c', 'SIP/107-0000000d', 'Dial', 'SIP/107,38,tr', 23, 18, 'ANSWERED', 3, '', ''),
('2011-12-16 18:59:21', '"Pedro" <107>', '107', 's', 'disponible', 'SIP/107-0000000e', 'SIP/107-0000000f', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 5, 0, 'NO ANSWER', 3, '', ''),
('2011-12-16 18:59:57', '"Pedro" <107>', '107', '7200', 'localnacional', 'SIP/107-00000010', '', 'MeetMe', '200', 1, 1, 'ANSWERED', 3, '', ''),
('2011-12-16 19:00:17', '"Pedro" <107>', '107', '7200', 'localnacional', 'SIP/107-00000011', '', 'MeetMe', '200', 1, 1, 'ANSWERED', 3, '', ''),
('2011-12-16 19:00:36', '"Pedro" <107>', '107', '7201', 'localnacional', 'SIP/107-00000012', '', 'MeetMe', '201', 0, 0, 'ANSWERED', 3, '', ''),
('2011-12-24 06:06:29', '"107" <107>', '107', 's', 'disponible', 'SIP/107-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 3, 0, 'NO ANSWER', 3, '', ''),
('2011-12-24 06:07:00', '"107" <107>', '107', '93307737', 'localnacional', 'SIP/107-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/93307737', 5, 4, 'ANSWERED', 2, '', ''),
('2011-12-24 06:07:16', '"107" <107>', '107', '93955242', 'localnacional', 'SIP/107-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/93955242', 6, 6, 'ANSWERED', 2, '', ''),
('2011-12-29 01:31:39', '"Bloom" <107>', '107', 's', 'disponible', 'SIP/107-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 3, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 01:33:36', '107', '107', '93955242', 'localnacional', 'SIP/107-00000003', 'SIP/24898940-00000004', 'Dial', 'SIP/24898940/93955242', 8, 7, 'ANSWERED', 2, '', ''),
('2011-12-29 01:35:28', '107', '107', '93955242', 'localnacional', 'SIP/107-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/93955242', 9, 8, 'ANSWERED', 2, '', ''),
('2011-12-29 03:14:36', '107', '107', '107', 'localnacional', 'SIP/107-00000000', 'SIP/107-00000001', 'Dial', 'SIP/107,38,tr', 7, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 04:16:39', '107', '107', '107', 'interno', 'SIP/107-00000004', 'SIP/107-00000005', 'Dial', 'SIP/107,38,tr', 9, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 04:17:49', '107', '107', '107', 'interno', 'SIP/107-00000006', 'SIP/107-00000007', 'Dial', 'SIP/107,38,tr', 6, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 04:18:18', '107', '107', '93307737', 'localnacional', 'SIP/107-00000008', 'SIP/24898940-00000009', 'Dial', 'SIP/24898940/93307737', 4, 3, 'ANSWERED', 2, '', ''),
('2011-12-29 04:18:45', '107', '107', '93955242', 'localnacional', 'SIP/107-0000000a', 'SIP/24898940-0000000b', 'Dial', 'SIP/24898940/93955242', 1, 0, 'ANSWERED', 2, '', ''),
('2011-12-29 05:00:51', '195', '195', 's', 'disponible', 'SIP/195-00000000', 'SIP/107-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 4, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:02:11', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-00000003', 'SIP/107-00000004', 'Dial', 'SIP/107,38,tr', 6, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:02:34', '107', '107', 's', 'disponible', 'SIP/107-00000005', 'SIP/195-00000006', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 5, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:03:02', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000007', 'SIP/24898940-00000008', 'Dial', 'SIP/24898940/93307737', 2, 2, 'ANSWERED', 2, '', ''),
('2011-12-29 05:03:38', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000009', 'SIP/24898940-0000000a', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
('2011-12-29 05:03:42', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-0000000b', 'SIP/107-0000000c', 'Dial', 'SIP/107,38,tr', 3, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:04:41', '"Bloom" <195>', '195', '107', 'localnacional', 'SIP/195-0000000d', 'SIP/107-0000000e', 'Dial', 'SIP/107,38,tr', 4, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:04:50', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-0000000f', 'SIP/195-00000010', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 2, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:05:04', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-00000011', 'SIP/195-00000012', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 6, 0, 'NO ANSWER', 3, '', ''),
('2011-12-29 05:05:19', '107', '107', '195', 'localnacional', 'SIP/107-00000013', 'SIP/195-00000014', 'Dial', 'SIP/195,38,tr', 4, 0, 'NO ANSWER', 3, '', ''),
('2012-01-02 18:09:03', '"Bloom" <195>', '195', 's', 'disponible', 'SIP/195-00000000', 'SIP/195-00000001', 'BackGround', '/var/lib/asterisk/sounds/Mensaje', 2, 0, 'NO ANSWER', 3, '', ''),
('2012-01-02 18:09:09', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000002', 'SIP/24898940-00000003', 'Dial', 'SIP/24898940/93955242', 7, 6, 'ANSWERED', 2, '', ''),
('2012-01-02 18:19:28', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000004', 'SIP/24898940-00000005', 'Dial', 'SIP/24898940/93955242', 6, 5, 'ANSWERED', 2, '', ''),
('2012-01-02 18:19:49', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000006', 'SIP/24898940-00000007', 'Dial', 'SIP/24898940/93955242', 7, 7, 'ANSWERED', 2, '', ''),
('2012-01-02 18:44:12', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-00000008', 'SIP/24898940-00000009', 'Dial', 'SIP/24898940/93955242', 2, 2, 'ANSWERED', 2, '', ''),
('2012-01-02 18:46:33', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-0000000a', 'SIP/24898940-0000000b', 'Dial', 'SIP/24898940/93955242', 2, 2, 'ANSWERED', 2, '', ''),
('2012-01-02 18:53:24', '"Bloom" <195>', '195', '93955242', 'localnacional', 'SIP/195-0000000c', 'SIP/24898940-0000000d', 'Dial', 'SIP/24898940/93955242', 3, 2, 'ANSWERED', 2, '', ''),
('2012-01-03 03:18:27', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000003', 'SIP/24898940-00000004', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
('2012-01-03 03:24:44', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000005', 'SIP/24898940-00000006', 'Dial', 'SIP/24898940/93307737', 2, 1, 'ANSWERED', 2, '', ''),
('2012-01-03 03:24:58', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000007', 'SIP/24898940-00000008', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', ''),
('2012-01-03 03:31:45', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-00000009', 'SIP/24898940-0000000a', 'Dial', 'SIP/24898940/93307737', 2, 1, 'ANSWERED', 2, '', ''),
('2012-01-03 03:40:28', '"Bloom" <195>', '195', '93307737', 'localnacional', 'SIP/195-0000000b', 'SIP/24898940-0000000c', 'Dial', 'SIP/24898940/93307737', 1, 1, 'ANSWERED', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE IF NOT EXISTS `queues` (
  `name` varchar(128) NOT NULL,
  `musiconhold` varchar(128) default NULL,
  `announce` varchar(128) default NULL,
  `context` varchar(128) default NULL,
  `timeout` int(11) default NULL,
  `monitor_type` varchar(50) NOT NULL,
  `monitor_format` varchar(128) default NULL,
  `queue_youarenext` varchar(128) default NULL,
  `queue_thereare` varchar(128) default NULL,
  `queue_callswaiting` varchar(128) default NULL,
  `queue_holdtime` varchar(128) default NULL,
  `queue_minutes` varchar(128) default NULL,
  `queue_seconds` varchar(128) default NULL,
  `queue_lessthan` varchar(128) default NULL,
  `queue_thankyou` varchar(128) default NULL,
  `queue_reporthold` varchar(128) default NULL,
  `announce_frequency` int(11) default NULL,
  `announce_round_seconds` int(11) default NULL,
  `announce_holdtime` varchar(128) default NULL,
  `retry` int(11) default NULL,
  `wrapuptime` int(11) default NULL,
  `maxlen` int(11) default NULL,
  `servicelevel` int(11) default NULL,
  `strategy` varchar(128) default NULL,
  `joinempty` varchar(128) default NULL,
  `leavewhenempty` varchar(128) default NULL,
  `eventmemberstatus` varchar(4) default NULL,
  `eventwhencalled` varchar(4) default NULL,
  `reportholdtime` tinyint(1) default NULL,
  `memberdelay` int(11) default NULL,
  `weight` int(11) default NULL,
  `timeoutrestart` tinyint(1) default NULL,
  `periodic_announce` varchar(50) default NULL,
  `periodic_announce_frequency` int(11) default NULL,
  `ringinuse` tinyint(1) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queues`
--


-- --------------------------------------------------------

--
-- Table structure for table `queue_members`
--

CREATE TABLE IF NOT EXISTS `queue_members` (
  `uniqueid` int(10) unsigned NOT NULL auto_increment,
  `membername` varchar(40) default NULL,
  `queue_name` varchar(128) default NULL,
  `interface` varchar(128) default NULL,
  `penalty` int(11) default NULL,
  `paused` tinyint(1) default NULL,
  PRIMARY KEY  (`uniqueid`),
  UNIQUE KEY `queue_interface` (`queue_name`,`interface`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `queue_members`
--


-- --------------------------------------------------------

--
-- Table structure for table `sip_dispositivos`
--

CREATE TABLE IF NOT EXISTS `sip_dispositivos` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `host` varchar(31) NOT NULL default '',
  `nat` varchar(5) NOT NULL default 'no',
  `type` enum('user','peer','friend') NOT NULL default 'friend',
  `accountcode` varchar(20) default NULL,
  `amaflags` varchar(13) default NULL,
  `callgroup` varchar(10) default NULL,
  `callerid` varchar(80) default NULL,
  `notifyhold` varchar(5) default 'yes',
  `notifybusy` varchar(5) default 'yes',
  `notifyringing` varchar(5) default 'yes',
  `allowsubscribe` varchar(5) default 'yes',
  `subscribecontext` varchar(80) default 'interno',
  `call-limit` int(5) default '99',
  `cancallforward` char(3) default 'yes',
  `canreinvite` char(3) default 'yes',
  `context` varchar(80) default NULL,
  `defaultip` varchar(15) default NULL,
  `dtmfmode` varchar(7) default NULL,
  `fromuser` varchar(80) default NULL,
  `fromdomain` varchar(80) default NULL,
  `insecure` varchar(4) default NULL,
  `language` char(2) default NULL,
  `mailbox` varchar(50) default NULL,
  `asterisk.voicemessages` varchar(50) default NULL,
  `md5secret` varchar(80) default NULL,
  `deny` varchar(95) default NULL,
  `permit` varchar(95) default NULL,
  `mask` varchar(95) default NULL,
  `musiconhold` varchar(100) default NULL,
  `pickupgroup` varchar(10) default NULL,
  `qualify` char(3) default NULL,
  `regexten` varchar(80) default NULL,
  `restrictcid` char(3) default NULL,
  `rtptimeout` char(3) default NULL,
  `rtpholdtimeout` char(3) default NULL,
  `secret` varchar(80) default NULL,
  `setvar` varchar(100) default NULL,
  `disallow` varchar(100) default 'all',
  `allow` varchar(100) default 'g729;ilbc;gsm;ulaw;alaw',
  `fullcontact` varchar(80) NOT NULL default '',
  `ipaddr` varchar(15) NOT NULL default '',
  `port` smallint(5) unsigned NOT NULL default '0',
  `regseconds` int(11) NOT NULL default '0',
  `t38pt_usertpsource` enum('yes','no') default NULL,
  `registertrying` enum('yes','no') default 'yes',
  `transport` enum('tcp','udp','tcp,udp') default NULL,
  `lastms` int(11) NOT NULL,
  `regserver` varchar(100) NOT NULL,
  `username` varchar(80) NOT NULL default '',
  `useragent` varchar(50) NOT NULL,
  `exten` varchar(20) default NULL,
  `priority` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `name_2` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2016 ;

--
-- Dumping data for table `sip_dispositivos`
--

INSERT INTO `sip_dispositivos` (`id`, `name`, `host`, `nat`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `notifyhold`, `notifybusy`, `notifyringing`, `allowsubscribe`, `subscribecontext`, `call-limit`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `asterisk.voicemessages`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regseconds`, `t38pt_usertpsource`, `registertrying`, `transport`, `lastms`, `regserver`, `username`, `useragent`, `exten`, `priority`) VALUES
(1, '101', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '101@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, 'yes', 'yes', NULL, 0, '', '101', '', NULL, 0),
(2, '102', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio2', NULL, NULL, NULL, NULL, NULL, NULL, '102@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '102', '', NULL, 0),
(3, '103', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '103@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '103', '', NULL, 0),
(5, '105', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '105@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '105', '', NULL, 0),
(6, '106', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '106@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:106@192.168.20.20:31858;rinstance=3338f88f2ecfcb44', '192.168.20.20', 31858, 1307131605, NULL, 'yes', NULL, 0, '', '106', 'eyeBeam release 1102u stamp 52345', NULL, 0),
(7, '107', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localnacional', NULL, NULL, NULL, NULL, NULL, NULL, '107@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '107', '', NULL, 0),
(2015, '195', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localnacional', NULL, NULL, NULL, NULL, NULL, NULL, '195@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1325580033, NULL, 'yes', NULL, 0, '', '195', '', NULL, 0),
(10, '110', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '110@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, 'all', 'ulaw;alaw;gsm', 'sip:110@192.168.20.29:22630;rinstance=2694fe897aaf4a7c', '192.168.20.29', 22630, 1307130942, NULL, 'yes', NULL, 0, '', '110', 'eyeBeam release 1003s stamp 31159', NULL, 0),
(11, '111', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '111@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307123474, NULL, 'yes', NULL, 0, '', '111', '', NULL, 0),
(12, '112', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '112@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1302840736, NULL, 'yes', NULL, 0, '', '112', '', NULL, 0),
(13, '113', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '113@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '113', '', NULL, 0),
(14, '114', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '114@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '114', '', NULL, 0),
(15, '115', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '4898915', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'localTemp1', NULL, NULL, NULL, NULL, NULL, NULL, '115@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:115@190.1.210.160:5061', '190.1.210.160', 5061, 1307131527, NULL, 'yes', NULL, 0, '', '115', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0),
(16, '116', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '4898916', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '116@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:116@192.168.0.171:5060', '186.87.154.245', 59317, 1307129793, NULL, 'yes', NULL, 0, '', '116', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0),
(17, '117', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Hogar Diego Barreto 117', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '117@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:117@192.168.0.171:5061', '186.87.154.245', 62879, 1307129793, NULL, 'yes', NULL, 0, '', '117', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0),
(18, '118', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '118@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '118', '', NULL, 0),
(19, '119', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Metodio', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '119@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '119', '', NULL, 0),
(20, '120', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '120@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307019017, NULL, 'yes', NULL, 0, '', '120', '', NULL, 0),
(21, '121', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Oscar varela (Ibague)', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno5', NULL, NULL, NULL, NULL, NULL, NULL, '121@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1sc0rv0rel0***', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1307128110, NULL, 'yes', NULL, 0, '', '121', '', NULL, 0),
(22, '122', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '122@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '122', '', NULL, 0),
(23, '123', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegiopruebaDF', NULL, NULL, NULL, NULL, NULL, NULL, '123@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '123', '', NULL, 0),
(24, '124', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Alberto Kadoch', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio3', NULL, NULL, NULL, NULL, NULL, NULL, '124@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', 'sip:124@69.92.215.113:5060', '69.92.215.113', 5060, 1307132207, NULL, 'yes', NULL, 0, '', '124', 'Linksys/PAP2T-3.1.15(LS)', NULL, 0),
(25, '125', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '125@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '125', '', NULL, 0),
(26, '126', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '126@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '126', '', NULL, 0),
(27, '127', 'dynamic', 'no', 'friend', NULL, NULL, NULL, 'Dayan', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '127@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1302727399, NULL, 'yes', NULL, 0, '', '127', '', NULL, 0),
(28, '128', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '128@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '128', '', NULL, 0),
(29, '129', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '129@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '129', '', NULL, 0),
(30, '130', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '130@default', '130@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 1306874259, NULL, 'yes', NULL, 0, '', '130', '', NULL, 0),
(31, '131', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '131@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(32, '132', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '132@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '132', '', NULL, 0),
(33, '133', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '133@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '133', '', NULL, 0),
(34, '134', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '134@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '134', '', NULL, 0),
(35, '135', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '135@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '135', '', NULL, 0),
(36, '136', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '136@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '136', '', NULL, 0),
(37, '137', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '137@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '137', '', NULL, 0),
(38, '138', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '138@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '138', '', NULL, 0),
(39, '139', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '139@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '139', '', NULL, 0),
(40, '140', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, 'Arley', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'local', NULL, NULL, NULL, NULL, NULL, NULL, '140@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '140', '', NULL, 0),
(41, '141', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '141@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(42, '142', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '142@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(43, '143', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '143@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '143', '', NULL, 0),
(44, '144', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '144@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'g729', 'sip:144@192.168.20.31:5061', '192.168.20.31', 5061, 1307112188, NULL, 'yes', NULL, 0, '', '144', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0),
(45, '145', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno4', NULL, NULL, NULL, NULL, NULL, NULL, '145@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '145', '', NULL, 0),
(46, '104', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '104@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'g729', 'sip:104@192.168.20.31:5060', '192.168.20.31', 5060, 1307131356, NULL, 'yes', NULL, 0, '', '104', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0),
(47, '200', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '200@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '200', '', NULL, 0),
(48, '201', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '201@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '201', '', NULL, 0),
(49, '202', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '202@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '202', '', NULL, 0),
(50, '203', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '203@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '203', '', NULL, 0),
(51, '204', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '204@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '204', '', NULL, 0),
(52, '205', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '205@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '205', '', NULL, 0),
(53, '206', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '206@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '206', '', NULL, 0),
(54, '207', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '207@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '207', '', NULL, 0),
(55, '208', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '208@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '208', '', NULL, 0),
(56, '209', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '209@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '209', '', NULL, 0),
(57, '210', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '210@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '210', '', NULL, 0),
(58, '211', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '211@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '211', '', NULL, 0),
(59, '212', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno2', NULL, NULL, NULL, NULL, NULL, NULL, '212@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '212', '', NULL, 0),
(60, '213', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '213@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '213', '', NULL, 0),
(61, '214', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '214@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '214', '', NULL, 0),
(62, '215', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '215@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '215', '', NULL, 0),
(63, '216', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '216@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '216', '', NULL, 0),
(64, '217', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '217@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '217', '', NULL, 0),
(65, '218', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '218@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '218', '', NULL, 0),
(66, '219', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '219@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '219', '', NULL, 0),
(67, '220', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'restringido', NULL, NULL, NULL, NULL, NULL, NULL, '220@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '220', '', NULL, 0),
(68, '221', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '221@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '221', '', NULL, 0),
(69, '222', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '222@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '222', '', NULL, 0),
(70, '223', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '223@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '223', '', NULL, 0),
(71, '224', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '224@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '224', '', NULL, 0),
(72, '225', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '225@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '225', '', NULL, 0),
(73, '226', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '226@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '226', '', NULL, 0),
(74, '227', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '227@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '227', '', NULL, 0),
(75, '228', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '228@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '228', '', NULL, 0),
(76, '229', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '229@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '229', '', NULL, 0),
(77, '230', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '230@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '230', '', NULL, 0),
(78, '231', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '231@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '231', '', NULL, 0),
(79, '232', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '232@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '232', '', NULL, 0),
(80, '233', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '233@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '233', '', NULL, 0),
(81, '234', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '234@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '234', '', NULL, 0),
(82, '235', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '235@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '235', '', NULL, 0),
(83, '236', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '236@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '236', '', NULL, 0),
(84, '237', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '237@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '237', '', NULL, 0),
(85, '238', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '238@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '238', '', NULL, 0),
(86, '239', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '239@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '239', '', NULL, 0),
(87, '240', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '240@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '240', '', NULL, 0),
(88, '241', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '241@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '241', '', NULL, 0),
(89, '242', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '242@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '242', '', NULL, 0),
(90, '243', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '243@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '243', '', NULL, 0),
(91, '244', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '244@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '244', '', NULL, 0),
(92, '245', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '245@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '0.0.0.0', 0, 0, NULL, 'yes', NULL, 0, '0', '245', '', NULL, 0),
(307, '306', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '306@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:306@190.125.113.29:36607;transport=UDP', '190.125.113.29', 36607, 1307130178, NULL, 'yes', NULL, 0, '', '306', 'Bria Android 1.0.3', NULL, 0),
(301, '300', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '300@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(302, '301', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '301@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:301@192.168.20.23:16002;rinstance=931ce515197166aa', '192.168.20.23', 16002, 1307132603, NULL, 'yes', NULL, 0, '', '301', 'eyeBeam release 1100z stamp 47739', NULL, 0),
(303, '302', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '302@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:mexzglpy@192.168.20.24:61882', '192.168.20.24', 61882, 1307129964, NULL, 'yes', NULL, 0, '', 'mexzglpy', 'Blink 0.24.1 (MacOSX)', NULL, 0),
(304, '303', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '303@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 1306246237, NULL, 'yes', NULL, 0, '', '303', '', NULL, 0),
(305, '304', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '304@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:304@192.168.20.194:47850;rinstance=7264d0429a7a6b34', '192.168.20.194', 47850, 1307132403, NULL, 'yes', NULL, 0, '', '304', 'eyeBeam release 1102u stamp 52345', NULL, 0),
(306, '305', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '305@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(2006, '590', 'dynamic', 'no', 'friend', NULL, NULL, NULL, NULL, 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '590@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'met0d10*', NULL, 'all', 'ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(308, '307', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '307@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(309, '308', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '308@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:308@392.368.2.9:3061', '392.368.2.9', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '308', '', NULL, 0),
(310, '309', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '309@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:309@392.368.2.36:3060', '392.368.2.36', 3060, 2147483647, NULL, 'yes', NULL, 0, '', '309', '', NULL, 0),
(311, '310', 'dynamic', 'yes', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'privilegio4', NULL, NULL, NULL, NULL, NULL, NULL, '310@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:310@192.168.20.31:5061', '192.168.20.31', 5061, 1307131356, NULL, 'yes', NULL, 0, '', '310', 'Linksys/PAP2T-5.1.6(LS)', NULL, 0),
(312, '311', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '311@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*s1pc0m**', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:311@192.168.20.200', '192.168.20.200', 5060, 1307130093, NULL, 'yes', NULL, 0, '', '311', 'Panasonic KX-HGT100CE/01.34', NULL, 0),
(313, '312', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '312@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:322@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '312', '', NULL, 0),
(314, '313', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '313@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:333@392.368.2.36:3860', '392.368.2.36', 3860, 2147483647, NULL, 'yes', NULL, 0, '', '313', '', NULL, 0),
(315, '314', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '314@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:334@392.368.2.36:3861', '392.368.2.36', 3861, 2147483647, NULL, 'yes', NULL, 0, '', '314', '', NULL, 0),
(317, '315', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '315@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:335@392.368.2.36:3360', '392.368.2.36', 3360, 2147483647, NULL, 'yes', NULL, 0, '', '315', '', NULL, 0),
(318, '316', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '316@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(319, '317', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '317@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(320, '318', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '318@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:338@392.368.2.39:3061', '392.368.2.39', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '318', '', NULL, 0),
(321, '319', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '319@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(322, '320', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '320@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(323, '321', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '321@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '321', '', NULL, 0),
(324, '322', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '322@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '322', '', NULL, 0),
(325, '323', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '323@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(326, '324', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '324@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '324', '', NULL, 0),
(327, '325', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '325@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '325', '', NULL, 0),
(328, '326', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '326@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(329, '327', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '327@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '327', '', NULL, 0),
(330, '328', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '328@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '328', '', NULL, 0),
(331, '329', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '329@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '329', '', NULL, 0),
(332, '330', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '330@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:330@392.368.2.36:3061', '392.368.2.36', 3061, 2147483647, NULL, 'yes', NULL, 0, '', '330', '', NULL, 0),
(333, '331', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '331@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:331@392.368.2.36:3360', '392.368.2.36', 3360, 2147483647, NULL, 'yes', NULL, 0, '', '331', '', NULL, 0),
(334, '332', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '332@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '332', '', NULL, 0),
(335, '333', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '333@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '333', '', NULL, 0),
(336, '334', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '334@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '334', '', NULL, 0),
(337, '335', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '335@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '335', '', NULL, 0),
(338, '336', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '336@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '336', '', NULL, 0),
(339, '337', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '337@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '337', '', NULL, 0),
(340, '338', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '338@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '338', '', NULL, 0);
INSERT INTO `sip_dispositivos` (`id`, `name`, `host`, `nat`, `type`, `accountcode`, `amaflags`, `callgroup`, `callerid`, `notifyhold`, `notifybusy`, `notifyringing`, `allowsubscribe`, `subscribecontext`, `call-limit`, `cancallforward`, `canreinvite`, `context`, `defaultip`, `dtmfmode`, `fromuser`, `fromdomain`, `insecure`, `language`, `mailbox`, `asterisk.voicemessages`, `md5secret`, `deny`, `permit`, `mask`, `musiconhold`, `pickupgroup`, `qualify`, `regexten`, `restrictcid`, `rtptimeout`, `rtpholdtimeout`, `secret`, `setvar`, `disallow`, `allow`, `fullcontact`, `ipaddr`, `port`, `regseconds`, `t38pt_usertpsource`, `registertrying`, `transport`, `lastms`, `regserver`, `username`, `useragent`, `exten`, `priority`) VALUES
(341, '339', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '339@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '339', '', NULL, 0),
(342, '340', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '340@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(343, '341', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '341@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:341@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '341', '', NULL, 0),
(344, '342', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '342@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(345, '343', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '343@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:343@392.368.2.36:3861', '392.368.2.36', 3861, 2147483647, NULL, 'yes', NULL, 0, '', '343', '', NULL, 0),
(346, '344', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '344@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '344', '', NULL, 0),
(347, '345', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '345@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '345', '', NULL, 0),
(348, '346', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '346@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '346', '', NULL, 0),
(349, '347', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '347@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '347', '', NULL, 0),
(350, '348', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '348@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '348', '', NULL, 0),
(351, '349', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '349@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '349', '', NULL, 0),
(352, '350', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '350@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '350', '', NULL, 0),
(353, '351', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '351@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:531@392.368.2.36:3361', '392.368.2.36', 3361, 2147483647, NULL, 'yes', NULL, 0, '', '351', '', NULL, 0),
(354, '352', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '352@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:532@392.368.2.81:83936;rinstance=5ad037bda38fce9f', '392.368.2.81', 65535, 2147483647, NULL, 'yes', NULL, 0, '', '352', '', NULL, 0),
(355, '353', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '353@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '353', '', NULL, 0),
(356, '354', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '354@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '354', '', NULL, 0),
(357, '355', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '355@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '355', '', NULL, 0),
(358, '356', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '356@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '356', '', NULL, 0),
(359, '357', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '357@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '357', '', NULL, 0),
(360, '358', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '358@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '358', '', NULL, 0),
(361, '359', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '359@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '359', '', NULL, 0),
(362, '360', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '360@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '360', '', NULL, 0),
(363, '361', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '361@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '361', '', NULL, 0),
(364, '362', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '362@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '362', '', NULL, 0),
(365, '363', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '363@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '363', '', NULL, 0),
(366, '364', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '364@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '364', '', NULL, 0),
(367, '365', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '365@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '365', '', NULL, 0),
(368, '366', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '366@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '366', '', NULL, 0),
(369, '367', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '367@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '367', '', NULL, 0),
(370, '368', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '368@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '368', '', NULL, 0),
(371, '369', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '369@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '369', '', NULL, 0),
(372, '370', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '370@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:330@392.368.2.31:9736;rinstance=a8099c1a5341c3db', '392.368.2.31', 9736, 2147483647, NULL, 'yes', NULL, 0, '', '370', '', NULL, 0),
(373, '371', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '371@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:531@392.368.2.30:43648;rinstance=f8333393931c5b5b', '392.368.2.30', 43648, 2147483647, NULL, 'yes', NULL, 0, '', '371', '', NULL, 0),
(374, '372', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '372@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:532@392.368.2.32:80830;rinstance=6a1ed5f090afe464', '392.368.2.32', 65535, 2147483647, NULL, 'yes', NULL, 0, '', '372', '', NULL, 0),
(375, '373', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '373@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:533@392.368.2.34:40348;rinstance=48e2d889ecf2f532', '392.368.2.34', 40348, 2147483647, NULL, 'yes', NULL, 0, '', '373', '', NULL, 0),
(376, '374', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '374@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:534@392.368.2.7:347;rinstance=00b35c49bb6a3bc8', '392.368.2.7', 347, 2147483647, NULL, 'yes', NULL, 0, '', '374', '', NULL, 0),
(377, '375', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '375@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', 'sip:735@392.368.2.38:38306;rinstance=38ac4c86f4ba9303', '392.368.2.38', 38306, 2147483647, NULL, 'yes', NULL, 0, '', '775', '', NULL, 0),
(378, '376', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '376@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '376', '', NULL, 0),
(379, '377', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '377@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '377', '', NULL, 0),
(380, '378', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '378@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '378', '', NULL, 0),
(381, '379', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '379@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '379', '', NULL, 0),
(382, '380', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '380@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '380', '', NULL, 0),
(383, '381', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '381@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '381', '', NULL, 0),
(384, '382', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '382@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '382', '', NULL, 0),
(385, '383', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '383@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '383', '', NULL, 0),
(386, '384', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '384@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '384', '', NULL, 0),
(387, '385', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '385@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '385', '', NULL, 0),
(388, '386', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '386@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '386', '', NULL, 0),
(389, '387', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '387@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '387', '', NULL, 0),
(390, '388', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '388@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '388', '', NULL, 0),
(391, '389', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '389@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '389', '', NULL, 0),
(392, '390', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '390@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '', 0, 0, NULL, 'yes', NULL, 0, '', '', '', NULL, 0),
(393, '391', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '391@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '391', '', NULL, 0),
(394, '392', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '392@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '392', '', NULL, 0),
(395, '393', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '393@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '393', '', NULL, 0),
(396, '394', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '394@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '394', '', NULL, 0),
(397, '395', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '395@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '395', '', NULL, 0),
(398, '396', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '396@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '396', '', NULL, 0),
(399, '397', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '397@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '397', '', NULL, 0),
(2004, '398', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '398@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '398', '', NULL, 0),
(2005, '399', 'dynamic', 'no', 'friend', NULL, NULL, NULL, '', 'yes', 'yes', 'yes', 'yes', 'interno', 99, 'yes', 'yes', 'interno', NULL, NULL, NULL, NULL, NULL, NULL, '399@default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '*T3rm0v4ll3*', NULL, 'all', 'g729;ulaw;alaw;gsm', '', '0.0.0.0', 0, 2147483647, NULL, 'yes', NULL, 0, '', '399', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `voicemail_users`
--

CREATE TABLE IF NOT EXISTS `voicemail_users` (
  `uniqueid` int(11) NOT NULL auto_increment,
  `customer_id` varchar(11) NOT NULL default '0',
  `context` varchar(50) NOT NULL default '',
  `mailbox` varchar(11) NOT NULL default '0',
  `password` varchar(5) NOT NULL default '0',
  `fullname` varchar(150) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `pager` varchar(50) NOT NULL default '',
  `tz` varchar(10) NOT NULL default 'central',
  `attach` varchar(4) NOT NULL default 'yes',
  `saycid` varchar(4) NOT NULL default 'yes',
  `dialout` varchar(10) NOT NULL default '',
  `callback` varchar(10) NOT NULL default '',
  `review` varchar(4) NOT NULL default 'no',
  `operator` varchar(4) NOT NULL default 'no',
  `envelope` varchar(4) NOT NULL default 'no',
  `sayduration` varchar(4) NOT NULL default 'no',
  `saydurationm` tinyint(4) NOT NULL default '1',
  `sendvoicemail` varchar(4) NOT NULL default 'no',
  `delete` varchar(4) NOT NULL default 'no',
  `nextaftercmd` varchar(4) NOT NULL default 'yes',
  `forcename` varchar(4) NOT NULL default 'no',
  `forcegreetings` varchar(4) NOT NULL default 'no',
  `hidefromdir` varchar(4) NOT NULL default 'yes',
  `stamp` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`uniqueid`),
  KEY `mailbox_context` (`mailbox`,`context`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `voicemail_users`
--

