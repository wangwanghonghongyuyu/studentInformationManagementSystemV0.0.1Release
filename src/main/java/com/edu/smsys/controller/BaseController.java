package com.edu.smsys.controller;

import com.alibaba.fastjson.JSON;

/**
 * 控制层要多次复用的一些方法和常量字段
 */
public class BaseController {
    protected static final String VIEW_CONTENT="/WEB-INF/view/";
    public String toJsonStr(Object o){
        return JSON.toJSONString(o);
    }
}
