<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>中小学信息管理系统</title>

    </head>
    <body style="z-index: 0;">
        <div class="dashboard">
            <div class="container-fluid height-1">
                <div class="row">
                    <div class="col-md-12 padding-left-150 dashboard-title">
                        <h1> <span class="iconfont icon--xinxiguanli"></span>欢迎使用中小学生信息管理系统</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class=" count teacher-count">
                            <sapn class="iconfont icon-yonghuguanli"></sapn>
                            <sapn>教师统计</sapn>
                        </div>
                        <div class="count student-count">
                            <sapn class="iconfont icon-icon-test2"></sapn>
                            <sapn>学生统计</sapn>

                        </div>
                        <div class="count parent-count">
                            <sapn class="iconfont icon-jiachang"></sapn>
                            <sapn>家长统计</sapn>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 login-userdetail">
                        <div class="panel panel-default">
                            <div class="panel-heading"> <h2>用户登录信息</h2></div>
                            <div class="panel-body">
                                <h1>登录名:</h1>
                                <h1>密码:</h1>
                                <h1>登录时间:</h1>
                                <h1>权限:</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
