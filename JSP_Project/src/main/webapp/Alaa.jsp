<%@ page import="java.io.PrintWriter" %>
<%@ page import="jakarta.servlet.jsp.JspWriter" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<h1>
    <%= "JSP - Hello World!" %>
    <%= 1+2 %>
    <%="<br>"%>
    <% out.print(1+5); %>
    <% out.print("<br>"); %>
    <% out.print("ALAA"); %>

    <%@ taglib prefix="c" uri="jakarta.tags.core" %>

    <c:out value="JSTL Works!" />
    <%
        //String x=("https://www.google.com/search?q=" + request.getParameter("ffname"));
        String x=request.getParameter("ffname") + " " + request.getParameter("llname");
//       out.println("My name is : "+x);
//
//        session.setAttribute( "myName", request.getParameter("ffname") + " " + request.getParameter("llname"));
//

    %>
    <%


        pageContext.setAttribute("myName1",x , PageContext.SESSION_SCOPE);

    %>

    <%="\n <h2>Hello " +request.getParameter("ffname")+" "+request.getParameter("llname")+ "</h2>"%>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<a href="Alaa2.jsp">Alaa2 JSP</a>
</body>
</html>