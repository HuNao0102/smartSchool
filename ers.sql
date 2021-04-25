/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : ers

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2021-04-25 17:31:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `files`
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `oldFileName` varchar(255) DEFAULT NULL,
  `newFileName` varchar(255) DEFAULT NULL,
  `ext` varchar(20) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `type` varchar(120) DEFAULT NULL,
  `isImg` varchar(8) DEFAULT NULL,
  `downcounts` int(6) DEFAULT '0',
  `upload_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1384393297307099139 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of files
-- ----------------------------

-- ----------------------------
-- Table structure for `page_dtl`
-- ----------------------------
DROP TABLE IF EXISTS `page_dtl`;
CREATE TABLE `page_dtl` (
  `expid` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(500) DEFAULT NULL,
  `companyName` varchar(500) DEFAULT NULL,
  `belongsJob` varchar(500) DEFAULT NULL,
  `belongsTeam` varchar(500) DEFAULT NULL,
  `companyArea` varchar(500) DEFAULT NULL,
  `companyAddress` varchar(500) DEFAULT NULL,
  `workDo` varchar(500) DEFAULT NULL,
  `expCreateDate` varchar(500) DEFAULT NULL,
  `expEndUpdDate` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`expid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_dtl
-- ----------------------------

-- ----------------------------
-- Table structure for `page_info`
-- ----------------------------
DROP TABLE IF EXISTS `page_info`;
CREATE TABLE `page_info` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `pageLoginId` varchar(500) DEFAULT NULL,
  `pageWantPrice` varchar(500) DEFAULT NULL,
  `pagePosit` varchar(500) DEFAULT NULL,
  `pageWorkAddress` varchar(500) DEFAULT NULL,
  `pageSelfAssessment` varchar(500) DEFAULT NULL,
  `pageCreateDate` varchar(500) DEFAULT NULL,
  `pageEndUpdDate` varchar(500) DEFAULT NULL,
  `pageEndUpder` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_info
-- ----------------------------
INSERT INTO `page_info` VALUES ('1', '13', '越多越好', '干饭', null, '能吃', '2021-12-21', '2021-04-15 14:52:44', '13');

-- ----------------------------
-- Table structure for `posit_info`
-- ----------------------------
DROP TABLE IF EXISTS `posit_info`;
CREATE TABLE `posit_info` (
  `positId` int(11) NOT NULL AUTO_INCREMENT,
  `positName` varchar(500) DEFAULT NULL,
  `positAddress` varchar(500) DEFAULT NULL,
  `positExperience` varchar(500) DEFAULT NULL,
  `positEducation` varchar(500) DEFAULT NULL,
  `positPrice` varchar(500) DEFAULT NULL,
  `positFaceAddress` varchar(500) DEFAULT NULL,
  `positWay` varchar(500) DEFAULT NULL,
  `positMustDo` varchar(9999) DEFAULT NULL,
  `positLinkPerson` varchar(500) DEFAULT NULL,
  `positManager` varchar(500) DEFAULT NULL,
  `positStatus` varchar(500) DEFAULT NULL,
  `positCreateDate` varchar(500) DEFAULT NULL,
  `positEndUpdDate` varchar(500) DEFAULT NULL,
  `positEndUpder` varchar(500) DEFAULT NULL,
  `positVersion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`positId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posit_info
-- ----------------------------
INSERT INTO `posit_info` VALUES ('14', '《java从入门到入土》', null, '10RMB及以下', '全新', '袁雨霖', '上海市徐汇区', ' 闲置售卖', '随便买买吧反正也看不懂', '1312343', null, '0', '2021-04-25 16:13:19', null, null, null);
INSERT INTO `posit_info` VALUES ('15', '《落魄大学生的致富之道》', null, '10RMB及以下', '5成新', '王新成', '杭州市', '闲置租借', '什么？致富？你在想屁吃吧', '1312343', null, '0', '2021-04-25 16:29:59', null, null, null);

-- ----------------------------
-- Table structure for `send_info`
-- ----------------------------
DROP TABLE IF EXISTS `send_info`;
CREATE TABLE `send_info` (
  `sendId` int(11) NOT NULL AUTO_INCREMENT,
  `positId` varchar(500) DEFAULT NULL,
  `ubaseLoginId` varchar(500) DEFAULT NULL,
  `sendInName` varchar(500) DEFAULT NULL,
  `senderBelongs` varchar(500) DEFAULT NULL,
  `senderPhone` varchar(500) DEFAULT NULL,
  `sendSchool` varchar(500) DEFAULT NULL,
  `sendSchedule` varchar(500) DEFAULT NULL,
  `sendCreateDate` varchar(500) DEFAULT NULL,
  `positEndUpdDate` varchar(500) DEFAULT NULL,
  `sendEndUpder` varchar(500) DEFAULT NULL,
  `sendVersion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`sendId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of send_info
-- ----------------------------
INSERT INTO `send_info` VALUES ('48', '15', '13117332343', null, null, null, null, '2', '2021-04-25 16:47:04', null, '', null);
INSERT INTO `send_info` VALUES ('49', '15', '13117332343', null, null, null, null, '0', '2021-04-25 17:08:35', null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `use_base_info`
-- ----------------------------
DROP TABLE IF EXISTS `use_base_info`;
CREATE TABLE `use_base_info` (
  `ubaseId` int(11) NOT NULL AUTO_INCREMENT,
  `ubaseName` varchar(500) DEFAULT NULL,
  `ubaseSex` varchar(500) DEFAULT NULL,
  `ubaseBirthday` varchar(500) DEFAULT NULL,
  `ubaseEmail` varchar(500) DEFAULT NULL,
  `ubasePhone` varchar(500) DEFAULT NULL,
  `ubaseEducation` varchar(500) DEFAULT NULL,
  `ubaseSchool` varchar(500) DEFAULT NULL,
  `ubaseBelongsType` varchar(500) DEFAULT NULL,
  `ubaseHonor` varchar(500) DEFAULT NULL,
  `ubaseAddress` varchar(500) DEFAULT NULL,
  `ubaseLoginId` varchar(500) DEFAULT NULL,
  `ubasePwd` varchar(500) DEFAULT NULL,
  `ubaseType` varchar(500) DEFAULT NULL,
  `ubaseStatus` varchar(500) DEFAULT NULL,
  `ubaseCreateDate` varchar(500) DEFAULT NULL,
  `ubaseEndUpdDate` varchar(500) DEFAULT NULL,
  `ubaseEndUpder` varchar(500) DEFAULT NULL,
  `ubaseVersion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ubaseId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of use_base_info
-- ----------------------------
INSERT INTO `use_base_info` VALUES ('1', '袁雨霖', '女', '2020-12-21', '3078129195@qq.com', '17502195253', '本科', '你猜', '计算机科学与技术', '党员', '上海市徐汇区', 'YYL@123.com', 'YYL@123.com', '1', '0', '2020-12-21', '2021-04-02 10:51:55', '袁雨霖', '0');
INSERT INTO `use_base_info` VALUES ('13', '莫子俊', '男', '2021-01-15', 'abaaba@163.com', '13117332343', '幼儿园', '智慧树幼儿园', '小班', '小红花', '你心里', 'moz', '123', '1', '0', '2021-01-07 14:02:50', '2021-04-15 14:52:44', '莫子俊', null);
