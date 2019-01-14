<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-06
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>Authentication</title>
</head>
<body>
<%
    //将form中的 name和password 传到这里（服务器里）进行比对
    String name = request.getParameter("userName");
    String password = request.getParameter("password");
    //对比name和password是否为root
    if(name.equals("root")&& password.equals("root")) {
%>
    <%--如果密码用户名正确--%>
    <jsp:forward page="index.jsp">
    <jsp:param name="userName" value="<%=name%>"/></jsp:forward>
<%}
else{
%>
    <%--如果不正确--%>
<script>
    window.alert("用户名或密码错误！");
</script>
<%
        response.setHeader("refresh", "0;url=login.jsp");//重新跳转回login.jsp
}%>
</body>
</html>
