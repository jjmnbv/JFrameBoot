/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50716
 Source Host           : localhost:3306
 Source Schema         : jframe

 Target Server Type    : MySQL
 Target Server Version : 50716
 File Encoding         : 65001

 Date: 03/07/2018 14:34:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(250) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
BEGIN;
INSERT INTO `oauth_access_token` VALUES ('9a5e3dd39800ddd2588b2a7cd0acd69d', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E00057870737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F72646572787200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400036A746974002437633937396532362D613466342D343234332D623433322D62346265643333623132353978007372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001645ECD1B967870737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000023F40000000000001740003616C6C787400066265617265727400FC65794A68624763694F694A49557A49314E694973496E523563434936496B705856434A392E65794A7A593239775A53493657794A6862477769585377695A586877496A6F784E544D774E546B344F4455334C434A686458526F62334A7064476C6C6379493657794A5354307846583156545256496958537769616E5270496A6F694E324D354E7A6C6C4D6A59745954526D4E4330304D6A517A4C5749304D7A4974596A52695A57517A4D3249784D6A553549697769593278705A57353058326C6B496A6F69593278705A573530496E302E497937517A56434D6B6673426151374F546B415030426E45314438634866574F36784432772D4878576859, '52247d1064b1d3e038edc137f7d1ed21', NULL, 'client', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001F40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B7870740009524F4C455F555345527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740006636C69656E74737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000067708000000080000000374000A6772616E745F74797065740012636C69656E745F63726564656E7469616C73740009636C69656E745F6964740006636C69656E7474000573636F7065740003616C6C78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000171007E002178017371007E0025770C000000103F4000000000000171007E000F787371007E001A3F40000000000000770800000010000000007870707371007E0025770C000000103F40000000000000787371007E0025770C000000103F400000000000007870, NULL);
COMMIT;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(250) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
BEGIN;
INSERT INTO `oauth_client_details` VALUES ('client', NULL, '$2a$10$2QaFSy4T84/06c2uREOqxeTSNRsA1z6YYsGM/NJl..ZbjrOP9lL02', 'all', 'client_credentials', NULL, 'ROLE_USER', 1800, 86400, NULL, 'true');
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for s_admin
-- ----------------------------
DROP TABLE IF EXISTS `s_admin`;
CREATE TABLE `s_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_id` int(11) DEFAULT NULL COMMENT '用户组id',
  `admin_name` varchar(32) NOT NULL COMMENT '用户名',
  `admin_realname` varchar(16) DEFAULT NULL COMMENT '真实姓名',
  `admin_password` varchar(32) NOT NULL COMMENT '登录密码',
  `admin_phone` varchar(16) DEFAULT NULL COMMENT '手机号',
  `admin_rights` varchar(1024) DEFAULT NULL COMMENT '权限',
  `admin_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '账号创建日期',
  `admin_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `admin_login_ip` varchar(64) DEFAULT NULL COMMENT '上次登录ip',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除 1-是 0-否',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_admin_username` (`admin_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of s_admin
-- ----------------------------
BEGIN;
INSERT INTO `s_admin` VALUES (10000, 10000, 'admin', '超管', 'e10adc3949ba59abbe56e057f20f883e', '17730215422', NULL, '2016-04-23 15:36:55', '2018-07-13 10:34:35', '127.0.0.1', b'0');
INSERT INTO `s_admin` VALUES (10001, 10001, 'huang', '老黄', 'e10adc3949ba59abbe56e057f20f883e', '17732125421', '1,100,101,102,104', '2016-05-13 10:58:17', '2018-06-27 17:58:47', '127.0.0.1', b'0');
INSERT INTO `s_admin` VALUES (10002, 10002, 'zhang', '老张', 'e10adc3949ba59abbe56e057f20f883e', '17730215512', '1,100,101,102', '2016-05-13 11:37:13', '2018-05-24 14:54:10', '127.0.0.1', b'0');
INSERT INTO `s_admin` VALUES (10003, NULL, 'test', 'test', 'e10adc3949ba59abbe56e057f20f883e', '17726736171', '1,100,101', '2018-05-24 14:40:46', '2018-05-25 15:10:51', '127.0.0.1', b'0');
COMMIT;

-- ----------------------------
-- Table structure for s_log
-- ----------------------------
DROP TABLE IF EXISTS `s_log`;
CREATE TABLE `s_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `log_user` varchar(64) DEFAULT NULL COMMENT '操作人',
  `log_remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `log_ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `log_params` varchar(255) DEFAULT NULL COMMENT '参数',
  `log_create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Table structure for s_module
