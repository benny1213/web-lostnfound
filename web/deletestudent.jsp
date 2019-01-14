<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />
<sql:update dataSource="${connection}" var="count">
    DELETE FROM lostnfound.student WHERE Id = <%=request.getParameter("student_id")%>
</sql:update>
<a href="ShowPeople.jsp" style="margin: 0 auto;"><h1>删除成功点击返回</h1></a>
</body>
</html>
