<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zh-CN">
   <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/core/modularization/bootstrap-3/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/core/modularization/bootstrap-select/dist/css/bootstrap-select.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/core/modularization/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/img/icon/iconfont.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/core/css/style.css">
        <script type="text/javascript">
           _baselocation='${pageContext.request.contextPath}';
        </script>
        <title>
        <sitemesh:write property='title'/>
        </title>
        <sitemesh:write property='head'/>
   </head>
   <body class="over-flow-hidden">
            <!--头部-->
            <div class="myui-header">
            <%--glyphicon glyphicon-comment--%>
                 <!--实时时间-->
                <div id="date" class="inline-block"> </div>
                <div class="pull-right inline-block">
                    <!--用户通知-->
                            <div class="user-notice dropdown ">
                                <a href="${pageContext.request.contextPath}/index/exit" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="glyphicon glyphicon-list-alt"></span>
                                </a>
                                <div class="dropdown-menu">

                                </div>
                            </div>

                            <!--退出-->
                            <div class="user-exit pull-right">
                                <a href="${pageContext.request.contextPath}/index/exit">
                                    <span class="glyphicon glyphicon-log-out"></span>
                                    <span >|</span>
                                    <span >退出</span>
                                </a>
                            </div>
                  </div>
            </div>
            <!--菜单-->
            <div class="myui-menu">
                <div class="menu-header ">
                   <h1><span>学生信息管理</span></h1>
                </div>
                <div class="user-info">
                    <div class="user-img" <c:if test="${not empty user}"> style="background: url('${pageContext.request.contextPath}${user.portraitURL}')  no-repeat;background-size: 100% auto" </c:if> >
                         <%--<c:if test="${not empty user}"> style="background: url('${pageContext.request.contextPath}${user.portraitURL}')  no-repeat;background-size: 100% auto"
                                判断 如果user对象不是空那么执行里面的代码：style="background: url('${pageContext.request.contextPath}${user.portraitURL}')  no-repeat;background-size: 100% auto"
                                上面的意思相当于 style="background: url('/studentInfoSys/static/load/img/portrait/default.jpg')  no-repeat;background-size: 100% auto"
                                给div设置背景图片 这个背景图就是头像 不平埔 然后设置图片大小 宽度 ：100% 高度：自适应
                         --%>
                    </div>
                    <div class="user-message">
                          <c:if test="${not empty user}">
                              <span class="glyphicon glyphicon-user"></span>
                              <span>帐号：${ user.userCode}</span>
                          </c:if>
                    </div>
                </div>
                <!--菜单下拉-->
                <div id="menu">
                    <h3><span class="iconfont icon-zhuye"></span> 主页</h3>
                    <div class="index">
                         <a href="">主页</a>
                    </div>

                    <h3><span class="iconfont icon-xueshengguanli"></span> 学生管理</h3>
                    <div class="studen-manager">
                        <ul class="list-group">
                            <li class="list-group-item">
                                <a href="">学生信息</a>
                            </li>
                            <li class="list-group-item">
                                <a href="">学生成绩信息</a>
                            </li>
                            <li class="list-group-item">
                                <a href="">学生在校情况信息</a>
                            </li>
                            <li class="list-group-item">
                                <a href="">学生职业规划</a>
                            </li>
                        </ul>
                    </div>

                    <h3><span class="iconfont icon-laoshiguanli"/> 老师管理</h3>
                    <div>
                        <p>Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui. </p>
                    <ul>
                        <li>List item one</li>
                        <li>List item two</li>
                        <li>List item three</li>
                    </ul>
                    </div>
                    <h3><span class="iconfont icon-chengjiguanli"></span> 成绩管理</h3>
                    <div>
                        <p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. </p><p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                    </div>
                    <h3><span class="iconfont icon-xuejiyidong"> </span>学籍管理</h3>
                    <div>
                        <p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. </p><p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                    </div>
                    <h3><span class="iconfont icon-banjiguanli"> </span>班级管理</h3>
                        <div>
                        <p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. </p><p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                        </div>
                    <h3><span class="iconfont icon-yonghuguanli"> </span>用户管理</h3>
                    <div>
                    <p>Cras dictum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia mauris vel est. </p><p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                    </div>
                    <h3><span class="iconfont icon-xitongshezhi "> </span> 系统设置</h3>
                    <div>
                        <p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In suscipit faucibus urna. </p>
                    </div>
                </div>
            </div>
            <!--内容区-->
            <div class="container-fluid myui-main-content">
            <!--顶位置用的-->
            <div class="row height-5"> </div>
            <div class="row height-95 over-flow-auto">
                <!--顶位置用的-->
                <div class="col-md-3 width-18 orange height-1"> </div>
                <!--主功能-->
                <div class="col-md-8  myui-main-frame">
                      <sitemesh:write property='body'/>
                </div>
            </div>

            </div>

        <script src="${pageContext.request.contextPath}/static/core/modularization/jquery/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/static/core/modularization/jquery-ui/jquery-ui.js"></script>
        <script src="${pageContext.request.contextPath}/static/core/modularization/bootstrap-3/js/bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/static/core/modularization/bootstrap-select/dist/js/bootstrap-select.js"></script>
        <script src="${pageContext.request.contextPath}/static/core/modularization/bootstrap-select/dist/js/i18n/defaults-zh_CN.js"></script>
        <script src="${pageContext.request.contextPath}/static/core/js/javascript.js"></script>
    </body>
 </html>