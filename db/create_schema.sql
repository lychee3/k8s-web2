CREATE DATABASE `mirumo-db`;
-- CREATE DATABASE `mirumo-db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mirumo-db`;

CREATE TABLE fairy (
  id  INTEGER NOT NULL AUTO_INCREMENT,
  name CHAR(30) NOT NULL,
  instrument CHAR(30),
  sweets CHAR(30),
  PRIMARY KEY (id)
);

INSERT INTO fairy (name, instrument, sweets) VALUES
 ('ミルモ', 'マラカス', 'チョコレート'),
 ('リルム', 'タンバリン', 'シュークリーム'),
 ('ヤシチ', 'トライアングル', 'かりんとう'),
 ('ムルモ', '小太鼓', 'マシュマロ');

-- Grant priviliges on database user

GRANT ALL ON `mirumo-db`.* TO 'dbuser';
