-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema banquedev18
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banquedev18
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banquedev18` DEFAULT CHARACTER SET utf8 ;
USE `banquedev18` ;

-- -----------------------------------------------------
-- Table `banquedev18`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`user` (
  `idUser` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `mdp` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`admin` (
  `idAdmin` INT(11) NOT NULL AUTO_INCREMENT,
  `idUser` INT(11) NOT NULL,
  PRIMARY KEY (`idAdmin`),
  INDEX `fk_Admin_User_idx` (`idUser` ASC) ,
  CONSTRAINT `fk_Admin_User`
    FOREIGN KEY (`idUser`)
    REFERENCES `banquedev18`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`conseiller`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`conseiller` (
  `idConseiller` INT(11) NOT NULL AUTO_INCREMENT,
  `photo` VARCHAR(450) NULL DEFAULT NULL,
  `isActiv` TINYINT(4) NULL DEFAULT NULL,
  `idUser` INT(11) NOT NULL,
  PRIMARY KEY (`idConseiller`),
  INDEX `fk_Conseiller_User1_idx` (`idUser` ASC) ,
  CONSTRAINT `fk_Conseiller_User1`
    FOREIGN KEY (`idUser`)
    REFERENCES `banquedev18`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`client` (
  `idClient` INT(11) NOT NULL AUTO_INCREMENT,
  `photo` VARCHAR(450) NULL DEFAULT NULL,
  `dateNaissance` DATETIME NULL DEFAULT NULL,
  `adresse` VARCHAR(405) NULL DEFAULT NULL,
  `idUser` INT(11) NOT NULL,
  `idConseiller` INT(11) NOT NULL,
  PRIMARY KEY (`idClient`),
  INDEX `fk_Client_User1_idx` (`idUser` ASC) ,
  INDEX `fk_Client_Conseiller1_idx` (`idConseiller` ASC) ,
  CONSTRAINT `fk_Client_Conseiller1`
    FOREIGN KEY (`idConseiller`)
    REFERENCES `banquedev18`.`conseiller` (`idConseiller`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Client_User1`
    FOREIGN KEY (`idUser`)
    REFERENCES `banquedev18`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`compte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`compte` (
  `idCompte` INT(11) NOT NULL AUTO_INCREMENT,
  `solde` INT(11) NULL DEFAULT NULL,
  `decouvert` INT(11) NULL DEFAULT NULL,
  `idClient` INT(11) NOT NULL,
  `isActiv` TINYINT(4) NULL DEFAULT NULL,
  PRIMARY KEY (`idCompte`),
  INDEX `fk_Compte_Client1_idx` (`idClient` ASC) ,
  CONSTRAINT `fk_Compte_Client1`
    FOREIGN KEY (`idClient`)
    REFERENCES `banquedev18`.`client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`carte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`carte` (
  `idCarte` INT(11) NOT NULL AUTO_INCREMENT,
  `isActiv` TINYINT(4) NULL DEFAULT NULL,
  `idCompte` INT(11) NOT NULL,
  PRIMARY KEY (`idCarte`),
  INDEX `fk_Carte_Compte1_idx` (`idCompte` ASC) ,
  CONSTRAINT `fk_Carte_Compte1`
    FOREIGN KEY (`idCompte`)
    REFERENCES `banquedev18`.`compte` (`idCompte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`histocompte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`histocompte` (
  `idHistoCompte` INT(11) NOT NULL AUTO_INCREMENT,
  `dateModifC` DATETIME NULL DEFAULT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  `idCompte` INT(11) NOT NULL,
  PRIMARY KEY (`idHistoCompte`),
  INDEX `fk_HistoCompte_Compte1_idx` (`idCompte` ASC) ,
  CONSTRAINT `fk_HistoCompte_Compte1`
    FOREIGN KEY (`idCompte`)
    REFERENCES `banquedev18`.`compte` (`idCompte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`histoconnexion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`histoconnexion` (
  `idHistoConnexion` INT(11) NOT NULL AUTO_INCREMENT,
  `dateCo` VARCHAR(45) NOT NULL,
  `idUser` INT(11) NOT NULL,
  PRIMARY KEY (`idHistoConnexion`),
  INDEX `fk_HistoConnexion_User1_idx` (`idUser` ASC) ,
  CONSTRAINT `fk_HistoConnexion_User1`
    FOREIGN KEY (`idUser`)
    REFERENCES `banquedev18`.`user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`histocons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`histocons` (
  `idHistoCons` INT(11) NOT NULL AUTO_INCREMENT,
  `dateModif` DATETIME NULL DEFAULT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  `idConseiller` INT(11) NOT NULL,
  PRIMARY KEY (`idHistoCons`),
  INDEX `fk_HistoCons_Conseiller1_idx` (`idConseiller` ASC) ,
  CONSTRAINT `fk_HistoCons_Conseiller1`
    FOREIGN KEY (`idConseiller`)
    REFERENCES `banquedev18`.`conseiller` (`idConseiller`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `banquedev18`.`messages`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banquedev18`.`messages` (
  `idmessages` INT(11) NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(4500) NULL DEFAULT NULL,
  `dateEnvoi` DATETIME NULL DEFAULT NULL,
  `idClient` INT(11) NOT NULL,
  `idConseiller` INT(11) NOT NULL,
  PRIMARY KEY (`idmessages`),
  INDEX `fk_messages_Client1_idx` (`idClient` ASC) ,
  INDEX `fk_messages_Conseiller1_idx` (`idConseiller` ASC) ,
  CONSTRAINT `fk_messages_Client1`
    FOREIGN KEY (`idClient`)
    REFERENCES `banquedev18`.`client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_messages_Conseiller1`
    FOREIGN KEY (`idConseiller`)
    REFERENCES `banquedev18`.`conseiller` (`idConseiller`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
