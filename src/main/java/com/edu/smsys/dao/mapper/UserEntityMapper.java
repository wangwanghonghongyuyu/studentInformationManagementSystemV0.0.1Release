package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.UserEntity;
import org.apache.ibatis.annotations.Param;

/**
 * 用户数据库映射器
 */
public interface UserEntityMapper {
    /**
     * 查询用户根据账号和密码
     * @param userCode
     * @param userPassword
     * @return
     */
    public UserEntity queryUserByCodeAndPassword(@Param("userCode")String userCode, @Param("userPassword")String userPassword);

    /**
     * 添加用户
     * @param userEntity
     * @return
     */
    public int insertUser(UserEntity userEntity);

    /**
     * 根据用户名查询用户
     * @param userCode
     * @return list<userEntity>
     */
    public int queryUserByCode(@Param("userCode") String userCode);
}
