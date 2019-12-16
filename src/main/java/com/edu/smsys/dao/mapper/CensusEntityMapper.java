package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.CensusEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 学籍实体映射器
 */
public interface CensusEntityMapper {
    /**
     * 查询所有学籍
     * @return
     */
    public List<CensusEntity> queryCensuses();

    /**
     * 查询学籍根据学籍id
     * @param id
     * @return
     */
    public CensusEntity queryClassById(@Param("id") int id);

    /**
     * 查询学籍根据学籍实体
     * @param censusEntity
     * @return
     */
    public List<CensusEntity> queryCensusByCensus(CensusEntity censusEntity);

    /**
     * 修改学籍信息
     * @param censusEntity
     * @return
     */
    public int updateCensusById(CensusEntity censusEntity);

    /**
     * 插入学籍信息
     * @param censusEntity
     * @return
     */
    public int insertCensus(CensusEntity censusEntity);

    /**
     * 删除班级根据id
     * @param id
     * @return
     */
    public int deleteCensusById(@Param("id") int id);
}
