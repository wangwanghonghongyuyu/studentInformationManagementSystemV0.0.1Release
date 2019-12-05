package com.edu.smsys.dao.entity;

import lombok.Data;

@Data
public class StudentEntity {
    /*`id` TINYINT(4) NOT NULL AUTO_INCREMENT,
	`census_id` TINYINT(4) NOT NULL COMMENT '学籍id',
            `telephone` VARCHAR(11) NOT NULL COMMENT '学生电话号码',
            `home_address` VARCHAR(50) NOT NULL COMMENT '家庭住址',
            `name` VARCHAR(50) NULL DEFAULT NULL COMMENT '学生名字',
            `valid` TINYINT(4) NULL DEFAULT NULL COMMENT '有效字段 1 有效 0 无效',
            `age` TINYINT(4) NOT NULL COMMENT '年龄',*/
    private int id;
    private int censusId;
    private String telephone;
    private String homeAddress;
    private String name;
    private int valid;
    private int age;
}
