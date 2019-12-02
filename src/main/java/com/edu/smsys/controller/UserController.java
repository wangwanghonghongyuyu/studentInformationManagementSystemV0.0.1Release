package com.edu.smsys.controller;

import com.edu.smsys.dao.entity.UserEntity;
import com.edu.smsys.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController extends BaseController{

    @Autowired
    private UserService userService;
    /**
     * 访问登录页面
     * @return /WEB-INF/view/login
     */
    @RequestMapping(value = "/login")
    public String login(@RequestParam(value = "msg",required = false)String msg,Model model) {
        if (msg!=null){
            model.addAttribute("msg",msg);
        }
        return VIEW_CONTENT+"login";
    }

    /**
     * 登录的动作
     * @param request
     * @return
     */
    @RequestMapping("/login.do")
    public String loginAction(HttpServletRequest request,Model model){
        String userCode=request.getParameter("user-code");
        String userPassword=request.getParameter("user-password");
        UserEntity user =userService.login(userCode,userPassword);
        if (user!=null){
            HttpSession session =request.getSession();
            session.setAttribute("user",user);//登录之后存到session中
            return VIEW_CONTENT+"index";
        }
        model.addAttribute("msg","登录失败 账号密码错误");
        return "redirect:/login";
    }

    /**
     * 注册的动作   ResponseBody 作用不让去找页面  随便给前端发送个 sucess 或者error
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(HttpServletRequest request,Model model){
        String userCode=request.getParameter("user-code");
        String userPassword=request.getParameter("user-password");
        int status=userService.register(userCode,userPassword);//注册
        if (status!=0){
            model.addAttribute("msg","注册成功 请登录");
            return "redirect:/login";
        }
        model.addAttribute("msg","注册失败 请联系管理员");
        return "redirect:/login";
    }

}
