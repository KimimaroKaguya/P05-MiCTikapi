-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2017 at 08:30 PM
-- Server version: 5.5.57-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dtmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `am`
--

CREATE TABLE IF NOT EXISTS `am` (
`am_id` int(11) NOT NULL,
  `am_user` varchar(250) NOT NULL,
  `am_pass` varchar(250) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `am`
--

INSERT INTO `am` (`am_id`, `am_user`, `am_pass`) VALUES
(1, 'admin', '825f9cd5f0390bc77c1fed3c94885c87');

-- --------------------------------------------------------

--
-- Table structure for table `mt_config`
--

CREATE TABLE IF NOT EXISTS `mt_config` (
`mt_num` int(20) NOT NULL,
  `mt_user` varchar(50) NOT NULL,
  `mt_pass` varchar(50) NOT NULL,
  `mt_ip` varchar(50) NOT NULL,
  `port_api` int(5) NOT NULL,
  `port_web` int(5) NOT NULL,
  `site_name` varchar(50) NOT NULL,
  `admin_pin` varchar(200) NOT NULL,
  `customer_pin` varchar(200) NOT NULL,
  `user_pin` varchar(200) NOT NULL,
  `date_update` datetime NOT NULL,
  `mt_id` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_config`
--

INSERT INTO `mt_config` (`mt_num`, `mt_user`, `mt_pass`, `mt_ip`, `port_api`, `port_web`, `site_name`, `admin_pin`, `customer_pin`, `user_pin`, `date_update`, `mt_id`) VALUES
(10, 'admin', 'wifiman2705', '7aee07c22441.sn.mynetname.net', 8728, 81, 'Flipper Lodge', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'flipper', '', '2017-09-22 13:27:30', 10),
(11, 'admin', 'wifiman2705', '7aee0732bbd6.sn.mynetname.net', 8728, 800, 'Sea Breeze Jomtien', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'seebreez', '', '2017-09-22 13:30:54', 11),
(12, 'admin', 'wifiman2705', '783e07216b4c.sn.mynetname.net', 8728, 81, 'stefans', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'stefans', '', '2017-09-22 13:37:25', 12),
(13, 'flipper', 'flipper', '7aee07c22441.sn.mynetname.net', 8728, 81, 'Flipper Lodge', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'flipper', '1111', '2017-09-22 13:45:17', 10),
(14, 'super', 'seebreez', '7aee0732bbd6.sn.mynetname.net', 8728, 800, 'Sea Breeze Jomtien', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'seebreez', '2222', '2017-09-22 13:53:19', 11),
(15, 'baseband', 'bbcloud', '71960601236e.sn.mynetname.net', 8728, 88, 'Cloud condo', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', '08611232', '', '2017-09-28 16:43:39', 15),
(17, 'admin', '038444871', '783e071aa335.sn.mynetname.net', 8728, 82, 'stang', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', '03844487', '0807', '2017-10-09 12:52:27', 16),
(18, 'admin', '038444871', '762c076172ad.sn.mynetname.net', 8728, 81, 'banrai', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', '03844487', '0807', '2017-10-09 13:16:52', 18),
(19, 'admin', 'itsupport', '719607eff7f6.sn.mynetname.net', 8728, 808, 'Amp', 'dbd61c3eaae5cbcf0f0512f4b17eaab3', 'amp1234', '', '2017-10-09 17:04:38', 19);

-- --------------------------------------------------------

--
-- Table structure for table `mt_edit`
--

CREATE TABLE IF NOT EXISTS `mt_edit` (
`number` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `group_code` varchar(20) NOT NULL,
  `mt_id` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_edit`
--

INSERT INTO `mt_edit` (`number`, `user`, `group_code`, `mt_id`) VALUES
(26, '1Day', '201709221428', '11'),
(27, '2Days', '201709221428', '11'),
(28, '3Days', '201709221428', '11'),
(29, '1week', '201709221428', '11'),
(30, '2week', '201709221428', '11'),
(31, '1mount', '201709221428', '11');

-- --------------------------------------------------------

--
-- Table structure for table `mt_gen`
--

CREATE TABLE IF NOT EXISTS `mt_gen` (
  `user` varchar(11) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `limit_uptime` varchar(50) NOT NULL,
  `profile` varchar(50) NOT NULL,
  `server_pro` varchar(50) NOT NULL,
  `mac_address` varchar(50) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `csv_code` varchar(20) NOT NULL,
  `money_code` varchar(50) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_code` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `mt_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_gen`
--

INSERT INTO `mt_gen` (`user`, `pass`, `limit_uptime`, `profile`, `server_pro`, `mac_address`, `ip_address`, `email`, `comment`, `csv_code`, `money_code`, `group_name`, `group_code`, `date`, `mt_id`) VALUES
('1dhkp', '1dcwv', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1darq', '1diux', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dary', '1dulg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dtai', '1desl', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dhgl', '1dlxl', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ddds', '1dstp', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dsca', '1dnvm', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dlkw', '1dkgi', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dxpn', '1dsiu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dlzm', '1dxeg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dqmj', '1dzuf', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1djql', '1dtny', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dhug', '1dklu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dmjh', '1diax', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dsxh', '1djzx', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1daiw', '1dfqu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dqgd', '1debm', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dbsb', '1dqvn', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dtpk', '1dnrc', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1daar', '1dxud', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1damz', '1dklu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dcsb', '1durq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ddhj', '1dmil', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dlik', '1dzrf', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ddtx', '1depj', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dtkl', '1dkwq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dvgf', '1dfhv', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dmzn', '1dcij', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dypd', '1dsif', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dafd', '1dszl', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dmlx', '1djdm', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1diqc', '1dmhs', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dtev', '1djuh', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dyur', '1danw', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dfat', '1ddgz', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dnut', '1ddjs', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dyyr', '1dbem', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzmg', '1dzmz', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1daxp', '1dwld', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dbwk', '1dghe', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dypw', '1dhtt', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dyhb', '1ddhz', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dxsx', '1dvqf', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dnds', '1dywg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzxi', '1dmcn', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dkbq', '1dewg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1daff', '1dpfg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dnnq', '1dtvx', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dgkm', '1dvxg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzqb', '1drun', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dbnd', '1dhmc', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ddhf', '1dqai', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ducx', '1dufq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dvfw', '1drcn', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dgpy', '1dxbd', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dfux', '1dpef', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dele', '1dnan', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dsqm', '1dzjq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dkbx', '1dksp', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1ddbd', '1dvzt', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzvt', '1dusx', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzsx', '1dttl', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dlfu', '1dnnp', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1drfj', '1dbta', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dckj', '1dqzb', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1djci', '1dxhq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dewz', '1djzg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dkvp', '1dlrj', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1diuz', '1dkqj', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dmcq', '1duas', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzzr', '1drcu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dapn', '1dsht', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dmad', '1dgwx', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dhhl', '1dvzi', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dpix', '1dyig', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dcbt', '1dsrz', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dwpy', '1diat', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dbfq', '1drax', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dshf', '1dfvq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dlvn', '1degg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dyfx', '1dipq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dszr', '1dprm', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzgz', '1dcsg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dxfd', '1drmu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dvtd', '1dzlu', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dkzb', '1dmbg', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dkuc', '1dxip', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dwae', '1dysd', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dwcc', '1dtck', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dqxx', '1drcb', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1denp', '1dbhh', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dhdn', '1dxiq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1duid', '1dzbf', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1didw', '1dkkp', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dipl', '1dwyx', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1diua', '1dnwi', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dgui', '1dzca', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dzfg', '1dxag', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dndh', '1dpvq', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dqtg', '1dpni', '1d', '1Day', 'hotspot1', '', '', '', '', '201709221533', '', 'mikrotik-1d', '', '2017-09-22 15:33:17', '11'),
('1dqhs', '1dene', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnel', '1demg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dyrx', '1dhwu', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dirq', '1dvvr', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dzbt', '1dfaq', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dgcq', '1dhsr', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dgal', '1dyyv', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1difr', '1dhri', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhfn', '1dnnb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1ddhv', '1dimn', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dkqr', '1djuu', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dggf', '1ddnn', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dtgr', '1dnrc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dcvv', '1dqge', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1drli', '1dicg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dypb', '1dexz', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dngn', '1dciw', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1diec', '1drmg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1disi', '1dsmp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djxt', '1djpl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dwgt', '1dadp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1diwi', '1dqav', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dqrq', '1dzhb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dxdf', '1dqwp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dzgm', '1dmmb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dsiv', '1dbmd', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhap', '1dejy', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnyb', '1djvm', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dkzr', '1dwvl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dunc', '1dsuc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dumh', '1dnkc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dfwg', '1dcsl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhbv', '1dsib', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1ddph', '1djgm', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dtqa', '1dktw', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djzx', '1dftc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dskt', '1dpej', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dymk', '1dfxs', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dlqy', '1dceh', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1duaq', '1dyhj', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnza', '1dhrx', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dwry', '1dvpl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnmk', '1dhkn', '1d', 'flipper1day', 'hotspot1', 'C0:CC:F8:E3:30:71', '192.168.50.204', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1detp', '1dkef', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhzp', '1dqty', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1ddrs', '1djhx', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dttz', '1dwcp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1duux', '1duga', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dxgx', '1dqmm', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnsg', '1dzmt', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dlxq', '1dwlg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dqta', '1dpng', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dbsd', '1dzqj', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dsnj', '1dade', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dehr', '1dequ', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1ddvu', '1ddsa', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1ddqf', '1dldy', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dazg', '1dkzs', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhqq', '1dscu', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dcyg', '1ddzc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnxi', '1dhck', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dkln', '1dbde', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dggh', '1dzyr', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djpt', '1dria', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dega', '1dxhx', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dkvq', '1dxbz', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djaq', '1dsqp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhkw', '1dzxg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1drph', '1dnyu', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1duhm', '1dibb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dbhn', '1dbya', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dwfx', '1djlp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dehz', '1dqfx', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dacg', '1dnsv', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dypr', '1djei', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djrv', '1ddtl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dqfi', '1dmlw', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dlsw', '1dnws', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dtvy', '1depb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dnfr', '1ddpr', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dcsr', '1djav', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1diul', '1dbfy', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhfs', '1diqx', '1d', 'flipper1day', 'hotspot1', 'EC:1F:72:0F:5E:32', '192.168.50.156', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dyyv', '1dalj', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1demn', '1deee', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1djpd', '1damq', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dfpu', '1dnkm', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dncv', '1dfpb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dqwb', '1dxpp', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dhfv', '1dndl', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dwnf', '1dvci', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dqff', '1dkqb', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1deab', '1dbyc', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dunw', '1dvky', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dxhu', '1dmfx', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1drpr', '1dtbg', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dilf', '1dryh', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1drlg', '1dzzf', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dmnx', '1dzri', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1dani', '1dqna', '1d', 'flipper1day', 'hotspot1', '', '', '', 'flipper', '201709230932', '', 'mikrotik-1d', '', '2017-09-23 09:32:41', '10'),
('1wbrz', '1wihr', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpzd', '1wpil', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvgk', '1wbjx', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrvj', '1wptd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfqj', '1wurb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnhd', '1wrfx', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wccb', '1wudg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbll', '1wfvm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wmqc', '1wuls', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnuv', '1wgqr', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdhl', '1wwqa', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrmf', '1waik', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxnz', '1wvxj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wffl', '1wpvq', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjhg', '1wqns', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnsq', '1wbjs', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwta', '1wjqv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wkll', '1weix', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjza', '1wqzz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnsk', '1wtti', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjyj', '1wuwj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wahz', '1wcch', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbrt', '1wubi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwbf', '1wfcs', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqll', '1wgym', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtdq', '1wceg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wumy', '1wwnu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdwa', '1wyem', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvlu', '1wszl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxbj', '1wscd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wgjy', '1wkig', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtvz', '1wyzh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wagt', '1wmez', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wuvj', '1wmnk', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wugz', '1wadm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxbx', '1wwvy', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdig', '1wcuc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wsjt', '1wsuj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whhh', '1wrcl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjej', '1wwqt', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wksv', '1wady', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wzlj', '1wfzj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbxd', '1whzd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfme', '1wbrw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wejp', '1wjhw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wkyi', '1wnsi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvwf', '1wkkx', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfdj', '1wnkf', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfuk', '1wyfv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wati', '1wpke', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wkql', '1wjeh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvcr', '1wbqz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjlc', '1wwqg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqbk', '1wbtj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyxb', '1wtpu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtvy', '1wxzv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whab', '1wifb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcgi', '1whsl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyss', '1wcpz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wzld', '1wufd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wanw', '1wtqm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfdl', '1wpnw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqjf', '1wdsw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1weyj', '1wffz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wveu', '1wqjn', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxep', '1wkbs', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrlv', '1wews', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdus', '1wxxa', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrvf', '1wwvk', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfhe', '1wzng', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpiy', '1wxyh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwmf', '1wbgu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wstd', '1wlai', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1weez', '1wemr', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wgmt', '1wgai', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdke', '1wcdn', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wkvu', '1wlcb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wybn', '1wdsh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvgb', '1wqzz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtjq', '1wbvy', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwdz', '1wxkg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvlq', '1wzna', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfsj', '1wrxw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnms', '1wfev', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyrz', '1wjdi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxdg', '1wtig', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpdw', '1wapp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbif', '1wvfi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wiht', '1wzab', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whxs', '1wejp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wuxk', '1wvhu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlmt', '1wkut', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxgh', '1wxix', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wheq', '1wlbd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wntr', '1wbqh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtue', '1wzay', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wsbv', '1wqbr', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpmr', '1whqh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxib', '1wqqq', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyzc', '1wkua', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwim', '1wsgu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnil', '1wiad', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlir', '1wcvv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyre', '1wmyn', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdur', '1wudt', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wmvp', '1wmpg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wizl', '1wqxa', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdef', '1wvxf', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wewf', '1wusx', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcur', '1wilw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvkv', '1wntd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wprk', '1wctp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvde', '1wbhb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wijc', '1wtyb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wezp', '1wrrm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfsz', '1wkqb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfwc', '1wdbd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpxn', '1wkwi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wzdm', '1wgfg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wihe', '1wfmd', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwwh', '1wxsu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpig', '1wzjy', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdvp', '1wtfb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wday', '1wcys', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1widt', '1wkzs', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlnh', '1wjfa', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whwj', '1wqlw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwqt', '1wjgb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wmlr', '1wggi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1waih', '1wdqg', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlte', '1wmzs', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wamx', '1wisi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxri', '1wwis', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wzwj', '1werb', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjix', '1wzei', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbxw', '1wbja', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnxz', '1wafx', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrlw', '1wnjj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wmah', '1wcse', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlhj', '1wphl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcyh', '1wtkl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wgge', '1wyeh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfxw', '1wbdy', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxqa', '1wvus', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvlb', '1wdna', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wklk', '1wccn', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbtv', '1weri', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvkt', '1wlcp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqey', '1wxfw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwrh', '1wxvh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbbg', '1wilu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdar', '1wtkc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcfe', '1wkmu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wlxj', '1wrzw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wafk', '1wfyc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxac', '1wltm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxdk', '1wmlm', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wktq', '1whqz', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wniu', '1wzdc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wndd', '1wwph', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqmg', '1wwsc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqcb', '1wxrh', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbuc', '1wraq', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wjcz', '1wmaf', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wavh', '1wdws', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wujm', '1wnbj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wrtd', '1wblj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10');
INSERT INTO `mt_gen` (`user`, `pass`, `limit_uptime`, `profile`, `server_pro`, `mac_address`, `ip_address`, `email`, `comment`, `csv_code`, `money_code`, `group_name`, `group_code`, `date`, `mt_id`) VALUES
('1wsrg', '1wnmq', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwzn', '1whah', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wagc', '1wehp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcgj', '1wuwj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wsut', '1weeu', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxdl', '1wesf', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwgz', '1wtep', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wiku', '1wswk', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnwa', '1wlcj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whqv', '1whci', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wika', '1wsye', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wmzv', '1warl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1whtf', '1wrms', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wfxz', '1wzim', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wxlc', '1wmhv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqtn', '1watp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1witz', '1wgda', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wviu', '1wdiw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwrj', '1wmyy', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wnfi', '1wdsv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wtfp', '1wswv', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wyry', '1wfcw', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wksq', '1wiwc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wybk', '1wefj', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wcpc', '1wrgp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wqhc', '1wvec', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdyt', '1wepi', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wwuw', '1wyhn', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wpbp', '1wxhp', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wsyz', '1wmym', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wbse', '1wkfr', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wdsb', '1wvrl', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('1wvzf', '1wvnc', '7d', 'flipper1week', 'hotspot1', '', '', '', '', '201709231401', '', 'mikrotik-1w', '', '2017-09-23 14:01:00', '10'),
('cfyu', 'crky', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cagz', 'cixf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cccc', 'cdnm', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmdn', 'cvby', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cqgz', 'cnze', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpvv', 'cjcj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgjl', 'cqdh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnpk', 'ctek', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctsq', 'cksf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('crhd', 'ccui', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cezn', 'cidb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cqaq', 'ctjc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chee', 'cpaq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cujm', 'ccgr', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cldd', 'cycc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnbh', 'clbw', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnnp', 'cwhe', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgpz', 'cllj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgsn', 'chwa', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmin', 'ckyn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgax', 'cdzp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckjl', 'caza', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxaw', 'ctau', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvbs', 'cvhb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwbc', 'ctkp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cncd', 'cvug', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('czkr', 'cack', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cigw', 'cxwf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cexx', 'caxs', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctbq', 'ckfu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbdj', 'cmts', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdnt', 'cmmy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('csvb', 'ciex', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfke', 'cjdh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxta', 'ceyb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwys', 'crtu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwlx', 'cngi', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfrm', 'cdgy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnhd', 'cptv', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjlp', 'cnpe', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwsq', 'clrm', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbfw', 'cqtb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciyj', 'czrr', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckdm', 'cmuy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfga', 'cjhz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfum', 'cpci', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciyy', 'ceje', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjgr', 'csqj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctub', 'cagx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('czer', 'cxdp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cywk', 'cmhf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cswa', 'cbli', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpih', 'cxnk', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpxt', 'cgfn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyhx', 'cuga', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cywg', 'cjpa', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('caxl', 'chve', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cufh', 'cfdp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('crfp', 'czqe', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cikx', 'cbke', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdrx', 'czzt', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cafh', 'cxxf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbzt', 'cpxn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciwm', 'cjcs', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckld', 'cldc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clcf', 'cwdw', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdtr', 'cnxh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyfl', 'cdar', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnax', 'ctip', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvdc', 'ccuk', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckpw', 'clek', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckjr', 'cclb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cytl', 'cuxd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbmw', 'cjly', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxgv', 'crze', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjtv', 'cnct', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cynx', 'cdlg', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clcz', 'ccnk', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('crra', 'cwwf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbhc', 'cccq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgmd', 'czkg', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cznt', 'czzk', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxhy', 'cris', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnti', 'crmi', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbzf', 'cygd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cuwe', 'cbqs', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfsd', 'cwku', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwfp', 'ckik', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ccdp', 'cqnc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cucv', 'ckei', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chpi', 'cxbn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvrl', 'cavb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chwp', 'chiy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clfc', 'cnkz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctpu', 'cbce', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ceca', 'chsq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciex', 'cuva', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyng', 'cpms', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvns', 'cadd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdgn', 'cdra', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgad', 'cnfg', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cutz', 'cycj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ccdx', 'cycd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('csqn', 'csxj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cify', 'cgwa', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmgw', 'cbte', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cufa', 'cbjt', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyxi', 'cduz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cuuu', 'ccls', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clrw', 'ctvn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('crgs', 'cerc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chvs', 'cqsz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cquj', 'cwba', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cexb', 'cqeq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cryl', 'cddz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgwx', 'cjfj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciye', 'chsa', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('czuv', 'chzu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnvm', 'chkg', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('crqp', 'cfep', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cqwd', 'cqwx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyaj', 'csiu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clpn', 'culz', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwug', 'cren', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cnpy', 'cmwv', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctel', 'ctzs', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctbf', 'cpss', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cegs', 'cmbl', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clgx', 'cmkh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdnj', 'cvei', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfdu', 'cqta', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciln', 'crpp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdvt', 'cqkb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clyd', 'cgck', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjfa', 'cgvt', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctzm', 'cdwe', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cagv', 'cpdc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpap', 'cprx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('csku', 'ccim', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ctpx', 'cltl', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('csbd', 'cmdt', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpgi', 'czki', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ciwu', 'cvrf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmgm', 'cepy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cryc', 'crje', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckpn', 'cwsj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmxn', 'cutu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxgs', 'cdbh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckim', 'cqge', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdpd', 'crqi', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgiy', 'cxwr', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdyz', 'cuqx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cggy', 'crpb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cfrj', 'cace', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chtr', 'cgmd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvtj', 'chcu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgah', 'czvr', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbvy', 'cqkc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpmg', 'czak', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ceag', 'cgrq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cmvr', 'cusq', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cigh', 'cqyi', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyjk', 'cqca', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckzy', 'cngf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpka', 'cfcf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckey', 'chka', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckuz', 'cais', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpvc', 'ctiv', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cbrj', 'cpbd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cvht', 'cmqs', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cduf', 'cisv', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('czln', 'cvkd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cuen', 'cpeg', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cugy', 'cbxl', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('czyq', 'cjhi', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgwn', 'cdim', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clnj', 'cwku', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgxa', 'cfvt', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ceiy', 'cqbd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckdi', 'cbbu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpgd', 'calh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cccp', 'crdb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('chgy', 'cgdx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cura', 'cjan', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cqxk', 'cjem', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cdiz', 'cacu', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('ckdt', 'cwnd', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgnv', 'clvx', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cpvq', 'cgbf', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cyvr', 'cmry', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjvz', 'cyvh', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cjvs', 'cdrn', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cgze', 'cfwe', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('clqx', 'cgjk', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwkt', 'cnqc', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxyv', 'cdwv', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cknx', 'ckuy', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cwql', 'cghb', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxkq', 'cwgj', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('cxuj', 'cbnp', '365d', '1year', 'all', '', '', '', 'wellcom to cloud', '201709281648', '', 'mikrotik-c', '', '2017-09-28 16:48:07', '15'),
('1dhjt', '1dkib', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1djvc', '1drqz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1denz', '1dyuk', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcsz', '1dpih', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dhry', '1dcea', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1digk', '1djzp', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcwz', '1dxbt', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddvq', '1dzhz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dxtk', '1dsgg', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1deyr', '1dhkz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dgpm', '1dgnd', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkhf', '1dlhf', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1djfs', '1dtnq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddwr', '1dvyu', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dgfw', '1dzxa', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dbvz', '1dmvx', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcxf', '1dyxw', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dqpa', '1dxpz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dwgz', '1dyxi', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzqk', '1dxqd', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dyak', '1dfaq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dean', '1ddjz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dfxm', '1dzkc', '7d', 'flipper1week', 'hotspot1', '88:28:B3:03:4D:F5', '192.168.50.186', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddwp', '1dtsn', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzdh', '1dyvg', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkxr', '1dnbe', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dvqr', '1dyud', '7d', 'flipper1week', 'hotspot1', 'E4:58:E7:13:6A:54', '192.168.50.200', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dqxy', '1dych', '7d', 'flipper1week', 'hotspot1', '4C:74:BF:71:F9:B2', '192.168.50.223', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dwdi', '1dpaz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dsmb', '1dhvh', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dyvc', '1dfse', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dfuf', '1ddwd', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dxbb', '1ddqk', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dmex', '1dmcz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dmpt', '1dquz', '7d', 'flipper1week', 'hotspot1', 'D0:87:E2:26:20:BA', '192.168.50.108', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1diaw', '1dqab', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dvyf', '1dtsg', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dsnk', '1detr', '7d', 'flipper1week', 'hotspot1', '70:70:0D:A4:A9:D3', '192.168.50.154', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dtuj', '1dimn', '7d', 'flipper1week', 'hotspot1', '60:F1:89:1B:D8:10', '192.168.50.32', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1drmf', '1degs', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcer', '1damw', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1drtz', '1dffh', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkks', '1diwu', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1deax', '1dytg', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzck', '1dcwb', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dpvt', '1dwwx', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzlp', '1dzrg', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dtbm', '1dbpi', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1djdu', '1dvia', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcnm', '1dmxu', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dupc', '1dplm', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddji', '1dnqz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dnhh', '1ddwp', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1djjb', '1dubq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1diux', '1dsid', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1deyg', '1dpvu', '7d', 'flipper1week', 'hotspot1', '4C:7C:5F:03:F8:E0', '192.168.50.90', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dlqq', '1dgxq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dbch', '1dtza', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzvv', '1dkag', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dvqd', '1dmwe', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddxc', '1dkvq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dpeh', '1dvip', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzqg', '1dgli', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1ddzk', '1dawz', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dbvw', '1dbcl', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzyj', '1dwzs', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dugl', '1dxhv', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dxej', '1dtvc', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1durj', '1dxsw', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dysz', '1dmsc', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dhfa', '1dvmu', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dygi', '1dhai', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dtxa', '1dpyj', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dcfz', '1dpbb', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dazw', '1dxbp', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dddg', '1dgpq', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dgmv', '1diza', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dvly', '1djdr', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dgjw', '1dtfv', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dlkl', '1diub', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1drez', '1dyib', '7d', 'flipper1week', 'hotspot1', '20:D7:5A:3E:41:3F', '192.168.50.19', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1djft', '1dafp', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dczl', '1dvfn', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dzgc', '1dqav', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkas', '1dqhs', '7d', 'flipper1week', 'hotspot1', '88:AD:D2:C3:21:14', '192.168.50.39', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dngq', '1dbjp', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dajs', '1diwf', '7d', 'flipper1week', 'hotspot1', 'AC:56:2C:F9:74:92', '192.168.50.97', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dlyh', '1dbqx', '7d', 'flipper1week', 'hotspot1', 'FC:19:10:7D:55:03', '192.168.50.83', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dykn', '1dqru', '7d', 'flipper1week', 'hotspot1', 'C4:21:C8:C7:AC:ED', '192.168.50.18', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dftq', '1drve', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dqkf', '1dzrk', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dhix', '1dffz', '7d', 'flipper1week', 'hotspot1', '44:D4:E0:86:9B:6C', '192.168.50.254', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dqlq', '1dard', '7d', 'flipper1week', 'hotspot1', 'AC:22:0B:A7:63:0E', '192.168.50.70', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dejw', '1dbgw', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dlde', '1dysy', '7d', 'flipper1week', 'hotspot1', 'DC:2B:61:23:C6:90', '192.168.50.85', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dqku', '1dwak', '7d', 'flipper1week', 'hotspot1', 'C8:A8:23:9B:B3:C8', '192.168.50.117', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dhcb', '1dtfu', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkle', '1dzzj', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dwkw', '1djsd', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('1dkey', '1drbb', '7d', 'flipper1week', 'hotspot1', '', '', '', '1week', '201710041035', '', 'mikrotik-1d', '', '2017-10-04 10:35:09', '10'),
('stangzuc', 'stccje', '1d', '1h', 'hotspot1', 'A4:D1:8C:DB:06:FE', '10.5.50.149', '', 'oct/09/2017 13:29:37', '201710091327', 'oct/09/2017-id16', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangjyj', 'stcbgh', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangalm', 'stcngz', '1d', '1h', 'hotspot1', 'C8:38:70:FC:E8:DC', '10.5.50.130', '', 'oct/09/2017 18:14:00', '201710091327', 'oct/09/2017-id16', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangveu', 'stcrwp', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangtkp', 'stcylx', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangsyc', 'stcspi', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangunp', 'stcdbm', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangbtk', 'stcatq', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangysi', 'stcqus', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16'),
('stangspw', 'stctvz', '1d', '1h', 'hotspot1', '', '', '', '', '201710091327', '', 'mikrotik-stang', '', '2017-10-09 13:27:49', '16');

-- --------------------------------------------------------

--
-- Table structure for table `mt_money`
--

CREATE TABLE IF NOT EXISTS `mt_money` (
  `utc_time_for_chart` varchar(50) NOT NULL,
  `money_code` varchar(50) NOT NULL,
  `date` varchar(11) NOT NULL,
  `month_code` varchar(50) NOT NULL,
  `month` varchar(8) NOT NULL,
  `tickets` varchar(50) NOT NULL,
  `money` varchar(50) NOT NULL,
  `mt_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mt_money_month`
--

CREATE TABLE IF NOT EXISTS `mt_money_month` (
  `month_code` varchar(20) NOT NULL,
  `day_01` varchar(20) NOT NULL,
  `day_02` varchar(20) NOT NULL,
  `day_03` varchar(20) NOT NULL,
  `day_04` varchar(20) NOT NULL,
  `day_05` varchar(20) NOT NULL,
  `day_06` varchar(20) NOT NULL,
  `day_07` varchar(20) NOT NULL,
  `day_08` varchar(20) NOT NULL,
  `day_09` varchar(20) NOT NULL,
  `day_10` varchar(20) NOT NULL,
  `day_11` varchar(20) NOT NULL,
  `day_12` varchar(20) NOT NULL,
  `day_13` varchar(20) NOT NULL,
  `day_14` varchar(20) NOT NULL,
  `day_15` varchar(20) NOT NULL,
  `day_16` varchar(20) NOT NULL,
  `day_17` varchar(20) NOT NULL,
  `day_18` varchar(20) NOT NULL,
  `day_19` varchar(20) NOT NULL,
  `day_20` varchar(20) NOT NULL,
  `day_21` varchar(20) NOT NULL,
  `day_22` varchar(20) NOT NULL,
  `day_23` varchar(20) NOT NULL,
  `day_24` varchar(20) NOT NULL,
  `day_25` varchar(20) NOT NULL,
  `day_26` varchar(20) NOT NULL,
  `day_27` varchar(20) NOT NULL,
  `day_28` varchar(20) NOT NULL,
  `day_29` varchar(20) NOT NULL,
  `day_30` varchar(20) NOT NULL,
  `day_31` varchar(20) NOT NULL,
  `mt_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mt_money_year`
--

CREATE TABLE IF NOT EXISTS `mt_money_year` (
  `year` varchar(20) NOT NULL,
  `jan` varchar(20) NOT NULL,
  `feb` varchar(20) NOT NULL,
  `mar` varchar(20) NOT NULL,
  `apr` varchar(20) NOT NULL,
  `may` varchar(20) NOT NULL,
  `jun` varchar(20) NOT NULL,
  `jul` varchar(20) NOT NULL,
  `aug` varchar(20) NOT NULL,
  `sep` varchar(20) NOT NULL,
  `oct` varchar(20) NOT NULL,
  `nov` varchar(20) NOT NULL,
  `december` varchar(20) NOT NULL,
  `mt_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mt_profile`
--

CREATE TABLE IF NOT EXISTS `mt_profile` (
  `pro_name` varchar(50) NOT NULL,
  `pro_session` varchar(20) NOT NULL,
  `pro_idle` varchar(20) NOT NULL,
  `pro_keepalive` varchar(20) NOT NULL,
  `pro_autorefresh` varchar(20) NOT NULL,
  `pro_expire` varchar(20) NOT NULL,
  `pro_users` varchar(5) NOT NULL,
  `pro_limit` varchar(20) NOT NULL,
  `pro_price` int(6) NOT NULL,
  `vat` int(4) NOT NULL,
  `card_name` varchar(30) NOT NULL,
  `home_page` varchar(30) NOT NULL,
  `time_limit` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `server_ip` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `pro_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mt_profile`
--

INSERT INTO `mt_profile` (`pro_name`, `pro_session`, `pro_idle`, `pro_keepalive`, `pro_autorefresh`, `pro_expire`, `pro_users`, `pro_limit`, `pro_price`, `vat`, `card_name`, `home_page`, `time_limit`, `phone`, `server_ip`, `color`, `pro_date`) VALUES
('1Day', '', 'none', '00:02:00', '00:01:00', '24', '2', '30m/10m', 50, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '1 day', '038-231056-8', '192.168.182.1', '#33FFFB', '2017-09-22 14:23:30'),
('2Days', '', 'none', '00:02:00', '00:01:00', '48', '2', '30m/10m', 100, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '2 day', '038-231056-8', '192.168.182.1', '#FFD969', '2017-09-22 14:24:24'),
('3Days', '', 'none', '00:02:00', '00:01:00', '72', '2', '30m/10m', 150, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '3 day', '038-231056-8', '192.168.182.1', '#4EFF4A', '2017-09-22 14:25:58'),
('1week', '', 'none', '00:02:00', '00:01:00', '168', '2', '30m/10m', 300, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '1 week', '038-231056-8', '192.168.182.1', '#6633FF', '2017-09-22 14:27:01'),
('2week', '', 'none', '00:02:00', '00:01:00', '336', '2', '30m/10m', 500, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '2 week', '038-231056-8', '192.168.182.1', '#FF40D0', '2017-09-22 14:27:44'),
('1mount', '', 'none', '00:02:00', '00:01:00', '720', '2', '30m/10m', 700, 0, 'Sea Breeze WiFi Card', 'www.hotspot.wifi', '1 mount', '038-231056-8', '192.168.182.1', '#E34D12', '2017-09-22 14:28:30'),
('flipper1day', '', 'none', '00:02:00', '00:01:00', '24', '2', '50m/20m', 50, 0, 'Flipper Lodge  WiFi Card', 'www.hotspot.wifi', '1 day', '', '192.168.50.1', '#45FFF5', '2017-09-23 09:15:00'),
('flipper2day', '', 'none', '00:02:00', '00:01:00', '48', '2', '50m/20m', 100, 0, 'Flipper Lodge  WiFi Card', 'www.hotspot.wifi', '2 day', '', '192.168.50.1', '#FFDF6B', '2017-09-23 09:16:05'),
('flipper3day', '', 'none', '00:02:00', '00:01:00', '72', '2', '50m/20m', 150, 0, 'Flipper Lodge  WiFi Card', 'www.hotspot.wifi', '3 day', '', '192.168.50.1', '#52FFEA', '2017-09-23 09:16:55'),
('flipper4day', '', 'none', '00:02:00', '00:01:00', '96', '2', '50m/20m', 180, 0, '', '', '', '', '', '', '2017-09-23 09:18:06'),
('flipper1week', '', 'none', '00:02:00', '00:01:00', '168', '2', '50m/20m', 300, 0, 'Flipper Lodge  WiFi Card', 'www.hotspot.wifi', '1 week', '', '192.168.50.1', '#3034FF', '2017-09-23 09:18:50'),
('flipper1mount', '', 'none', '00:02:00', '00:01:00', '720', '2', '50m/20m', 700, 0, '', '', '', '', '', '', '2017-09-23 09:19:29'),
('flipper2week', '', 'none', '00:02:00', '00:01:00', '336', '2', '50m/20m', 500, 0, '', '', '', '', '', '', '2017-09-23 09:20:14'),
('1year', '', 'none', '00:02:00', '00:01:00', '8760', '4', '20m/10m', 0, 0, 'The Cloud WiFi', 'www.thecloud.wifi', '365', '', '192.168.200.1', '#FFC76C', '2017-09-28 16:46:18'),
('1h', '00:01:00', 'none', '00:02:00', '00:01:00', '1', '1', '5M/20M', 10, 0, 'StangComputer', '10.5.50.1', '1h', '', '10.5.50.1', '#6F83FF', '2017-10-09 13:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `pppoe_gen`
--

CREATE TABLE IF NOT EXISTS `pppoe_gen` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `profile` varchar(20) NOT NULL,
  `caller_id` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `csv_code` varchar(50) NOT NULL,
  `money_code` varchar(50) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_code` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `mt_id` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pppoe_money`
--

CREATE TABLE IF NOT EXISTS `pppoe_money` (
  `utc_time_for_chart` varchar(50) NOT NULL,
  `money_code` varchar(50) NOT NULL,
  `date` varchar(11) NOT NULL,
  `month_code` varchar(50) NOT NULL,
  `month` varchar(8) NOT NULL,
  `tickets` varchar(50) NOT NULL,
  `money` varchar(50) NOT NULL,
  `mt_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pppoe_money_month`
--

CREATE TABLE IF NOT EXISTS `pppoe_money_month` (
  `month_code` varchar(20) NOT NULL,
  `day_01` varchar(20) NOT NULL,
  `day_02` varchar(20) NOT NULL,
  `day_03` varchar(20) NOT NULL,
  `day_04` varchar(20) NOT NULL,
  `day_05` varchar(20) NOT NULL,
  `day_06` varchar(20) NOT NULL,
  `day_07` varchar(20) NOT NULL,
  `day_08` varchar(20) NOT NULL,
  `day_09` varchar(20) NOT NULL,
  `day_10` varchar(20) NOT NULL,
  `day_11` varchar(20) NOT NULL,
  `day_12` varchar(20) NOT NULL,
  `day_13` varchar(20) NOT NULL,
  `day_14` varchar(20) NOT NULL,
  `day_15` varchar(20) NOT NULL,
  `day_16` varchar(20) NOT NULL,
  `day_17` varchar(20) NOT NULL,
  `day_18` varchar(20) NOT NULL,
  `day_19` varchar(20) NOT NULL,
  `day_20` varchar(20) NOT NULL,
  `day_21` varchar(20) NOT NULL,
  `day_22` varchar(20) NOT NULL,
  `day_23` varchar(20) NOT NULL,
  `day_24` varchar(20) NOT NULL,
  `day_25` varchar(20) NOT NULL,
  `day_26` varchar(20) NOT NULL,
  `day_27` varchar(20) NOT NULL,
  `day_28` varchar(20) NOT NULL,
  `day_29` varchar(20) NOT NULL,
  `day_30` varchar(20) NOT NULL,
  `day_31` varchar(20) NOT NULL,
  `mt_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pppoe_money_year`
--

CREATE TABLE IF NOT EXISTS `pppoe_money_year` (
  `year` varchar(11) NOT NULL,
  `jan` varchar(11) NOT NULL,
  `feb` varchar(11) NOT NULL,
  `mar` varchar(11) NOT NULL,
  `apr` varchar(11) NOT NULL,
  `may` varchar(11) NOT NULL,
  `jun` varchar(11) NOT NULL,
  `jul` varchar(11) NOT NULL,
  `aug` varchar(11) NOT NULL,
  `sep` varchar(11) NOT NULL,
  `oct` varchar(11) NOT NULL,
  `nov` varchar(11) NOT NULL,
  `december` varchar(11) NOT NULL,
  `mt_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pppoe_pro`
--

CREATE TABLE IF NOT EXISTS `pppoe_pro` (
  `pro_name` varchar(20) NOT NULL,
  `pro_local` varchar(50) NOT NULL,
  `pro_remote` varchar(50) NOT NULL,
  `pro_session` varchar(50) NOT NULL,
  `pro_limit` varchar(50) NOT NULL,
  `pro_expire` varchar(50) NOT NULL,
  `pro_price` int(6) NOT NULL,
  `vat` int(4) NOT NULL,
  `card_name` varchar(30) NOT NULL,
  `data_limit` varchar(30) NOT NULL,
  `time_limit` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `server_ip` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am`
--
ALTER TABLE `am`
 ADD PRIMARY KEY (`am_id`);

--
-- Indexes for table `mt_config`
--
ALTER TABLE `mt_config`
 ADD PRIMARY KEY (`mt_num`);

--
-- Indexes for table `mt_edit`
--
ALTER TABLE `mt_edit`
 ADD PRIMARY KEY (`number`);

--
-- Indexes for table `mt_gen`
--
ALTER TABLE `mt_gen`
 ADD PRIMARY KEY (`user`);

--
-- Indexes for table `mt_money`
--
ALTER TABLE `mt_money`
 ADD PRIMARY KEY (`utc_time_for_chart`);

--
-- Indexes for table `mt_money_month`
--
ALTER TABLE `mt_money_month`
 ADD PRIMARY KEY (`month_code`);

--
-- Indexes for table `mt_money_year`
--
ALTER TABLE `mt_money_year`
 ADD PRIMARY KEY (`year`);

--
-- Indexes for table `mt_profile`
--
ALTER TABLE `mt_profile`
 ADD PRIMARY KEY (`pro_name`);

--
-- Indexes for table `pppoe_gen`
--
ALTER TABLE `pppoe_gen`
 ADD PRIMARY KEY (`user`);

--
-- Indexes for table `pppoe_money`
--
ALTER TABLE `pppoe_money`
 ADD PRIMARY KEY (`utc_time_for_chart`);

--
-- Indexes for table `pppoe_money_month`
--
ALTER TABLE `pppoe_money_month`
 ADD PRIMARY KEY (`month_code`);

--
-- Indexes for table `pppoe_money_year`
--
ALTER TABLE `pppoe_money_year`
 ADD PRIMARY KEY (`year`);

--
-- Indexes for table `pppoe_pro`
--
ALTER TABLE `pppoe_pro`
 ADD PRIMARY KEY (`pro_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am`
--
ALTER TABLE `am`
MODIFY `am_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `mt_config`
--
ALTER TABLE `mt_config`
MODIFY `mt_num` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mt_edit`
--
ALTER TABLE `mt_edit`
MODIFY `number` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
