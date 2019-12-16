package com.edu.smsys.service;

import java.util.List;

/**
 * 所有业务逻辑共通接口 T代表每个类实现的对应的实体类
 * 2019年12月16日
 * @param <T>
 */
public interface BaseService<T> {
    /**
     *查询所有
     * @return
     */
    public List<T> findAll();

    /**
     * 根据id查询实体
     * @param id
     * @return
     */
    public T findEntityById(int id);

    /**
     * 查询实体根据传入的实体对象
     * @param entity
     * @return
     */
    public List<T>  findEntity(T entity);

    /**
     * 修改实体对象根据id
     * @param entity
     * @return
     */
    public int updateEntity(T entity);

    /**
     * 添加实体信息
     * @param entity
     * @return
     */
    public int addEntity(T entity);

    /**
     * 通过id删除实体
     * @param id
     * @return
     */
    public int deleteEntity(int id);
}
