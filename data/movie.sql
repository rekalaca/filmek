#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=D:/Dropbox/Oktatás-segédanyag/adatkez/film.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=film
#   storageengine=MyISAM
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=LONGTEXT
#   datetimetype=DATETIME
#

CREATE DATABASE IF NOT EXISTS `movie`;
USE `movie`;

#
# Table structure for table 'film'
#

DROP TABLE IF EXISTS `film`;

CREATE TABLE `film` (
  `f_kod` INTEGER, 
  `cim` VARCHAR(50), 
  `rendezo` INTEGER DEFAULT 0, 
  `bemutatas` DOUBLE NULL, 
  `n_kod` INTEGER DEFAULT 0, 
  `hossz` DOUBLE NULL, 
  INDEX (`n_kod`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'film'
#

INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (1, 'Charlie és a csokigyár', 1, 2005, 1, 106);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (2, 'Én, Pán Péter', 4, 2004, 1, 106);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (3, 'A Karib-tenger kalózai', 6, 2003, 1, 144);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (4, 'Csokoládé', 8, 2000, 1, 123);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (5, 'Pókember 2', 11, 2004, 1, 127);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (6, 'Az álmos völgy legendája', 1, 1999, 1, 112);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (7, 'Az angol beteg', 15, 1996, 1, 175);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (8, 'Harry Potter és a tűz serlege', 18, 2005, 1, 150);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (9, 'Az ötödik elem', 20, 1997, 1, 122);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (10, "Jeanne d\'Arc", 20, 1999, 2, 160);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (11, 'Leon a profi', 20, 1994, 1, 105);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (12, 'Farkasok birodalma', 27, 2005, 2, 128);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (13, 'Bíbor folyók', 28, 2000, 2, 108);
INSERT INTO `film` (`f_kod`, `cim`, `rendezo`, `bemutatas`, `n_kod`, `hossz`) VALUES (14, 'Schindler listája', 29, 1993, 1, 195);
# 14 records

#
# Table structure for table 'nemzet'
#

DROP TABLE IF EXISTS `nemzet`;

CREATE TABLE `nemzet` (
  `n_kod` INTEGER DEFAULT 0, 
  `nemzet` VARCHAR(50), 
  INDEX (`n_kod`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'nemzet'
#

INSERT INTO `nemzet` (`n_kod`, `nemzet`) VALUES (1, 'USA');
INSERT INTO `nemzet` (`n_kod`, `nemzet`) VALUES (2, 'Francia');
# 2 records

#
# Table structure for table 'szemely'
#

DROP TABLE IF EXISTS `szemely`;

CREATE TABLE `szemely` (
  `sz_kod` INTEGER, 
  `Nev` VARCHAR(255), 
  INDEX (`sz_kod`)
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'szemely'
#

INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (1, 'Tim Burton');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (2, 'Johnny Depp');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (3, 'Helena Bonham Carter');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (4, 'Marc Forster');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (5, 'Kate Winslet');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (6, 'Gore Verbinski');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (7, 'Orlando Bloom');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (8, 'Lasse Hallström');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (9, 'Juliette Binoche');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (10, 'Alfred Molina');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (11, 'Sam Raimi');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (12, 'Tobey Maguire');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (13, 'Christina Ricci');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (14, 'Christopher Lee');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (15, 'Anthony Minghella');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (16, 'Ralph Fiennes');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (17, 'Willem Dafoe');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (18, 'Mike Newel');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (19, 'Gary Oldman');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (20, 'Luc Besson');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (21, 'Bruce Willis');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (22, 'Milla Jovovich');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (23, 'John Malkovich');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (24, 'Dustin Hoffman');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (25, 'Natalie Portman');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (26, 'Jean Reno');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (27, 'Chris Nahon');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (28, 'Mathieu Kassovitz');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (29, 'Steven Spielberg');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (30, 'Liam Neeson');
INSERT INTO `szemely` (`sz_kod`, `Nev`) VALUES (31, 'Ben Kingsley');
# 31 records

#
# Table structure for table 'szerepel'
#

DROP TABLE IF EXISTS `szerepel`;

CREATE TABLE `szerepel` (
  `film` INTEGER, 
  `szinesz` INTEGER
) ENGINE=myisam DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'szerepel'
#

INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (1, 2);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (2, 2);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (3, 2);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (3, 7);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (2, 5);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (1, 3);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (4, 2);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (4, 9);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (4, 10);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (5, 10);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (5, 12);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (6, 2);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (6, 13);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (6, 14);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (7, 9);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (7, 16);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (7, 17);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (8, 16);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (8, 19);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (9, 19);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (9, 21);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (9, 22);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (10, 22);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (10, 23);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (10, 24);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (11, 19);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (11, 25);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (11, 26);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (12, 26);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (13, 26);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (14, 30);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (14, 16);
INSERT INTO `szerepel` (`film`, `szinesz`) VALUES (14, 31);
# 33 records

