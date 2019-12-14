package com.edu.smsys.controller;

import com.edu.smsys.dao.entity.UserEntity;
import com.edu.smsys.model.vo.IndexCountVO;
import com.edu.smsys.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 首页和一些网站操作的请求处理控制层
 */
@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{
    @Autowired
    private UserService userService;
    /**
     * 主页
     * @return
     */
    @RequestMapping
    public String index(HttpServletRequest request, Model model){
        HttpSession session =request.getSession();
        UserEntity user=(UserEntity)session.getAttribute("user");//获得session中的用户
        IndexCountVO countVO=userService.countIndexCount();
        model.addAttribute("count",countVO);//页面统计个数
        model.addAttribute("user",user);//将session中的用户信息传递到主页的上面
        return VIEW_CONTENT+"index";
    }

    @RequestMapping("/exit")
    public String exit(HttpServletRequest request){
        HttpSession session =request.getSession();
        session.removeAttribute("user");//获得session中的用户
        return "redirect:/login";
    }
}
