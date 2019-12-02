/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : student_base

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-12-02 08:09:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_sys_census`
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
-- Table structure for `t_sys_class`
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
-- Table structure for `t_sys_enrol`
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
-- Table structure for `t_sys_parent`
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
-- Table structure for `t_sys_student`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_student`;
CREATE TABLE `t_sys_student` (
  `id` tinyint(4) NOT NULL,
  `census_id` tinyint(4) NOT NULL COMMENT '学籍id',
  `telephone` varchar(11) NOT NULL COMMENT '学生电话号码',
  `parent_id` tinyint(11) NOT NULL COMMENT '父母id',
  `home_address` varchar(50) NOT NULL COMMENT '家庭住址',
  `enrol_id` tinyint(4) NOT NULL COMMENT '学生届线id  届线表 年级表',
  `student_score_id` tinyint(4) DEFAULT NULL COMMENT '成绩id 成绩可能为空',
  `user_id` tinyint(4) DEFAULT NULL COMMENT '登录该系统用的账户id',
  `class_id` tinyint(4) DEFAULT NULL COMMENT '班级表',
  `valid` tinyint(4) DEFAULT NULL COMMENT '有效字段 1 有效 0 无效',
  `age` tinyint(4) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表\r\n';

-- ----------------------------
-- Records of t_sys_student
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_student_score`
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
-- Table structure for `t_sys_subject`
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
-- Table structure for `t_sys_subject_teacher`
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
-- Table structure for `t_sys_teacher`
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
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `role` tinyint(10) DEFAULT NULL COMMENT '1 管理员  2 老师  3 学生  4 家长  5教务人员',
  `valid` tinyint(10) DEFAULT NULL COMMENT '账号是否启用  1 启用 0不启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', '201912010001', '123456', '1', '1');
INSERT INTO `t_sys_user` VALUES ('2', '201912010002', '123456', '3', '0');
INSERT INTO `t_sys_user` VALUES ('5', '201912010015', '123456', '3', '0');
INSERT INTO `t_sys_user` VALUES ('6', '2019120100016', '123456', '3', '0');
INSERT INTO `t_sys_user` VALUES ('7', '201912010011', '123456', '3', '0');
INSERT INTO `t_sys_user` VALUES ('8', '201912010016', '123456', '3', '0');
INSERT INTO `t_sys_user` VALUES ('9', null, null, '3', '0');
