<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<% request.setAttribute("path",request.getContextPath()); %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'banner.jsp' starting page</title>
  </head>
     
  <body>
  <h1>快乐的时光</h1>
          <form action="${pageContext.request.contextPath}/download/insertChapter.do" method="POST" id="formAddAlbum" enctype="multipart/form-data">
              <div>章节标题:<input type="text" name="title" id="chaptitle" /><hr/></div>
              <div>章节下载路径:<input type="file" name="chapFile"/><hr/></div>
              <div>章节大小:<input type="text" name="size" id="chapsize" ><hr/></div>
              <div>章节时长:<input type="text" name="duration" id="chapduration" /><hr/></div>
              <div>章节上传时间:<input name="createTime" type="text"  style="width:150px;height:20px"/><hr/></div>
              <div>所属专辑:<input type="text" name="pid" id="chappid"  readonly/><hr/></div>
              <input type="submit" value="提交">
          </form>
  </body>
</html>