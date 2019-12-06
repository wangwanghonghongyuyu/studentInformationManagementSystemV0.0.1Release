package com.edu.smsys.controller;

import com.edu.smsys.dao.entity.UserEntity;
import com.edu.smsys.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
        String userCode=request.getParameter("user-code");//获取帐号
        String userPassword=request.getParameter("user-password");//获取密码
        UserEntity user =userService.login(userCode,userPassword);//登陆验证逻辑
        if (user!=null){
            HttpSession session =request.getSession();//获得Session
            session.setAttribute("user",user);//登录之后存到session中
            return "redirect:/index";//重定向到主页API上
        }
        model.addAttribute("msg","登录失败 账号密码错误");
        return "redirect:/login";//重定向到返回API上
    }

    /**
     * 注册的动作   ResponseBody 作用不让去找页面  随便给前端发送个 sucess 或者error
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(HttpServletRequest request,Model model){
        String userCode=request.getParameter("user-code");//获取帐号
        String userPassword=request.getParameter("user-password");//获取密码
        int status=userService.register(userCode,userPassword);//注册
        if (status!=0){
            model.addAttribute("msg","注册成功 请登录");
            return "redirect:/login";
        }
        model.addAttribute("msg","注册失败 请联系管理员");
        return "redirect:/login";
    }

    /**
     * 忽略这个API的权限验证
     * 这个API一定在自己定义的权限拦截总配置因为会拦截所有路径
     * 异步检查注册的用户名是否存在
     * @param userCode
     * @return "当前注册用户帐号已存在"  或者  null
     */
    @RequestMapping("/is-existence")
    @ResponseBody
    public String isExistence(@RequestBody String userCode){
        return userService.isExistence(userCode);
    }
}
