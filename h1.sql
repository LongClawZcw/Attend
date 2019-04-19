/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : h1

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2019-04-19 22:14:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add book info', '7', 'add_bookinfo');
INSERT INTO `auth_permission` VALUES ('26', 'Can change book info', '7', 'change_bookinfo');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete book info', '7', 'delete_bookinfo');
INSERT INTO `auth_permission` VALUES ('28', 'Can view book info', '7', 'view_bookinfo');
INSERT INTO `auth_permission` VALUES ('29', 'Can add hero info', '8', 'add_heroinfo');
INSERT INTO `auth_permission` VALUES ('30', 'Can change hero info', '8', 'change_heroinfo');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete hero info', '8', 'delete_heroinfo');
INSERT INTO `auth_permission` VALUES ('32', 'Can view hero info', '8', 'view_heroinfo');
INSERT INTO `auth_permission` VALUES ('33', 'Can add area', '9', 'add_area');
INSERT INTO `auth_permission` VALUES ('34', 'Can change area', '9', 'change_area');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete area', '9', 'delete_area');
INSERT INTO `auth_permission` VALUES ('36', 'Can view area', '9', 'view_area');
INSERT INTO `auth_permission` VALUES ('37', 'Can add student', '10', 'add_student');
INSERT INTO `auth_permission` VALUES ('38', 'Can change student', '10', 'change_student');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete student', '10', 'delete_student');
INSERT INTO `auth_permission` VALUES ('40', 'Can view student', '10', 'view_student');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 测试模型', '11', 'add_commode');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 测试模型', '11', 'change_commode');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 测试模型', '11', 'delete_commode');
INSERT INTO `auth_permission` VALUES ('44', 'Can view 测试模型', '11', 'view_commode');
INSERT INTO `auth_permission` VALUES ('45', 'Can add 广绣模板', '12', 'add_tempinfo');
INSERT INTO `auth_permission` VALUES ('46', 'Can change 广绣模板', '12', 'change_tempinfo');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete 广绣模板', '12', 'delete_tempinfo');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 广绣模板', '12', 'view_tempinfo');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$120000$juRQAQZGpPcN$kAzcYbCnbjbdlmoXcmg6VhdxgGozIXRsCgMDZBwu0HQ=', '2019-03-08 14:48:17.647160', '1', 'admin', '', '', '1160379963@qq.com', '1', '1', '2019-03-06 06:36:37.774281');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for booktest_area
-- ----------------------------
DROP TABLE IF EXISTS `booktest_area`;
CREATE TABLE `booktest_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `booktest_area_parent_id_1dabe4e9_fk_booktest_area_id` (`parent_id`),
  CONSTRAINT `booktest_area_parent_id_1dabe4e9_fk_booktest_area_id` FOREIGN KEY (`parent_id`) REFERENCES `booktest_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booktest_area
-- ----------------------------
INSERT INTO `booktest_area` VALUES ('23', '厦门', '25');
INSERT INTO `booktest_area` VALUES ('25', '福建', null);
INSERT INTO `booktest_area` VALUES ('26', '湖南', null);
INSERT INTO `booktest_area` VALUES ('27', '广东', null);
INSERT INTO `booktest_area` VALUES ('28', '北京', null);
INSERT INTO `booktest_area` VALUES ('29', '武汉', '42');
INSERT INTO `booktest_area` VALUES ('30', '辽宁', null);
INSERT INTO `booktest_area` VALUES ('31', '黑龙江', null);
INSERT INTO `booktest_area` VALUES ('32', '厦门', '25');
INSERT INTO `booktest_area` VALUES ('33', '长沙', '26');
INSERT INTO `booktest_area` VALUES ('34', '广东', null);
INSERT INTO `booktest_area` VALUES ('35', '广州', '27');
INSERT INTO `booktest_area` VALUES ('36', '深圳', '27');
INSERT INTO `booktest_area` VALUES ('37', '东莞', '27');
INSERT INTO `booktest_area` VALUES ('38', '惠州', '27');
INSERT INTO `booktest_area` VALUES ('39', '汕头', '27');
INSERT INTO `booktest_area` VALUES ('40', '汕尾', null);
INSERT INTO `booktest_area` VALUES ('41', '本溪', '30');
INSERT INTO `booktest_area` VALUES ('42', '湖北', null);
INSERT INTO `booktest_area` VALUES ('43', '陆丰', '34');
INSERT INTO `booktest_area` VALUES ('44', '莆田', '25');
INSERT INTO `booktest_area` VALUES ('45', '岳阳', '26');
INSERT INTO `booktest_area` VALUES ('46', '市辖区', '35');
INSERT INTO `booktest_area` VALUES ('49', '番禺区', '35');