-- ----------------------------
DROP TABLE IF EXISTS `s_module`;
CREATE TABLE `s_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '父模块id 0表示一级分类',
  `mod_name` varchar(64) DEFAULT NULL COMMENT '模块名',
  `mod_path` varchar(128) DEFAULT NULL COMMENT '访问action',
  `mod_icon` varchar(128) DEFAULT NULL COMMENT '模块图标',
  `mod_flag` tinyint(2) DEFAULT NULL COMMENT '1,2表示层级 | 3表示功能',
  `mod_sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `mod_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `module_path` (`mod_path`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='后台模块';

-- ----------------------------
-- Records of s_module
-- ----------------------------
BEGIN;
INSERT INTO `s_module` VALUES (1, 0, '用户管理', NULL, 'fa fa-user', 1, 1, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (2, 0, '系统管理', NULL, 'fa fa-gear', 1, 10, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (100, 1, '会员列表', '/admin/user/userList', 'fa fa-group', 2, 1, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (101, 100, '用户数据', '/admin/user/userListData', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (102, 100, '用户编辑', '/admin/user/userEdit', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (103, 100, '用户禁用/解封', '/admin/user/userEnable', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (104, 100, '用户详情', '/admin/user/userDetail', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (105, 100, '导出用户Excel', '/admin/user/exportUserExcel', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (106, 2, '管理员列表', '/admin/system/adminList', 'fa fa-user', 2, 1, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (107, 106, '管理员编辑', '/admin/system/adminEdit', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (108, 106, '管理员冻结', '/admin/system/adminEnable', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (109, 2, '权限管理', '/admin/system/rights', 'fa fa-delicious', 2, 2, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (110, 109, '编辑组', '/admin/system/roleEdit', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (111, 109, '禁用/启用组', '/admin/system/roleEnable', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (112, 109, '查看权限', '/admin/system/permits', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (113, 109, '授权组', '/admin/system/permit', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (114, 2, '日志管理', '/admin/system/logList', 'fa fa-laptop', 2, 3, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (115, 114, '日志备份', '/admin/system/backupLog', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (116, 2, '文件管理', '/admin/system/file', 'fa fa-archive', 2, 4, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (117, 116, '获取目录', '/admin/system/getDirectory', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (118, 2, '系统工具', '/admin/system/tools', 'fa fa-crop', 2, 5, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (119, 118, 'SQL编辑', '/admin/system/executeUpdate', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (120, 118, 'SQL查询', '/admin/system/executeQuery', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (121, 2, '地址管理', '/admin/system/address', 'fa fa-map', 2, 7, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (122, 121, '编辑地址', '/admin/system/addrEdit', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (123, 121, '删除地址', '/admin/system/addrDel', NULL, 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (124, 2, '模块管理', '/admin/system/module', 'fa fa-desktop', 2, 6, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (125, 124, '模块编辑', '/admin/system/moduleEdit', '', 3, NULL, '2018-07-17 17:39:43', b'0');
INSERT INTO `s_module` VALUES (126, 124, '模块删除', '/admin/system/moduleDel', '', 3, NULL, '2018-07-17 17:39:43', b'0');
COMMIT;

-- ----------------------------
-- Table structure for s_msg
-- ----------------------------
DROP TABLE IF EXISTS `s_msg`;
CREATE TABLE `s_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) DEFAULT NULL COMMENT '管理ID',
  `content` text COMMENT '内容',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统消息';

