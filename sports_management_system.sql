-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 03:55 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_number`
--

CREATE TABLE `auto_number` (
  `auto_id` int(11) NOT NULL,
  `auto_start` int(11) NOT NULL,
  `auto_end` int(11) NOT NULL,
  `auto_increment` int(11) NOT NULL,
  `auto_desc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auto_number`
--

INSERT INTO `auto_number` (`auto_id`, `auto_start`, `auto_end`, `auto_increment`, `auto_desc`) VALUES
(1, 100, 25, 1, 'MATCH'),
(2, 100, 60, 1, 'PLYR'),
(3, 200, 43, 1, 'SY'),
(4, 1000, 9, 1, 'SCHL'),
(5, 100, 4, 1, 'SPORT'),
(6, 100, 3, 1, 'EQUIP'),
(7, 200, 5, 1, 'CCH'),
(8, 100, 6, 1, 'TEAMA'),
(9, 100, 0, 1, 'TEAMB'),
(10, 200, 7, 1, 'FCLTR'),
(11, 100, 4, 1, 'REF'),
(12, 100, 1, 1, 'VEN'),
(13, 100, 1, 1, 'TYPE'),
(14, 100, 2, 1, 'AWD');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `award_id` int(11) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `total_gold` int(11) NOT NULL,
  `total_silver` int(11) NOT NULL,
  `total_bronze` int(11) NOT NULL,
  `award_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`award_id`, `school_code`, `total_gold`, `total_silver`, `total_bronze`, `award_code`) VALUES
(2, 'SCHL-1000', 5, 1, 1, 'AWD-100'),
(3, 'SCHL-1001', 10, 5, 2, 'AWD-101');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coach_id` int(11) NOT NULL,
  `coach_name` varchar(30) NOT NULL,
  `coach_contact` varchar(80) DEFAULT NULL,
  `coach_address` text NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `coach_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coach_id`, `coach_name`, `coach_contact`, `coach_address`, `school_code`, `coach_code`) VALUES
(1, 'arque calvez', '+639092363542', 'Payao, Binalbagan', 'SCHL-1000', 'bcccoachbasket'),
(2, 'Vice ganda', '+639072837364', 'Sipalay', 'SCHL-1006', 'unocoachbasket'),
(3, 'allysa valdez', '+639093202392', 'Quezon City', 'SCHL-1005', 'southbadcoach'),
(4, 'grace patulada', '+639093292494', 'Nabalian', 'SCHL-1004', 'wvsubadcoach'),
(5, 'Michael Reyes', '639092355524', 'Bacolod City', 'SCHL-1007', 'CCH-200'),
(6, 'dsfsdf', '9128993433', 'wrwer', 'SCHL-1001', 'CCH-201'),
(7, 'jasper catague', '639092343424', 'Himamayln City', 'SCHL-1002', 'CCH-202'),
(8, 'jason bat-og', '639091243434', 'Bacolod City', 'SCHL-1004', 'CCH-203'),
(9, 'Charlyn Walaklaro', '+639223434343', 'Kabankalan City', 'SCHL-1001', 'CCH-204');

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE `equipments` (
  `equipment_id` int(11) NOT NULL,
  `equipment_name` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `available_qty` int(11) NOT NULL,
  `quantity_out` int(11) NOT NULL,
  `equipment_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`equipment_id`, `equipment_name`, `quantity`, `available_qty`, `quantity_out`, `equipment_code`, `sport_code`) VALUES
(1, 'Basketball Score Board', 5, -4, 1, 'basketsbequip', 'basketball1'),
(2, 'Basketball Ball', 10, -8, 2, 'basketbequip', 'basketball1'),
(3, 'Shuttle cock', 10, 8, 2, 'shuttle2019', 'Badminton2019'),
(4, 'Badminton Net', 10, 9, 1, 'badnet2019', 'Badminton2019'),
(5, 'Sepak Takraw Ball', 10, 10, 0, 'EQUIP-100', 'SPORT-100');

-- --------------------------------------------------------

--
-- Table structure for table `facilitator`
--

