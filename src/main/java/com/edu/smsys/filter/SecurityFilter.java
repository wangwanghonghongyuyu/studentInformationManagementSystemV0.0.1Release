package com.edu.smsys.filter;

import lombok.extern.slf4j.Slf4j;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

@Slf4j
public class SecurityFilter extends HttpServlet implements Filter {

    private FilterConfig config;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config=filterConfig;
        log.info("权限验证过滤器初始化...");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest)servletRequest;//获得请求
        HttpServletResponse response=(HttpServletResponse)servletResponse;//获得响应
        HttpSession session=request.getSession();//获得Session
        String[]  noLoginPaths=getNoLoginPaths(request);
        for (int i=0;i<noLoginPaths.length;i++){
            if(noLoginPaths[i]==null || "".equals(noLoginPaths[i]))continue;
            if(request.getRequestURI().indexOf(noLoginPaths[i])!=-1 ){//获取请求过来的路径 不等于-1表示存在
                filterChain.doFilter(servletRequest, servletResponse);//通过
                return;
            }
        }
        if (session.getAttribute("user")!=null){
            filterChain.doFilter(servletRequest, servletResponse);//通过
        }else{
            String contextPath=request.getContextPath();//获取项目名称 例：“/smsys”
            response.sendRedirect(contextPath+"/login");
        }
    }

    /**
     * 获得web.xml中的不走权限过滤器的配置
     * @param request
     * @return
     * @throws UnsupportedEncodingException
     */
    public String[] getNoLoginPaths(HttpServletRequest request) throws UnsupportedEncodingException {
        String noLoginPaths = config.getInitParameter("noLoginPaths");//从web.xml中获取配置好不做权限验证的路径
        String charset = config.getInitParameter("charset");//编码格式获取
        if(charset==null) charset = "UTF-8";
        request.setCharacterEncoding(charset);//设置编码 utf-8 防止中文乱码
        if (noLoginPaths!=null){
            String[] strArray = noLoginPaths.split(";");//分割获得配置的多个路径或者是jsp文件
            return  strArray;
        }
        return null;
    }
}
