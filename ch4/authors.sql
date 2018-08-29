-- Generation time: Tue, 28 Aug 2018 09:13:30 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `authors` VALUES ('1','Carmel','Bruen','barrett.halvorson@example.org','2005-09-02','1976-03-30 10:54:34'),
('2','Kirsten','Muller','turcotte.pearl@example.com','1972-10-11','1970-11-26 14:06:52'),
('3','Aurore','Torp','nmcdermott@example.com','1999-10-23','1974-07-26 17:27:20'),
('4','Keagan','Boyle','angelina01@example.org','1995-04-17','1988-04-27 18:11:19'),
('5','Hazle','Welch','norval.barrows@example.org','1991-12-24','1983-07-11 17:07:32'),
('6','Charlene','Eichmann','xveum@example.org','2005-01-16','1998-10-26 12:05:41'),
('7','Domenic','O\'Conner','lorna.kulas@example.org','1997-07-30','2009-03-07 18:55:30'),
('8','Markus','Gutmann','erin94@example.com','1976-10-18','2016-03-06 00:28:03'),
('9','Sharon','Smith','robert.auer@example.com','1986-01-30','1987-12-11 20:36:38'),
('10','Orland','Walter','mateo.hills@example.com','1998-05-10','1998-02-21 12:36:24'),
('11','Kyleigh','Price','aliyah68@example.com','2013-11-02','1997-03-22 07:44:50'),
('12','Luna','Klein','candido.powlowski@example.net','1993-09-27','2012-06-17 08:45:03'),
('13','Domenica','Pouros','viva42@example.org','1978-05-05','1996-05-12 14:27:36'),
('14','Sydni','Torphy','grath@example.org','1991-12-06','2008-04-24 11:34:45'),
('15','Jeffrey','Hahn','green.freda@example.net','1995-04-20','1975-03-07 08:15:15'),
('16','Daniela','Dooley','rratke@example.org','1981-06-15','2014-01-14 13:20:31'),
('17','Graham','Kertzmann','edison54@example.org','1976-11-02','2005-09-18 02:36:11'),
('18','Leda','Rogahn','lueilwitz.destini@example.com','2003-08-23','2008-10-11 16:17:40'),
('19','Name','Kris','king16@example.com','1971-10-07','2012-04-17 18:18:42'),
('20','Wendy','Spinka','yerdman@example.com','1991-08-03','1991-02-24 07:25:18'),
('21','Cecilia','Waters','davonte.luettgen@example.com','1981-08-12','1986-09-19 02:54:06'),
('22','Gunnar','Boehm','cpurdy@example.com','1994-07-12','1997-04-12 03:33:36'),
('23','Trevor','Tremblay','rutherford.janet@example.org','2011-12-13','1981-04-14 02:04:31'),
('24','Madison','Rodriguez','ariel.streich@example.net','1982-01-07','1989-09-04 19:16:07'),
('25','Ashton','Bruen','esperanza.mcclure@example.net','1998-09-03','1994-03-28 18:57:44'),
('26','Romaine','Bayer','vcarter@example.com','2004-01-25','2005-01-27 19:23:24'),
('27','Laurel','Kunde','jstokes@example.net','1995-08-18','1974-12-29 13:22:33'),
('28','Chris','Gibson','ocollins@example.com','1988-11-26','1991-12-27 06:44:23'),
('29','Megane','Swaniawski','doris.tromp@example.org','1981-10-01','2017-04-18 15:40:20'),
('30','Amya','Kilback','ireinger@example.org','1990-08-27','1975-05-15 07:53:40'),
('31','Ford','Sporer','ulises24@example.org','2008-11-16','1982-12-14 03:06:26'),
('32','Ignatius','Jacobs','mdietrich@example.net','2017-01-26','1979-06-09 01:47:48'),
('33','Jerald','Weimann','hagenes.zane@example.com','2004-06-08','1992-02-10 10:35:29'),
('34','Keely','Quigley','estell.brakus@example.com','2014-05-26','1984-01-27 15:01:11'),
('35','Makayla','Raynor','lehner.kariane@example.com','1992-11-07','2002-12-01 09:07:29'),
('36','Yolanda','Dach','uluettgen@example.net','2012-08-10','1987-10-20 11:46:51'),
('37','Mercedes','Herzog','nolan.russel@example.com','2010-03-25','1993-11-14 00:39:11'),
('38','Isac','Collins','tanya33@example.com','1994-12-02','1983-11-29 03:07:30'),
('39','Sofia','Witting','adelbert.bailey@example.net','1996-12-15','1988-05-03 16:41:26'),
('40','Earlene','Hettinger','marlon.o\'keefe@example.org','2004-02-10','1989-02-20 13:09:58'),
('41','Lew','Strosin','lillian.treutel@example.org','2011-06-23','2010-10-29 13:16:59'),
('42','Verna','Schmitt','qmayer@example.org','2001-07-10','2008-07-29 18:44:47'),
('43','Casandra','Maggio','streich.bobby@example.org','1980-01-27','1976-11-25 05:10:47'),
('44','Dolly','Herzog','carmelo.pfeffer@example.org','1991-09-28','2003-03-11 01:30:22'),
('45','Stephania','Jones','sonia99@example.com','2003-01-17','1995-11-21 07:51:13'),
('46','Aletha','Wintheiser','leora87@example.com','1996-02-25','2004-10-29 23:03:05'),
('47','Kiera','Hauck','laurianne.torp@example.org','1997-09-15','1991-10-19 18:38:47'),
('48','Abdul','Hackett','njacobi@example.com','2017-01-17','1987-07-11 18:19:10'),
('49','Krystina','Dicki','gerhold.enrico@example.org','2010-05-25','1975-02-24 13:22:42'),
('50','Magnolia','Funk','vhilll@example.net','1987-02-26','1972-04-19 10:26:48'),
('51','Celestine','Bailey','jones.cordia@example.org','1981-08-26','1985-08-18 09:15:24'),
('52','Jake','Schaefer','agustin.o\'hara@example.org','1976-08-20','2010-08-24 18:18:44'),
('53','Damian','Padberg','tblick@example.com','1995-03-19','2004-07-23 12:52:03'),
('54','Ricardo','Gerhold','eleuschke@example.com','1970-06-02','1973-01-30 08:06:16'),
('55','Dayna','Berge','wdouglas@example.org','1971-01-01','1980-07-22 10:19:17'),
('56','Abbey','Schuster','jovani73@example.com','1977-11-17','1971-01-06 09:40:59'),
('57','Lucio','Marquardt','ggoldner@example.org','2000-04-24','2010-04-07 04:05:22'),
('58','Breanna','Vandervort','schumm.sarah@example.org','1998-01-30','1972-08-12 08:08:20'),
('59','Ryder','Frami','mitchell.chadd@example.com','1995-11-24','1982-03-30 07:09:48'),
('60','Davin','Fritsch','marlene13@example.com','1980-07-28','2001-01-20 18:59:46'),
('61','Marjory','Orn','destin93@example.com','2015-08-16','2002-06-29 16:40:21'),
('62','Lacy','Huels','willms.adela@example.net','1989-05-17','1981-06-16 09:12:38'),
('63','Warren','Halvorson','wkunze@example.com','1977-01-27','2005-02-05 09:15:47'),
('64','Yoshiko','Jacobi','gabe.aufderhar@example.net','1978-04-22','2006-09-28 01:35:43'),
('65','Melyna','Corwin','wkoch@example.com','1987-10-24','2011-05-25 11:39:06'),
('66','Dayana','Waters','rthompson@example.net','2002-06-29','1986-07-23 19:39:43'),
('67','Tiara','Lebsack','emery.towne@example.org','1977-11-10','1988-09-29 17:23:36'),
('68','Alice','Koch','ashley46@example.net','2003-01-12','1996-12-08 22:26:23'),
('69','Dejuan','McCullough','kasey93@example.org','1978-07-26','2013-03-17 18:03:26'),
('70','Lelah','Homenick','hlindgren@example.net','1991-08-19','2018-07-10 18:44:44'),
('71','Una','Nader','rempel.sanford@example.com','1999-11-27','1980-12-02 16:29:23'),
('72','Eloisa','Prohaska','raufderhar@example.net','1973-10-11','1998-12-19 18:14:41'),
('73','Wallace','Johnston','lschmeler@example.org','2009-04-15','2016-04-08 18:31:27'),
('74','Eunice','Glover','runolfsdottir.luisa@example.net','1995-12-09','2010-08-03 23:45:06'),
('75','Joanne','Turcotte','dayton.dickens@example.org','2007-08-13','1995-01-10 05:02:19'),
('76','Jaida','Huels','dejon30@example.net','2013-02-03','1987-12-31 17:45:53'),
('77','Elian','Bernier','viva43@example.org','1994-06-01','2005-11-03 14:15:20'),
('78','Aletha','McLaughlin','vlittel@example.com','2015-09-28','1998-10-15 06:43:39'),
('79','Raegan','Bruen','lupe89@example.com','1980-01-26','2017-10-19 03:49:36'),
('80','Hayden','Carroll','derrick.becker@example.org','2006-07-22','2013-12-13 10:18:18'),
('81','Raven','Sanford','block.matilda@example.net','2009-02-03','2001-02-09 17:52:51'),
('82','Margarett','McGlynn','brennan17@example.com','2015-11-28','2006-06-10 15:45:32'),
('83','Alexis','Bode','miller.hane@example.net','2004-10-29','1985-06-04 03:06:31'),
('84','Fabian','Emmerich','sdickens@example.org','1991-06-01','1988-01-09 02:21:26'),
('85','Helene','Mitchell','kreiger.danielle@example.net','1970-01-11','1988-04-10 19:04:02'),
('86','Chelsea','Wiegand','lavern.kertzmann@example.org','2009-08-30','1973-02-05 17:28:47'),
('87','Sebastian','Wiza','leonard71@example.org','1990-03-04','1997-03-30 16:00:46'),
('88','Neva','Maggio','zgreen@example.net','1978-02-26','1981-04-12 08:24:41'),
('89','Jewel','Oberbrunner','greg.beahan@example.net','2003-07-29','2001-06-21 15:41:56'),
('90','Joanie','Steuber','emerson.hayes@example.com','2012-08-07','2013-07-10 04:16:07'),
('91','Carson','Bode','little.catherine@example.org','2008-09-05','1982-05-23 07:55:18'),
('92','Kyra','Armstrong','schimmel.jon@example.org','1976-04-26','1984-05-27 16:44:52'),
('93','Aurelia','Jacobi','javon88@example.net','2009-02-06','2013-12-07 11:22:38'),
('94','Orval','Jerde','reed.romaguera@example.net','1978-12-03','2010-12-29 08:31:00'),
('95','Graciela','Streich','aubree87@example.org','1981-07-16','1993-08-15 11:52:54'),
('96','Halie','Greenholt','huel.russell@example.net','2007-04-30','1970-10-26 03:11:08'),
('97','Nathen','Hand','anika.littel@example.com','2009-09-14','1981-02-15 01:43:19'),
('98','Stanley','Walker','yjones@example.com','1972-10-14','2003-04-24 13:57:46'),
('99','Audreanne','Spinka','ohahn@example.net','1990-05-09','2017-07-08 08:20:31'),
('100','Caroline','Witting','yhuel@example.net','2010-08-27','1991-04-22 05:06:15'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

