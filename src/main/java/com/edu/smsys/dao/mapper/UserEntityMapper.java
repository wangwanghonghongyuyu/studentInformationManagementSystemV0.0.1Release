package com.edu.smsys.dao.mapper;

import com.edu.smsys.dao.entity.UserEntity;
import org.apache.ibatis.annotations.Param;

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
}
