<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-11
  Time: 17:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
    <style type="text/css">
        input#submit{
            margin-top: 20px;

            background-position: -1px -1px;
            background-repeat: repeat-x;
            background-size: 110% 110%;
            border: 1px solid rgba(27,31,35,.2);
            border-radius: .25em;
            cursor: pointer;
            display: inline-block;
            font-size: 14px;
            font-weight: 600;
            line-height: 20px;
            padding: 6px 12px;
            position: relative;
            user-select: none;
            vertical-align: middle;
            white-space: nowrap;
            background-color: #28a745;
            background-image: linear-gradient(-180deg,#34d058,#28a745 90%);
            color: #fff;
        }
        body{
            color: #fff;
        }
        input{
            margin: 10px auto;
        }
    </style>
</head>
<body>
    <div id="wapper" style="margin: 0 auto">
        <form method="post" action="addstudent-verify.jsp"><br>
            <label>学号:</label>
            <input type="text" name="student_id" id="student_id"><br>
            <label>学生姓名:</label>
            <input type="text" name="student_name" id="student_name"/><br>
            <lable>学生年龄:</lable>
            <input type="text" name="student_age" id="student_age"><br>
            <lable>出生年月:</lable>
            <input type="text" name="student_birthday" id="student_birthday"><br>
            <lable>学生简介:</lable>
            <input type="text" name="student_description"><br>
            <label>照片:</label>
            <input type="text" name="student_photo" /><br>
            <input type="submit" name="submit" id="submit" class="submit" VALUE="提交">
        </form>

    </div>
</body>
</html>
