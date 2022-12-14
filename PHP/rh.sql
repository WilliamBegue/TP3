-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 14 Décembre 2022 à 17:02
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `NoEmp` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `sexe` varchar(20) NOT NULL,
  `salaire` int(11) NOT NULL,
  `typecontrat` varchar(20) NOT NULL,
  `fonction` varchar(20) NOT NULL,
  `site` varchar(20) NOT NULL,
  `date_d'embauche` date NOT NULL,
  `date_naissance` date NOT NULL,
  `numsrv` int(11) NOT NULL,
  PRIMARY KEY (`NoEmp`),
  KEY `typecontrat` (`typecontrat`,`numsrv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employer`
--

INSERT INTO `employer` (`NoEmp`, `nom`, `prenom`, `sexe`, `salaire`, `typecontrat`, `fonction`, `site`, `date_d'embauche`, `date_naissance`, `numsrv`) VALUES
(1, 'Jean', 'suite', 'Homme', 2500, 'CDD', 'Management', 'Créteil ', '2010-12-12', '1985-03-15', 1),
(2, 'moi', 'leretour', 'Patate', 2600, 'CDI', 'Dossier', 'Paris', '2009-04-25', '1995-06-14', 2);

-- --------------------------------------------------------

--
-- Structure de la table `inetervenir`
--

CREATE TABLE IF NOT EXISTS `inetervenir` (
  `Num_interv` int(11) NOT NULL,
  `numprojet` int(11) NOT NULL,
  `numemployer` int(11) NOT NULL,
  `nb_heure` int(11) NOT NULL,
  PRIMARY KEY (`Num_interv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `inetervenir`
--

INSERT INTO `inetervenir` (`Num_interv`, `numprojet`, `numemployer`, `nb_heure`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `Numprojet` int(11) NOT NULL,
  `libelleprojet` varchar(20) NOT NULL,
  `numsrv` int(11) NOT NULL,
  PRIMARY KEY (`Numprojet`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`Numprojet`, `libelleprojet`, `numsrv`) VALUES
(1, 'Site', 1),
(2, 'base de données ', 2);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NumSvr` int(11) NOT NULL,
  `NomSrv` varchar(20) NOT NULL,
  PRIMARY KEY (`NumSvr`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NumSvr`, `NomSrv`) VALUES
(1, '1'),
(2, '2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
