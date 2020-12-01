-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 18 Août 2017 à 14:52
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `alfajr`
--
create database alfajr;
use alfajr;
-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE IF NOT EXISTS `classe` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(50) NOT NULL,
  `abrev` varchar(10) DEFAULT NULL,
  `fil` varchar(2) NOT NULL,
  `nb_mx_el` int(3) NOT NULL,
  `Niv` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Niv` (`Niv`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Contenu de la table `classe`
--

INSERT INTO `classe` (`Id`, `label`, `abrev`, `fil`, `nb_mx_el`, `Niv`) VALUES
(88, 'السنة الأولى', '1 AF', '', 100, 1),
(90, 'السنة الثانية', '2 AF', '', 100, 1),
(91, 'السنة الثالثة', '3 AF', '', 100, 1),
(92, 'السنة الرابعة', '4 AF', '', 100, 1),
(93, 'السنة الخامسة', '5 AF', '', 100, 1),
(94, 'السنة السادسة', '6 AF', '', 100, 1),
(95, 'السنة الأولى', '1 AS', '', 100, 2),
(96, 'السنة الثانية', '2 AS', '', 100, 2),
(97, 'السنة الثالثة', '3 AS', '', 100, 2),
(98, 'السنة الرابعة', '4 AS', '', 100, 2),
(100, 'السنة الخامسة', '5 LO', 'LO', 100, 3),
(101, 'السنة السادسة', '6 LO', 'LO', 100, 3),
(102, 'السنة السابعة', '7 LO', 'LO', 100, 3),
(103, 'السنة الخامسة', '5 LM', 'LM', 100, 3),
(104, 'السنة السادسة', '6 LM', 'LM', 100, 3),
(105, 'السنة السابعة', '7 LM', 'LM', 100, 3),
(106, 'السنة الخامسة', '5 C', 'C', 100, 3),
(107, 'السنة السادسة', '6 C', 'C', 100, 3),
(108, 'السنة السابعة', '7 C', 'C', 100, 3),
(109, 'السنة الخامسة', '5 D', 'D', 100, 3),
(110, 'السنة السادسة', '6 D', 'D', 100, 3),
(111, 'السنة السابعة', '7 D', 'D', 100, 3);

-- --------------------------------------------------------

--
-- Structure de la table `coeficient`
--

CREATE TABLE IF NOT EXISTS `coeficient` (
  `mat` int(11) NOT NULL,
  `cl` int(11) NOT NULL,
  `niv` int(11) NOT NULL,
  `valeur` double NOT NULL,
  KEY `mat` (`mat`,`niv`),
  KEY `cl` (`cl`),
  KEY `niv` (`niv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `devoires`
--

