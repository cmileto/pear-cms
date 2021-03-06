CREATE DATABASE IF NOT EXISTS `website` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `website`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `settings_name` varchar(30) NOT NULL,
  `settings_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `news` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NOT NULL DEFAULT 'News title',
	`description` VARCHAR(255) NOT NULL DEFAULT 'News description',
	`content` VARCHAR(65000) NOT NULL DEFAULT 'News body content',
	`image` VARCHAR(50) NOT NULL DEFAULT 'news_image_1.jpg',
	`author` VARCHAR(30) NOT NULL ,
	`timestamp` INT(20) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`))
  ENGINE=InnoDB;

CREATE TABLE `news_comments` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `newsId` INT(10) NOT NULL ,
  `comment` VARCHAR(250) NOT NULL ,
  `author` VARCHAR(30) NOT NULL ,
  `is_gm` INT(10) NOT NULL ,
  `timestamp` INT(20) NOT NULL ,
   PRIMARY KEY (`id`))
 ENGINE=InnoDB;

 CREATE TABLE `error_logs` (
    `id` INT NOT NULL AUTO_INCREMENT ,
    `message` VARCHAR(200) NOT NULL COMMENT 'Error message provided.' ,
    `username` VARCHAR(30) NOT NULL COMMENT 'Username of the user who faced an error.' ,
    `ip` VARCHAR(30) NOT NULL COMMENT 'IP of the aforementioned user.' ,
    `date` VARCHAR(30) NOT NULL COMMENT 'Date of occurrence.' ,
    PRIMARY KEY (`id`))
 ENGINE = InnoDB;

 CREATE TABLE `shop_items` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`categoryid` INT(11) NOT NULL DEFAULT '1',
	`quality` INT(11) NOT NULL DEFAULT '1',
	`name` VARCHAR(255) NOT NULL,
	`description` VARCHAR(255) NULL DEFAULT 'No description.',
	`image` VARCHAR(255) NOT NULL DEFAULT 'inv_misc_questionmark',
	`vp` INT(11) NULL DEFAULT '0',
	`dp` INT(11) NULL DEFAULT '0',
	PRIMARY KEY (`id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `shop_categories` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(55) NULL DEFAULT NULL,
	`description` VARCHAR(255) NOT NULL DEFAULT 'No description.',
	`image` VARCHAR(255) NOT NULL DEFAULT 'inv_misc_questionmark',
	PRIMARY KEY (`id`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;

CREATE TABLE `changelogs` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL DEFAULT 'Realm',
	`timestamp` INT(20) NOT NULL DEFAULT '1104746400',
	`content` TEXT NOT NULL,
	`author` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT=1
;


--Test Category, comment if you don't want it;
INSERT INTO `shop_categories` VALUES (1, 'Test Category', 'Test Category', 'test.png');
