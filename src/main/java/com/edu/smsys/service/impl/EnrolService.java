package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.EnrolEntity;
import com.edu.smsys.dao.mapper.EnrolEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 年级管理逻辑类
 * 2019年12月16日
 */
@Service
public class EnrolService implements BaseService<EnrolEntity> {
    @Autowired
    private EnrolEntityMapper enrolEntityMapper;
    /**
     * 查询所有年级
     * @return
     */
    @Override
    public List<EnrolEntity> findAll() {
        return enrolEntityMapper.queryEnrols();
    }

    /**
     * 查询年级根据年级id
     * @param id
     * @return
     */
    @Override
    public EnrolEntity findEntityById(int id) {
        return enrolEntityMapper.queryEnrolById(id);
    }

    /**
     * 查询年级根据年级实体
     * @param entity
     * @return
     */
    @Override
    public List<EnrolEntity> findEntity(EnrolEntity entity) {
        return enrolEntityMapper.queryEnrolByEnrol(entity);
    }

    /**
     * 修改年级信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(EnrolEntity entity) {
        return enrolEntityMapper.updateEnrolById(entity);
    }

    /**
     * 插入年级信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(EnrolEntity entity) {
        return enrolEntityMapper.insertEnrol(entity);
    }

    /**
     * 删除年级根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return enrolEntityMapper.deleteEnrolById(id);
    }
}
