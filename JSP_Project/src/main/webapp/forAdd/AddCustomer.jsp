<%@ page import="org.example.jsp_project.CustomerDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id='c' class = "org.example.jsp_project.Customer"/>
<jsp:setProperty name="c" property="*"/>
    <%
        int num = CustomerDao.save(c);
    %>

<!DOCTYPE html>
<html>
<head>
    <title>Adding Customer...</title>

    <style>


        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background: radial-gradient(circle at center, #1a002b, #000000);
            font-family: 'Segoe UI', sans-serif;
            color: #fff;
            overflow: hidden;
        }

        .vapor-loader {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 4px solid transparent;
            border-top: 4px solid #ff00cc;
            border-right: 4px solid #3333ff;
            animation: spin 1.2s linear infinite;
            box-shadow:
                    0 0 15px #ff00cc,
                    0 0 30px #3333ff,
                    0 0 60px #ff00cc;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .text {
            margin-top: 25px;
            font-size: 18px;
            letter-spacing: 2px;
            color: #ffccff;
            text-shadow:
                    0 0 10px #ff00cc,
                    0 0 20px #3333ff;
            animation: pulse 1.5s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { opacity: 0.6; }
            50% { opacity: 1; }
        }
    </style>

    <script>
        setTimeout(function(){
            window.location.href = "../ViewCustomer.jsp";
        }, 1500);
    </script>

</head>

<body>

<div class="vapor-loader"></div>
<div class="text">Adding Customer...</div>

</body>
</html>