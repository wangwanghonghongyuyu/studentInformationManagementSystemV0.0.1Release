/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50721
Source Host           : 127.0.0.1:3306
Source Database       : student_base

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2019-12-05 18:32:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_census
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_census`;
CREATE TABLE `t_sys_census` (
  `id` int(11) NOT NULL,
  `target_score` tinyint(10) NOT NULL COMMENT '目标获得学分毕业前必须达到的学分',
  `current_score` tinyint(10) NOT NULL,
  `schoolevent` varchar(300) DEFAULT NULL COMMENT '学籍变动说明',
  `graduation_time` date NOT NULL,
  `curent_enrol` varchar(20) DEFAULT NULL COMMENT '当前所在年级',
  `school_evaluation` varchar(255) DEFAULT NULL COMMENT '学校评价',
  `danger_valid` tinyint(1) DEFAULT NULL COMMENT '重大违纪表示 1 是 0 不是',
  `teacher_id` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学籍表';

-- ----------------------------
-- Records of t_sys_census
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_class
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_class`;
CREATE TABLE `t_sys_class` (
  `id` tinyint(4) NOT NULL,
  `class_code` varchar(100) DEFAULT NULL,
  `class_name` varchar(100) DEFAULT NULL,
  `enrol_id` tinyint(4) DEFAULT NULL COMMENT '届级id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_class
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_enrol
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_enrol`;
CREATE TABLE `t_sys_enrol` (
  `id` tinyint(4) NOT NULL,
  `enrol_name` varchar(50) DEFAULT NULL,
  `enrol_content` varchar(100) DEFAULT NULL COMMENT '备注信息 入学的录取分数线 ',
  `enrol_count` tinyint(4) DEFAULT NULL COMMENT '入学人数',
  `enrol_code` tinyint(4) DEFAULT NULL COMMENT '届编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='届表  例如2019级  10012019113020200607';

-- ----------------------------
-- Records of t_sys_enrol
-- ----------------------------

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
  `id` tinyint(4) NOT NULL,
  `parent_name` varchar(10) NOT NULL COMMENT '家长名称',
  `type` tinyint(4) NOT NULL COMMENT '家长类型 1 父 2母 3 爷爷  4 奶奶  5 其他',
  `telephone` varchar(11) NOT NULL,
  `work_area` varchar(30) NOT NULL COMMENT '工作地区',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='家长表';

-- ----------------------------
-- Records of t_sys_parent
-- ----------------------------

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
  `id` tinyint(4) NOT NULL,
  `score_code` varchar(16) NOT NULL,
  `score_type` tinyint(10) NOT NULL COMMENT '成绩类型 1 数学 2 语文 3 政治 4 体育 5艺术 6音乐 7社会实践 8物理 9 生物 10 外语 ',
  `score_value` double(100,10) NOT NULL COMMENT '成绩分数',
  `score_time` datetime NOT NULL COMMENT '成绩上传时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_student_score
-- ----------------------------

-- ----------------------------
-- Table structure for t_sys_subject
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_subject`;
CREATE TABLE `t_sys_subject` (
  `id` tinyint(4) NOT NULL,
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
  `id` tinyint(4) NOT NULL,
  `teacher_name` varchar(5) DEFAULT NULL,
  `teacher_code` varchar(16) DEFAULT NULL,
  `subject_id` tinyint(4) NOT NULL COMMENT '学科id',
  `telephone` varchar(15) NOT NULL,
  `teacher_start_time` datetime NOT NULL COMMENT '入职时间',
  `teacher_salary` double(100,0) NOT NULL,
  `teacher_address` varchar(50) NOT NULL,
  `user_id` tinyint(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_teacher
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', '201912010001', '123456', '1', '/static/load/img/portrait/default.jpg', '1', '1');
INSERT INTO `t_sys_user` VALUES ('2', '201912010002', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '3');
INSERT INTO `t_sys_user` VALUES ('5', '201912010015', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '4');
INSERT INTO `t_sys_user` VALUES ('6', '201912010038', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '5');
INSERT INTO `t_sys_user` VALUES ('7', '201912010011', '123456', '3', '/static/load/img/portrait/default.jpg', '1', '7');
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
