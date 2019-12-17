/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : student_base

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-12-17 11:08:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_census
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_census`;
CREATE TABLE `t_sys_census` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `target_score` tinyint(10) NOT NULL COMMENT '目标获得学分毕业前必须达到的学分',
  `current_score` tinyint(10) NOT NULL,
  `schoolevent` varchar(300) DEFAULT NULL COMMENT '学籍变动说明',
  `graduation_time` date NOT NULL,
  `curent_enrol` varchar(20) DEFAULT NULL COMMENT '当前所在年级',
  `school_evaluation` varchar(255) DEFAULT NULL COMMENT '学校评价',
  `danger_valid` tinyint(1) DEFAULT NULL COMMENT '重大违纪表示 1 是 0 不是',
  `teacher_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='学籍表';

-- ----------------------------
-- Records of t_sys_census
-- ----------------------------
INSERT INTO `t_sys_census` VALUES ('1', '66', '2', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('2', '98', '88', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('3', '58', '99', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('4', '29', '26', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('5', '34', '63', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('6', '78', '50', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('7', '50', '76', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('8', '72', '86', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('9', '19', '89', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('10', '70', '87', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('11', '32', '86', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('12', '34', '61', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('13', '95', '81', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('14', '20', '58', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('15', '52', '15', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('16', '59', '36', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('17', '17', '78', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('18', '58', '47', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('19', '30', '71', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('20', '94', '84', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('21', '68', '89', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('22', '6', '68', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('23', '1', '34', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('24', '7', '5', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('25', '3', '56', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('26', '63', '3', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('27', '66', '83', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('28', '65', '24', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('29', '46', '34', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('30', '54', '23', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('31', '1', '72', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('32', '92', '69', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('33', '63', '43', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('34', '8', '42', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('35', '67', '53', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('36', '52', '37', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('37', '28', '14', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('38', '96', '10', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('39', '47', '63', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('40', '40', '3', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('41', '42', '52', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('42', '39', '43', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('43', '95', '24', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('44', '66', '62', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('45', '85', '94', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('46', '84', '40', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('47', '65', '24', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('48', '72', '89', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('49', '6', '8', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('50', '91', '49', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('51', '73', '74', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');
INSERT INTO `t_sys_census` VALUES ('52', '14', '54', '暂无说明', '2019-12-17', '三年级', '该生表现良好', '0', '1');

-- ----------------------------
-- Table structure for t_sys_class
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_class`;
CREATE TABLE `t_sys_class` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `class_code` varchar(100) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `enrol_id` tinyint(4) DEFAULT NULL COMMENT '届级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_class
-- ----------------------------
INSERT INTO `t_sys_class` VALUES ('1', '0', '一年级--高中部', '13');
INSERT INTO `t_sys_class` VALUES ('2', '1', '1班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('3', '2', '2班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('4', '3', '3班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('5', '4', '4班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('6', '5', '5班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('7', '6', '6班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('8', '7', '7班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('9', '8', '8班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('10', '9', '9班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('11', '10', '10班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('12', '11', '11班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('13', '12', '12班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('14', '13', '13班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('15', '14', '14班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('16', '15', '15班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('17', '16', '16班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('18', '17', '17班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('19', '18', '18班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('20', '19', '19班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('21', '20', '20班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('22', '21', '21班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('23', '22', '22班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('24', '23', '23班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('25', '24', '24班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('26', '25', '25班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('27', '26', '26班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('28', '27', '27班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('29', '28', '28班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('30', '29', '29班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('31', '30', '30班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('32', '31', '31班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('33', '32', '32班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('34', '33', '33班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('35', '34', '34班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('36', '35', '35班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('37', '36', '36班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('38', '37', '37班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('39', '38', '38班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('40', '39', '39班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('41', '40', '40班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('42', '41', '41班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('43', '42', '42班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('44', '43', '43班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('45', '44', '44班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('46', '45', '45班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('47', '46', '46班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('48', '47', '47班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('49', '48', '48班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('50', '49', '49班--小学部', '13');
INSERT INTO `t_sys_class` VALUES ('51', '50', '50班--小学部', '13');

-- ----------------------------
-- Table structure for t_sys_enrol
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_enrol`;
CREATE TABLE `t_sys_enrol` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `enrol_name` varchar(50) DEFAULT NULL,
  `enrol_content` varchar(100) DEFAULT NULL COMMENT '备注信息 入学的录取分数线 ',
  `enrol_count` tinyint(4) DEFAULT NULL COMMENT '入学人数',
  `enrol_code` tinyint(4) DEFAULT NULL COMMENT '届编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='届表  例如2019级  10012019113020200607';

-- ----------------------------
-- Records of t_sys_enrol
-- ----------------------------
INSERT INTO `t_sys_enrol` VALUES ('14', '2年级', 'balabalabalbalbla', '43', '1');
INSERT INTO `t_sys_enrol` VALUES ('15', '3年级', 'balabalabalbalbla', '65', '1');
INSERT INTO `t_sys_enrol` VALUES ('16', '4年级', 'balabalabalbalbla', '38', '1');
INSERT INTO `t_sys_enrol` VALUES ('17', '5年级', 'balabalabalbalbla', '41', '1');
INSERT INTO `t_sys_enrol` VALUES ('18', '6年级', 'balabalabalbalbla', '15', '1');
INSERT INTO `t_sys_enrol` VALUES ('19', '7年级', 'balabalabalbalbla', '71', '1');
INSERT INTO `t_sys_enrol` VALUES ('20', '8年级', 'balabalabalbalbla', '76', '1');
INSERT INTO `t_sys_enrol` VALUES ('21', '9年级', 'balabalabalbalbla', '79', '1');

-- ----------------------------
-- Table structure for t_sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '用户通知id',
  `notice_content` tinyint(4) NOT NULL COMMENT '通知内容',
  `notice_user_id` tinyint(4) NOT NULL COMMENT '通知作者',
  `notice_user_to_id` tinyint(4) NOT NULL COMMENT '被通知人',
  `notice_time` datetime NOT NULL COMMENT '通知时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通知表';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_parent
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_parent`;
CREATE TABLE `t_sys_parent` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `parent_name` varchar(10) NOT NULL COMMENT '家长名称',
  `type` tinyint(4) NOT NULL COMMENT '家长类型 1 父 2母 3 爷爷  4 奶奶  5 其他',
  `telephone` varchar(11) NOT NULL,
  `work_area` varchar(30) NOT NULL COMMENT '工作地区',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='家长表';

-- ----------------------------
-- Records of t_sys_parent
-- ----------------------------
INSERT INTO `t_sys_parent` VALUES ('65', '王1', '1', '12451526517', '辽宁大连', '86');
INSERT INTO `t_sys_parent` VALUES ('66', '王2', '1', '12451526517', '辽宁大连', '95');
INSERT INTO `t_sys_parent` VALUES ('67', '王3', '1', '12451526517', '辽宁大连', '64');
INSERT INTO `t_sys_parent` VALUES ('68', '王4', '1', '12451526517', '辽宁大连', '53');
INSERT INTO `t_sys_parent` VALUES ('69', '王5', '1', '12451526517', '辽宁大连', '56');
INSERT INTO `t_sys_parent` VALUES ('70', '王6', '1', '12451526517', '辽宁大连', '62');
INSERT INTO `t_sys_parent` VALUES ('71', '王7', '1', '12451526517', '辽宁大连', '2');
INSERT INTO `t_sys_parent` VALUES ('72', '王8', '1', '12451526517', '辽宁大连', '92');
INSERT INTO `t_sys_parent` VALUES ('73', '王9', '1', '12451526517', '辽宁大连', '31');
INSERT INTO `t_sys_parent` VALUES ('74', '王10', '1', '12451526517', '辽宁大连', '28');
INSERT INTO `t_sys_parent` VALUES ('75', '王11', '1', '12451526517', '辽宁大连', '41');
INSERT INTO `t_sys_parent` VALUES ('76', '王12', '1', '12451526517', '辽宁大连', '59');
INSERT INTO `t_sys_parent` VALUES ('77', '王13', '1', '12451526517', '辽宁大连', '80');
INSERT INTO `t_sys_parent` VALUES ('78', '王14', '1', '12451526517', '辽宁大连', '21');
INSERT INTO `t_sys_parent` VALUES ('79', '王15', '1', '12451526517', '辽宁大连', '27');
INSERT INTO `t_sys_parent` VALUES ('80', '王16', '1', '12451526517', '辽宁大连', '81');
INSERT INTO `t_sys_parent` VALUES ('81', '王17', '1', '12451526517', '辽宁大连', '17');
INSERT INTO `t_sys_parent` VALUES ('82', '王18', '1', '12451526517', '辽宁大连', '73');
INSERT INTO `t_sys_parent` VALUES ('83', '王19', '1', '12451526517', '辽宁大连', '5');
INSERT INTO `t_sys_parent` VALUES ('84', '王20', '1', '12451526517', '辽宁大连', '70');
INSERT INTO `t_sys_parent` VALUES ('85', '王21', '1', '12451526517', '辽宁大连', '69');
INSERT INTO `t_sys_parent` VALUES ('86', '王22', '1', '12451526517', '辽宁大连', '46');
INSERT INTO `t_sys_parent` VALUES ('87', '王23', '1', '12451526517', '辽宁大连', '59');
INSERT INTO `t_sys_parent` VALUES ('88', '王24', '1', '12451526517', '辽宁大连', '41');
INSERT INTO `t_sys_parent` VALUES ('89', '王25', '1', '12451526517', '辽宁大连', '61');
INSERT INTO `t_sys_parent` VALUES ('90', '王26', '1', '12451526517', '辽宁大连', '15');
INSERT INTO `t_sys_parent` VALUES ('91', '王27', '1', '12451526517', '辽宁大连', '36');
INSERT INTO `t_sys_parent` VALUES ('92', '王28', '1', '12451526517', '辽宁大连', '66');
INSERT INTO `t_sys_parent` VALUES ('93', '王29', '1', '12451526517', '辽宁大连', '38');
INSERT INTO `t_sys_parent` VALUES ('94', '王30', '1', '12451526517', '辽宁大连', '82');
INSERT INTO `t_sys_parent` VALUES ('95', '王31', '1', '12451526517', '辽宁大连', '22');
INSERT INTO `t_sys_parent` VALUES ('96', '王32', '1', '12451526517', '辽宁大连', '63');
INSERT INTO `t_sys_parent` VALUES ('97', '王33', '1', '12451526517', '辽宁大连', '23');
INSERT INTO `t_sys_parent` VALUES ('98', '王34', '1', '12451526517', '辽宁大连', '52');
INSERT INTO `t_sys_parent` VALUES ('99', '王35', '1', '12451526517', '辽宁大连', '18');
INSERT INTO `t_sys_parent` VALUES ('100', '王36', '1', '12451526517', '辽宁大连', '73');
INSERT INTO `t_sys_parent` VALUES ('101', '王37', '1', '12451526517', '辽宁大连', '84');
INSERT INTO `t_sys_parent` VALUES ('102', '王38', '1', '12451526517', '辽宁大连', '89');
INSERT INTO `t_sys_parent` VALUES ('103', '王39', '1', '12451526517', '辽宁大连', '65');
INSERT INTO `t_sys_parent` VALUES ('104', '王40', '1', '12451526517', '辽宁大连', '76');
INSERT INTO `t_sys_parent` VALUES ('105', '王41', '1', '12451526517', '辽宁大连', '95');
INSERT INTO `t_sys_parent` VALUES ('106', '王42', '1', '12451526517', '辽宁大连', '63');
INSERT INTO `t_sys_parent` VALUES ('107', '王43', '1', '12451526517', '辽宁大连', '33');
INSERT INTO `t_sys_parent` VALUES ('108', '王44', '1', '12451526517', '辽宁大连', '45');
INSERT INTO `t_sys_parent` VALUES ('109', '王45', '1', '12451526517', '辽宁大连', '9');
INSERT INTO `t_sys_parent` VALUES ('110', '王46', '1', '12451526517', '辽宁大连', '69');
INSERT INTO `t_sys_parent` VALUES ('111', '王47', '1', '12451526517', '辽宁大连', '14');
INSERT INTO `t_sys_parent` VALUES ('112', '王48', '1', '12451526517', '辽宁大连', '24');
INSERT INTO `t_sys_parent` VALUES ('113', '王49', '1', '12451526517', '辽宁大连', '57');
INSERT INTO `t_sys_parent` VALUES ('114', '王50', '1', '12451526517', '辽宁大连', '1');

-- ----------------------------
-- Table structure for t_sys_student
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_student`;
CREATE TABLE `t_sys_student` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `census_id` tinyint(4) NOT NULL COMMENT '学籍id',
  `telephone` varchar(11) NOT NULL COMMENT '学生电话号码',
  `home_address` varchar(50) NOT NULL COMMENT '家庭住址',
  `name` varchar(50) DEFAULT NULL COMMENT '学生名字',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  `valid` tinyint(4) DEFAULT NULL COMMENT '有效字段 1 有效 0 无效',
  `class_id` tinyint(4) DEFAULT NULL COMMENT '班级id',
  `enrol_id` tinyint(4) DEFAULT NULL COMMENT '届id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='学生信息表\r\n';

-- ----------------------------
-- Records of t_sys_student
-- ----------------------------
INSERT INTO `t_sys_student` VALUES ('1', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('2', '2', '18642998741', '辽宁省大连市旅顺大连外国语学院', 'jack', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('3', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('4', '1', '18642889701', '辽宁省大连市旅顺', '刹那', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('5', '1', '18642889701', '辽宁省大连市旅顺', '清华水木', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('7', '1', '18642889701', '辽宁省大连市旅顺', '柔丝', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('25', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('26', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('27', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('28', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('29', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('30', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('31', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('32', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('33', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('34', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('35', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('36', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('37', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('38', '1', '18642889701', '辽宁省大连市旅顺', '繁华', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('39', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('40', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('41', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('42', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('43', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('44', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('46', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('47', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('48', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('49', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('50', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('51', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);
INSERT INTO `t_sys_student` VALUES ('52', '1', '18642889701', '辽宁省大连市旅顺', '方花', '18', '1', null, null);

-- ----------------------------
-- Table structure for t_sys_student_score
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_student_score`;
CREATE TABLE `t_sys_student_score` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `score_code` varchar(16) NOT NULL,
  `score_type` tinyint(10) NOT NULL COMMENT '成绩类型 1 数学 2 语文 3 政治 4 体育 5艺术 6音乐 7社会实践 8物理 9 生物 10 外语 ',
  `score_value` double(100,10) NOT NULL COMMENT '成绩分数',
  `score_time` datetime NOT NULL COMMENT '成绩上传时间',
  `student_id` tinyint(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_student_score
-- ----------------------------
INSERT INTO `t_sys_student_score` VALUES ('1', '20190112', '2', '100.0000000000', '2019-12-17 11:07:14', '1');
INSERT INTO `t_sys_student_score` VALUES ('2', '20190121', '2', '100.0000000000', '2019-12-17 10:59:48', '1');

-- ----------------------------
-- Table structure for t_sys_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_subject`;
CREATE TABLE `t_sys_subject` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(15) DEFAULT NULL,
  `subject_code` varchar(15) DEFAULT NULL,
  `subject_start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='科目表';

-- ----------------------------
-- Records of t_sys_subject
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_subject_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_subject_teacher`;
CREATE TABLE `t_sys_subject_teacher` (
  `teacher_id` tinyint(4) NOT NULL DEFAULT '0',
  `subject_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`teacher_id`,`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='科目和老师关联表';

-- ----------------------------
-- Records of t_sys_subject_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_teacher`;
CREATE TABLE `t_sys_teacher` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(5) DEFAULT NULL,
  `teacher_code` varchar(16) DEFAULT NULL,
  `subject_id` tinyint(4) DEFAULT NULL COMMENT '学科id',
  `telephone` varchar(15) DEFAULT NULL,
  `teacher_start_time` datetime DEFAULT NULL COMMENT '入职时间',
  `teacher_salary` double(100,3) DEFAULT NULL,
  `teacher_address` varchar(50) DEFAULT NULL,
  `user_id` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_teacher
-- ----------------------------
INSERT INTO `t_sys_teacher` VALUES ('1', '风华梦', '20191216001', null, '18741145214', '2019-12-16 16:33:10', '1500.570', '辽宁省大连市旅顺口区大连外国语学院---旅顺校区', '1');
INSERT INTO `t_sys_teacher` VALUES ('2', '王萌生', '20191216001', null, '18741145214', '2019-12-16 16:34:00', '1500.570', '辽宁省大连市旅顺口区大连外国语学院', '1');
INSERT INTO `t_sys_teacher` VALUES ('3', '吕少峰', '20191216001', null, '18741145214', '2019-12-16 16:34:22', '1500.570', '辽宁省大连市旅顺口区大连外国语学院', '4');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `role` tinyint(10) DEFAULT NULL COMMENT '1 管理员  2 老师  3 学生  4 家长  5教务人员',
  `portrait_img` varchar(125) DEFAULT NULL,
  `valid` tinyint(10) DEFAULT NULL COMMENT '账号是否启用  1 启用 0不启用',
  `student_id` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_student_id` (`student_id`),
  CONSTRAINT `FK1_student_id` FOREIGN KEY (`student_id`) REFERENCES `t_sys_student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', '201912010001', '123456', '1', '/static/load/img/portrait/default.jpg', '1', '1');
INSERT INTO `t_sys_user` VALUES ('2', '201912010002', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '3');
INSERT INTO `t_sys_user` VALUES ('5', '201912010015', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '4');
INSERT INTO `t_sys_user` VALUES ('6', '201912010038', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '5');
INSERT INTO `t_sys_user` VALUES ('7', '201912010011', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '7');
INSERT INTO `t_sys_user` VALUES ('8', '201912010011', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '7');
INSERT INTO `t_sys_user` VALUES ('9', '201912010016', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '25');
INSERT INTO `t_sys_user` VALUES ('10', '201912010017', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '26');
INSERT INTO `t_sys_user` VALUES ('11', '201912010018', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '27');
INSERT INTO `t_sys_user` VALUES ('12', '201912010019', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '28');
INSERT INTO `t_sys_user` VALUES ('13', '201912010020', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '29');
INSERT INTO `t_sys_user` VALUES ('14', '201912010021', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '30');
INSERT INTO `t_sys_user` VALUES ('15', '201912010022', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '31');
INSERT INTO `t_sys_user` VALUES ('16', '201912010023', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '32');
INSERT INTO `t_sys_user` VALUES ('17', '201912010024', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '33');
INSERT INTO `t_sys_user` VALUES ('18', '201912010025', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '34');
INSERT INTO `t_sys_user` VALUES ('19', '201912010026', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '35');
INSERT INTO `t_sys_user` VALUES ('20', '201912010027', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '36');
INSERT INTO `t_sys_user` VALUES ('21', '201912010028', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '37');
INSERT INTO `t_sys_user` VALUES ('22', '201912010029', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '38');
INSERT INTO `t_sys_user` VALUES ('23', '201912010030', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '39');
INSERT INTO `t_sys_user` VALUES ('24', '201912010031', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '40');
INSERT INTO `t_sys_user` VALUES ('25', '201912010032', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '41');
INSERT INTO `t_sys_user` VALUES ('26', '201912010033', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '42');
INSERT INTO `t_sys_user` VALUES ('27', '201912010034', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '43');
INSERT INTO `t_sys_user` VALUES ('28', '201912010035', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '44');
