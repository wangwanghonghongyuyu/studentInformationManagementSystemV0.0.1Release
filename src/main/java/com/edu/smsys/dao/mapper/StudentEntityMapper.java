package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.StudentEntity;

import java.util.List;

/**
 * 学生数据库映射器
 */
public interface StudentEntityMapper {
    /**
     * 查询所有学生信息
     * @return
     */
    public List<StudentEntity> queryAllStudent();

    /**
     * 统计学生个数
     * @return
     */
    public int selectCount();
}
