package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.TeacherEntity;
import com.edu.smsys.dao.mapper.TeacherEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 老师管理逻辑类
 */
@Service
public class TeacherService implements BaseService<TeacherEntity> {

    @Autowired
    private TeacherEntityMapper teacherEntityMapper;

    /**
     * 统计老师个数
     * @return
     */
    public int selectCount(){
        return teacherEntityMapper.selectCount();
    }

    /**
     * 查询所有所有老师
     * @return
     */
    @Override
    public List<TeacherEntity> findAll() {
        return teacherEntityMapper.queryTeaChers();
    }

    /**
     * 查询老师根据老师id
     * @param id
     * @return
     */
    @Override
    public TeacherEntity findEntityById(int id) {
        return teacherEntityMapper.queryTeaCherById(id);
    }

    /**
     * 查询老师根据老师实体 返回一个list
     * @return
     */
    @Override
    public List<TeacherEntity> findEntity(TeacherEntity entity) {
        return teacherEntityMapper.queryTeacherByTeacher(entity);
    }

    /**
     * 修改老师信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(TeacherEntity entity) {
        return teacherEntityMapper.updateTeacherById(entity);
    }

    /**
     * 插入老师信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(TeacherEntity entity) {
        return teacherEntityMapper.insertTeacher(entity);
    }

    /**
     * 删除老师根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return teacherEntityMapper.deleteTeacherById(id);
    }
}
