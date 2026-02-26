<%--<%@ include file="index.jsp" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<%--<%--%>
<%--String name =(String) (session.getAttribute("myName"));--%>
<%--out.println("<h2>"+"By Session The name is : " + name+"</h2>");--%>
<%--%>--%>

<%
    String name2 = (String)  pageContext.getAttribute("myName1", PageContext.SESSION_SCOPE);
    out.println("<h2>"+"By pageContext The name is : " + name2+"</h2>");
%>

</body>
</html>
