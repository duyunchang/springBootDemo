/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.16 : Database - springbootweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springbootweb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springbootweb`;

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`country`,`name`,`state`,`map`) values (1,'UK','Bath','Somerset','51.381428, -2.357454'),(2,'Australia','Melbourne','Victoria','-37.813187, 144.96298');

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `hotel` */

insert  into `hotel`(`id`,`city_id`,`name`,`address`,`zip`) values (1,9,'The Bath Priory Hotel','Weston Road','BA1 2XT'),(2,9,'Bath Travelodge','Rossiter Road, Widcombe Basin','BA2 4JP'),(3,2,'The Langham','1 Southgate Ave, Southbank','3006');

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hotel_id` bigint(20) unsigned DEFAULT NULL,
  `idx` int(255) DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  `rating` int(255) DEFAULT NULL,
  `trip_type` int(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `review` */

insert  into `review`(`id`,`hotel_id`,`idx`,`check_in_date`,`rating`,`trip_type`,`title`,`details`) values (1,9,0,'2000-01-23',4,1,'A lovely hotel','We stayed here after a wedding and it was fantastic.  Recommend to all.'),(2,9,1,'2000-08-04',3,1,'Very special','A very special hotel with lovely staff.'),(3,9,2,'2001-01-01',2,4,'Nice but too hot','Stayed during the summer heat wave (exceptional for England!) and the room was very hot.  Still recommended.'),(4,9,3,'2002-01-20',3,1,'Big rooms and a great view','Considering how central this hotel is the rooms are a very good size.'),(5,9,4,'2002-11-03',2,1,'Good but pricey','A nice hotel but be prepared to pay over the odds for your stay.'),(6,9,5,'2003-09-18',4,1,'Fantastic place','Just lovely.'),(7,10,0,'2002-08-21',0,2,'Terrible hotel','One of the worst hotels that I have ever stayed in.'),(8,10,1,'2003-01-28',0,0,'Rude and unpleasant staff','The staff refused to help me with any aspect of my stay, I will not stay here again.'),(9,10,2,'2004-06-17',1,0,'Below par','Don\'t stay here!!'),(10,10,3,'2005-07-12',0,1,'Small and Unpleasant','The room was far too small and felt unclean.  Not recommended.'),(11,10,4,'2006-01-07',1,4,'Cheap if you are not fussy','This hotel has some rough edges but I challenge you to find somewhere cheaper.'),(12,10,5,'2006-01-13',0,2,'Terrible','Just terrible!'),(13,10,6,'2006-03-25',0,0,'Smelly and dirty room','My room smelt of damp and I found the socks of the previous occupant under my bed.'),(14,10,7,'2006-04-09',0,4,'Grim','Grim.  I would try elsewhere before staying here.'),(15,10,8,'2006-08-01',1,3,'Very Noisy','Building work during the day and a disco at night.  Good grief!'),(16,10,9,'2009-01-03',1,4,'Tired and falling down','This hotel is in serious need of refurbishment, the windows are rotting, the paintwork is tired and the carpets are from the 1970s.'),(17,2,0,'2005-05-10',2,4,'Pretty average','I stayed in 2005, the hotel was nice enough but nothing special.'),(18,2,1,'2006-01-12',4,2,'Bright hotel with big rooms','This hotel has a fantastic lovely big windows.  The room we stayed in had lots of space.  Recommended.'),(19,2,2,'2006-05-25',3,1,'Pretty good','I liked this hotel and would stay again.'),(20,2,3,'2009-01-20',3,2,'Nice clean rooms','The rooms are maintained to a high standard and very clean, the bathroom was spotless!!');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
