package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.ScoreEntity;
import com.edu.smsys.service.BaseService;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 成绩管理逻辑类
 * 2019年12月16日
 */
@Service
public class ScoreService implements BaseService<ScoreEntity> {
    @Override
    public List<ScoreEntity> findAll() {
        return null;
    }

    @Override
    public ScoreEntity findEntityById(int id) {
        return null;
    }

    @Override
    public List<ScoreEntity> findEntity(ScoreEntity entity) {
        return null;
    }

    @Override
    public int updateEntity(ScoreEntity entity) {
        return 0;
    }

    @Override
    public int addEntity(ScoreEntity entity) {
        return 0;
    }

    @Override
    public int deleteEntity(int id) {
        return 0;
    }
}
