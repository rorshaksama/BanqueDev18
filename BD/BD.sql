-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 14 jan. 2020 à 12:17
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `idUser`) VALUES
(1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `carte`
--

INSERT INTO `carte` (`idCarte`, `isActiv`, `idCompte`) VALUES
(1, 1, 1),
(2, 0, 1);

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
  `idConseiller` int(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  KEY `fk_Client_User1_idx` (`idUser`),
  KEY `fk_Client_Conseiller1_idx` (`idConseiller`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `photo`, `dateNaissance`, `adresse`, `idUser`, `idConseiller`) VALUES
(1, 'https://vignette.wikia.nocookie.net/anime-characters-info/images/4/4e/Lord_Dio.jpg/revision/latest?cb=20190923201136', '1994-05-01 00:00:00', '1 rue du stand', 3, 1);

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
  `isActiv` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idCompte`),
  KEY `fk_Compte_Client1_idx` (`idClient`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`idCompte`, `solde`, `decouvert`, `idClient`, `isActiv`) VALUES
(1, 5000, 0, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `conseiller`
--

INSERT INTO `conseiller` (`idConseiller`, `photo`, `isActiv`, `idUser`) VALUES
(1, 'https://www.exobaston.com/wp-content/uploads/2019/01/jotaro-jump.jpg', 1, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`idmessages`, `message`, `dateEnvoi`, `idClient`, `idConseiller`) VALUES
(1, 'Salut mon conseillé, c\'est du test', '2020-01-13 00:00:00', 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `nom`, `prenom`, `login`, `mdp`, `mail`) VALUES
(1, 'admin1', 'aaa', 'admin1', 'admin1', 'admin1@mail.com'),
(2, 'conseil1', 'ccc', 'cons1', 'cons1', 'cons1@mail.com'),
(3, 'user1', 'uuu', 'user1', 'user1', 'user1@mail.com');

