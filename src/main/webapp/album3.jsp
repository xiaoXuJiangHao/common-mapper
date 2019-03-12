<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% request.setAttribute("path",request.getContextPath()); %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'banner.jsp' starting page</title>
  </head>
     
  <body>
  <h1>快乐的时光</h1>
        <form action="${pageContext.request.contextPath}/download/queryAll.do">
            <input type="submit">
        </form>
        <c:forEach var="chapter" items="${sessionScope.chapters}">
            <h1>${chapters.id}</h1>
            <h1>${chapters.title}</h1>
            <h1>${chapters.url}</h1>
            <h1>${chapters.size}</h1>
            <hr>

        </c:forEach>
        <form action="${pageContext.request.contextPath}/download/download.do" method="GET" enctype="multipart/form-data">
            <input type="text" name="url"  id="chaptitle" />
            <input type="submit" value="请输入所需资源并点击下载">
        </form>
  </body>
</html>