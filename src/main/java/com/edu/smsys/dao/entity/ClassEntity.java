package com.edu.smsys.dao.entity;

import lombok.Data;

/**
 * 年级实体类
 */
@Data
public class ClassEntity {
    private int id;
    private String classCode;//班级编号
    private String className;//班级姓名
    private int enrolId;//年级id
}