CREATE TABLE `facilitator` (
  `facilitator_id` int(11) NOT NULL,
  `facilitator_name` varchar(30) NOT NULL,
  `facilitator_gender` varchar(30) NOT NULL,
  `facilitator_address` text NOT NULL,
  `facilitator_contact` varchar(80) DEFAULT NULL,
  `facilitator_type` text NOT NULL,
  `facilitator_status` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilitator`
--

INSERT INTO `facilitator` (`facilitator_id`, `facilitator_name`, `facilitator_gender`, `facilitator_address`, `facilitator_contact`, `facilitator_type`, `facilitator_status`, `facilitator_code`) VALUES
(1, 'niko curaza', 'Male', 'Himamylan City', '+639128993433', 'Equipment', 'Available', 'basketequipfac'),
(2, 'Adrian Mercurio', 'Male', 'Brgy. Suay Himamaylan City', '+639300612294', 'Table', 'Available', 'baskettablefac'),
(3, 'James Bond', 'Male', 'Brgy. Aguisan Himamaylan City', '+639128993433', 'Table', 'Available', 'FCLTR-200'),
(4, 'mica milagrosa', 'Female', 'Hinigaran', '09122484475', 'Equipment', 'Available', 'FCLTR-201'),
(5, 'Jezah Lima', 'Male', 'Binalbagan Negros Occidental', '+639129394844', 'Equipment', 'Available', 'FCLTR-202'),
(6, 'jade ilongan', 'Male', 'Himamaylan City', '+639091294844', 'Equipment', 'Available', 'FCLTR-203'),
(7, 'Arnold Perez', 'Male', 'Mambato Tooy Himamaylan City', '+639837234234', 'Table', 'Available', 'FCLTR-204'),
(8, 'fewfwe', 'Male', 'ewff', '+639234323432', 'Table', 'Available', 'FCLTR-205'),
(9, 'jerald Nunez', 'Male', 'Isabela', '+639836253627', 'Equipment', 'Available', 'FCLTR-206');

-- --------------------------------------------------------

--
-- Table structure for table `game_result`
--

CREATE TABLE `game_result` (
  `game_result_id` int(11) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `winner` varchar(30) NOT NULL,
  `losser` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL,
  `referee_code` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL,
  `game_result_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game_type`
--

CREATE TABLE `game_type` (
  `game_type_id` int(11) NOT NULL,
  `type_of_game` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_type`
--

INSERT INTO `game_type` (`game_type_id`, `type_of_game`, `game_type_code`) VALUES
(1, 'Team', 'TeamGame'),
(2, 'Double', 'DoubleGame'),
(3, 'Single', 'SingleGame'),
(4, 'Tournament', 'TYPE-100');

-- --------------------------------------------------------

--
-- Table structure for table `losser`
--

CREATE TABLE `losser` (
  `losser_id` int(11) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `team_player_code` varchar(30) NOT NULL,
  `final_score` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `losser_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `match_schedule`
--

CREATE TABLE `match_schedule` (
  `match_id` int(11) NOT NULL,
  `team_playerA_code` varchar(30) NOT NULL,
  `team_playerB_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `referee_code` varchar(30) NOT NULL,
  `equipment_code` varchar(30) NOT NULL,
  `facilitator_code` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL,
  `match_date` text NOT NULL,
  `match_time` text NOT NULL,
  `time_end` varchar(30) NOT NULL,
  `match_type` varchar(30) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `match_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `match_schedule`
--

INSERT INTO `match_schedule` (`match_id`, `team_playerA_code`, `team_playerB_code`, `sport_code`, `referee_code`, `equipment_code`, `facilitator_code`, `venue_code`, `match_date`, `match_time`, `time_end`, `match_type`, `match_code`, `sy_code`, `match_status`) VALUES
(57, 'Team Bcc', 'Team FBC', 'basketball1', 'ref1_basket1', 'basketsbequip', 'basketequipfac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(58, 'Team Bcc', 'Team FBC', 'basketball1', 'ref1_basket1', 'basketsbequip', 'baskettablefac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(59, 'Team Bcc', 'Team FBC', 'basketball1', 'ref1_basket1', 'basketbequip', 'basketequipfac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(60, 'Team Bcc', 'Team FBC', 'basketball1', 'ref1_basket1', 'basketbequip', 'baskettablefac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(61, 'Team Bcc', 'Team FBC', 'basketball1', 'ref2_basket1', 'basketsbequip', 'basketequipfac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(62, 'Team Bcc', 'Team FBC', 'basketball1', 'ref2_basket1', 'basketsbequip', 'baskettablefac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(63, 'Team Bcc', 'Team FBC', 'basketball1', 'ref2_basket1', 'basketbequip', 'basketequipfac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(64, 'Team Bcc', 'Team FBC', 'basketball1', 'ref2_basket1', 'basketbequip', 'baskettablefac', 'chmscbc', '09/12/2019', '10:00:00 AM', '11:00:00 AM', 'Normal Game', 'MATCH-123', 'S.Y. 18-19', 'ON GAME'),
(65, 'Southland', 'Wvsu', 'Badminton2019', 'ref_badminton2019', 'shuttle2019', 'FCLTR-204', 'chmscfr1', '09/12/2019', '8:00:00 AM', '9:00:00 AM', 'Normal Game', 'MATCH-124', 'S.Y. 18-19', 'ON GAME'),
(66, 'Southland', 'Wvsu', 'Badminton2019', 'ref_badminton2019', 'shuttle2019', 'FCLTR-205', 'chmscfr1', '09/12/2019', '8:00:00 AM', '9:00:00 AM', 'Normal Game', 'MATCH-124', 'S.Y. 18-19', 'ON GAME'),
(67, 'Southland', 'Wvsu', 'Badminton2019', 'ref_badminton2019', 'badnet2019', 'FCLTR-204', 'chmscfr1', '09/12/2019', '8:00:00 AM', '9:00:00 AM', 'Normal Game', 'MATCH-124', 'S.Y. 18-19', 'ON GAME'),
(68, 'Southland', 'Wvsu', 'Badminton2019', 'ref_badminton2019', 'badnet2019', 'FCLTR-205', 'chmscfr1', '09/12/2019', '8:00:00 AM', '9:00:00 AM', 'Normal Game', 'MATCH-124', 'S.Y. 18-19', 'ON GAME');

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagein`
--

INSERT INTO `messagein` (`Id`, `SendTime`, `ReceiveTime`, `MessageFrom`, `MessageTo`, `SMSC`, `MessageText`, `MessageType`, `MessageParts`, `MessagePDU`, `Gateway`, `UserId`) VALUES
(1, '2019-09-27 15:03:29', NULL, '+639956383227', '+639129973051', NULL, '    ', NULL, NULL, NULL, NULL, NULL),
(2, '2019-10-13 21:30:06', NULL, '+639102973084', '639482927681', NULL, 'TYAKTUHA MAG SEND JUDE !!', NULL, NULL, NULL, NULL, NULL),
(3, '2018-12-02 12:27:23', NULL, 'TNT', '', NULL, 'Celebrate #SmartAMAZING25 with us! Get a chance to win amazing monthly surprises and P25M in the grand draw! Dial *121# to find out more!', NULL, NULL, NULL, NULL, NULL),
(4, '2018-10-25 20:50:20', NULL, '+639751811815', '', NULL, 'Dili ra, kalas naman pliti, tag 150 naman ceres', NULL, NULL, NULL, NULL, NULL),
(5, '2018-11-21 21:42:03', NULL, '+639070344612', '', NULL, 'g0od nyt mr. q i love u swet drems plangga tman ka mr. q nd gd q mag bg o para cmu himoon q man ang tanan para mag w0rk relationship ta mr. q thank u gd sang tanan2x mr. q halung ka always i love u 4eVER mr. q g0od nyt liwat i l0ve u plangga.500X tgd ka mr. q im so pr0ud nga bana tka mr. q l0ve l0ve u', NULL, NULL, NULL, NULL, NULL),
(6, '2018-08-01 21:03:11', NULL, '+639070344612', '', NULL, 'g0od nigth happy 8th monthsary lhubz stay str0ng to us l0ve u always lhubz sweet dreams takecare always l0ve u l0ve u pii 8thmnthsary lwat l0ve u', NULL, NULL, NULL, NULL, NULL),
(7, '2018-08-25 21:42:09', NULL, '+639070344612', '', NULL, '2l0g nku lhubz aga pko daan bwas cge nyt l0ve u happy 7thm0nthsary lhubz stay str0ng to us G0d bless us kag palangga tgid ka salamat sng tanan2x l0ve u b mr. q u r the one in my heart mr. q sweet dreams l0ve.2 tgid ka always l0ve u m0re nyt lwat langga q i l0ve u until my last breath mr. q', NULL, NULL, NULL, NULL, NULL),
(8, '2018-10-01 20:18:35', NULL, '+639070344612', '', NULL, 'g0od nyt mr q happy 10th m0nthsary stay str0ng kag tne ndi ka mag bg.o l0ve u l0ve u l0ve u m0re plangga tgid ka sweet dreams takecare always l0ve u mr q', NULL, NULL, NULL, NULL, NULL),
(9, '2018-08-13 20:47:50', NULL, '+639070344612', '', NULL, 'nyt lhubz i love u planga gd tka i love u thank u sa tanan lhubz tandaan mu lhubz ikaw lng gd ang palanggaon q sweet dreams always take g0od care of y0ur self l0ve u lhubz q', NULL, NULL, NULL, NULL, NULL),
(10, '2018-12-04 21:58:59', NULL, '+639070344612', '', NULL, 'Good nigth mr. q i l0ve u so much  i am very bless,thankful and lucky to have u in my life u are my strenght and inspirati0n everytime and where ever i am i really.2 thankful because u give me all the l0ve that i cann\'t expect to 0thers thank u for being g0od,l0ving,caring,loyal,giver,and patient i h0pe there will be f0rever i h0pe that God make\'s our relati0nship str0ng il0ve u and s0rry for everything l0ve u mr. q u are my air why? because i cann\'t breath with0ut you l0ve u bana q ', NULL, NULL, NULL, NULL, NULL),
(11, '2018-12-10 21:17:06', NULL, '+639070344612', '', NULL, 'Good nyt mr. q il0ve u sweet dreams takecare always mr. q thank u for everything u are my life mr. q s0rry f0r everything l0ve.2 u always mr. q mwaahh g0', NULL, NULL, NULL, NULL, NULL),
(12, '2018-12-04 22:01:32', NULL, '+639070344612', '', NULL, ' are my air why? because i cann\'t breath with0ut you mr. q il0ve u', NULL, NULL, NULL, NULL, NULL),
(13, '2018-09-28 21:00:36', NULL, '+639070344612', '', NULL, 'g0od nyt sweet dreams always takecare mr q palanqqa tgid ka subra l0ve u l0ve u l0ve.1000x l0ve u mr q u are the 0nly man in my life i\'m yours and your m', NULL, NULL, NULL, NULL, NULL),
(14, '2018-09-28 21:00:48', NULL, '+639070344612', '', NULL, 'ver dreams c0me true kgid para sa ak0n mr q l0ve u', NULL, NULL, NULL, NULL, NULL),
(15, '2018-12-05 21:37:52', NULL, '+639070344612', '', NULL, 'mr. q g0od nigth i l0ve u always takecare may God make our relati0nship str0ng thank u for everything i want to spent my life with u forever im so very.2', NULL, NULL, NULL, NULL, NULL),
(16, '2018-10-01 20:18:38', NULL, '+639070344612', '', NULL, ' u are my life i can live with0ut you l0ve u langga q f0rever', NULL, NULL, NULL, NULL, NULL),
(17, '2018-09-26 20:23:30', NULL, '+639070344612', '', NULL, 'g0od nyt mr. q sweet dreams l0ve u take care akways tne ndi ka mag bag.0 palangga tgid ka subra muwah l0ve u \r\n\r\nHENRY DAMAYON TNE D KNA MA DULA R SKUN I L', NULL, NULL, NULL, NULL, NULL),
(18, '2019-11-10 23:01:25', NULL, '+639125113555', '639125113555', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `MessageGuid` text,
  `MessageInfo` text,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `MessageGuid`, `MessageInfo`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(1, '2019-09-27 15:04:50', NULL, 200, NULL, '+639489888944', NULL, 'TEST WALA CHALLENGE DATABASE NMAN', NULL, '1:+639489888944:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2019-09-27 15:04:51', NULL, 200, NULL, '+639489888944', NULL, 'TEST WALA CHALLENGE ANOTHER', NULL, '1:+639489888944:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2019-09-27 15:06:11', NULL, 200, NULL, '+639489888944', NULL, 'ANOTHER FROM DATABASE', NULL, '1:+639489888944:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2019-10-23 14:11:36', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2019-10-23 14:11:36', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2019-10-23 14:11:36', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2019-10-23 14:11:36', NULL, 300, NULL, '+639480522678', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2019-10-23 14:11:36', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2019-10-23 14:11:36', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2019-10-23 14:11:36', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2019-10-23 14:11:36', NULL, 300, NULL, '+639480522678', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2019-10-23 14:11:36', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2019-10-23 14:11:36', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2019-10-23 14:11:36', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2019-10-23 14:11:36', NULL, 300, NULL, '+639093774752', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2019-10-23 14:11:36', NULL, 300, NULL, '+639488190633', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2019-10-23 14:11:36', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2019-10-23 14:16:41', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2019-10-23 14:16:41', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2019-10-23 14:16:41', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2019-10-23 14:16:41', NULL, 300, NULL, '+639480522678', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2019-10-23 14:16:41', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2019-10-23 14:16:41', NULL, 300, NULL, '09093774752', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2019-10-23 14:16:41', NULL, 300, NULL, '+639129973051', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2019-10-23 14:16:41', NULL, 300, NULL, '09098282822', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2019-10-23 14:16:41', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2019-10-23 14:16:41', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2019-10-23 14:16:41', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2019-10-23 14:16:41', NULL, 300, NULL, '+639480522678', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2019-10-23 14:16:41', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2019-10-23 14:16:41', NULL, 300, NULL, '09093774752', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2019-10-23 14:16:41', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2019-10-23 14:16:41', NULL, 300, NULL, '09098282822', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2019-10-23 14:16:41', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2019-10-23 14:16:41', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2019-10-23 14:16:41', NULL, 300, NULL, '2147483647', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2019-10-23 14:16:41', NULL, 300, NULL, '+639093774752', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2019-10-23 14:16:41', NULL, 300, NULL, '+639488190633', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2019-10-23 14:16:41', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2019-11-02 09:33:56', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2019-11-02 09:33:56', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2019-11-02 09:34:12', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2019-11-02 09:34:12', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2019-11-02 09:38:43', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2019-11-02 09:38:43', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2019-11-02 09:38:43', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2019-11-02 09:38:43', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2019-11-02 09:38:43', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2019-11-02 09:38:43', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2019-11-02 09:38:43', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2019-11-02 09:38:43', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2019-11-02 09:38:43', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2019-11-02 09:38:43', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2019-11-02 09:38:43', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2019-11-02 09:38:43', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2019-11-02 09:38:43', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2019-11-02 09:38:43', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2019-11-02 09:38:43', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2019-11-02 09:38:43', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2019-11-02 09:38:43', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2019-11-02 09:38:43', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2019-11-02 09:38:43', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2019-11-02 09:38:43', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2019-11-02 09:38:43', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2019-11-02 09:38:43', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2019-11-02 09:38:43', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2019-11-02 09:38:43', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2019-11-02 09:38:43', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2019-11-02 09:38:43', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2019-11-02 09:55:46', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2019-11-02 09:55:46', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2019-11-02 09:55:46', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2019-11-02 09:55:46', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2019-11-02 09:55:46', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2019-11-02 09:55:46', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2019-11-02 09:55:46', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2019-11-02 09:55:46', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2019-11-02 09:55:46', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2019-11-02 09:55:46', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2019-11-02 09:55:46', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2019-11-02 09:55:46', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2019-11-02 09:55:46', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2019-11-02 09:55:46', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2019-11-02 09:55:46', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2019-11-02 09:55:46', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2019-11-02 09:55:46', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2019-11-02 09:55:46', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2019-11-02 09:55:46', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2019-11-02 09:55:46', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2019-11-02 09:55:46', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2019-11-02 09:55:46', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2019-11-02 09:55:46', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2019-11-02 09:55:46', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2019-11-02 09:55:46', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2019-11-02 09:55:46', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2019-11-02 10:03:53', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2019-11-02 10:03:53', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2019-11-02 10:03:53', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2019-11-02 10:03:53', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2019-11-02 10:03:53', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2019-11-02 10:03:54', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2019-11-02 10:03:54', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2019-11-02 10:03:54', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2019-11-02 10:03:54', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2019-11-02 10:03:54', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2019-11-02 10:03:54', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2019-11-02 10:03:54', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2019-11-02 10:03:54', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2019-11-02 10:03:54', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2019-11-02 10:03:54', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2019-11-02 10:03:54', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2019-11-02 10:03:54', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2019-11-02 10:03:54', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2019-11-02 10:03:54', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2019-11-02 10:03:54', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2019-11-02 10:03:54', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2019-11-02 10:03:54', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2019-11-02 10:03:54', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2019-11-02 10:03:54', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2019-11-02 11:28:42', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2019-11-02 11:28:42', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2019-11-02 11:28:42', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2019-11-02 11:28:42', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2019-11-02 11:28:42', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2019-11-02 11:28:42', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2019-11-02 11:28:42', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2019-11-02 11:28:42', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2019-11-02 11:28:42', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2019-11-02 11:28:42', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2019-11-02 11:28:42', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2019-11-02 11:28:42', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2019-11-02 11:28:42', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2019-11-02 11:28:42', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2019-11-02 11:28:42', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2019-11-02 11:28:42', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2019-11-02 11:28:42', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2019-11-02 11:28:42', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2019-11-02 11:28:42', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2019-11-02 11:28:42', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2019-11-02 11:28:42', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2019-11-02 11:28:42', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2019-11-02 11:28:42', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2019-11-02 11:28:42', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2019-11-02 11:39:45', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2019-11-02 11:39:45', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2019-11-02 11:39:45', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2019-11-02 11:39:45', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2019-11-02 11:39:45', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2019-11-02 11:39:45', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2019-11-02 11:39:45', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2019-11-02 11:39:45', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2019-11-02 11:39:45', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2019-11-02 11:39:45', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2019-11-02 11:39:45', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2019-11-02 11:39:45', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2019-11-02 11:39:45', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2019-11-02 11:39:45', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2019-11-02 11:39:45', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2019-11-02 11:39:45', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2019-11-02 11:39:45', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2019-11-02 11:39:45', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2019-11-02 11:39:45', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2019-11-02 11:39:45', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2019-11-02 11:39:45', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2019-11-02 11:39:45', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2019-11-02 11:39:45', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2019-11-02 11:39:45', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2019-11-02 11:39:45', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2019-11-02 11:39:45', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2019-11-02 11:47:32', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2019-11-02 11:47:32', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2019-11-02 11:47:32', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2019-11-02 11:47:32', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2019-11-02 11:47:32', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2019-11-02 11:47:32', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2019-11-02 11:47:32', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2019-11-02 11:47:32', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2019-11-02 11:47:32', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2019-11-02 11:47:32', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2019-11-02 11:47:32', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2019-11-02 11:47:32', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2019-11-02 11:47:32', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2019-11-02 11:47:32', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2019-11-02 11:47:32', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2019-11-02 11:47:32', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2019-11-02 11:47:32', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2019-11-02 11:47:32', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2019-11-02 11:47:32', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2019-11-02 11:47:32', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2019-11-02 11:47:32', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2019-11-02 11:47:32', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2019-11-02 11:47:32', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2019-11-02 11:47:32', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2019-11-02 11:47:32', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2019-11-02 11:47:32', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2019-11-02 11:54:27', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2019-11-02 11:54:27', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2019-11-02 11:54:27', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2019-11-02 11:54:27', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2019-11-02 11:54:27', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2019-11-02 11:54:27', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2019-11-02 11:54:27', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2019-11-02 11:54:27', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2019-11-02 11:54:27', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2019-11-02 11:54:27', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2019-11-02 11:54:27', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2019-11-02 11:54:27', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2019-11-02 11:54:27', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2019-11-02 11:54:27', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2019-11-02 11:54:27', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2019-11-02 11:54:27', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2019-11-02 11:54:27', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2019-11-02 11:54:27', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2019-11-02 11:54:27', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2019-11-02 11:54:27', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2019-11-02 11:54:27', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2019-11-02 11:54:27', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2019-11-02 11:54:27', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2019-11-02 11:54:27', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2019-11-02 12:00:32', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2019-11-02 12:00:32', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2019-11-02 12:00:32', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2019-11-02 12:00:32', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2019-11-02 12:00:32', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2019-11-02 12:00:32', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2019-11-02 12:00:32', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2019-11-02 12:00:32', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2019-11-02 12:00:32', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2019-11-02 12:00:32', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2019-11-02 12:00:32', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2019-11-02 12:00:32', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2019-11-02 12:00:32', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2019-11-02 12:00:32', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2019-11-02 12:00:32', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2019-11-02 12:00:32', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2019-11-02 12:00:32', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2019-11-02 12:00:32', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2019-11-02 12:00:32', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2019-11-02 12:00:32', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2019-11-02 12:00:32', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2019-11-02 12:00:32', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2019-11-02 12:00:32', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2019-11-02 12:00:32', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2019-11-02 12:00:32', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2019-11-02 12:00:32', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2019-11-02 12:09:50', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2019-11-02 12:09:50', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2019-11-02 12:09:50', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2019-11-02 12:09:50', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2019-11-02 12:10:26', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2019-11-02 12:10:26', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2019-11-02 12:10:26', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2019-11-02 12:10:26', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2019-11-02 12:10:26', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2019-11-02 12:10:26', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2019-11-02 12:10:26', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2019-11-02 12:10:26', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2019-11-02 12:10:26', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2019-11-02 12:10:26', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2019-11-02 12:10:26', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2019-11-02 12:10:26', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2019-11-02 12:10:26', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2019-11-02 12:10:26', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2019-11-02 12:10:26', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2019-11-02 12:10:26', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2019-11-02 12:10:26', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2019-11-02 12:10:26', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2019-11-02 12:10:26', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2019-11-02 12:10:26', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2019-11-02 12:10:26', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2019-11-02 12:10:26', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2019-11-02 12:15:20', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2019-11-02 12:15:20', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2019-11-02 12:15:20', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2019-11-02 12:15:20', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2019-11-02 12:15:20', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2019-11-02 12:15:20', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2019-11-02 12:15:21', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2019-11-02 12:15:21', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2019-11-02 12:15:21', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2019-11-02 12:15:21', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2019-11-02 12:15:21', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2019-11-02 12:15:21', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2019-11-02 12:15:21', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2019-11-02 12:15:21', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '2019-11-02 12:15:21', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2019-11-02 12:15:21', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2019-11-02 12:15:21', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2019-11-02 12:15:22', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '2019-11-02 12:15:22', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2019-11-02 12:15:22', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2019-11-02 12:15:22', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '2019-11-02 12:15:22', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '2019-11-02 12:15:22', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '2019-11-02 12:15:22', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '2019-11-02 12:15:22', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '2019-11-02 12:15:22', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '2019-11-02 12:20:11', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '2019-11-02 12:20:11', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '2019-11-02 12:20:11', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '2019-11-02 12:20:11', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '2019-11-02 12:20:11', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '2019-11-02 12:20:11', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '2019-11-02 12:20:11', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '2019-11-02 12:20:11', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '2019-11-02 12:20:11', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '2019-11-02 12:20:11', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '2019-11-02 12:20:11', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '2019-11-02 12:20:11', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '2019-11-02 12:20:11', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '2019-11-02 12:20:11', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '2019-11-02 12:20:11', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '2019-11-02 12:20:11', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '2019-11-02 12:20:11', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '2019-11-02 12:20:11', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '2019-11-02 12:20:11', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '2019-11-02 12:20:11', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '2019-11-02 12:20:11', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '2019-11-02 12:20:11', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '2019-11-02 12:20:11', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '2019-11-02 12:20:11', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '2019-11-02 12:20:11', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2019-11-02 12:20:11', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2019-11-02 12:22:28', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2019-11-02 12:22:28', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2019-11-02 12:22:34', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2019-11-02 12:22:34', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2019-11-02 12:22:34', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2019-11-02 12:22:34', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2019-11-02 12:22:34', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2019-11-02 12:22:34', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2019-11-02 12:22:34', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2019-11-02 12:22:34', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2019-11-02 12:22:34', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2019-11-02 12:22:34', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2019-11-02 12:22:34', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2019-11-02 12:22:34', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '2019-11-02 12:22:34', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2019-11-02 12:22:34', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2019-11-02 12:22:34', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2019-11-02 12:22:34', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2019-11-02 12:22:34', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `MessageGuid`, `MessageInfo`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(343, '2019-11-02 12:22:34', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2019-11-02 12:22:34', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2019-11-02 12:22:34', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2019-11-02 12:22:34', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2019-11-02 12:22:34', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2019-11-02 12:28:54', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2019-11-02 12:28:54', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2019-11-02 12:28:54', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2019-11-02 12:28:54', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2019-11-02 12:28:54', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2019-11-02 12:28:54', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2019-11-02 12:28:54', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2019-11-02 12:28:54', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '2019-11-02 12:28:54', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '2019-11-02 12:28:54', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '2019-11-02 12:28:54', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '2019-11-02 12:28:54', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '2019-11-02 12:28:54', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '2019-11-02 12:28:54', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '2019-11-02 12:28:54', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '2019-11-02 12:28:54', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '2019-11-02 12:28:54', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '2019-11-02 12:28:54', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '2019-11-02 12:28:54', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '2019-11-02 12:28:54', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '2019-11-02 12:28:54', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '2019-11-02 12:28:54', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '2019-11-02 12:28:54', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '2019-11-02 12:28:54', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '2019-11-02 12:28:54', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '2019-11-02 12:28:54', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '2019-11-02 12:31:26', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '2019-11-02 12:31:26', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '2019-11-02 12:31:26', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '2019-11-02 12:31:26', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '2019-11-02 12:31:26', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '2019-11-02 12:31:26', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '2019-11-02 12:31:26', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '2019-11-02 12:31:26', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '2019-11-02 12:31:26', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '2019-11-02 12:31:26', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '2019-11-02 12:31:26', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '2019-11-02 12:31:26', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '2019-11-02 12:31:26', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '2019-11-02 12:31:26', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '2019-11-02 12:31:26', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '2019-11-02 12:31:26', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '2019-11-02 12:31:26', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '2019-11-02 12:31:26', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '2019-11-02 12:31:26', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '2019-11-02 12:31:26', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '2019-11-02 12:31:26', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '2019-11-02 12:31:26', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '2019-11-02 12:31:26', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, '2019-11-02 12:31:26', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, '2019-11-05 23:09:51', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, '2019-11-05 23:09:51', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, '2019-11-05 23:09:51', NULL, 300, NULL, '+639098776343', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, '2019-11-05 23:09:51', NULL, 300, NULL, '+639098274637', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, '2019-11-05 23:09:51', NULL, 300, NULL, '+639093202392', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, '2019-11-05 23:09:51', NULL, 300, NULL, '+639129348474', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, '2019-11-05 23:09:51', NULL, 300, NULL, '+639093292494', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, '2019-11-10 22:40:36', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, '2019-11-10 22:40:36', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, '2019-11-10 22:40:36', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, '2019-11-10 22:40:36', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, '2019-11-10 22:40:36', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, '2019-11-10 22:40:36', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, '2019-11-10 22:40:36', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, '2019-11-10 22:40:36', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, '2019-11-10 22:40:36', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, '2019-11-10 22:40:36', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, '2019-11-10 22:40:36', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, '2019-11-10 22:40:36', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, '2019-11-10 22:40:36', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, '2019-11-10 22:40:36', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, '2019-11-10 22:40:36', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, '2019-11-10 22:40:36', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, '2019-11-10 22:40:36', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, '2019-11-10 22:40:36', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, '2019-11-10 22:40:36', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, '2019-11-10 22:40:36', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, '2019-11-10 22:40:36', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, '2019-11-10 22:40:36', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, '2019-11-10 22:40:36', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, '2019-11-10 22:40:36', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, '2019-11-10 22:40:36', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, '2019-11-10 22:40:36', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, '2019-11-10 22:40:36', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, '2019-11-10 22:40:36', NULL, 300, NULL, '+639074388031', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, '2019-11-10 22:40:36', NULL, 300, NULL, '+639098776343', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, '2019-11-10 22:40:36', NULL, 300, NULL, '+639098274637', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, '2019-11-10 22:40:36', NULL, 300, NULL, '+639093202392', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, '2019-11-10 22:40:36', NULL, 300, NULL, '+639129348474', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, '2019-11-10 22:40:36', NULL, 300, NULL, '+639093292494', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, '2019-11-10 22:40:36', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, '2019-11-10 22:40:36', NULL, 300, NULL, '+639382262006', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, '2019-11-10 22:40:36', NULL, 300, NULL, '+639102973084', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, '2019-11-10 22:40:36', NULL, 300, NULL, '+639093202392', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, '2019-11-10 22:40:36', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, '2019-11-10 22:40:36', NULL, 300, NULL, '+639093292494', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, '2019-11-10 23:01:32', NULL, 200, NULL, '+639300612294', NULL, 'aaa', NULL, '3:+639300612294:214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, '2019-11-10 23:01:33', NULL, 200, NULL, '+639382262006', NULL, 'aaa', NULL, '3:+639382262006:215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, '2019-11-10 23:01:34', NULL, 200, NULL, '+639102973084', NULL, 'aaa', NULL, '3:+639102973084:216', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, '2019-11-10 23:01:36', NULL, 200, NULL, '+639093202392', NULL, 'aaa', NULL, '3:+639093202392:217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, '2019-11-10 23:01:38', NULL, 200, NULL, '+639125113555', NULL, 'aaa', NULL, '3:+639125113555:218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, '2019-11-10 23:01:40', NULL, 200, NULL, '+639093292494', NULL, 'aaa', NULL, '3:+639093292494:219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, '2019-11-11 06:19:06', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, '2019-11-11 06:19:06', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, '2019-11-11 06:19:06', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, '2019-11-11 06:19:06', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, '2019-11-11 06:19:06', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, '2019-11-11 06:19:06', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, '2019-11-11 06:19:06', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, '2019-11-11 06:19:06', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, '2019-11-11 06:19:06', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, '2019-11-11 06:19:06', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, '2019-11-11 06:19:06', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, '2019-11-11 06:19:06', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, '2019-11-11 06:19:06', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, '2019-11-11 06:19:06', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, '2019-11-11 06:19:06', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, '2019-11-11 06:19:06', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, '2019-11-11 06:19:06', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, '2019-11-11 06:19:06', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, '2019-11-11 06:19:06', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, '2019-11-11 06:19:06', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, '2019-11-11 06:19:06', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, '2019-11-11 06:19:06', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, '2019-11-11 06:19:07', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, '2019-11-11 06:19:07', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, '2019-11-11 06:19:07', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, '2019-11-11 06:19:08', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, '2019-11-24 16:18:50', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, '2019-11-24 16:18:50', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, '2019-11-24 16:18:50', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, '2019-11-24 16:18:50', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, '2019-11-24 16:18:50', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, '2019-11-24 16:18:50', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, '2019-11-24 16:18:50', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, '2019-11-24 16:18:50', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, '2019-11-24 16:18:50', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, '2019-11-24 16:18:50', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, '2019-11-24 16:18:50', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, '2019-11-24 16:18:50', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, '2019-11-24 16:18:50', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, '2019-11-24 16:18:50', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, '2019-11-24 16:18:50', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, '2019-11-24 16:18:50', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, '2019-11-24 16:18:50', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, '2019-11-24 16:18:51', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, '2019-11-24 16:18:51', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, '2019-11-24 16:18:51', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, '2019-11-24 16:18:51', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, '2019-11-24 16:18:51', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, '2019-11-24 16:18:51', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, '2019-11-24 16:18:51', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, '2019-11-24 16:18:51', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, '2019-11-24 16:18:51', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, '2019-11-26 20:56:17', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, '2019-11-26 20:56:17', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, '2019-11-26 20:56:17', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, '2019-11-26 20:56:17', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, '2019-11-26 20:56:17', NULL, 300, NULL, '+639123384489', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, '2019-11-26 20:56:17', NULL, 300, NULL, '+639093223332', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, '2019-11-26 20:56:17', NULL, 300, NULL, '+639126252333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, '2019-11-26 20:56:17', NULL, 300, NULL, '+639098222189', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, '2019-11-26 20:56:17', NULL, 300, NULL, '+639482532323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, '2019-11-26 20:56:17', NULL, 300, NULL, '+639456262222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, '2019-11-26 20:56:17', NULL, 300, NULL, '+639472326542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, '2019-11-26 20:56:17', NULL, 300, NULL, '+639452723273', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, '2019-11-26 20:56:17', NULL, 300, NULL, '+639076353233', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, '2019-11-26 20:56:17', NULL, 300, NULL, '+639072625322', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, '2019-11-26 20:56:17', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, '2019-11-26 20:56:17', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, '2019-11-26 20:56:17', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, '2019-11-26 20:56:17', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, '2019-11-26 20:56:17', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, '2019-11-26 20:56:17', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, '2019-11-26 20:56:17', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, '2019-11-26 20:56:17', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, '2019-11-26 20:56:17', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, '2019-11-26 20:56:17', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, '2019-11-26 20:56:17', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, '2019-11-26 20:56:17', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, '2019-11-26 23:46:12', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, '2019-11-26 23:46:12', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, '2019-11-26 23:46:12', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, '2019-11-26 23:46:12', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, '2019-11-26 23:46:12', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, '2019-11-26 23:46:12', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, '2019-11-26 23:46:12', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, '2019-11-26 23:46:12', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, '2019-11-26 23:46:12', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, '2019-11-26 23:46:12', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, '2019-11-26 23:46:12', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, '2019-11-26 23:46:12', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, '2019-11-26 23:46:12', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, '2019-11-26 23:46:12', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, '2019-11-26 23:46:12', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, '2019-11-26 23:46:12', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, '2019-11-26 23:46:12', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, '2019-11-26 23:46:12', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, '2019-11-26 23:46:12', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, '2019-11-26 23:46:12', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, '2019-11-26 23:46:12', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, '2019-11-26 23:46:12', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, '2019-11-26 23:46:12', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, '2019-11-26 23:46:12', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, '2019-11-26 23:46:12', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, '2019-11-26 23:46:12', NULL, 300, NULL, '639092355524', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, '2019-11-26 23:50:06', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, '2019-11-26 23:50:06', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, '2019-11-26 23:50:06', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, '2019-11-26 23:50:06', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, '2019-11-26 23:50:06', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, '2019-11-26 23:50:06', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, '2019-11-26 23:50:06', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, '2019-11-26 23:50:06', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, '2019-11-26 23:50:06', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, '2019-11-26 23:50:06', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, '2019-11-26 23:50:06', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, '2019-11-26 23:50:06', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, '2019-11-26 23:50:06', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, '2019-11-26 23:50:06', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, '2019-11-26 23:50:06', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, '2019-11-26 23:50:06', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, '2019-11-26 23:50:06', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, '2019-11-26 23:50:06', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, '2019-11-26 23:50:06', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, '2019-11-26 23:50:06', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, '2019-11-26 23:50:06', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, '2019-11-26 23:50:06', NULL, 300, NULL, '639092355524', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, '2019-11-27 00:01:51', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, '2019-11-27 00:01:51', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, '2019-11-27 00:01:51', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, '2019-11-27 00:01:51', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, '2019-11-27 00:01:51', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, '2019-11-27 00:01:51', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, '2019-11-27 00:01:51', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, '2019-11-27 00:01:51', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, '2019-11-27 00:01:51', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, '2019-11-27 00:01:51', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, '2019-11-27 00:01:51', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, '2019-11-27 00:01:51', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, '2019-11-27 00:01:51', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, '2019-11-27 00:01:51', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, '2019-11-27 00:01:51', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, '2019-11-27 00:01:51', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, '2019-11-27 00:01:51', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, '2019-11-27 00:01:51', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, '2019-11-27 00:01:51', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, '2019-11-27 00:01:51', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, '2019-11-27 00:01:51', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, '2019-11-27 00:01:51', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, '2019-11-27 00:01:51', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, '2019-11-27 00:01:51', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, '2019-11-27 00:01:51', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, '2019-11-27 00:01:51', NULL, 300, NULL, '639092355524', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, '2019-11-27 08:20:49', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, '2019-11-27 08:20:50', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, '2019-11-27 08:20:50', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, '2019-11-27 08:20:50', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, '2019-11-27 08:20:56', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, '2019-11-27 08:20:56', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, '2019-11-27 08:20:56', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, '2019-11-27 08:20:56', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, '2019-11-27 08:20:56', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, '2019-11-27 08:20:56', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, '2019-11-27 08:20:56', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, '2019-11-27 08:20:56', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, '2019-11-27 08:20:56', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, '2019-11-27 08:20:56', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, '2019-11-27 08:20:56', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, '2019-11-27 08:20:56', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, '2019-11-27 08:20:56', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, '2019-11-27 08:20:56', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, '2019-11-27 08:20:56', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, '2019-11-27 08:20:56', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, '2019-11-27 08:20:56', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, '2019-11-27 08:20:56', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, '2019-11-27 08:20:56', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, '2019-11-27 08:20:56', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, '2019-11-27 08:20:56', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, '2019-11-27 08:20:56', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, '2019-12-01 09:54:29', NULL, 300, NULL, '+639128993433', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, '2019-12-01 09:54:29', NULL, 300, NULL, '+639300612294', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, '2019-12-01 09:54:29', NULL, 300, NULL, '+639125113555', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, '2019-12-01 09:54:29', NULL, 300, NULL, '+639482927681', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, '2019-12-01 09:54:29', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, '2019-12-01 09:54:29', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, '2019-12-01 09:54:29', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, '2019-12-01 09:54:29', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, '2019-12-01 09:54:29', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, '2019-12-01 09:54:29', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, '2019-12-01 09:54:29', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, '2019-12-01 09:54:29', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, '2019-12-01 09:54:29', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, '2019-12-01 09:54:29', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, '2019-12-01 09:54:29', NULL, 300, NULL, '+639092363542', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, '2019-12-01 09:54:29', NULL, 300, NULL, '+639097363543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, '2019-12-01 09:54:29', NULL, 300, NULL, '+639128736333', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, '2019-12-01 09:54:29', NULL, 300, NULL, '+639075332323', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, '2019-12-01 09:54:29', NULL, 300, NULL, '+639482343543', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, '2019-12-01 09:54:29', NULL, 300, NULL, '+639126335327', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, '2019-12-01 09:54:29', NULL, 300, NULL, '+639092362632', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, '2019-12-01 09:54:29', NULL, 300, NULL, '+639129736353', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, '2019-12-01 09:54:29', NULL, 300, NULL, '+639071152522', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, '2019-12-01 09:54:29', NULL, 300, NULL, '+639072525222', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, '2019-12-01 09:54:29', NULL, 300, NULL, '+639097254252', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, '2019-12-01 09:54:29', NULL, 300, NULL, '+639072837364', NULL, 'aaa', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageGuid` text,
  `MessageInfo` text,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT '0',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messageout`
--

INSERT INTO `messageout` (`Id`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageGuid`, `MessageInfo`, `Gateway`, `UserId`, `UserInfo`, `Priority`, `Scheduled`, `ValidityPeriod`, `IsSent`, `IsRead`) VALUES
(1, '+639128993433', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(2, '+639300612294', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(3, '+639125113555', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(4, '+639482927681', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(5, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(6, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(7, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(8, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(9, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(10, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(11, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(12, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(13, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(14, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(15, '639092355524', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(16, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(17, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(18, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(19, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(20, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(21, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(22, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(23, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(24, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(25, '+639098475648', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(26, '+639072837364', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(27, '+639128993433', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(28, '+639300612294', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(29, '+639125113555', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(30, '+639482927681', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(31, '+639097363543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(32, '+639128736333', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(33, '+639075332323', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, '+639482343543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(35, '+639126335327', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(36, '+639092362632', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(37, '+639129736353', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(38, '+639071152522', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(39, '+639072525222', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(40, '+639097254252', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(41, '+639092363542', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(42, '+639097363543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(43, '+639128736333', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(44, '+639075332323', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(45, '+639482343543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(46, '+639126335327', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(47, '+639092362632', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(48, '+639129736353', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(49, '+639071152522', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(50, '+639072525222', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(51, '+639097254252', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(52, '639092355524', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(53, '+639128993433', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(54, '+639300612294', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(55, '+639125113555', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(56, '+639482927681', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(57, '+639097363543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(58, '+639128736333', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(59, '+639075332323', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(60, '+639482343543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(61, '+639126335327', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(62, '+639092362632', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(63, '+639129736353', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(64, '+639071152522', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(65, '+639072525222', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(66, '+639097254252', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(67, '+639092363542', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(68, '+639097363543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(69, '+639128736333', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(70, '+639075332323', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(71, '+639482343543', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(72, '+639126335327', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(73, '+639092362632', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(74, '+639129736353', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(75, '+639071152522', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(76, '+639072525222', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(77, '+639097254252', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(78, '639092355524', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(79, '+639837234234', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(80, '+639234323432', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(81, '+639382262006', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(82, '+639102973084', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(83, '+639093202392', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(84, '+639102973084', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
(85, '+639093292494', NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(30) NOT NULL,
  `player_age` int(11) NOT NULL,
  `player_course` varchar(30) NOT NULL,
  `player_address` text NOT NULL,
  `player_gender` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `coach_code` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `contact` varchar(80) DEFAULT NULL,
  `player_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `player_name`, `player_age`, `player_course`, `player_address`, `player_gender`, `school_code`, `coach_code`, `sport_code`, `contact`, `player_code`) VALUES
(1, 'Leonel Gayacao jr.', 21, 'BSIT', 'Saraet', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639123384489', 'unobasplayer'),
(2, 'coco martin', 22, 'BSCRIM', 'Himamaylan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639093223332', 'unobasplayer'),
(3, 'christian batumbakal', 21, 'BSIT', 'Kabankalan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639126252333', 'unobasplayer'),
(4, 'july king cadayona', 22, 'BSIT', 'Kabankalan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639098222189', 'unobasplayer'),
(5, 'gerick mabag', 21, 'BSCRIM', 'Brgy. Canmuros,Binalbagan', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639482532323', 'unobasplayer'),
(6, 'jie vallejera', 22, 'BSED', 'Himamaylan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639456262222', 'unobasplayer'),
(7, 'joel onquit', 22, 'BEED', 'Binalbagan', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639472326542', 'unobasplayer'),
(8, 'mon mendoza', 22, 'BSFI', 'Kabankalan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639452723273', 'unobasplayer'),
(9, 'john joseph abkilan', 23, 'BSIT', 'Brgy. Talaban, Himamaylan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639076353233', 'unobasplayer'),
(10, 'mark lawrence bantilan', 22, 'BSIT', 'Brgy. 2 , Himamaylan City', 'Male', 'SCHL-1006', 'unocoachbasket', 'basketball1', '+639072625322', 'unobasplayer'),
(11, 'mark joseph catahuran', 21, 'BEED', 'Himamaylan City', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639097363543', 'bccbasplayer'),
(12, 'mark abraham taub', 21, 'BSCRIM', 'Himamaylan City', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639128736333', 'bccbasplayer'),
(13, 'kobe bryant', 22, 'BSIT', 'USA', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639075332323', 'bccbasplayer'),
(14, 'lebron james', 22, 'BSED', 'Bacolod City', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639482343543', 'bccbasplayer'),
(15, 'jordan clarkson', 23, 'BSFI', 'Hinigaran', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639126335327', 'bccbasplayer'),
(16, 'james jap', 25, 'BSIT', 'Manila', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639092362632', 'bccbasplayer'),
(17, 'paul lee', 23, 'BSCRIM', 'Tondo Manila', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639129736353', 'bccbasplayer'),
(18, 'terence romeo', 22, 'BSED', 'Cavite', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639071152522', 'bccbasplayer'),
(19, 'mark barroca', 26, 'BSIT', 'General Santos', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639072525222', 'bccbasplayer'),
(20, 'peter june simon', 25, 'BSCRIM', 'Pontevedra', 'Male', 'SCHL-1000', 'bcccoachbasket', 'basketball1', '+639097254252', 'bccbasplayer'),
(21, 'karl robles', 21, 'BSFI', 'Sipalay City', 'Male', 'SCHL-1005', 'southbadcoach', 'Badminton2019', '+639102973084', 'southbadplayer'),
(22, 'wilson belarmino', 22, 'BSCRIM', 'Himamaylan City', 'Male', 'SCHL-1004', 'wvsubadcoach', 'Badminton2019', '+639125113555', 'wvsubadplayer'),
(83, 'Joey Borero', 25, 'BSIT', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(84, 'Mark Salbo', 22, 'BSED', 'Kabankalan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(85, 'Glenn De Juan', 26, 'BSCRIM', 'Bago City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(86, 'Jason Mayongue', 24, 'BSIT-CT', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(87, 'Gadwin Rula', 25, 'BEED', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(88, 'Philip Jocson', 21, 'BSFI', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(89, 'Ram Sayo', 23, 'BSIT', 'Bacolod City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(90, 'Jade Tejam', 25, 'BSED', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(91, 'Marlon Tacay', 22, 'BSIT', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139'),
(92, 'Joel Damacino', 25, 'BSIT', 'Himamaylan City', 'Male', 'SCHL-1007', 'CCH-200', 'basketball1', '+639098475648', 'PLYR-139');

-- --------------------------------------------------------

--
-- Table structure for table `referee`
--

CREATE TABLE `referee` (
  `referee_id` int(11) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `referee_name` varchar(30) NOT NULL,
  `referee_gender` varchar(30) NOT NULL,
  `referee_address` text NOT NULL,
  `referee_contact` varchar(80) DEFAULT NULL,
  `referee_code` varchar(30) NOT NULL,
  `referee_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referee`
--

INSERT INTO `referee` (`referee_id`, `sport_code`, `referee_name`, `referee_gender`, `referee_address`, `referee_contact`, `referee_code`, `referee_status`) VALUES
(1, 'basketball1', 'james dimagiba', 'Male', 'Himamaylan City', '+639125113555', 'ref1_basket1', 'Available'),
(2, 'basketball1', 'jude dela cruz', 'Male', 'Kabankalan City', '+639482927681', 'ref2_basket1', 'Available'),
(3, 'Badminton2019', 'Gail Guzon', 'Female', 'Bacolod City', '+639382262006', 'ref_badminton2019', 'Available'),
(5, 'SPORT-100', 'Jude Suarez', 'Male', 'Himamaylan City', '+639125113555', 'REF-101', 'Available'),
(7, 'SPORT-102', 'Adrian Mercurio', 'Male', 'Brgy. Suay Himamaylan City', '+639098765456', 'REF-103', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `school_address` text NOT NULL,
  `school_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`, `school_address`, `school_code`) VALUES
(1, 'BCC', 'Binalbagan', 'SCHL-1000'),
(2, 'CHMSC Binalbagan', 'Binalbagan', 'SCHL-1001'),
(3, 'CPSU Hinigaran', 'Hinigaran', 'SCHL-1002'),
(4, 'KCC', 'kabankalan', 'SCHL-1003'),
(5, 'WVSU himamaylan', 'Himamaylan City', 'SCHL-1004'),
(6, 'Southland College', 'Kabankalan City', 'SCHL-1005'),
(7, 'UNO-R', 'Bacolod City', 'SCHL-1006'),
(9, 'FBC Kabankalan', 'Kabankalan City', 'SCHL-1007'),
(10, 'Lasalle', 'Bacolod City', 'SCHL-1008');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `sy_id` int(11) NOT NULL,
  `school_year` varchar(30) NOT NULL,
  `sy_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`sy_id`, `school_year`, `sy_code`, `is_default`) VALUES
(1, '2018-2019', 'S.Y. 18-19', 'YES'),
(2, '2019-2020', 'S.Y. 19-20', 'NO'),
(3, '2020-2021', 'SY-200', 'NO'),
(4, 'h', 'SY-236', '');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(30) NOT NULL,
  `game_type_code` varchar(30) NOT NULL,
  `no_of_player` int(11) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `is_default` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sport_id`, `sport_name`, `game_type_code`, `no_of_player`, `sport_code`, `is_default`) VALUES
(1, 'Basketball Men', 'TeamGame', 5, 'basketball1', 'YES'),
(2, 'Badminton Single', 'SingleGame', 1, 'Badminton2019', 'YES'),
(3, 'Sepak Takraw', 'TeamGame', 3, 'SPORT-100', 'YES'),
(4, 'Badminton Double', 'DoubleGame', 2, 'SPORT-101', 'YES'),
(5, 'Table Tennis Single', 'SingleGame', 1, 'SPORT-102', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `team_players`
--

CREATE TABLE `team_players` (
  `team_playerA_id` int(11) NOT NULL,
  `team_playerA_name` varchar(30) NOT NULL,
  `sport_code` varchar(30) NOT NULL,
  `player_code` varchar(30) NOT NULL,
  `coach_code` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `team_playerA_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_players`
--

INSERT INTO `team_players` (`team_playerA_id`, `team_playerA_name`, `sport_code`, `player_code`, `coach_code`, `school_code`, `school_name`, `status`, `team_playerA_code`) VALUES
(1, 'Team Uno-R', 'basketball1', 'unobasplayer', 'unocoachbasket', 'SCHL-1006', 'UNO-R', 'Available', 'UnoMatch1'),
(2, 'Southland', 'Badminton2019', 'southbadplayer', 'southbadcoach', 'SCHL-1005', 'Southland College', 'Available', 'southlandplayerA'),
(4, 'Team Bcc', 'basketball1', 'bccbasplayer', 'bcccoachbasket', 'SCHL-1000', 'BCC', 'Available', 'TEAMA-103'),
(7, 'Team FBC', 'basketball1', 'PLYR-139', 'CCH-200', 'SCHL-1007', 'FBC Kabankalan', 'Available', 'TEAMA-104'),
(8, 'Wvsu', 'Badminton2019', 'wvsubadplayer', 'wvsubadcoach', 'SCHL-1004', 'WVSU himamaylan', 'Available', 'TEAMA-105');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`, `user_type`) VALUES
(1, 'angel jude', 'jude@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Admin'),
(2, 'kristel joy', 'kristyl@yahoo.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Encoder'),
(3, 'angel jude suarez', 'angeljude@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Encoder');

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `venue_id` int(11) NOT NULL,
  `place` text NOT NULL,
  `venue_status` varchar(30) NOT NULL,
  `venue_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `place`, `venue_status`, `venue_code`) VALUES
(1, 'Chmsc Basketball Court', 'Available', 'chmscbc'),
(2, 'Chmsc Quadrangle', 'Available', 'chmscquad'),
(3, 'Chmsc Convention Hall', 'Available', 'chmscch'),
(4, 'Chmsc Field', 'Available', 'chmscf'),
(5, 'Chmsc Front of Basketball Court', 'Available', 'chmscfbc'),
(6, 'Chmsc Front of Room1', 'Available', 'chmscfr1'),
(7, 'Binalbagan Covered Court', 'Available', 'VEN-100');

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

CREATE TABLE `winner` (
  `winner_id` int(11) NOT NULL,
  `match_code` varchar(30) NOT NULL,
  `team_player_code` varchar(30) NOT NULL,
  `final_score` varchar(30) NOT NULL,
  `school_code` varchar(30) NOT NULL,
  `school_name` varchar(30) NOT NULL,
  `winner_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_number`
--
ALTER TABLE `auto_number`
  ADD PRIMARY KEY (`auto_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coach_id`),
  ADD UNIQUE KEY `coach_name` (`coach_name`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`equipment_id`),
  ADD UNIQUE KEY `equipment_name` (`equipment_name`);

--
-- Indexes for table `facilitator`
--
ALTER TABLE `facilitator`
  ADD PRIMARY KEY (`facilitator_id`),
  ADD UNIQUE KEY `facilitator_name` (`facilitator_name`);

--
-- Indexes for table `game_result`
--
ALTER TABLE `game_result`
  ADD PRIMARY KEY (`game_result_id`);

--
-- Indexes for table `game_type`
--
ALTER TABLE `game_type`
  ADD PRIMARY KEY (`game_type_id`),
  ADD UNIQUE KEY `type_of_game` (`type_of_game`);

--
-- Indexes for table `losser`
--
ALTER TABLE `losser`
  ADD PRIMARY KEY (`losser_id`);

--
-- Indexes for table `match_schedule`
--
ALTER TABLE `match_schedule`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`),
  ADD UNIQUE KEY `player_name` (`player_name`);

--
-- Indexes for table `referee`
--
ALTER TABLE `referee`
  ADD PRIMARY KEY (`referee_id`),
  ADD UNIQUE KEY `referee_name` (`referee_name`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `school_name` (`school_name`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`sy_id`),
  ADD UNIQUE KEY `school_year` (`school_year`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`),
  ADD UNIQUE KEY `sport_name` (`sport_name`);

--
-- Indexes for table `team_players`
--
ALTER TABLE `team_players`
  ADD PRIMARY KEY (`team_playerA_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`venue_id`);

--
-- Indexes for table `winner`
--
ALTER TABLE `winner`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_number`
--
ALTER TABLE `auto_number`
  MODIFY `auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `facilitator`
--
ALTER TABLE `facilitator`
  MODIFY `facilitator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `game_result`
--
ALTER TABLE `game_result`
  MODIFY `game_result_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game_type`
--
ALTER TABLE `game_type`
  MODIFY `game_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `losser`
--
ALTER TABLE `losser`
  MODIFY `losser_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_schedule`
--
ALTER TABLE `match_schedule`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `referee`
--
ALTER TABLE `referee`
  MODIFY `referee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team_players`
--
ALTER TABLE `team_players`
  MODIFY `team_playerA_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `winner`
--
ALTER TABLE `winner`
  MODIFY `winner_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
