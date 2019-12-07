package com.edu.smsys.dao.entity;

import lombok.Data;

import java.util.Date;

/**
 * 学籍实体
 */
@Data
public class CensusEntity {
    private int id;
    private int targetScore;//目标获得学分毕业前必须达到的学分
    private int currentScore;//当前获得学分
    private String schoolEvent;//学籍变动说明
    private Date graduationTime;//毕业时间
    private String currentEnrol;//当前所在年级
    private String schoolEvaluation;//学校评价
    private String dangerValid;//重大违纪表示 1 是 0 不是'
    private int teacherId;//录入老师id
}
