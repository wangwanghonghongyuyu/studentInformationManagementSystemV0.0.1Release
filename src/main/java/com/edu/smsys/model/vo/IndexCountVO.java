package com.edu.smsys.model.vo;

import lombok.Data;

/**
 * 首页控制面板上统计页面的数据显示对象
 */
@Data
public class IndexCountVO{
    private int studentCount;//学生统计个数
    private int teacherCount;//老师统计个数
    private int parentCount;//家长统计个数
}
