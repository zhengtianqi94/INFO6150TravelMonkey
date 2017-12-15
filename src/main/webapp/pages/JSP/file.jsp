<%--
  Created by IntelliJ IDEA.
  User: zheng
  Date: 2017/10/14
  Time: 下午2:56
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../../static/JS/FileJS.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>TripMonkey File Test Page</title>
</head>
<body>
<h1>TripMonkey File Test Page</h1>
<a href="/tripfile/index">Back to index</a>
<div>
    <h2>List of Files</h2>
    <c:forEach items="${files}" var="file">
        ${file.fileID}: ${file.filePath}
        <%--<span><button onclick="FileUpdate(${file.fileID})">Update</button></span>--%>
        <span><button onclick="GetFileByID(${file.fileID})">Detail</button></span>
        <span><button onclick="FileDelete(${file.fileID})">Delete</button></span><br/>

        <!--The upload is not working for different upload when using the lsit.
        TODO: create a new page for upload, when click button on this page, redirect to that page
        TODO: with the selected FileID, then call the upload function, then return to this page.-->
        <div>
            <form name="form-upload-${file.fileID}" id="form-upload-${file.fileID}" action="javascript: FileUpload(${file.fileID})" method="post"
                  enctype="multipart/form-data">
                <input type="file" name="file-${file.fileID}" id="file-to-upload-${file.fileID}">
                <input type="submit" value="Upload"/>
            </form>
        </div>

        <img src="${file.filePath}" width="100"/><br/>

    </c:forEach>
</div>


</body>
</html>
