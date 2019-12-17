package com.edu.smsys.dao.entity;

import lombok.Data;

import java.util.Date;

/**
 * 通知实体
 */
@Data
public class NoticeEntity {
    private int id;//用户通知id
    private String noticeContent;//通知内容
    private int noticeUserId;//通知作者
    private int noticeUserToId;//被通知人
    private Date noticeTime;//通知时间
}
