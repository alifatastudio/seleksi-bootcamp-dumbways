-- MySQL Workbench Synchronization
-- Generated: 2019-07-27 14:20
-- Model: New Model
-- Version: 1.0
-- Project: Seleksi BootCamp DumbWays
-- Author: alifata

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA `my_database` ;

CREATE TABLE IF NOT EXISTS `my_database`.`cities` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- populate cities
INSERT INTO `my_database`.`cities` (`id`, `name`) VALUES ('1', 'Jakarta');
INSERT INTO `my_database`.`cities` (`id`, `name`) VALUES ('2', 'Bandung');


CREATE TABLE IF NOT EXISTS `my_database`.`users` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NULL DEFAULT NULL,
  `date_of_birth` DATETIME NULL DEFAULT NULL,
  `place_of_birth_id` INT(10) UNSIGNED NOT NULL,
  `phone_number` VARCHAR(50) NULL DEFAULT NULL,
  `address` TEXT NULL DEFAULT NULL,
  `last_education` ENUM('SD', 'SMP', 'SMA', 'S1') NULL DEFAULT NULL,
  `religion` ENUM('Islam', 'Kristen', 'Hindu', 'Budha') NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_users_cities_idx` (`place_of_birth_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_users_cities`
    FOREIGN KEY (`place_of_birth_id`)
    REFERENCES `my_database`.`cities` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- populate users
INSERT INTO `my_database`.`users` (`id`, `full_name`, `date_of_birth`, `place_of_birth_id`, `phone_number`, `last_education`, `religion`) VALUES ('1', 'Lucinta Luna', '1992-07-12', '1', '081111', 'S1', 'Kristen');
INSERT INTO `my_database`.`users` (`id`, `full_name`, `date_of_birth`, `place_of_birth_id`, `phone_number`, `last_education`, `religion`) VALUES ('2', 'Satrio', '2001-07-21', '1', '082222', 'SMA', 'Islam');
INSERT INTO `my_database`.`users` (`id`, `full_name`, `date_of_birth`, `place_of_birth_id`, `phone_number`, `last_education`, `religion`) VALUES ('3', 'Syahrini', '1989-01-01', '2', '083333', 'S1', 'Islam');


CREATE TABLE IF NOT EXISTS `my_database`.`hobbies` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- populate hobbies
INSERT INTO `my_database`.`hobbies` (`id`, `name`) VALUES ('1', 'Renang');
INSERT INTO `my_database`.`hobbies` (`id`, `name`) VALUES ('2', 'Game');
INSERT INTO `my_database`.`hobbies` (`id`, `name`) VALUES ('3', 'Ghibah');
INSERT INTO `my_database`.`hobbies` (`id`, `name`) VALUES ('4', 'Programing');

CREATE TABLE IF NOT EXISTS `my_database`.`users_hobbies` (
  `biodata_id` INT(10) UNSIGNED NOT NULL,
  `hobby_id` INT(10) UNSIGNED NOT NULL,
  INDEX `fk_users_hobbies_biodata_id` (`biodata_id` ASC) VISIBLE,
  INDEX `fk_users_hobbies_hobby_id` (`hobby_id` ASC) VISIBLE,
  CONSTRAINT `fk_users_hobbies_biodata_id`
    FOREIGN KEY (`biodata_id`)
    REFERENCES `my_database`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_hobbies_hobby_id`
    FOREIGN KEY (`hobby_id`)
    REFERENCES `my_database`.`hobbies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

-- populate users_hobbies
INSERT INTO `my_database`.`users_hobbies` (`biodata_id`, `hobby_id`) VALUES (1,1);
INSERT INTO `my_database`.`users_hobbies` (`biodata_id`, `hobby_id`) VALUES (1,2);
INSERT INTO `my_database`.`users_hobbies` (`biodata_id`, `hobby_id`) VALUES (2,3);
INSERT INTO `my_database`.`users_hobbies` (`biodata_id`, `hobby_id`) VALUES (2,4);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
