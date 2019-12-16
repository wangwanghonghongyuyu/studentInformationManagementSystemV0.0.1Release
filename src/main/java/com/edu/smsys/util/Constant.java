package com.edu.smsys.util;

/**
 * 常量的定义
 */
public class Constant {
    public interface RESPONSE_STATUS{
        String SUCCESS="0001";
        String ERROR="0000";
    }

    /**
     * 1 管理员  2 老师  3 学生  4 家长  5教务人员
     */
    public interface USER_TYPE{
        int ADMIN=1;
        int TEACHER=2;
        int STUDENT=3;
        int PARENT=4;
        int TEACHER_ADMIN=5;
    }

    /**
     * 家长类型 1 父 2母 3 爷爷  4 奶奶  5 其他
     */
    public interface PARENT_TYPE{
        int FATHER=1;
        int MOTHER=2;
        int GRAND_FATHER=3;
        int GRAND_MOTHER=4;
        int OTHER=5;
    }
    /**
     * 成绩类型 1 数学 2 语文 3 政治 4 体育 5艺术 6音乐 7社会实践 8物理 9 生物 10 外语
     */
    public interface SCORE_TYPE{

    }
}
