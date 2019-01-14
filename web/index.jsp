<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-06
  Time: 23:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>失物招领</title>
    <style>
        div#wrapper{
            margin: 0 auto;
            padding: 0;
            border: 0;
            width: 1210px;
            text-align: left;
        }
        div.container{
            width: 1210px;
            height:700px;
            margin: 0 auto;
        }
        .left-box{
            width: 150px;
            height: 100%;
            background-color: #bebebe;
            float: left;
        }
        .right-box{
            height: 100%;
            margin-left: 150px;
        }
        div#horizontal-bar ul#menu {
            height: 48px;
            width: 1210px;
            margin: 0 auto;
            padding: 0;
            position: relative;
            background-color: floralwhite;
        }
        li{
            margin: 12px;
            list-style-type: none;
            display: block;
            color: black;
        }
        ul#menu li{
            float: left;
        }
        a{
            text-decoration: none;
            color: black;
        }
        li:hover{
            text-decoration: underline;
        }
        body {
            background-image: url("./img/login_background.jpg");
        }
        iframe{
            background-color: #1F1F1F;
        }
    </style>
</head>
<body style="background-color: aliceblue">
<div id="wrapper">
    <div id="head">
        <img src="img/head-background.png" height="100">
    </div>
    <div id="horizontal-bar">
        <ul id="menu">
            <li id="main_page" ><a href="index.jsp">首页</a></li>
            <li id="ShowStudent"><a href="ShowPeople.jsp" target="view-frame">查看学生</a></li>
            <li id="add-student"><a href="addstudent.jsp" target="view-frame">添加学生</a> </li>
            <li id="view-lost-item"><a href="show-lostitem.jsp" target="view-frame">查看失物</a></li>
            <li id="add-lost-item"><a href="add-item.jsp" target="view-frame">添加失物</a></li>
            <li id="username" style="float: right;">
            <%
                String name = request.getParameter("userName");
                out.println("你好:"+name);
            %>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="left-box">
            <ul id="vertial_menu">
                <li id="main_page2" ><a href="index.jsp">首页</a></li>
                <li id="ShowStudent2"><a href="ShowPeople.jsp" target="view-frame">查看学生</a></li>
                <li id="add-student2"><a href="addstudent.jsp" target="view-frame">添加学生</a> </li>
                <li id="view-lost-item2"><a href="show-lostitem.jsp" target="view-frame">查看失物</a></li>
                <li id="add-lost-item2"><a href="add-item.jsp" target="view-frame">添加失物</a></li>
            </ul>
        </div>
        <div class="right-box">
            <iframe width="100%" height="100%" name="view-frame"></iframe>
        </div>
    </div>
</div>
</body>
</html>
