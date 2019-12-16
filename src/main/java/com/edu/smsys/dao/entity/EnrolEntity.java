package com.edu.smsys.dao.entity;

import lombok.Data;

/**
 * 年级实体类
 */
@Data
public class EnrolEntity {
    private int id;//
    private String enrolName;//年级名称
    private String enrolContent;//入学人数
    private int enrolCount;//备注信息 入学的录取分数线
    private int enrolCode;//届编号
}
