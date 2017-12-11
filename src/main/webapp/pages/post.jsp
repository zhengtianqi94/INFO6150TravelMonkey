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
    <script src="../static/JS/PostJS.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>TripMonkey Post Test Page</title>
</head>
<body>
<h1>TripMonkey Post Test Page</h1>
<a href="/trippost/index">Back to index</a>
<div>
    <h2>List of Posts</h2>
    <c:forEach items="${posts}" var="post">
        ${post.postID}: ${post.title}
        <span><button onclick="PostUpdate(${post.postID})">Update</button></span>
        <span><button onclick="PostDelete(${post.postID})">Delete</button></span>
        <span><button onclick="PostFileAdd(${post.postID})">Add File</button></span>
        <span><button onclick="GetPostByID(${post.postID})">Detail</button></span><br/>
    </c:forEach>
</div>
</body>
</html>
