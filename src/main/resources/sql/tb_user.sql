/*
Navicat MySQL Data Transfer

Source Server         : tencent_cloud
Source Server Version : 50725
Source Host           : 148.70.6.75:3306
Source Database       : hanson

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2019-01-31 11:19:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'system_user主键',
  `gender` tinyint(2) DEFAULT NULL COMMENT '性别 0',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `api_name` varchar(50) DEFAULT NULL COMMENT '接口/api名称',
  `api_pwd` varchar(50) DEFAULT NULL COMMENT 'api/接口密码',
  `dept_id` int(50) DEFAULT NULL COMMENT '部门Id',
  `user_pwd` varchar(50) NOT NULL COMMENT '用户密码',
  `user_salt` varchar(50) DEFAULT NULL COMMENT '加密字符串',
  `user_email` varchar(50) DEFAULT NULL COMMENT '用户邮箱',
  `user_tel` varchar(11) DEFAULT NULL COMMENT '邮编',
  `user_address` varchar(50) DEFAULT NULL COMMENT '用户地址',
  `user_phone` varchar(11) DEFAULT NULL COMMENT '用户手机号',
  `company_code` int(20) DEFAULT NULL COMMENT '公司Code',
  `create_uid` int(20) NOT NULL COMMENT '创建人',
  `update_uid` int(20) NOT NULL COMMENT '修改人',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `data_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '数据状态（0.未知，1.正常，-1.删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('80', '1', 'hanson1', 'hanson_api1', '123456', '1', '123456', '123', '123@123.com', '13666666666', '11', null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '-1');
INSERT INTO `tb_user` VALUES ('81', '2', 'hanson2', 'hanson_api', '123456', '1', '123456', '123', '123@123.com', '13666666666', null, null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '1');
INSERT INTO `tb_user` VALUES ('82', '2', 'hanson3', 'hanson_api', '123456', '1', '123456', '123', '123@123.com', '13666666666', null, null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '1');
INSERT INTO `tb_user` VALUES ('83', '2', 'hanson4', 'hanson_api', '123456', '1', '123456', '123', '123@123.com', '13666666666', null, null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '1');
INSERT INTO `tb_user` VALUES ('84', '2', 'hanson5', 'hanson_api', '123456', '1', '123456', '123', '123@123.com', '13666666666', null, null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '1');
INSERT INTO `tb_user` VALUES ('85', '2', 'hanson6', 'hanson_api', '123456', '1', '123456', '123', '123@123.com', '13666666666', null, null, '1', '1', '1', '2019-01-28 00:00:00', '2019-01-28 00:00:00', '1');
