<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2/24/2026
  Time: 8:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head>
    <title>Add Customer</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css"></head>
<%
    String fullName = (String) session.getAttribute("fullName");
%>
<% if (fullName != null) { %>
<jsp:include page="customerForm.html"></jsp:include>
<%}else {
    response.sendRedirect("../login.jsp");
}%>

</body>
</html>
