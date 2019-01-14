<%--
  Created by IntelliJ IDEA.
  User: Antil
  Date: 2019-01-10
  Time: 0:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>Show</title>
    <style type="text/css">
        /*= effect-3 css =*/
        .Card{max-height: 302px; min-height: 302px; overflow: hidden;}
        .Card h3{padding-top: 7px; line-height: 33px;}
        .Card .member-image{border-bottom: 5px solid #e5642b; transition: 0.4s; height: 212px; width: 100%; display: inline-block; float: none; vertical-align: middle;}
        .Card .member-info{transition: 0.4s;}
        .Card .member-image img{width: 100%; vertical-align: bottom;}
        .Card .detail{background-color: #e5642b; float: left; left: 0; bottom: 0; overflow: hidden; padding: 5px 0; width: 100%; transition: 0.4s;}
        .Card:hover .member-image{border-bottom: 0; border-radius: 0 0 50px 50px; height: 81px; display: inline-block; overflow: hidden; width: 109px; transition: 0.4s;}
        /*= effect-3 css end =*/

        body{ font-size: 16px; background-color: #1F1F1F; }
        *{margin: 0; padding: 0; box-sizing: border-box;}
        .container{margin: 0 auto; max-width: 1000px;}
        .row{width: 103%; float: left; margin: 110px -1.5%;}

        /*= common css to all effects =*/
        .single-member{width: 280px; float: left; margin: 30px 2.5%; background-color: #fff; text-align: center; position: relative;}
        .member-image img{max-width: 100%; vertical-align: middle;}
        h3 {font-size: 24px; font-weight: normal; margin: 10px 0 0; text-transform: uppercase;}
        h5 {font-size: 16px; font-weight: 300; margin: 0 0 15px; line-height: 22px;}
        p {font-size: 14px; font-weight: 300; line-height: 22px; padding: 0 30px; margin-bottom: 10px;}
        .detail a{display: inline-block; width: 27px; height: 26px; vertical-align: middle; margin: 0 2px; background-image: url(/img/social-icons.png); background-repeat: no-repeat; opacity: 0.7; transition: 0.3s;}
        .detail a:hover{opacity: 1; transition: 0.3s;}
        .fb-touch{background-position: 0 0;}
        .tweet-touch{background-position: -35px 0;}
        .linkedin-touch{background-position: -71px 0;}
        .icon-colored .fb-touch{background-position: 0 -27px;}
        .icon-colored .tweet-touch{background-position: -35px -27px;}
        .icon-colored .linkedin-touch{background-position: -71px -27px;}
        /*= common css to all effects end =*/

        @media only screen and (max-width: 980px){
            .row{width: 100%; margin: 110px 0;}
            .team-members{text-align: center;}
            .single-member{float: none; display: inline-block; vertical-align: bottom;}
        }
    </style>
    <meta charset="UTF-8">
</head>
<body>
<sql:setDataSource var="connection" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/LostNFound?serverTimezone=GMT%2B8&useUnicode=true&characterEncoding=UTF-8"
                   user="root" password="root" />
<sql:query dataSource="${connection}" var="result">
    SELECT * from student;
</sql:query>
<c:forEach var="row" items="${result.rows}">
    <div class="single-member Card">
        <div class="member-image">
            <img src="img/people%20img/<c:out value="${row.photo}"/>.jpg" alt="Member">
        </div>
        <div class="member-info">
            <a id="go" href="ShowOnePerson.jsp?stuID=<c:out value="${row.id}"/>"><h3>ID:<c:out value="${row.id}" /></h3></a>
            <h5>Name:<c:out value="${row.name}" /></h5>
            <p><c:out value="${row.description}" /> </p>

        </div>
        <div class="detail1">
            <a>点击id进行详细操作</a>
    </div>

    </div>
</c:forEach>
</body>
</html>
