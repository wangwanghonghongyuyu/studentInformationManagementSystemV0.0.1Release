package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.CensusEntity;
import com.edu.smsys.dao.mapper.CensusEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * 学籍管理逻辑类
 * 2019年12月16日
 */
public class CensusService implements BaseService<CensusEntity> {
    @Autowired
    private CensusEntityMapper censusEntityMapper;

    /**
     * 查询所有学籍
     * @return
     */
    @Override
    public List<CensusEntity> findAll() {
        return censusEntityMapper.queryCensuses();
    }

    /**
     * 查询学籍根据学籍id
     * @param id
     * @return
     */
    @Override
    public CensusEntity findEntityById(int id) {
        return censusEntityMapper.queryCensusById(id);
    }

    /**
     * 查询学籍根据学籍实体
     * @param entity
     * @return
     */
    @Override
    public List<CensusEntity> findEntity(CensusEntity entity) {
        return censusEntityMapper.queryCensusByCensus(entity);
    }

    /**
     * 修改学籍信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(CensusEntity entity) {
        return censusEntityMapper.updateCensusById(entity);
    }

    /**
     * 插入学籍信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(CensusEntity entity) {
        return censusEntityMapper.insertCensus(entity);
    }

    /**
     * 删除班级根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return censusEntityMapper.deleteCensusById(id);
    }
}
