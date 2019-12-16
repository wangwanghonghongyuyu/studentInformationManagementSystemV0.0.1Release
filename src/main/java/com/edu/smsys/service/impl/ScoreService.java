package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.ScoreEntity;
import com.edu.smsys.dao.mapper.ScoreEntityMapper;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 成绩管理逻辑类
 * 2019年12月16日
 */
@Service
public class ScoreService implements BaseService<ScoreEntity> {
    @Autowired
    private ScoreEntityMapper scoreEntityMapper;

    /**
     * 查询所有成绩
     * @return
     */
    @Override
    public List<ScoreEntity> findAll() {
        return scoreEntityMapper.queryScores();
    }

    /**
     * 查询成绩根据成绩id
     * @param id
     * @return
     */
    @Override
    public ScoreEntity findEntityById(int id) {
        return scoreEntityMapper.queryScoreById(id);
    }

    /**
     * 查询成绩根据成绩实体
     * @param entity
     * @return
     */
    @Override
    public List<ScoreEntity> findEntity(ScoreEntity entity) {
        return scoreEntityMapper.queryScoreByScore(entity);
    }

    /**
     * 修改成绩信息
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(ScoreEntity entity) {
        return scoreEntityMapper.updateScoreById(entity);
    }

    /**
     * 插入成绩信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(ScoreEntity entity) {
        return scoreEntityMapper.insertScore(entity);
    }

    /**
     * 删除成绩根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return scoreEntityMapper.deleteScoreById(id);
    }
}
