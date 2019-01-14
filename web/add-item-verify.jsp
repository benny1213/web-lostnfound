<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />

<%
    String itemid = request.getParameter("item_id");
    String itemname = request.getParameter("item_name");
    String itemcolor = request.getParameter("item_color");
    String itemdate = request.getParameter("item_date");
    String itemlocation = request.getParameter("item_location");
    String itemdescriptin = request.getParameter("item_description");
    String itemphoto = request.getParameter("item_photo");
%>
<sql:update dataSource="${connection}" var="result">
    INSERT INTO lostitem(id, name, color, lostdate, location, description, photo) VALUES ('<%=itemid%>', '<%=itemname%>', '<%=itemcolor%>', '<%=itemdate%>', '<%=itemlocation%>', '<%=itemdescriptin%>', '<%=itemphoto%>');
</sql:update>
<script>
    window.alert("添加成功！");
</script>
</body>
</html>
