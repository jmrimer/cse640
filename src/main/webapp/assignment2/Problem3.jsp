<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/20/21
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_2"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_2_PROBLEM_3"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <h1>A Tale of Two Servlets</h1>
    <div><%=request.getAttribute("greeting")%></div>
  </div>
</body>
</html>