CREATE TABLE IF NOT EXISTS `devoires` (
  `iddev` int(11) NOT NULL AUTO_INCREMENT,
  `Mat` int(11) NOT NULL,
  `date` char(10) DEFAULT NULL,
  `El` int(11) NOT NULL,
  `No` double NOT NULL,
  PRIMARY KEY (`iddev`),
  KEY `El` (`El`),
  KEY `Mat` (`Mat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=946 ;

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE IF NOT EXISTS `eleve` (
  `Numero` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Residence` varchar(70) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  `NomTut` varchar(100) NOT NULL,
  `DateEntre` varchar(70) NOT NULL,
  `DateSortie` varchar(12) NOT NULL,
  `Cls` int(11) NOT NULL,
  `etat` int(2) DEFAULT NULL,
  PRIMARY KEY (`Numero`),
  KEY `Cls` (`Cls`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=530 ;

-- --------------------------------------------------------

--
-- Structure de la table `examens`
--

CREATE TABLE IF NOT EXISTS `examens` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(70) NOT NULL,
  `Coeficient` int(11) NOT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `examens`
--

INSERT INTO `examens` (`Num`, `Type`, `Coeficient`) VALUES
(1, 'الامتحان الأول', 1),
(2, 'الامتحان الثاني', 2),
(3, 'الامتحان الثالث', 3),
(4, 'اختبار', 3),
(5, 'العمل السنوي', 1);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int(11) NOT NULL AUTO_INCREMENT,
  `label_groupe` varchar(100) NOT NULL DEFAULT '',
  `niveau` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_groupe`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `label_groupe`, `niveau`) VALUES
(1, 'Directeur', 1),
(2, 'comptable', 2);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE IF NOT EXISTS `matiere` (
  `Identifient` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(70) NOT NULL,
  PRIMARY KEY (`Identifient`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE IF NOT EXISTS `niveau` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`id`, `Description`) VALUES
(1, 'ابتدائي'),
(2, 'إعدادي'),
(3, 'ثانوي');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Valeur` double NOT NULL,
  `Mat` int(11) NOT NULL,
  `Classe` int(11) NOT NULL,
  `Ele` int(11) NOT NULL,
  `Examen` int(11) NOT NULL,
  `Coef` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Mat` (`Mat`),
  KEY `Ele` (`Ele`),
  KEY `Coef` (`Coef`),
  KEY `Exemen` (`Examen`),
  KEY `Coef_2` (`Coef`),
  KEY `Coef_3` (`Coef`),
  KEY `Classe` (`Classe`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4671 ;

-- --------------------------------------------------------

--
-- Structure de la table `note_ar`
--

CREATE TABLE IF NOT EXISTS `note_ar` (
  `id` int(11) NOT NULL DEFAULT '0',
  `an` varchar(10) DEFAULT NULL,
  `valeur` double DEFAULT NULL,
  `mat` int(11) DEFAULT NULL,
  `classe` int(11) DEFAULT NULL,
  `ele` int(11) DEFAULT NULL,
  `exam` int(11) DEFAULT NULL,
  `coef` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rang`
--

CREATE TABLE IF NOT EXISTS `rang` (
  `iden` int(11) NOT NULL AUTO_INCREMENT,
  `Classe` int(11) NOT NULL,
  `Exam` int(11) NOT NULL,
  `Eleve` int(11) NOT NULL,
  `Somme` int(11) NOT NULL,
  `som` float DEFAULT NULL,
  `Moyen` float NOT NULL,
  `Rang` int(11) NOT NULL,
  PRIMARY KEY (`iden`),
  KEY `Classe` (`Classe`),
  KEY `Exam` (`Exam`),
  KEY `Eleve` (`Eleve`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=688 ;

-- --------------------------------------------------------

--
-- Structure de la table `user_inf_abd`
--

CREATE TABLE IF NOT EXISTS `user_inf_abd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `login` text NOT NULL,
  `passwd` text NOT NULL,
  `fk_id_gp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `user_inf_abd`
--

INSERT INTO `user_inf_abd` (`id`, `nom`, `login`, `passwd`, `fk_id_gp`) VALUES
(2, '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(3, 'Leur Comptable', 'comp', 'cmp', 2);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`Niv`) REFERENCES `niveau` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `coeficient`
--
ALTER TABLE `coeficient`
  ADD CONSTRAINT `coeficient_ibfk_2` FOREIGN KEY (`mat`) REFERENCES `matiere` (`Identifient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coeficient_ibfk_3` FOREIGN KEY (`cl`) REFERENCES `classe` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coeficient_ibfk_4` FOREIGN KEY (`niv`) REFERENCES `niveau` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `devoires`
--
ALTER TABLE `devoires`
  ADD CONSTRAINT `devoires_ibfk_1` FOREIGN KEY (`El`) REFERENCES `eleve` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `devoires_ibfk_2` FOREIGN KEY (`Mat`) REFERENCES `matiere` (`Identifient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `eleve_ibfk_1` FOREIGN KEY (`Cls`) REFERENCES `classe` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`Mat`) REFERENCES `matiere` (`Identifient`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`Ele`) REFERENCES `eleve` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_3` FOREIGN KEY (`Examen`) REFERENCES `examens` (`Num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `note_ibfk_4` FOREIGN KEY (`Classe`) REFERENCES `classe` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `rang`
--
ALTER TABLE `rang`
  ADD CONSTRAINT `rang_ibfk_1` FOREIGN KEY (`Classe`) REFERENCES `classe` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rang_ibfk_2` FOREIGN KEY (`Exam`) REFERENCES `examens` (`Num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rang_ibfk_3` FOREIGN KEY (`Eleve`) REFERENCES `eleve` (`Numero`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
