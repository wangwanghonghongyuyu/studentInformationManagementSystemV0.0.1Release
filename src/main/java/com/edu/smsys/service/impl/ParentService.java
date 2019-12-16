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

    @Override
    public List<ParentEntity> findAll() {
        return null;
    }

    @Override
    public ParentEntity findEntityById(int id) {
        return null;
    }

    @Override
    public List<ParentEntity> findEntity(ParentEntity entity) {
        return null;
    }

    @Override
    public int updateEntity(ParentEntity entity) {
        return 0;
    }

    @Override
    public int addEntity(ParentEntity entity) {
        return 0;
    }

    @Override
    public int deleteEntity(int id) {
        return 0;
    }
}
