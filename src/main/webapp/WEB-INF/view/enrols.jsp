<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>年级列表</title>
</head>
<body>
<!--删除方法-->
<script>
    function remove(id) {
        window.location.href=_baselocation+"/enrol/delete/"+id;
    }
    function update(){
        $("#update-enrol-form").submit();
        $('#update-enrol-modal').modal('hide');
    }
</script>
<!--主容器-->
<div class="row">
    <div class="col-md-12">
        <h1>年级管理</h1>
        <table class="table table-hover table-bordered">
            <!--表头-->
            <thead>
            <th class="info text-center">编号</th>
            <th class="info text-center">届编号</th>
            <th class="info text-center">年级名称</th>
            <th class="info text-center">入学人数</th>
            <th class="info text-center">年级介绍</th>
            <th class="info text-center">操作</th>
            </thead>
            <!--表内容-->
            <tbody>
            <c:forEach var="enrol" items="${entities}" varStatus="index">
                <tr class="text-center">
                    <td>
                            ${index.count}
                    </td>
                    <td>
                            ${enrol.enrolCode}
                    </td>
                    <td>
                            ${enrol.enrolName}
                    </td>
                    <td>
                            ${enrol.enrolCount}
                    </td>
                    <td>
                            ${enrol.enrolContent}
                    </td>
                    <td>
                        <button class="btn btn btn-info" data-toggle="modal"  data-target="#update-enrol-modal">修改</button>
                        <button class="btn btn btn-danger" onclick="remove(${enrol.id})">删除</button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!--修改模态框-->
<div class="modal fade" id="update-enrol-modal" tabindex="10" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改年级信息</h4>
            </div>
            <div class="modal-body">
                <!--修改区-->
                <form action="${pageContext.request.contextPath}/register" id="update-enrol-form" class="cmxform"  method="post">
                    <div class="form-group">
                        年级名称：<input class="form-control input-lg user-code"  name="enrolCode" type="text"   placeholder="请输入年级名称" style="font-size: 16px" >
                        <sapn class="register-prompt" style="color: red;"></sapn>
                    </div>
                    <div class="form-group">
                        年级人数：<input  class="form-control input-lg"  name="enrolCount" type="text"  placeholder="请输入年级人数" style="font-size: 16px">
                    </div>
                    <div class="form-group">
                        年级介绍：<textarea class="form-control"  name="enrolContent" id="" cols="20" rows="5"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="update()">注册</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

</body>
</html>
