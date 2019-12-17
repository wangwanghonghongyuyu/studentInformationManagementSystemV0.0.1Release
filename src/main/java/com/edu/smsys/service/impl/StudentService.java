package com.edu.smsys.service.impl;

import com.edu.smsys.dao.entity.StudentEntity;
import com.edu.smsys.dao.mapper.StudentEntityMapper;
import com.edu.smsys.model.vo.StudentVO;
import com.edu.smsys.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 学生信息处理业务逻辑层
 * 2019年12月16日
 */
@Service
public class StudentService implements BaseService<StudentEntity> {

    //注入学生表的映射器获取数据库中的信息
    @Autowired
    private StudentEntityMapper studentEntityMapper;

    /**
     * 查询所有学生实体信息  实体理解的意思是数据库中的信息
     * @return
     */
    public List<StudentEntity> queryAllStudent(){
        return studentEntityMapper.queryAllStudent();
    }

    /**
     * 所有学生信息 用于展示到页面上的数据
     * @return voList
     */
    public List<StudentVO> queryAllStudents(){
        List<StudentVO> voList=new ArrayList<>();
        List<StudentEntity> entityList=queryAllStudent();
        if (entityList!=null&&entityList.size()>0){
            for (StudentEntity entity:entityList){
                StudentVO vo=new StudentVO();
                setStudentVo(entity,vo);
                voList.add(vo);
            }
        }
        return voList;
    }

    /**
     * 学生实体类转换成页面学生信息对象
     * @param source 实体
     * @param target viewModel 页面对象
     */
    private void setStudentVo(StudentEntity source, StudentVO target) {
        //TODO 还要有届和班级还有学籍
    }

    /**
     * 统计学生个数
     * @return
     */
    public int selectCount(){
        return studentEntityMapper.selectCount();
    }

    /**
     * 查询所有学生信息
     * @return
     */
    @Override
    public List<StudentEntity> findAll() {
        return studentEntityMapper.queryAllStudent();
    }

    /**
     * 统计学生个数
     * @param id
     * @return
     */
    @Override
    public StudentEntity findEntityById(int id) {
        return studentEntityMapper.queryClassById(id);
    }

    /**
     * 查询所有学生
     * @param entity
     * @return
     */
    @Override
    public List<StudentEntity> findEntity(StudentEntity entity) {
        return studentEntityMapper.queryStudentByStudent(entity);
    }

    /**
     * 修改学生根据学生id
     * @param entity
     * @return
     */
    @Override
    public int updateEntity(StudentEntity entity) {
        return studentEntityMapper.updateStudentById(entity);
    }

    /**
     * 插入学生信息
     * @param entity
     * @return
     */
    @Override
    public int addEntity(StudentEntity entity) {
        return studentEntityMapper.insertStudent(entity);
    }

    /**
     * 删除学生根据id
     * @param id
     * @return
     */
    @Override
    public int deleteEntity(int id) {
        return studentEntityMapper.deleteStudentById(id);
    }
}
