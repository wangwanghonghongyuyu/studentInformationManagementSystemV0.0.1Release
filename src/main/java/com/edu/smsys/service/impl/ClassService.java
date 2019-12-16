package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.ClassEntity;
import com.edu.smsys.dao.mapper.ClassEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 班级管理业务类
 * 继承了基础共通类方便编写代码
 * 其他的数据操作也可以存在
 * 2019年12月16日
 */
@Service
public class ClassService implements BaseService<ClassEntity> {
    @Autowired
    private ClassEntityMapper classEntityMapper;

    /**
     * 查询所有班级
     * @return
     */
    @Override
    public List<ClassEntity> findAll() {
        return classEntityMapper.queryClasses();
    }

    /**
     * 查询班级根据班级id
     * @param id
     * @return
     */
    @Override
    public ClassEntity findEntityById(int id) {
        return classEntityMapper.queryClassById(id);
    }

    /**
     * 查询班级根据班级实体
     * @param entity
     * @return
     */
    @Override
    public List<ClassEntity> findEntity(ClassEntity entity) {
        return classEntityMapper.queryClassByClass(entity);
    }

    /**
     * 修改班级信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(ClassEntity entity) {
        return classEntityMapper.updateClassById(entity);
    }

    /**
     * 插入班级信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(ClassEntity entity) {
        return classEntityMapper.insertClass(entity);
    }

    /**
     * 删除班级根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return classEntityMapper.deleteClassById(id);
    }
}
