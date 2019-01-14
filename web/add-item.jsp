<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-13
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add-item</title>
    <style type="text/css">
        body{
            color: #fff;
        }
    </style>
</head>
<body>
    <form method="post" action="add-item-verify.jsp"><br>
        <label>id:</label>
        <input type="text" name="item_id" id="item_id"><br>
        <label>失物名称:</label>
        <input type="text" name="item_name" id="item_name"/><br>
        <lable>失物颜色:</lable>
        <input type="text" name="item_color" id="item_color"><br>
        <lable>拾取日期:</lable>
        <input type="text" name="item_date" id="item_date"><br>
        <lable>拾取地点:</lable>
        <input type="text" name="item_location" id="item_location"><br>
        <lable>简介:</lable>
        <input type="text" name="item_description" id="item_description"><br>
        <lable>照片文件名:</lable>
        <input type="text" name="item_photo" id="item_photo"><br><a>（先将照片放入/img/lostitem中再填写文件名）</a>

        <%--由于上传文件操作需要用到Java语句还不会 所以先放着，直接复制文件到lost item中--%>
        <%--<label>上传照片:</label>--%>
        <%--<input type="file" name="uploadFile" /><br>--%>
        <input type="submit" name="submit" id="submit" class="submit" VALUE="提交">
    </form>
</body>
</html>
