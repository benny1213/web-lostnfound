<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>changing</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />

<%
    String stuID = request.getParameter("student_id");
    String stuName = request.getParameter("student_name");
    String stuAge = request.getParameter("student_age");
    String stuBirthday = request.getParameter("student_birthday");
    String stuDescription = request.getParameter("student_description");

    int ifin = 0;
%>

<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET id='<%=request.getParameter("student_id")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET name='<%=request.getParameter("student_name")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET birthday='<%=request.getParameter("student_birthday")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET description='<%=request.getParameter("student_description")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET age='<%=request.getParameter("student_age")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<sql:update dataSource="${connection}" var="result">
    UPDATE lostnfound.student SET photo='<%=request.getParameter("student_photo")%>' WHERE id=<%=request.getParameter("student_id")%>;
</sql:update>
<a href="ShowOnePerson.jsp?stuID=<%=request.getParameter("student_id")%>"><h1>修改成功 点击查看学生信息</h1></a>
</body>
</html>
