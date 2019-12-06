package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.UserEntity;
import com.edu.smsys.dao.mapper.UserEntityMapper;
import com.edu.smsys.util.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 用户信息处理业务逻辑层
 */
@Service
public class UserService {
    @Autowired
    private UserEntityMapper userMapper;

    /**
     * 查询用户
     * @param userCode
     * @param userPassword
     * @return
     */
    public UserEntity findUserByCodeAndPassword(String userCode,String userPassword){
       return  userMapper.queryUserByCodeAndPassword( userCode,userPassword);
    }

    /**
     * 登录
     * @param userCode
     * @param userPassword
     * @return
     */
    public UserEntity login(String userCode,String userPassword){
        return findUserByCodeAndPassword(userCode,userPassword);
    }

    /**
     * 注册
     * @param userCode
     * @param userPassword
     * @return 0000--注册失败  创建用户的主键id 有主键回填策略
     */
    public int register(String userCode,String userPassword){
        UserEntity userEntity=new UserEntity();
        userEntity.setUserCode(userCode);
        userEntity.setUserPassword(userPassword);
        addUser(userEntity);
        if (userEntity.getId()!=0){
            return userEntity.getId();
        }
        return Integer.parseInt(Constant.RESPONSE_STATUS.ERROR);//注册失败
    }

    /**
     * 添加用户
     * @param userEntity
     * @return
     */
    public int addUser(UserEntity userEntity){
        return userMapper.insertUser(userEntity);
    }


    /**
     * 注册用户是否存在
     * @param userCode
     * @return true 不存在 false 存在
     */
    public String isExistence(String userCode){
        if (countUserCode(userCode)>=1){
            return "当前注册用户帐号已存在";
        }
        return null;
    }

    /**
     * 统计用户名存在个数
     * @param userCode
     * @return  1 2 3 4 5 6 个数
     */
    public int countUserCode(String userCode){
        return userMapper.queryUserByCode(userCode);
    }
}