-- ----------------------------
-- Table structure for s_role
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(16) NOT NULL COMMENT '用户组名称',
  `role_rights` varchar(1024) DEFAULT NULL COMMENT '权限',
  `role_flag` tinyint(2) NOT NULL DEFAULT '1' COMMENT '是否可编辑 1-可编辑 0-不可编辑',
  `role_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除 1-是 0-否',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_role_name` (`role_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COMMENT='后台用户组';

-- ----------------------------
-- Records of s_role
-- ----------------------------
BEGIN;
INSERT INTO `s_role` VALUES (10000, '超级管理组', NULL, 0, '2018-07-17 17:38:59', b'0');
INSERT INTO `s_role` VALUES (10001, '财务组', '1,100,105', 1, '2018-07-17 17:38:59', b'1');
INSERT INTO `s_role` VALUES (10002, '运维组', '2,124,125', 1, '2018-07-17 17:38:59', b'0');
COMMIT;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `nickname` varchar(32) DEFAULT NULL COMMENT '昵称',
  `phone` varchar(16) DEFAULT NULL COMMENT '手机号',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) DEFAULT NULL COMMENT '密码',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `money` decimal(15,2) DEFAULT '0.00',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近登陆时间',
  `realname` varchar(16) DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(32) DEFAULT NULL COMMENT '身份证号码',
  `gender` bit(1) DEFAULT b'1' COMMENT '性别 1-男 0-女',
  `address` varchar(64) DEFAULT NULL COMMENT '住址',
  `birthday` varchar(32) DEFAULT NULL COMMENT '出生日期',
  `deleted` bit(1) DEFAULT b'0' COMMENT '是否删除 1-是 0-否(默认)',
  `extend` json DEFAULT NULL COMMENT '拓展字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `t_user_phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10043 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of t_user
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES (10000, 'test', '15515556993', '11@qq.com', '5d24bbbe2fe58aba66827aa870004c79', '/static/theme/images/avatar.jpg', 1000.00, '2016-09-27 17:53:50', '2016-12-21 13:29:21', '1', '340123199311012774', b'0', '安徽省/合肥市/瑶海区', '2016-12-21', b'1', NULL);
INSERT INTO `t_user` VALUES (10001, 'test0', '17730215423', '22@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2016-09-27 11:04:17', NULL, '22', '340123199311012774', b'1', NULL, NULL, b'0', NULL);
INSERT INTO `t_user` VALUES (10002, 'test0', '17734901234', '33@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2016-10-14 15:04:06', NULL, '22', '340123199311012774', b'1', '安徽省/合肥市/瑶海区', NULL, b'1', NULL);
INSERT INTO `t_user` VALUES (10003, 'test1', '17734901231', '44@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2017-04-20 16:35:11', NULL, '44', '340123199311012774', b'1', NULL, '2016-12-21', b'0', NULL);
INSERT INTO `t_user` VALUES (10004, 'test2', '17734901232', '55@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2017-06-07 16:13:24', NULL, '55', '340123199311012774', b'1', '安徽省/合肥市/瑶海区', NULL, b'0', NULL);
INSERT INTO `t_user` VALUES (10005, 'test3', '17734901233', '66@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2017-06-07 16:13:27', NULL, '22', '340123199311012774', b'1', NULL, NULL, b'0', NULL);
INSERT INTO `t_user` VALUES (10006, 'test4', '17734901235', '77@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:29', NULL, '66', '340123199311012774', b'1', NULL, '2016-12-21', b'0', NULL);
INSERT INTO `t_user` VALUES (10007, 'test5', '17734901236', '88@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 1000.00, '2017-06-07 16:13:32', NULL, '33', '340123199311012774', b'1', '安徽省/合肥市/瑶海区', NULL, b'1', NULL);
INSERT INTO `t_user` VALUES (10008, 'test6', '17734901237', '99@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:34', NULL, '33', '340123199311012774', b'1', NULL, '2016-12-21', b'1', NULL);
INSERT INTO `t_user` VALUES (10009, 'test7', '17734901238', '00@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:37', NULL, '77', '340123199311012774', b'1', '安徽省/合肥市/瑶海区', NULL, b'1', NULL);
INSERT INTO `t_user` VALUES (10010, 'test8', '17734901239', '111@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:39', NULL, '44', '340123199311012774', b'1', NULL, '2016-12-21', b'1', NULL);
INSERT INTO `t_user` VALUES (10011, 'test9', '17734901200', '222@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:42', NULL, '88', '340123199311012774', b'1', '安徽省/合肥市/瑶海区', NULL, b'1', NULL);
INSERT INTO `t_user` VALUES (10012, 'test10', '17734901321', '3333333@qq.com', 'c4ca4238a0b923820dcc509a6f75849b', '/static/theme/images/avatar.jpg', 0.00, '2017-06-07 16:13:44', NULL, '55', '340123199311012774', b'1', '340000/340100/340103', '2016-12-21', b'0', NULL);
COMMIT;


-- ----------------------------
-- Table structure for qz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_blob_triggers`;
CREATE TABLE `qz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qz_calendars`;
CREATE TABLE `qz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(190) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_cron_triggers`;
CREATE TABLE `qz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_fired_triggers`;
CREATE TABLE `qz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `INSTANCE_NAME` varchar(190) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(190) DEFAULT NULL,
  `JOB_GROUP` varchar(190) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qz_job_details`;
CREATE TABLE `qz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(190) NOT NULL,
  `JOB_GROUP` varchar(190) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qz_locks`;
CREATE TABLE `qz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qz_paused_trigger_grps`;
CREATE TABLE `qz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qz_scheduler_state`;
CREATE TABLE `qz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(190) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_simple_triggers`;
CREATE TABLE `qz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_simprop_triggers`;
CREATE TABLE `qz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for qz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qz_triggers`;
CREATE TABLE `qz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(190) NOT NULL,
  `TRIGGER_GROUP` varchar(190) NOT NULL,
  `JOB_NAME` varchar(190) NOT NULL,
  `JOB_GROUP` varchar(190) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(190) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
