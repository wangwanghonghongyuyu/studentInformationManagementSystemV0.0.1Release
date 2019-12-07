package com.edu.smsys.dao.entity;

import lombok.Data;

import java.util.Date;

/**
 * 成绩实体类
 */
@Data
public class ScoreEntity {
    private int id;
    private String scoreCode;//成绩编号
    private int scoreType;//成绩类型 1 数学 2 语文 3 政治 4 体育 5艺术 6音乐 7社会实践 8物理 9 生物 10 外语
    private double ScoreValue;//成绩分数
    private Date scoreTime;//成绩上传时间
}
