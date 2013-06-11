CREATE DATABASE IF NOT EXISTS `phplx`;

DROP TABLE IF EXISTS `phplx`.`test`;

CREATE TABLE `phplx`.`test`
(
  `id`    INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `name`  VARCHAR(20) NOT NULL
);

INSERT INTO `phplx`.`test` (`name`) VALUES ('Daniel'), ('Bruno'), ('Samuel');
