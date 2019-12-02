<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>中小学信息管理系统</title>
</head>
<body>
    <table class="table table-striped">
        <c:if test="${not empty accounts}">
            <c:forEach items="${accounts}" var="account" varStatus="status">
                <tr>
                    <td>${account.account_name}</td>
                    <td>${account.account_password}</td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</body>
</html>
