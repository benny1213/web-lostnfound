<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-12
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>view-lost</title>
    <style type="text/css">
        /*= effect-8 css =*/
        .lost-item-style{max-height: 289px; min-height: 289px; overflow: hidden;  perspective: 800px;}
        .lost-item-style h3{line-height: 35px;}
        .lost-item-style .member-image{position: absolute; bottom: 0; width: 100%; transition: 0.4s; z-index: 1;}
        .lost-item-style .member-image img{width: 100%; transition: 0.4s; height: 100%;}
        .lost-item-style .more-info{height: 208px; transition: 0.4s; overflow: hidden; position: relative; background-color: #fff;}
        .lost-item-style:hover .member-image{transform: rotateX(82deg); transform-origin: center bottom 0; transition: 0.4s;}
        /*= effect-8 css end =*/

        body{font-size: 16px; background-color: #1F1F1F; }
        *{margin: 0; padding: 0; box-sizing: border-box;}
        .container{margin: 0 auto; max-width: 1000px;}
        .row{width: 103%; float: left; margin: 110px -1.5%;}

        /*= common css to all effects =*/
        .single-member{width: 280px; float: left; margin: 30px 2.5%; background-color: #fff; text-align: center; position: relative;}
        .member-image img{max-width: 100%; vertical-align: middle;}
        h3 {font-size: 24px; font-weight: normal; margin: 10px 0 0; text-transform: uppercase;}
        h5 {font-size: 16px; font-weight: 300; margin: 0 0 15px; line-height: 22px;}
        p {font-size: 14px; font-weight: 300; line-height: 22px; padding: 0 30px; margin-bottom: 10px;}
        .detail a{display: inline-block; width: 27px; height: 26px; vertical-align: middle; margin: 0 2px; background-image: url(#); background-repeat: no-repeat; opacity: 0.7; transition: 0.3s;}
        .detail a:hover{opacity: 1; transition: 0.3s;}
        /*= common css to all effects end =*/
    </style>
</head>
<body>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />
<sql:query dataSource="${connection}" var="result">
    SELECT * from lostnfound.lostitem;
</sql:query>
<c:forEach var="row" items="${result.rows}">
    <div class="single-member lost-item-style">
        <div class="member-info">
            <h3>名称:<c:out value="${row.name}"/></h3>
            <h5>在<c:out value="${row.lostdate}"/>的<c:out value="${row.location}"/>捡到</h5>
        </div>
        <div class="member-image">
            <img src="img/lost-item/<c:out value="${row.photo}"/>.jpg" alt="Member">
        </div>
        <div class="more-info">
            <p>简介:<c:out value="${row.description}"/></p>
            <a href="claim-lost.jsp?itemid=<c:out value="${row.id}"/>&itemlocation=<c:out value="row.location"/>">我要认领</a>
        </div>
    </div>
</c:forEach>
</body>
</html>
