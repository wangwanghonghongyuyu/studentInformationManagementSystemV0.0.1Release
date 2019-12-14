package com.edu.smsys.service.impl;

import com.edu.smsys.dao.mapper.ParentEntityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ParentService {

    @Autowired
    private ParentEntityMapper parentEntityMapper;
    /**
     * 统计家长个数
     * @return
     */
    public int selectCount(){
        return parentEntityMapper.selectCount();
    }
}
