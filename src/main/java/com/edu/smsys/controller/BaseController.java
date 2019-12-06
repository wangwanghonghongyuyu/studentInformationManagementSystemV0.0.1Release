package com.edu.smsys.controller;

import com.alibaba.fastjson.JSON;

import java.util.Queue;

public class BaseController {
    protected static final String VIEW_CONTENT="/WEB-INF/view/";
    public String toJsonStr(Object o){
        return JSON.toJSONString(o);
    }
}
