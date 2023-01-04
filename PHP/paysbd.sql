-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 04 Janvier 2023 à 17:22
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `paysbd`
--

-- --------------------------------------------------------

--
-- Structure de la table `table_communes`
--

CREATE TABLE IF NOT EXISTS `table_communes` (
  `Code_Commune` int(11) NOT NULL,
  `Nom_Commune` varchar(20) NOT NULL,
  `population_VF` int(11) DEFAULT NULL,
  `surface` int(11) NOT NULL,
  `longitude` int(11) NOT NULL,
  `latitude` int(11) NOT NULL,
  `Num_departement` int(11) NOT NULL,
  PRIMARY KEY (`Code_Commune`),
  KEY `Num_departement` (`Num_departement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_communes`
--

INSERT INTO `table_communes` (`Code_Commune`, `Nom_Commune`, `population_VF`, `surface`, `longitude`, `latitude`, `Num_departement`) VALUES
(91016, 'Angerville', 14568, 17030, 1458, 1478, 91),
(91477, 'Palaiseau', 74521, 14258, 1657, 1248, 91),
(75001, 'Paris1A', 25444, 15478, 2541, 2365, 75),
(75016, 'Paris16A', 24578, 12454, 7854, 7896, 75),
(77288, 'Melun', 14569, 12556, 5426, 1789, 77),
(77002, 'Amillis', 1456, 1569, 789, 256, 77);

-- --------------------------------------------------------

--
-- Structure de la table `table_ departements`
--

CREATE TABLE IF NOT EXISTS `table_ departements` (
  `Num_departement` int(11) NOT NULL,
  `Nom_departement` varchar(20) NOT NULL,
  `Code_region` int(11) NOT NULL,
  PRIMARY KEY (`Num_departement`),
  KEY `Code_region` (`Code_region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_ departements`
--

INSERT INTO `table_ departements` (`Num_departement`, `Nom_departement`, `Code_region`) VALUES
(91, 'Essonne', 11),
(77, 'val-de-saine2', 11),
(75, 'Paris', 11);

-- --------------------------------------------------------

--
-- Structure de la table `table_region`
--

CREATE TABLE IF NOT EXISTS `table_region` (
  `Code_region` varchar(20) NOT NULL,
  `nom_region` varchar(20) NOT NULL,
  PRIMARY KEY (`Code_region`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `table_region`
--

INSERT INTO `table_region` (`Code_region`, `nom_region`) VALUES
('11', 'Ils-de-France'),
('44', 'Grand-Est'),
('53', 'Bretagne');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
