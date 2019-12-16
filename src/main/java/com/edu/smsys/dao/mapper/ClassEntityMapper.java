package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.ClassEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 班映射器
 * 2019年12月16日
 */
public interface ClassEntityMapper {
    /**
     * 查询所有班级
     * @return
     */
    public List<ClassEntity> queryClasses();

    /**
     * 查询班级根据班级id
     * @param id
     * @return
     */
    public ClassEntity queryClassById(@Param("id") int id);

    /**
     * 查询班级根据班级实体
     * @param classEntity
     * @return
     */
    public List<ClassEntity> queryClassByClass(ClassEntity classEntity);

    /**
     * 修改班级信息
     * @param classEntity
     * @return
     */
    public int updateClassById(ClassEntity classEntity);

    /**
     * 插入班级信息
     * @param classEntity
     * @return
     */
    public int insertClass(ClassEntity classEntity);

    /**
     * 删除班级根据id
     * @param id
     * @return
     */
    public int deleteClassById(@Param("id") int id);
}
