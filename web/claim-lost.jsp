<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>认领失物</title>
</head>
<body>
    <sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                       user="root" password="root" />
    <a>认领成功，请及时到<%=request.getParameter("itemlocation")%>申领</a>
    <a href="show-lostitem.jsp"><h1>返回</h1></a>
    <sql:update dataSource="${connection}" var="count">
        DELETE FROM lostnfound.lostitem WHERE Id = <%=request.getParameter("item_id")%>
    </sql:update>
</body>
</html>
