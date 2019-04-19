/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : ln_database

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-04-19 22:38:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for table_number
-- ----------------------------
DROP TABLE IF EXISTS `table_number`;
CREATE TABLE `table_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户姓名',
  `seat_number` varchar(255) DEFAULT NULL COMMENT '座位号',
  `dinner_table_number` varchar(255) DEFAULT NULL COMMENT '餐桌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_number
-- ----------------------------
INSERT INTO `table_number` VALUES ('1', '张伟', '如假惺惺', 'B2');
INSERT INTO `table_number` VALUES ('2', '小军', 'A2', 'B3');
INSERT INTO `table_number` VALUES ('3', '小明', 'A4', 'B5');
INSERT INTO `table_number` VALUES ('4', '如花', 'A5', 'B4');
INSERT INTO `table_number` VALUES ('5', '大黄', 'A6', 'B9');
INSERT INTO `table_number` VALUES ('6', '大军', 'A4yy.com', 'A3');

-- ----------------------------
-- Table structure for tb_alumni_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_alumni_activity`;
CREATE TABLE `tb_alumni_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '数据id',
  `name` varchar(255) DEFAULT NULL COMMENT '校友姓名',
  `gender` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL COMMENT '工作单位',
  `position` varchar(255) DEFAULT NULL COMMENT '公司职位',
  `local_alumni_association_position` varchar(255) DEFAULT NULL COMMENT '地方校友会职务',
  `accommodation_time` varchar(255) DEFAULT NULL COMMENT '住宿时间',
  `dining_time` varchar(255) DEFAULT NULL COMMENT '用餐时间',
  `hotel` varchar(255) DEFAULT NULL COMMENT '住宿酒店',
  `room_number` varchar(255) DEFAULT NULL COMMENT '住宿酒店房号',
  `vehicle` int(255) DEFAULT NULL COMMENT '参加晚宴和分会的交通工具（1、自驾车 2学校统一安排3自行安排4、不参加分享会和晚宴）',
  `submeeting` varchar(255) DEFAULT NULL COMMENT '是否参加行业分享会(1,2,3,4,5代表不同的分会)',
  `main_meeting_seat` varchar(255) DEFAULT NULL COMMENT '大会座位区域',
  `dinner_table_number` varchar(255) DEFAULT NULL COMMENT '午餐地址与桌号',
  `supper_table_number` varchar(255) DEFAULT NULL COMMENT '晚餐地址与桌号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_alumni_activity
-- ----------------------------
INSERT INTO `tb_alumni_activity` VALUES ('1', '小明', '女', '华南理工大学', '校长', '广州校友会会长', '15日、16日', '16日午、16日晚', '华工中心大酒店', '2362', '1', '分享会2，分享会3', 'A01', 'A01', 'A01');
INSERT INTO `tb_alumni_activity` VALUES ('2', '小红', '女', '华南理工大学', '校长', '广州校友会会长', '15日、16日', '16日午、16日晚', '华工中心大酒店', '2362', '1', '分享会1', 'A01', 'A01', 'A01');
