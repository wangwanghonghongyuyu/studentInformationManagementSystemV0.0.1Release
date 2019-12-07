package com.edu.smsys.dao.entity;

import lombok.Data;

/**
 * 家长实体类
 */
@Data
public class ParentEntity {
    private int id;
    private String parentName;//家长名称
    private int type;//家长类型 1 父 2母 3 爷爷  4 奶奶  5 其他',
    private String telephone;//电话
    private String workArea;//工作地区
    private int age;//年龄
}
