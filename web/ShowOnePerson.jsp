<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 1:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>修改<%=request.getParameter("stuID")%>的个人信息</title>
    <style type="text/css">
        div{
            margin: 20px 400px auto;
        }
        img{
            margin: 0 auto;
        }
        input{
            margin: 10px auto;
        }
        form{
            color: #fff;
        }
    </style>
</head>
<body>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />
<sql:query dataSource="${connection}" var="result">
    SELECT * FROM lostnfound.student where id = <%=request.getParameter("stuID")%>;
</sql:query>

<c:forEach var="row" items="${result.rows}">
    <div class="form">
        <form name="form" action="change-student.jsp">
            <script>
                function deletestu() {
                    document.form.action="deletestudent.jsp";
                    document.form.submit();
                }
            </script>
            <img src="img/people%20img/<c:out value="${row.photo}"/>.jpg" height="200px"><br>
            姓名:<input type="text" name="student_name" value="<c:out value="${row.name}"/>"/><br>
            学号:<input type="text" name="student_id" value="<c:out value="${row.id}"/>"/><br>
            生日:<input type="text" name="student_birthday" value="<c:out value="${row.birthday}"/>"/><br>
            年龄:<input type="text" name="student_age" value="<c:out value="${row.age}"/>"/><br>
            简介:<input type="text" name="student_description" value="<c:out value="${row.description}"/>"/><br>
            照片（文件名）:<input type="text" name="student_photo" value="<c:out value="${row.photo}"/>"/><br>
            <input type="submit" value="确认修改"/>
            <input id="delete" type="button" value="删除该学生" onclick="deletestu();"/>
        </form>
    </div>
</c:forEach>
</body>
</html>