-- ----------------------------
-- Table structure for booktest_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `booktest_bookinfo`;
CREATE TABLE `booktest_bookinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `btitle` varchar(20) NOT NULL,
  `bpub_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of booktest_bookinfo
-- ----------------------------
INSERT INTO `booktest_bookinfo` VALUES ('1', '水浒传', '2019-03-06 07:02:52.000000');
INSERT INTO `booktest_bookinfo` VALUES ('2', '三国演义', '2019-03-06 07:04:47.000000');
INSERT INTO `booktest_bookinfo` VALUES ('3', '西游记', '2019-03-06 07:04:54.000000');
INSERT INTO `booktest_bookinfo` VALUES ('4', '西厢记', '2019-03-06 07:05:02.000000');

-- ----------------------------
-- Table structure for df_test
-- ----------------------------
DROP TABLE IF EXISTS `df_test`;
CREATE TABLE `df_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of df_test
-- ----------------------------
INSERT INTO `df_test` VALUES ('1', '3');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-03-06 07:02:57.550669', '1', 'BookInfo object (1)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-03-06 07:04:39.003541', '1', 'BookInfo object (1)', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-03-06 07:04:48.915247', '2', 'BookInfo object (2)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-03-06 07:04:55.135356', '3', 'BookInfo object (3)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-03-06 07:05:04.466227', '4', 'BookInfo object (4)', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-03-06 07:06:09.331540', '3', 'BookInfo object (3)', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-03-06 07:24:41.784379', '1', 'Area object (1)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-03-06 07:24:45.591103', '2', 'Area object (2)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-03-06 07:24:50.253453', '3', 'Area object (3)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-03-06 07:24:54.109280', '4', 'Area object (4)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-03-06 07:24:57.600899', '5', 'Area object (5)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-03-06 07:25:00.744049', '6', 'Area object (6)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-03-06 07:25:06.317643', '7', 'Area object (7)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-03-06 07:25:13.383618', '8', 'Area object (8)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-03-06 07:25:16.909903', '9', 'Area object (9)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-03-06 07:25:22.088080', '10', 'Area object (10)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-03-06 07:25:25.486916', '11', 'Area object (11)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-03-06 07:25:33.543637', '12', 'Area object (12)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('19', '2019-03-06 07:25:41.444014', '13', 'Area object (13)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('20', '2019-03-06 07:25:49.438891', '14', 'Area object (14)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('21', '2019-03-06 07:25:53.427826', '15', 'Area object (15)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('22', '2019-03-06 07:26:06.458408', '16', 'Area object (16)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('23', '2019-03-06 07:26:11.571411', '17', 'Area object (17)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('24', '2019-03-06 07:26:16.442097', '18', 'Area object (18)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('25', '2019-03-06 07:26:19.736659', '19', 'Area object (19)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('26', '2019-03-06 07:26:25.161332', '20', 'Area object (20)', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('27', '2019-03-06 07:43:37.777281', '20', 'Area object (20)', '2', '[{\"changed\": {\"fields\": [\"parent\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('28', '2019-03-06 07:50:33.734420', '15', '深圳', '2', '[{\"changed\": {\"fields\": [\"parent\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('29', '2019-03-06 07:56:43.443092', '20', '娄底', '2', '[{\"changed\": {\"fields\": [\"parent\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('30', '2019-03-06 07:56:52.739300', '21', '福建', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('31', '2019-03-06 07:57:00.263028', '22', '泉州', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('32', '2019-03-06 07:57:01.359087', '22', '泉州', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('33', '2019-03-06 07:57:12.945590', '21', '福建', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('34', '2019-03-06 08:03:34.626333', '20', '娄底', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('35', '2019-03-06 08:03:34.634140', '19', '常德', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('36', '2019-03-06 08:03:34.636092', '18', '长沙', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('37', '2019-03-06 08:03:34.637069', '17', '厦门', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('38', '2019-03-06 08:03:34.638045', '16', '桂林', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('39', '2019-03-06 08:03:34.639996', '15', '深圳', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('40', '2019-03-06 08:03:34.640973', '14', '天津', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('41', '2019-03-06 08:03:34.640973', '13', '黑龙江', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('42', '2019-03-06 08:03:34.641949', '12', '攀枝花', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('43', '2019-03-06 08:03:34.642925', '11', '澳门', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('44', '2019-03-06 08:03:34.643901', '10', '香港', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('45', '2019-03-06 08:03:34.644875', '9', '武汉', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('46', '2019-03-06 08:03:34.645851', '8', '福州', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('47', '2019-03-06 08:03:34.645851', '7', '三明', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('48', '2019-03-06 08:03:34.647806', '6', '重庆', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('49', '2019-03-06 08:03:34.648782', '5', '成都', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('50', '2019-03-06 08:03:34.648782', '4', '大连', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('51', '2019-03-06 08:03:34.649757', '3', '广州', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2019-03-06 08:03:34.650733', '2', '上海', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2019-03-06 08:03:34.651709', '1', '北京', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2019-03-06 08:03:51.808946', '23', '福建', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2019-03-06 08:04:07.782374', '24', '福建', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2019-03-06 08:05:04.237388', '23', '厦门', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2019-03-06 08:05:52.576039', '23', '厦门', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2019-03-06 08:06:31.228604', '24', '福建', '3', '', '9', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2019-03-06 08:09:21.258904', '25', '福建', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('60', '2019-03-06 08:09:27.363019', '26', '湖南', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('61', '2019-03-06 08:09:31.006095', '27', '广东', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('62', '2019-03-06 08:09:40.686079', '28', '北京', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('63', '2019-03-06 08:09:43.792033', '29', '武汉', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('64', '2019-03-06 08:09:51.887600', '30', '辽宁', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('65', '2019-03-06 08:09:59.061276', '31', '黑龙江', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('66', '2019-03-06 08:10:18.369896', '32', '厦门', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('67', '2019-03-06 08:10:26.135944', '33', '长沙', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('68', '2019-03-06 08:10:45.301147', '34', '广东', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('69', '2019-03-06 08:10:56.853653', '35', '广州', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('70', '2019-03-06 08:11:02.301015', '36', '深圳', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('71', '2019-03-06 08:11:08.654003', '37', '东莞', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('72', '2019-03-06 08:11:16.650964', '38', '惠州', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('73', '2019-03-06 08:11:25.477787', '39', '汕头', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('74', '2019-03-06 08:11:29.073411', '40', '汕尾', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('75', '2019-03-06 08:11:45.310709', '41', '本溪', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('76', '2019-03-06 08:11:57.559669', '42', '湖北', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('77', '2019-03-06 08:12:20.221890', '23', '厦门', '2', '[{\"changed\": {\"fields\": [\"parent\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('78', '2019-03-06 08:12:32.624448', '29', '武汉', '2', '[{\"changed\": {\"fields\": [\"parent\"]}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('79', '2019-03-06 08:12:55.169870', '43', '陆丰', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('80', '2019-03-06 08:13:02.267864', '44', '莆田', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('81', '2019-03-06 08:13:11.387320', '45', '岳阳', '1', '[{\"added\": {}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('82', '2019-03-06 08:23:20.018638', '35', '广州', '2', '[{\"added\": {\"name\": \"area\", \"object\": \"\\u5e02\\u8f96\\u533a\"}}, {\"added\": {\"name\": \"area\", \"object\": \"\\u5357\\u6c99\\u533a\"}}, {\"added\": {\"name\": \"area\", \"object\": \"\\u8d8a\\u79c0\\u533a\"}}, {\"added\": {\"name\": \"area\", \"object\": \"\\u756a\\u79ba\\u533a\"}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('83', '2019-03-06 08:23:36.747364', '35', '广州', '2', '[]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('84', '2019-03-06 08:24:16.605768', '35', '广州', '2', '[{\"deleted\": {\"name\": \"area\", \"object\": \"\\u5357\\u6c99\\u533a\"}}, {\"deleted\": {\"name\": \"area\", \"object\": \"\\u8d8a\\u79c0\\u533a\"}}]', '9', '1');
INSERT INTO `django_admin_log` VALUES ('85', '2019-03-06 08:55:11.542007', '1', 'student object (1)', '1', '[{\"added\": {}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('86', '2019-03-06 09:00:47.404614', '1', 'student object (1)', '2', '[{\"changed\": {\"fields\": [\"gender\"]}}]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('87', '2019-03-06 09:00:51.521346', '1', 'student object (1)', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('88', '2019-03-06 09:06:14.379149', '1', '张昌伟', '2', '[]', '10', '1');
INSERT INTO `django_admin_log` VALUES ('89', '2019-03-06 10:40:26.613381', '1', 'commode object (1)', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('90', '2019-03-08 09:41:11.997819', '1', '模板1', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('91', '2019-03-08 09:41:20.626544', '2', '模板1', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('92', '2019-03-08 09:41:42.284994', '3', '模板2', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('93', '2019-03-08 09:42:00.277533', '4', '模板3', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('94', '2019-03-08 09:43:28.857914', '2', '模板1', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('95', '2019-03-09 02:31:42.155931', '4', '模板3', '2', '[{\"changed\": {\"fields\": [\"img\"]}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('96', '2019-03-09 02:32:05.293275', '4', '模板3', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('97', '2019-03-09 02:32:05.296304', '3', '模板2', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('98', '2019-03-09 02:32:05.297237', '1', '模板1', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('99', '2019-03-09 02:32:16.565108', '5', '模板1', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('100', '2019-03-09 02:45:56.660237', '5', '模板1', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('101', '2019-03-09 02:46:16.633193', '6', '模板1', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('102', '2019-03-09 02:46:24.390114', '7', '模板2', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('103', '2019-03-09 02:46:31.235837', '8', '模板3', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('104', '2019-03-09 02:54:40.158452', '9', '模板1', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('105', '2019-03-09 02:54:52.423816', '10', '模板2', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('106', '2019-03-09 02:54:58.515938', '11', '模板3', '1', '[{\"added\": {}}]', '12', '1');
INSERT INTO `django_admin_log` VALUES ('107', '2019-03-09 03:11:15.059293', '11', '模板3', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('108', '2019-03-09 03:11:15.061287', '10', '模板2', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('109', '2019-03-09 03:11:15.063281', '9', '模板1', '3', '', '12', '1');
INSERT INTO `django_admin_log` VALUES ('110', '2019-03-09 03:11:39.680264', '12', '模板1', '1', '[{\"added\": {}}]', '12', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('9', 'booktest', 'area');
INSERT INTO `django_content_type` VALUES ('7', 'booktest', 'bookinfo');
INSERT INTO `django_content_type` VALUES ('8', 'booktest', 'heroinfo');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('12', 'pic_tool', 'tempinfo');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('11', 'student', 'commode');
INSERT INTO `django_content_type` VALUES ('10', 'student', 'student');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-03-06 06:36:06.592574');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-03-06 06:36:06.761394');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-03-06 06:36:06.820930');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-03-06 06:36:06.827762');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-03-06 06:36:06.843378');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-03-06 06:36:06.880466');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-03-06 06:36:06.898034');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-03-06 06:36:06.918531');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-03-06 06:36:06.925383');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-03-06 06:36:06.942944');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-03-06 06:36:06.945859');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-03-06 06:36:06.953672');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-03-06 06:36:06.978066');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-03-06 06:36:06.997586');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2019-03-06 06:36:07.013203');
INSERT INTO `django_migrations` VALUES ('16', 'booktest', '0001_initial', '2019-03-06 06:51:14.370680');
INSERT INTO `django_migrations` VALUES ('17', 'booktest', '0002_area', '2019-03-06 07:22:35.432413');
INSERT INTO `django_migrations` VALUES ('18', 'booktest', '0003_area_parent', '2019-03-06 07:42:03.209387');
INSERT INTO `django_migrations` VALUES ('19', 'booktest', '0004_auto_20190306_1547', '2019-03-06 07:47:37.836874');
INSERT INTO `django_migrations` VALUES ('20', 'student', '0001_initial', '2019-03-06 08:46:12.920421');
INSERT INTO `django_migrations` VALUES ('21', 'student', '0002_auto_20190306_1700', '2019-03-06 09:00:40.120633');
INSERT INTO `django_migrations` VALUES ('22', 'student', '0003_commode', '2019-03-06 10:40:08.161750');
INSERT INTO `django_migrations` VALUES ('23', 'pic_tool', '0001_initial', '2019-03-08 09:24:29.329318');
INSERT INTO `django_migrations` VALUES ('24', 'pic_tool', '0002_remove_tempinfo_icon', '2019-03-08 09:41:05.630184');
INSERT INTO `django_migrations` VALUES ('25', 'pic_tool', '0003_auto_20190309_1053', '2019-03-09 02:53:33.741327');
INSERT INTO `django_migrations` VALUES ('26', 'pic_tool', '0004_auto_20190309_1110', '2019-03-09 03:10:58.173465');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('1lgt8jm0nfu55vxybjysup6bk5tk31l9', 'NTRjYzUxMTE4MmUwOTZlMTdhNzg0MDk3ZmNlMjI3ZmFkZTk2NDM2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNmY3NzQwMWU3Njg1OTllNTg2MjRlZGIwM2JlNGFjOTBkMzE4ZjFlIn0=', '2019-03-22 14:48:17.666110');
INSERT INTO `django_session` VALUES ('73fmlmasn5h81lkd5kmv9h5zpaz223ds', 'NTRjYzUxMTE4MmUwOTZlMTdhNzg0MDk3ZmNlMjI3ZmFkZTk2NDM2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNmY3NzQwMWU3Njg1OTllNTg2MjRlZGIwM2JlNGFjOTBkMzE4ZjFlIn0=', '2019-03-22 09:30:37.366537');
INSERT INTO `django_session` VALUES ('esembhkokpj94dyv3vx9uj7emxt9xauh', 'NTRjYzUxMTE4MmUwOTZlMTdhNzg0MDk3ZmNlMjI3ZmFkZTk2NDM2Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNmY3NzQwMWU3Njg1OTllNTg2MjRlZGIwM2JlNGFjOTBkMzE4ZjFlIn0=', '2019-03-20 08:34:00.425133');

-- ----------------------------
-- Table structure for pic_tool_tempinfo
-- ----------------------------
DROP TABLE IF EXISTS `pic_tool_tempinfo`;
CREATE TABLE `pic_tool_tempinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `imgsize` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pic_tool_tempinfo
-- ----------------------------
INSERT INTO `pic_tool_tempinfo` VALUES ('12', '模板1', '5656', '600*445');

-- ----------------------------
-- Table structure for student_student
-- ----------------------------
DROP TABLE IF EXISTS `student_student`;
CREATE TABLE `student_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_student
-- ----------------------------
INSERT INTO `student_student` VALUES ('1', '张昌伟', 'M', '18', '1160379963@qq.com', '18588948596');
