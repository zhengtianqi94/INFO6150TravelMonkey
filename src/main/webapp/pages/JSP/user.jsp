<%--
  Created by IntelliJ IDEA.
  User: zheng
  Date: 2017/10/11
  Time: 下午12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../../static/JS/UserJS.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>TripMonkey User Test Page</title>
</head>
<body>
<h1>TripMonkey User Test Page</h1>
<a href="/tripuser/index">Back to index</a>
<div>
    <h2>List of Users</h2>
    <c:forEach items="${users}" var="user">
        ${user.UID}: ${user.userName}
        <span><button onclick="UserUpdate(${user.UID})">Update</button></span>
        <span><button onclick="UserDelete(${user.UID})">Delete</button></span>
        <span><button onclick="UserPostAdd(${user.UID})">Add Post</button></span>
        <span><button onclick="GetUserByID(${user.UID})">Detail</button></span><br/>
    </c:forEach>
</div>

<div>
    <h2>Create User</h2>
    <form action="javascript:UserAdd()">
        <table>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="username" id="username" required></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" id="password" required></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" id="email" required></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Add User"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>