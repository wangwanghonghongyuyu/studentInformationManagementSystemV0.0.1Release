package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.StudentEntity;
import org.apache.ibatis.annotations.Param;

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

    /**
     * 查询所有学生
     * @return
     */
    public List<StudentEntity> queryStudents();

    /**
     * 查询学生根据学生id
     * @param id
     * @return
     */
    public StudentEntity queryClassById(@Param("id") int id);

    /**
     * 查询学生根据学生实体
     * @param studentEntity
     * @return
     */
    public List<StudentEntity> queryStudentByStudent(StudentEntity studentEntity);

    /**
     * 修改学生信息
     * @param studentEntity
     * @return
     */
    public int updateStudentById(StudentEntity studentEntity);

    /**
     * 插入学生信息
     * @param studentEntity
     * @return
     */
    public int insertStudent(StudentEntity studentEntity);

    /**
     * 删除学生根据id
     * @param id
     * @return
     */
    public int deleteStudentById(@Param("id") int id);
}
