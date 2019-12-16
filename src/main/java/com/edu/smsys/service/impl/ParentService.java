package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.ParentEntity;
import com.edu.smsys.dao.mapper.ParentEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 家长管理逻辑类
 * 2019年12月16日
 */
@Service
public class ParentService implements BaseService<ParentEntity> {

    @Autowired
    private ParentEntityMapper parentEntityMapper;
    /**
     * 统计家长个数
     * @return
     */
    public int selectCount(){
        return parentEntityMapper.selectCount();
    }

    /**
     * 查询所有家长
     * @return
     */
    @Override
    public List<ParentEntity> findAll() {
        return parentEntityMapper.queryParents();
    }

    /**
     * 查询老师根据老师id
     * @param id
     * @return
     */
    @Override
    public ParentEntity findEntityById(int id) {
        return parentEntityMapper.queryParentById(id);
    }

    /**
     * 查询家长根据家长
     * @param entity
     * @return
     */
    @Override
    public List<ParentEntity> findEntity(ParentEntity entity) {
        return parentEntityMapper.queryParentByParent(entity);
    }

    /**
     * 修改家长信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(ParentEntity entity) {
        return parentEntityMapper.updateParentsById(entity);
    }

    /**
     * 插入家长信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(ParentEntity entity) {
        return parentEntityMapper.insertParent(entity);
    }

    /**
     * 删除家长根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return parentEntityMapper.deleteParentById(id);
    }
}
