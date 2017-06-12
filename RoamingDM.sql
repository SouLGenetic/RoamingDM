SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Default Schema
--
CREATE DATABASE IF NOT EXISTS `RoamingDM2` DEFAULT CHARACTER SET utf8mb4;
USE `RoamingDM2`;



-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `uid` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `aliases` text NOT NULL,
  `Steam64` varchar(17) NOT NULL,
  `CASH` int(100) NOT NULL DEFAULT '0',
  `BANK` int(100) NOT NULL DEFAULT '0',
  `Player_gear` text NOT NULL,
  `adminlvl` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `Blacklist` tinyint(1) NOT NULL DEFAULT '0',
  `SANITY` int(100) NOT NULL DEFAULT '100',
  `KILLS` int(100) NOT NULL DEFAULT '0',
  `DEATHS` int(100) NOT NULL DEFAULT '0',
  `SHOTS` int(100) NOT NULL DEFAULT '0',
  `insert_time` timestamp DEFAULT CURRENT_TIMESTAMP,
  `last_seen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `Steam64` (`Steam64`),
  KEY `name` (`name`),
  KEY `Blacklist` (`Blacklist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------
