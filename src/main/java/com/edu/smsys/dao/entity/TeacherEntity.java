package com.edu.smsys.dao.entity;

import lombok.Data;

import java.util.Date;

/**
 * 教师实体类
 */
@Data
public class TeacherEntity {
    private int id;
    private String teacherName;
    private String teacherCode;
    private int subjectId;//学科id
    private String telephone;//电话
    private Date teacherStartTime;//入职时间
    private double teacherSalary;//教师工资
    private String teacherAddress;//教师地址
    private int userId;//绑定用户id
}
