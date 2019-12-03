package com.edu.smsys.dao.entity;

import lombok.Data;

@Data
public class UserEntity {
    private int id;
    private String userCode;//用户名
    private String userPassword;//密码
    private int role;//1 管理员  2 老师  3 学生  4 家长  5教务人员
    private String portraitURL;//头像信息
    private int valid;//账号是否启用  1 启用 0不启用
}
