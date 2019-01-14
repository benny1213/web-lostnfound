<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-06
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <style>
        .button{
            display: inline-block;
            margin: 2px;
            padding: 2px;
            position: relative;
            text-align: center;
        }

        /*动态居中*/
        #login_form{
            position: absolute;
            top:50%;
            left: 50%;
            margin: -128px 0 0 -101px;
        }
        /*设置背景图片*/
        body {
            background-image: url("./img/login_background.jpg");
        }
    </style>
</head>
<body>
<%--建立登陆信息表，并传给verify.jsp进行对比操作--%>
<form id="loginForm" method="post" action="login-verify.jsp">
    <div id="login_form" align="center">
        <h1>登陆失物招领系统</h1>
        <div id="userName">用户名：<input height="40" width="100" type="text" name="userName"></div>
        <br>
        <div id="password">密码：<input height="40" width="100" type="password" name="password"></div>
        <br>
        <div class="button"><input type="submit" value="登陆"></div>
        <div class="button"><input type="reset" value="重置"></div>
    </div>
</form>
</body>
</html>
