package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.EnrolEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 年级映射器
 */
public interface EnrolEntityMapper {
    /**
     * 查询所有年级
     * @return
     */
    public List<EnrolEntity> queryEnrols();

    /**
     * 查询年级根据年级id
     * @param id 年级id
     * @return
     */
    public EnrolEntity queryEnrolById(@Param("id") int id);

    /**
     * 查询年级根据年级实体
     * 可多条件查询不过返回的是一个List集合
     * @param enrolEntity 年级实体
     * @return
     */
    public List<EnrolEntity> queryEnrolByEnrol(EnrolEntity enrolEntity);

    /**
     * 修改年级信息
     * 修改一个值的时候也可以调用该方法
     * 在执行sql的时候进行了判空操作
     * @param enrolEntity
     * @return
     */
    public  int updateEnrolById(EnrolEntity enrolEntity);

    /**
     * 插入年级信息
     * @param enrolEntity
     * @return
     */
    public int insertEnrol(EnrolEntity enrolEntity);

    /**
     * 删除年级根据id
     * @param id
     * @return
     */
    public int deleteEnrolById(@Param("id") int id);
}
