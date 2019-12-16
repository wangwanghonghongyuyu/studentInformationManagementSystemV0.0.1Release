package com.edu.smsys.service;

import java.util.List;

/**
 * 所有业务逻辑共通接口 T代表每个类实现的对应的实体类
 * 说明：为什么要实现这个接口，为了统一每一个类中的查询修改和删除方法名称
 *      在编写的过程中发现这些类的逻辑都是共同的，为了方便代码编写，就让每一个管理模块去
 *      实现这个接口中的对应的方法。减少工作量，同时提高代码阅读性
 * 2019年12月16日
 * @param <T> 这个T是一个泛型 泛型的意思是可以理解成一个占位符号 它是什么类都可以
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
