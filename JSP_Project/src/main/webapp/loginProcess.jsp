<%@ page import="org.example.jsp_project.UserDao" %>
<%@ page import="org.example.jsp_project.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="U" class="org.example.jsp_project.User" />
<jsp:setProperty name="U" property="*" />

<%
    User num = UserDao.checkUser(U.getEmail(), U.getPassword());

%>

<!DOCTYPE html>
<html>
<head>
    <title>Processing...</title>

    <% if (num!=null) { %>
   <% session.setAttribute("fullName", num.getFirstName()+" "+num.getLastName());%>

    <!-- Redirect Script -->
    <script>
        setTimeout(function(){
            window.location.href = "home.jsp";
        }, 1800);
    </script>

    <% } %>

    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: radial-gradient(circle at center, #14001f, #000000);
            font-family: 'Segoe UI', sans-serif;
            color: white;
        }

        .card {
            padding: 50px 60px;
            border-radius: 20px;
            backdrop-filter: blur(15px);
            background: rgba(255, 255, 255, 0.05);
            text-align: center;
        }

        .vapor-loader {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 4px solid transparent;
            border-top: 4px solid #ff00cc;
            border-right: 4px solid #3333ff;
            animation: spin 1.2s linear infinite;
            margin: 0 auto;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .text {
            margin-top: 25px;
            font-size: 18px;
            letter-spacing: 2px;
        }

        .error {
            color: #ff4d4d;
            font-size: 18px;
        }
    </style>
</head>

<body>

<div class="card">

    <% if (num!=null) { %>

    <div class="vapor-loader"></div>
    <div class="text">Signing In...</div>

    <% } else { %>

    <div class="error">
        Incorrect Email or Password.
    </div>

    <% } %>

</div>

</body>
</html>