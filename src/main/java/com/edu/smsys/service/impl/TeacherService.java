package com.edu.smsys.service.impl;

import com.edu.smsys.dao.mapper.TeacherEntityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherService {

    @Autowired
    private TeacherEntityMapper teacherEntityMapper;

    /**
     * 统计学生个数
     * @return
     */
    public int selectCount(){
        return teacherEntityMapper.selectCount();
    }

}
