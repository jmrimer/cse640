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
<%@taglib uri="/TagLibrary" prefix="tag"%>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_3"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_3_PROBLEM_1"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <div class="card">
      <div class="card-body">
        <h1 class="card-title">Tag with Current Date</h1>
        <h2 class="card-subtitle">
          A bodyless tag fetches a bold, red, Helvetica date:
        </h2>
        <div class="card-text date-time">
          <tag:currentDateTime/>
        </div>
      </div>
    </div>
    <div></div>
    <div class="card">
      <div class="card-body">
        <h1 class="card-title">Tag with Body</h1>
        <h2 class="card-subtitle">
          A bodied tag vertically displays text:
        </h2>
        <div class="card-text vertical-text">
          <tag:tagWithBody>vertigo</tag:tagWithBody>
        </div>
        <span></span>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<style type="text/css">
  .card {
      margin-right:16px;
      margin-top: 16px;
  }
  i {
      color: darkslateblue;
  }
  .date-time {
      text-align: center;
  }
  .vertical-text {
      display: flex;
      flex-direction: column;
      align-items: center;
  }
</style>
