<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-12
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>AddStudent-verify</title>
</head>
<body>
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

    <sql:query dataSource="${connection}" var="request">
        SELECT * from student;
    </sql:query>

    <c:forEach var="row" items="${request.rows}">
        <%
            if(stuID != request.getParameter("student_id")){//这里有问题！
                ifin = 1;
            }
        %>
    </c:forEach>
    <%
        if(ifin != 1){%>
            <sql:update dataSource="${connection}" var="result">
                INSERT INTO student(id, name, age, birthday, description) VALUES ('<%=stuID%>', '<%=stuName%>', '<%=stuAge%>', '<%=stuBirthday%>', '<%=stuDescription%>');
            </sql:update>
            <script>
                window.alert("添加成功！");
            </script>
    <%}
        else {%>
            <script>
                window.alert("该学号的学生已存在！");
            </script>
    <%}
        response.setHeader("refresh", "0;url=ShowPeople.jsp");//重新跳转回login.jsp
    %>
</body>
</html>