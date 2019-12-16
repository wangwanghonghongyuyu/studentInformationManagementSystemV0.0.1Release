package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.ParentEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 家长映射器 接口中的public可以省略不过为了编码规范还是写上吧
 */
public interface ParentEntityMapper {
    /**
     * 家长个数
     * @return
     */
    public int selectCount();

    /**
     * 查询所有家长
     * @return
     */
    public List<ParentEntity> queryParents();

    /**
     * 查询老师根据老师id
     * @param id
     * @return
     */
    public ParentEntity queryParentById(@Param("id") int id);

    /**
     * 查询家长根据家长
     * @param parentEntity
     * @return
     */
    public List<ParentEntity> queryParentByParent(ParentEntity parentEntity);

    /**
     * 修改家长信息
     * @param parentEntity
     * @return
     */
    public int updateParentsById(ParentEntity parentEntity);

    /**
     * 插入家长信息
     * @param parentEntity
     * @return
     */
    public int insertParent(ParentEntity parentEntity);

    /**
     * 删除家长根据id
     * @param id
     * @return
     */
    public int deleteParentById(@Param("id") int id);
}
