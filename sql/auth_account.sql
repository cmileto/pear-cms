ALTER TABLE `account` ADD `avatar` INT(10) NULL DEFAULT '0', ADD `silvercoins` INT(10) NULL DEFAULT '0' AFTER `avatar`, ADD `goldcoins` INT(10) NOT NULL DEFAULT '0' AFTER `silvercoins`, ADD `remember_token` varchar(50) NOT NULL AFTER `goldcoins`;
