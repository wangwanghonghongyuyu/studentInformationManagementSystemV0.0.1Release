package com.edu.smsys.dao.entity;

import lombok.Data;

@Data
public class StudentEntity {
    private int id;//学生id
    private int censusId;//学籍id
    private String telephone;//练习电话
    private String homeAddress;//住址
    private String name;//名字
    private int valid;//有效字段
    private int age;//年龄
    private int classId;//班级id
    private int enrolId;//届id
}
