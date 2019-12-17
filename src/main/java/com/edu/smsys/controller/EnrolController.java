package com.edu.smsys.controller;

import com.edu.smsys.dao.entity.EnrolEntity;
import com.edu.smsys.service.impl.EnrolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 年级控制器
 */
@Controller
@RequestMapping("/enrol")
public class EnrolController extends  BaseController{
    @Autowired
    private EnrolService enrolService;

    /**
     * 查询所有年级信息
     * @param model
     * @return
     */
    @RequestMapping("/enrols")
    public String enrols(Model model){
        //调用年级业务层读取年级信息
        List<EnrolEntity> entities=enrolService.findAll();
        //返回给页面
        model.addAttribute("entities",entities);
        //定义到哪个视图中
        return VIEW_CONTENT+"enrols";
    }

    /**
     * 删除年级
     * @param id 要删除的id
     * @return
     */
    @RequestMapping("/delete/{id}")
    public String deleteEnrol(@PathVariable("id") int id){
        enrolService.deleteEntity(id);//删除操作
        return "redirect:/enrol/enrols";//转发到查询所有年级信息页面
    }

    @RequestMapping("/update")
    public String updateEnrol(EnrolEntity enrolEntity){
        enrolEntity.toString();
        return "redirect:/enrol/enrols";//转发到查询所有年级信息页面
    }

}
