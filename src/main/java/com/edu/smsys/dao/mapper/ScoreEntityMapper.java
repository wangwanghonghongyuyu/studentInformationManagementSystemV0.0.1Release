package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.ScoreEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 成绩实体映射器
 */
public interface ScoreEntityMapper {

    /**
     * 查询所有成绩
     * @return
     */
    public List<ScoreEntity> queryScores();

    /**
     * 查询成绩根据成绩id
     * @param id
     * @return
     */
    public ScoreEntity queryScoreById(@Param("id") int id);

    /**
     * 查询成绩根据成绩实体
     * @param scoreEntity
     * @return
     */
    public List<ScoreEntity> queryScoreByScore(ScoreEntity scoreEntity);

    /**
     * 修改成绩信息
     * @param scoreEntity
     * @return
     */
    public int updateScoreById(ScoreEntity scoreEntity);

    /**
     * 插入成绩信息
     * @param scoreEntity
     * @return
     */
    public int insertScore(ScoreEntity scoreEntity);

    /**
     * 删除成绩根据id
     * @param id
     * @return
     */
    public int deleteScoreById(@Param("id") int id);
}
