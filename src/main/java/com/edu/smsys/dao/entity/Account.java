package com.edu.smsys.dao.entity;

import lombok.Data;

/**
 * 废弃 测试用的
 */
@Data
public class Account {
   /* `id` tinyint(20) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) NOT NULL,
  `account_password` varchar(50) NOT NULL COMMENT '用户表',*/
   private int id;
   private String account_name;
   private String account_password;
}
