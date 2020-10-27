/*
SQLyog Community v13.1.1 (64 bit)
MySQL - 10.0.17-MariaDB : Database - pharmacyproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`pharmacyproject` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pharmacyproject`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`username`,`password`) values 
(1,'admin','admin');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `cmobile` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert  into `customer`(`cid`,`cname`,`cmobile`) values 
(2,'bbb','8765434323');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `cid` (`cid`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order` */

insert  into `order`(`oid`,`cname`,`mname`,`quantity`,`cid`) values 
(1,'bbb','Acetaminophen.',10,NULL),
(2,'bbb','Acetaminophen.',10,NULL),
(3,'bbb','Acetaminophen.',10,NULL),
(4,'bbb','Acetaminophen.',8,NULL),
(5,'bbb','Acetaminophen.',7,NULL);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `sid` int(100) NOT NULL AUTO_INCREMENT,
  `mcompany` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `mdescription` varchar(1000) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `mdate` varchar(100) DEFAULT NULL,
  `edate` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `stock` */

insert  into `stock`(`sid`,`mcompany`,`mname`,`mdescription`,`quantity`,`price`,`mdate`,`edate`) values 
(5,'	Alfa  Laval India Ltd','Acetaminophen.','rgrtgrgtrgg',1,'650','02/05/2018','11/11/2025'),
(6,'	Bilcare  Ltd','Adderall.','drgg',10,'1000','06/05/2020','11/05/2030'),
(7,'	Emcure','Alprazolam.','dfbg',9,'250','15/05/2019','25/05/2035'),
(8,'	Hindustan  Antibiotics Ltd','Amitriptyline.','rgewf',8,'660','2019-07-12','2019-07-25');

/*Table structure for table `supplier` */

DROP TABLE IF EXISTS `supplier`;

CREATE TABLE `supplier` (
  `supid` int(100) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `smobile` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `supplier` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
