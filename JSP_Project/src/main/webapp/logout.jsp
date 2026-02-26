<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.invalidate();   // Destroy session first
%>

<!DOCTYPE html>
<html>
<head>
    <title>Logging Out...</title>

    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: radial-gradient(circle at center, #14001f, #000000);
            font-family: 'Segoe UI', sans-serif;
            overflow: hidden;
        }

        .card {
            text-align: center;
            padding: 60px 70px;
            border-radius: 25px;
            backdrop-filter: blur(15px);
            background: rgba(255,255,255,0.05);
            box-shadow: 0 0 40px rgba(255, 0, 200, 0.4);
            animation: fadeIn 0.8s ease forwards;
        }

        .circle {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            border: 5px solid transparent;
            border-top: 5px solid #ff00cc;
            border-right: 5px solid #3333ff;
            animation: spin 1.2s linear infinite;
            margin: 0 auto;
            box-shadow:
                    0 0 20px #ff00cc,
                    0 0 40px #3333ff,
                    0 0 80px #ff00cc;
        }

        .text {
            margin-top: 30px;
            font-size: 20px;
            letter-spacing: 3px;
            color: #ffccff;
            text-transform: uppercase;
            text-shadow:
                    0 0 10px #ff00cc,
                    0 0 20px #3333ff;
            animation: pulse 1.5s infinite;
        }

        @keyframes spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        @keyframes pulse {
            0%,100% { opacity: 0.6; }
            50% { opacity: 1; }
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.9); }
            to { opacity: 1; transform: scale(1); }
        }
    </style>

    <script>
        setTimeout(function(){
            window.location.href = "home.jsp";
        }, 1800);
    </script>

</head>

<body>

<div class="card">
    <div class="circle"></div>
    <div class="text">Logging Out...</div>
</div>

</body>
</html>