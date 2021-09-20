-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema healthcaredb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `healthcaredb` ;

-- -----------------------------------------------------
-- Schema healthcaredb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `healthcaredb` DEFAULT CHARACTER SET utf8 ;
USE `healthcaredb` ;

-- -----------------------------------------------------
-- Table `patient`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `patient` ;

CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(100) NOT NULL,
  `middle_initial` CHAR(1) NULL,
  `last_name` VARCHAR(150) NOT NULL,
  `date_of_birth` CHAR(10) NULL,
  `ssn` CHAR(9) NOT NULL,
  `address` VARCHAR(250) NULL,
  `city` VARCHAR(100) NULL,
  `state_abbrev` CHAR(2) NULL,
  `zipcode` CHAR(5) NULL,
  `phone` CHAR(10) NULL,
  PRIMARY KEY (`patient_id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS healthcareuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'healthcareuser'@'localhost' IDENTIFIED BY 'healthcareuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'healthcareuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `patient`
-- -----------------------------------------------------
START TRANSACTION;
USE `healthcaredb`;
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (1, 'Moby', NULL, 'Dick', '1911-05-25', '570084700', '1304 Stratford Court', 'Raleigh', 'NC', '27601', '9193809184');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (2, 'Sherlock', NULL, 'Homes', '1950-03-15', '798610221', '1293 Twin Willow Ln', 'Fayetteville', 'NC', '28301', '9196561567');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (3, 'Binx', NULL, 'Bolling', '1966-11-20', '984669982', '701 Mount Street', 'Wanchese', 'NC', '27981', '6309187052');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (4, 'Patrick', NULL, 'Bateman', '1977-03-15', '397146432', '1782 Jennifer Lane', 'Durham', 'NC', '27713', '3369090831');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (5, 'Inigo', NULL, 'Montoya', '1977-01-06', '047526173', '1844 Goosetown Drive', 'Charlotte', 'NC', '28202', '7045783364');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (6, 'Jay', NULL, 'Gatsby', '1950-03-19', '353551599', '2374 Bryan Street', 'Greensboro', 'NC', '27406', '9809495787');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (7, 'Benno', NULL, 'Archimboldi', '1968-06-06', '254668897', '1619 Scenic Way', 'Advance', 'NC', '27006', '9193937800');
INSERT INTO `patient` (`patient_id`, `first_name`, `middle_initial`, `last_name`, `date_of_birth`, `ssn`, `address`, `city`, `state_abbrev`, `zipcode`, `phone`) VALUES (8, 'Michael', NULL, 'Smith', '1989-01-14', '954887477', '213 Dola Mine Road', 'Cary', 'NC', '27513', '9196188447');

COMMIT;

