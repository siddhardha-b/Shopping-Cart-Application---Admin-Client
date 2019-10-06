-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema online
--

CREATE DATABASE IF NOT EXISTS coextract;
USE coextract;

--
-- Definition of table `blocklist`
--

DROP TABLE IF EXISTS `blocklist`;
CREATE TABLE `blocklist` (
  `uname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `ipaddress` varchar(45) NOT NULL,
  `product` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `ratingvalues` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocklist`
--

--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `name` varchar(45) NOT NULL default '',
  `productname` varchar(45) NOT NULL default '',
  `productitem` varchar(45) NOT NULL default '',
  `quantity` varchar(45) NOT NULL default '',
  `total` varchar(45) NOT NULL default '',
  `status` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

--
-- Definition of table `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed` (
  `feedback` varchar(45) NOT NULL default '',
  `rating` varchar(45) NOT NULL default '',
  `ratingvalues` varchar(45) NOT NULL default '0',
  `comments` varchar(45) NOT NULL default '',
  `ipaddr` varchar(45) NOT NULL default '',
  `date_time` varchar(45) NOT NULL default '',
  `name` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
`id` int(11) NOT NULL auto_increment,
  `image` longblob NOT NULL,
  `iname` varchar(50) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `pitems` varchar(45) NOT NULL,
  `bname` varchar(45) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `validity` varchar(45) NOT NULL,
  `website` varchar(20) NOT NULL,
 PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;

/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `contactno` varchar(30) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `card` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--





/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
