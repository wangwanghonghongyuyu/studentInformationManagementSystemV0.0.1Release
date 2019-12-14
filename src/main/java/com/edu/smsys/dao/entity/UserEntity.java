package com.edu.smsys.dao.entity;

import lombok.Data;

import java.util.Date;

/**
 * 用户实体类
 */
@Data
public class UserEntity {
    private int id;
    private String userCode;//用户名
    private String userPassword;//密码
    private int role;//1 管理员  2 老师  3 学生  4 家长  5教务人员
    private String portraitURL;//头像信息
    private int valid;//账号是否启用  1 启用 0不启用
    private int studentId;//学生id
    private Date loginTime;//登录时间 不存在DB中的是用来在页面上显示登录时间的 在登录的逻辑中赋值
}
