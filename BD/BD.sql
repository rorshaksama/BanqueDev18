-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 jan. 2020 à 11:02
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `banquedev18`
--
CREATE DATABASE IF NOT EXISTS `banquedev18` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `banquedev18`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idAdmin`),
  KEY `fk_Admin_User_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

DROP TABLE IF EXISTS `carte`;
CREATE TABLE IF NOT EXISTS `carte` (
  `idCarte` int(11) NOT NULL AUTO_INCREMENT,
  `isActiv` tinyint(4) DEFAULT NULL,
  `idCompte` int(11) NOT NULL,
  PRIMARY KEY (`idCarte`),
  KEY `fk_Carte_Compte1_idx` (`idCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(450) DEFAULT NULL,
  `dateNaissance` datetime DEFAULT NULL,
  `adresse` varchar(405) DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Client_User1_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `idCompte` int(11) NOT NULL AUTO_INCREMENT,
  `solde` int(11) DEFAULT NULL,
  `decouvert` int(11) DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idCompte`),
  KEY `fk_Compte_Client1_idx` (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `conseiller`
--

DROP TABLE IF EXISTS `conseiller`;
CREATE TABLE IF NOT EXISTS `conseiller` (
  `idConseiller` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(450) DEFAULT NULL,
  `isActiv` tinyint(4) DEFAULT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idConseiller`),
  KEY `fk_Conseiller_User1_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `histocompte`
--

DROP TABLE IF EXISTS `histocompte`;
CREATE TABLE IF NOT EXISTS `histocompte` (
  `idHistoCompte` int(11) NOT NULL AUTO_INCREMENT,
  `dateModifC` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `idCompte` int(11) NOT NULL,
  PRIMARY KEY (`idHistoCompte`),
  KEY `fk_HistoCompte_Compte1_idx` (`idCompte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `histoconnexion`
--

DROP TABLE IF EXISTS `histoconnexion`;
CREATE TABLE IF NOT EXISTS `histoconnexion` (
  `idHistoConnexion` int(11) NOT NULL AUTO_INCREMENT,
  `dateCo` varchar(45) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`idHistoConnexion`),
  KEY `fk_HistoConnexion_User1_idx` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `histocons`
--

DROP TABLE IF EXISTS `histocons`;
CREATE TABLE IF NOT EXISTS `histocons` (
  `idHistoCons` int(11) NOT NULL AUTO_INCREMENT,
  `dateModif` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `idConseiller` int(11) NOT NULL,
  PRIMARY KEY (`idHistoCons`),
  KEY `fk_HistoCons_Conseiller1_idx` (`idConseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `idmessages` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(4500) DEFAULT NULL,
  `dateEnvoi` datetime DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  `idConseiller` int(11) NOT NULL,
  PRIMARY KEY (`idmessages`),
  KEY `fk_messages_Client1_idx` (`idClient`),
  KEY `fk_messages_Conseiller1_idx` (`idConseiller`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `mdp` varchar(45) NOT NULL,
  `mail` varchar(100) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_Admin_User` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `fk_Carte_Compte1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `fk_Client_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `compte`
--
ALTER TABLE `compte`
  ADD CONSTRAINT `fk_Compte_Client1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `conseiller`
--
ALTER TABLE `conseiller`
  ADD CONSTRAINT `fk_Conseiller_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `histocompte`
--
ALTER TABLE `histocompte`
  ADD CONSTRAINT `fk_HistoCompte_Compte1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `histoconnexion`
--
ALTER TABLE `histoconnexion`
  ADD CONSTRAINT `fk_HistoConnexion_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `histocons`
--
ALTER TABLE `histocons`
  ADD CONSTRAINT `fk_HistoCons_Conseiller1` FOREIGN KEY (`idConseiller`) REFERENCES `conseiller` (`idConseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_messages_Client1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_messages_Conseiller1` FOREIGN KEY (`idConseiller`) REFERENCES `conseiller` (`idConseiller`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
