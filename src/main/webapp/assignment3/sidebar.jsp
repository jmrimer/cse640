<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/6/21
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
  String currentSubPage = request.getParameter("currentSubPage");
%>
<%!
  String isActive(String page, String currentSubPage) {
    return page.equals(currentSubPage)
      ? "list-group-item list-group-item-action active"
      : "list-group-item list-group-item-action";
  }
%>
<head>
  <title></title>
    <div id="sidebar-container" class="sidebar-expanded d-none d-md-block col-2">
      <ul class="list-group list-group-tabs sticky-top sticky-offset">
        <a
          class="<%=isActive("ASSIGNMENT_3_PROBLEM_1", currentSubPage)%>"
          href="/assignment3/Problem1.jsp"
        >
          Problem 1
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_3_PROBLEM_2", currentSubPage)%>"
          href="/assignment3/Problem2.jsp"
        >
          Problem 2
        </a>
      </ul>
    </div>
</head>
</html>
<style type="text/css">
    .sticky-offset {
        top: 56px;
    }
    #sidebar-container {
        min-height: 100vh;
    }
</style>