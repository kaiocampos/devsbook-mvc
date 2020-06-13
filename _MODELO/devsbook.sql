CREATE DATABASE IF NOT EXISTS devsbook;

USE devsbook;

CREATE TABLE `devsbook`.`users` 
( 
    `id` INT NOT NULL AUTO_INCREMENT , 
    `email` VARCHAR(100) NOT NULL , 
    `password` VARCHAR(200) NOT NULL , 
    `name` VARCHAR(100) NOT NULL , 
    `birthdate` DATE NOT NULL , 
    `city` VARCHAR(100) NOT NULL , 
    `work` VARCHAR(100) NOT NULL , 
    `avatar` VARCHAR(100) NOT NULL , 
    `cover` VARCHAR(100) NOT NULL , 
    `token` VARCHAR(200) NOT NULL , 
    PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `devsbook`.`userrelations` 
( 
    `id` INT NOT NULL AUTO_INCREMENT , 
    `user_from` INT NOT NULL , 
    `user_to` INT NOT NULL , 
    PRIMARY KEY (`id`)) ENGINE = InnoDB;


CREATE TABLE 'devsbook'.'posts'(`id` INT NOT NULL AUTO_INCREMENT ,'type' VARCHAR(20) NOT NULL, 'created_at' DATETIME NOT NULL, 'body' TEXT NOT NULL, PRIMARY KEY ('id')) ENGINE = InnoDB;

CREATE TABLE `devsbook`.`postcomments` ( `id` INT NOT NULL AUTO_INCREMENT , `id_post` INT NOT NULL , `id_user` INT NOT NULL , `created_at` DATETIME NOT NULL , `body` TEXT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `devsbook`.`likes` ( `id` INT NOT NULL AUTO_INCREMENT , `id_post` INT NOT NULL , `id_user` INT NOT NULL , `created_at` DATETIME NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;


