<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                        <!--老师统计面板-->
                        <div class=" count teacher-count">
                            <sapn class="count-number-img iconfont icon-yonghuguanli"></sapn>
                            <sapn class="count-number-title">教师统计</sapn>
                            <span  class="count-number">
                                <c:choose>
                                    <c:when test=" ${count.teacherCount !=0}">
                                        ${count.teacherCount}人
                                    </c:when>
                                    <c:otherwise>
                                        暂无信息
                                    </c:otherwise>
                                </c:choose>
                                <%--如果为0那么现实暂无信息统计，如果大于0显示统计人数--%>
                            </span>
                        </div>
                        <!--学生统计面板-->
                        <div class="count student-count">
                            <sapn class=" count-number-img iconfont icon-icon-test2"></sapn>
                            <sapn class="count-number-title">学生统计</sapn>
                            <span class="count-number">
                                 <c:choose>
                                     <c:when test="${count.studentCount !=0}">
                                         ${count.studentCount}人
                                     </c:when>
                                     <c:otherwise>
                                         暂无信息
                                     </c:otherwise>
                                 </c:choose>
                                 <%--如果为0那么现实暂无信息统计，如果大于0显示统计人数--%>
                            </span>
                        </div>
                        <!--家长统计面板-->
                        <div class="count parent-count">
                            <sapn class="count-number-img iconfont icon-jiachang"></sapn>
                            <sapn class="count-number-title">家长统计</sapn>
                            <span class="count-number">
                                 <c:choose>
                                     <c:when test="${count.parentCount !=0}">
                                         ${count.parentCount}人
                                     </c:when>
                                     <c:otherwise>
                                         暂无信息
                                     </c:otherwise>
                                 </c:choose>
                                 <%--如果为0那么现实暂无信息统计，如果大于0显示统计人数--%>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 login-userdetail">
                        <div class="panel panel-default">
                            <div class="panel-heading"> <h2>用户登录信息</h2></div>
                            <div class="panel-body">
                                <h1>
                                    登录账号:
                                    <c:if test="${not empty user.userCode}">
                                        ${user.userCode}
                                    </c:if>
                                    <%--如果登录账号不是空的那么显示--%>
                                </h1>
                                <h1>
                                    密码:
                                    <c:if test="${not empty user.userCode}">
                                        ${user.userPassword}
                                    </c:if>
                                    <%--如果登录密码不是空的那么显示--%>
                                </h1>
                                <h1>
                                    登录时间:
                                    <fmt:formatDate value="${user.loginTime}" pattern="yyyy年MM月dd日 HH:mm:ss" />
                                </h1>
                                <h1>
                                    权限:
                                    <c:choose>
                                        <c:when test="${user.role ==1}">
                                            管理员
                                        </c:when>
                                        <c:when test="${user.role ==2}">
                                            老师
                                        </c:when>
                                        <c:when test="${user.role ==3}">
                                            学生
                                        </c:when>
                                        <c:when test="${user.role ==4}">
                                            家长
                                        </c:when>
                                        <c:when test="${user.role ==5}">
                                            教务人员
                                        </c:when>
                                        <c:otherwise>
                                            暂无权限定义
                                        </c:otherwise>
                                    </c:choose>
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
