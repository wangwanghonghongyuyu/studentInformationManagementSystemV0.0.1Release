package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.EnrolEntity;
import com.edu.smsys.service.BaseService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 年级管理逻辑类
 * 2019年12月16日
 */
@Service
public class EnrolService implements BaseService<EnrolEntity> {
    /**
     * 查询所有年级
     * @return
     */
    @Override
    public List<EnrolEntity> findAll() {
        return null;
    }

    /**
     * 查询年级根据年级id
     * @param id
     * @return
     */
    @Override
    public EnrolEntity findEntityById(int id) {
        return null;
    }

    /**
     * 查询年级根据年级实体
     * @param entity
     * @return
     */
    @Override
    public List<EnrolEntity> findEntity(EnrolEntity entity) {
        return null;
    }

    /**
     * 修改年级信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(EnrolEntity entity) {
        return 0;
    }

    /**
     * 插入年级信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(EnrolEntity entity) {
        return 0;
    }

    /**
     * 删除年级根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return 0;
    }
}
