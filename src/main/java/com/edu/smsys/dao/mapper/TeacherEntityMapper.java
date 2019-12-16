package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.TeacherEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 教师映射器
 */
public interface TeacherEntityMapper {
    /**
     * 老师个数
     * @return
     */
    public int selectCount();

    /**
     * 查询所有所有老师
     * @return
     */
    public List<TeacherEntity> queryTeaChers();

    /**
     * 查询老师根据老师id
     * @param id
     * @return
     */
    public TeacherEntity queryTeaCherById(@Param("id") int id);

    /**
     * 查询老师根据老师实体 返回一个list
     * @return
     */
    public List<TeacherEntity> queryTeacherByTeacher(TeacherEntity teacherEntity);

    /**
     * 修改老师信息
     * @param teacherEntity
     * @return
     */
    public int updateTeacherById(TeacherEntity teacherEntity);

    /**
     * 插入老师信息
     * @param teacherEntity
     * @return
     */
    public int insertTeacher(TeacherEntity teacherEntity);

    /**
     * 删除老师根据id
     * @param id
     * @return
     */
    public int deleteTeacherById(@Param("id") int id);

}
