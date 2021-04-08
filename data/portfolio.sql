/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50731
Source Host           : localhost:3306
Source Database       : portfolio

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2021-04-08 18:16:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isTop` tinyint(4) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `title3` varchar(255) DEFAULT NULL,
  `desc` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', './images/caocao.jpg', './images/caocao.png', 'img', '1', 'CaoCao', 'Symbol of majesty and integrity', 'Domineering in seriousness', 'This work is a historical figure Cao Cao painted by PS. The color matching and the size ratio of the characters also take into account many historical books. Every child should know something about Cao Cao in his childhood, so he must be serious, so that he will appear dignified.');
INSERT INTO `items` VALUES ('2', './images/crane.jpg', './images/crane.png', 'img', '1', 'Flying crane', 'The pursuit of freedom and beauty', 'The independent crane held its head high', 'The perfect combination of PS and AI was used to draw this clean, tidy and poetic card. If you are alone at this time, do not worry, standing on the top of the people are lonely, because no one can match your outstanding. Like this painting, cold and confident.');
INSERT INTO `items` VALUES ('3', './images/film.jpg', './images/film.png', 'img', '0', 'Time', 'Elapsed time', 'Time is the fine sand that cannot be kept', 'I used PS and AI to exhibit a deep poster with a dark background. Black is the most attractive, not annoying but also mysterious. The combination of red and black does not appear obtrusive, which happens to attract visitors even more,');
INSERT INTO `items` VALUES ('4', './images/lotus.jpg', '', 'img', '1', 'Lotus', 'Carp playing lotus', 'Joyful beautiful summer', 'The smell of summer must of course be coupled with the blooming of lotus. Together, the red carp and the red lotus are the summer scenery. PS drew this card to give you the most beautiful summer.');
INSERT INTO `items` VALUES ('5', './images/wave.jpg', './images/wave.png', 'img', '1', 'Wave', 'Curly waves', 'A fresh day with you', 'This little card drawn by PS is the coolest gift in summer. Repeated waves are not difficult but they also need to be very careful and need to be connected at specific points. In short, I will give you a wave and hope that your summer will be even better.');
INSERT INTO `items` VALUES ('6', './images/lily.jpg', './images/lily.png', 'img', '0', 'Lily', 'Lonely lotus', 'Asleep lotus', 'The lotus flowers in full bloom in the evening will look silent and deserted, but they will not hinder its dignity and sophoty. Green is fresh and natural. PS drew this card for you who like lotus flowers.');
INSERT INTO `items` VALUES ('7', './images/logo2.jpg', '', 'img', '0', 'Logo', 'Bread Tao Li', 'Give you a piece of bread', 'This is a bakery logo, drawn directly with Illustrator. The color of brown fits very well with the color of the bread itself. There are more complicated things, and a simple and clear logo is more impressive. This is also the wish of every business.');
INSERT INTO `items` VALUES ('8', './images/logo4.jpg', '', 'img', '0', 'Logo', 'Anti-drug', 'Stop the drugs in your hand', 'This is an anti-drug police badge designed for the police. Blue is a common color for police clothes in the local area, so it is more eye-catching and natural. The straw grows in the field, which means to serve the people.');
INSERT INTO `items` VALUES ('9', './images/ox.jpg', './images/ox1.png', 'img', '0', '2021', 'Happy Year of the Ox', 'The new year rushes forward', 'In the Chinese zodiac, 2021 is the year of the ox. The meaning of the year of the ox is very encouraging, go forward and keep rushing. Red represents joy and means that 2021 will be very lucky.');
INSERT INTO `items` VALUES ('10', './videos/resolve_beer.mp4', null, 'video', '1', null, null, null, null);
INSERT INTO `items` VALUES ('11', './images/tea.jpg', '', 'img', '0', 'Logo', 'Tea and 5G', 'Cooperation will achieve a win-win situation', 'This is a logo designed by Illustrator for tea merchants, and it has cooperated with the mobile phone company\'s 5G. The choice of color red will be very prominent, which is also the desired effect of the business.');
