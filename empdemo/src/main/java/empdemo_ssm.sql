/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : empdemo_ssm

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-06-13 14:49:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for e_dept
-- ----------------------------
DROP TABLE IF EXISTS `e_dept`;
CREATE TABLE `e_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_dept
-- ----------------------------
INSERT INTO `e_dept` VALUES ('1', '开发部', '天津');
INSERT INTO `e_dept` VALUES ('2', '测试部', '北京');

-- ----------------------------
-- Table structure for e_emp
-- ----------------------------
DROP TABLE IF EXISTS `e_emp`;
CREATE TABLE `e_emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `sex` enum('男','女') DEFAULT '男',
  `salary` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_emp
-- ----------------------------
INSERT INTO `e_emp` VALUES ('9', '段誉', '13368345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('10', '测试数据1', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('11', '测试数据2', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('12', '测试数据3', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('13', '测试数据4', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('14', '测试数据5', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('15', '测试数据6', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('16', '测试数据7', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('19', '测试数据10', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('20', '测试数据11', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('21', '测试数据12', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('22', '测试数据13', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('23', '测试数据14', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('24', '测试数据15', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('25', '测试数据16', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('26', '测试数据17', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('27', '测试数据18', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('28', '测试数据19', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('29', '测试数据20', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('30', '测试数据21', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('31', '测试数据22', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('32', '测试数据23', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('33', '测试数据24', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('34', '测试数据25', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('35', '测试数据26', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('36', '测试数据27', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('37', '测试数据28', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('38', '测试数据29', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('39', '测试数据30', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('40', '测试数据31', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('41', '测试数据32', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('42', '测试数据33', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('43', '测试数据34', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('44', '测试数据35', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('45', '测试数据36', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('46', '测试数据37', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('47', '测试数据38', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('48', '测试数据39', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('49', '测试数据40', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('50', '测试数据41', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('51', '测试数据42', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('52', '测试数据43', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('53', '测试数据44', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('54', '测试数据45', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('55', '测试数据46', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('56', '测试数据47', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('57', '测试数据48', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('58', '测试数据49', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('59', '测试数据50', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('60', '测试数据51', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('61', '测试数据52', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('62', '测试数据53', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('63', '测试数据54', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('64', '测试数据55', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('65', '测试数据56', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('66', '测试数据57', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('67', '测试数据58', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('68', '测试数据59', '15568345678', '男', '1000', '2');
INSERT INTO `e_emp` VALUES ('69', '测试数据60', '15568345678', '男', '1000', '2');

-- ----------------------------
-- Table structure for e_user
-- ----------------------------
DROP TABLE IF EXISTS `e_user`;
CREATE TABLE `e_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `headimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of e_user
-- ----------------------------
INSERT INTO `e_user` VALUES ('5', 'admin', '1234', '\\upload\\115f9992-cd01-4802-ac3b-8da47a40b691.jpg');
