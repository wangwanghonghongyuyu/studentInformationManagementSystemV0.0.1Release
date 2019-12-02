<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>用户登录</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/core/modularization/bootstrap-3/css/bootstrap.css">
  <script src="${pageContext.request.contextPath}/static/core/modularization/jquery/jquery.js"></script>
  <script src="${pageContext.request.contextPath}/static/core/modularization/bootstrap-3/js/bootstrap.js"></script>
  <script type="text/javascript">
    var msg="${msg}";
    if (msg!=""){
      alert(msg);
    }
    //提交注册
    function register(){
      $("#registerform").submit();
      $('#register-modal').modal('hide');
    }
  </script>
  <style>
    *{
      margin: 0;padding: 0;
    }
    body{
      font-size:62.5%;font: 500 1.5em/1.8 PingFang SC, Lantinghei SC, Microsoft Yahei, Hiragino Sans GB, Microsoft Sans Serif, WenQuanYi Micro Hei, sans;
    }
    .login-wrap {
      background: url(${pageContext.request.contextPath}/static/img/bg/login-bg.jpg);
      overflow: hidden;
      width: 100%;
      height: 100%;
      position: absolute;
      background-size: cover;
      background-position: center center;
      min-width: 1280px;
      background-repeat: no-repeat;
    }
    .login-logo{
      width: 450px;
      height: 60px;
      position: absolute;
      top: -102px;
      left: 50%;
      margin-left: -108px;
    }
    .login-body{
      width: 383px;
      height: 383px;
      position: absolute;
      top: 0;
      right: 0;
      border-radius: 3px;
    }
    .form-group{
      margin-bottom: 12px;
    }
    #signupForm{
      margin: 0 auto;
      width: 80%;
    }
    #signupForm .input-lg{

    }
    .input-lg{
      height: 46px;
      padding: 10px 16px;
      font-size: 18px;
      line-height: 1.3333333;
      border-radius: 6px;
    }
    .login-body h1{
      color: #999;
      text-align: center;
      font-size: 16px;
      font-weight: normal;
      margin-top: 52px;
      margin-bottom: 22px;
      letter-spacing: 0.25em;
    }
    .btn.form-btn.login-btn {
      background-color: #507bea;
      color: #fff;
    }
    .btn.form-btn {
      width: 100%;
      border-radius: 2px;
      margin-bottom: 1em;
      display: block;
      padding-top: 0.8em;
      padding-bottom: 0.8em;
      border: 2px solid #507bea;
      color: #4064c2;
      background-color: #fff;
    }
  </style>
</head>
<body class = "login">
<div class="login-wrap">
  <div class="login-container" style="position: relative;width: 700px;height: 485px;left: 50%;top: 50%;margin-left: -350px;margin-top: -182px;opacity: 1;transform: matrix(1, 0, 0, 1, 0, 0);">
    <div class = "login-logo">
      <p style="color: white; font-size: 50px;">中小学信息管理系统</p>
    </div>
    <div class="swiper-container swiper-container-horizontal">
    </div>
    <div class="login-body">
      <form action=${pageContext.request.contextPath}/login.do class="cmxform" id="signupForm" method="post">
        <h1>欢迎使用中小学信息管理系统</h1>
        <div class="form-group">
          <input id="mobile" class="form-control input-lg"  name="user-code" type="text"  placeholder="请输入用户名"style="font-size: 16px" value="201912010001">
        </div>
        <div class="form-group">
          <input id="password" class="form-control input-lg"  name="user-password" type="password"  placeholder="请输入密码" style="font-size: 16px"value="123456">
        </div>
        <div class="form-group">
          <a style="float:right;color:#4064c2;cursor:pointer;font-size:14px;display:inline-block;" id="forgetPassword" onclick='alert("请联系管理员或者老师修改密码")'>忘记密码？</a>
        </div>
        <div class="form-group" style="margin-top:24px;">
          <button class="btn form-btn login-btn" type="submit">登 录</button>
          <a id="login-join-a" class="btn form-btn" data-toggle="modal" data-target="#register-modal">加入</a>
        </div>
        <font color="#FF0000">${requestScope.message}</font>
      </form>
    </div>
  </div>
  <!--注册模态框-->
  <div class="modal fade" id="register-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">注册信息</h4>
        </div>
        <div class="modal-body">
            <!--注册区-->
          <form action="${pageContext.request.contextPath}/register" id="registerform" class="cmxform"  method="post">
              <div class="form-group">
                账号：<input class="form-control input-lg"  name="user-code" type="text"  placeholder="请输入用户名"style="font-size: 16px" value="201912010001">
              </div>
              <div class="form-group">
                密码：<input  class="form-control input-lg"  name="user-password" type="password"  placeholder="请输入密码" style="font-size: 16px"value="123456">
              </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          <button type="button" class="btn btn-primary" onclick="register()">注册</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <div style="color: white;font-size: 13px;font-weight: 100;position:fixed; bottom:10px; left:550px; font-size:14px; text-align:center;">Copyright 2019©</div>
</div>

</body>

</html>
