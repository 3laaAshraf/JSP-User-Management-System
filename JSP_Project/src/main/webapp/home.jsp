
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@700&family=Roboto:wght@400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        /* Change navbar brand font */
        .navbar-brand {
            font-family: 'Orbitron', sans-serif; /* Change this to any font */
            font-size: 1.8rem; /* Adjust size */
            color: #76e5fc !important; /* Optional: Neon color for Vapor theme */
        }

        /* Optional: Add hover effect */
        .navbar-brand:hover {
            color: #5bc0de !important;
            text-shadow: 0 0 8px #76e5fc;
            transition: 0.3s;
        }
        /* Apply Bebas Neue font to active nav link */
        .nav-link {
            font-family: 'Bebas Neue', sans-serif;
            font-size: 1.0rem;       /* Adjust size */
            letter-spacing: 1px;     /* Optional spacing for style */
            color: #76e5fc !important;  /* Neon style color for Vapor theme */
            transition: all 0.3s ease;
        }

        /* Hover effect */
        .nav-link:hover {
            color: #ffffff !important;
            text-shadow: 0 0 8px #76e5fc;
        }

        /* HD wallpaper background */
        body {
            min-height: 100vh;
            background: url('https://i.pinimg.com/1200x/ec/b9/2d/ecb92d18c7855c986a5571c1b6f7cad2.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            position: relative;
        }

        /* Optional: Dark overlay for readability */
        body::before {
            content: "";
            position: absolute;
            top:0;
            left:0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.5); /* Adjust darkness */
            z-index: 0;
        }

        /* Scrollable container */
        .dashboard-container {
            position: relative;
            z-index: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 3rem 1rem;
            gap: 2rem; /* spacing between buttons */
            min-height: 100vh;
        }

        /* Neon buttons */
        .btn-neon {
            flex-direction: row; /* stack icon + text vertically */
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 1rem 2rem;
            font-size: 1.2rem;
            font-weight: bold;
            color: #fff;
            background: linear-gradient(45deg, #5bc0de, #76e5fc);
            border: none;
            border-radius: 12px;
            box-shadow: 0 0 20px #76e5fc, 0 0 40px #76e5fc;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .btn-neon:hover {
            transform: scale(1.05);
            box-shadow: 0 0 30px #76e5fc, 0 0 50px #76e5fc, 0 0 70px #76e5fc;
        }

        .btn-neon i {
            font-size: 1.5rem;
        }

        /* Cards for buttons */
        .button-card {
            background: rgba(0,0,0,0.4); /* semi-transparent to show background */
            border: 1px solid #5bc0de;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 0 30px rgba(91,192,222,0.7);
            backdrop-filter: blur(5px);
            text-align: center;

            width: 300px;      /* fixed width */
            height: 200px;      /* fixed height */
            display: flex;
            justify-content: center;
            align-items: center;

        }
        .welcome-text {
            font-family: 'Segoe UI', 'Helvetica Neue', sans-serif;
            font-size: 16px;             /* Slightly larger for prominence */
            font-weight: 900;            /* Semi-bold */
            letter-spacing: 1px;         /* Small spacing for elegance */
            color: #2e09cf;              /* Soft neon pink/purple */
            text-shadow:
                    0 0 5px #190a4c,
                    0 0 10px #3333ff,
                    0 0 15px #020358;       /* Vapor neon glow effect */
            transition: color 0.3s ease, text-shadow 0.3s ease;
            animation: glowPulse 2s infinite alternate;
        }
        @keyframes glowPulse {
            from {
                text-shadow:
                        0 0 5px #190a4c,
                        0 0 10px #030336,
                        0 0 15px #020358;
            }
            to {
                text-shadow:
                        0 0 10px #3333ff,
                        0 0 20px #ff0000,
                        0 0 30px #3945f5;
            }}
        .welcome-text strong {
            font-weight: 1000;
            color: #190b3f;                 /* Slightly brighter for the name */
            text-shadow:
                    0 0 10px #ff00cc,
                    0 0 20px #3333ff,
                    0 0 30px #ff00cc;
        }

        /* Optional: subtle hover effect */
        .welcome-text:hover {
            color: #ff99ff;
            text-shadow:
                    0 0 10px #ff66cc,
                    0 0 25px #6666ff,
                    0 0 35px #ff33cc;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">User Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarColor01" aria-controls="navbarColor01"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <%
            String fullName = (String) session.getAttribute("fullName");
        %>
        <% if (fullName != null) { %>
        <div class="collapse navbar-collapse" id="navbarColor01">
            <ul class="navbar-nav me-auto">

                <li class="nav-item">
                    <a class="nav-link" href="#">Features</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Pricing</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
                       href="#" role="button">Dropdown</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <a class="dropdown-item" href="#">Something else here</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Separated link</a>
                    </div>
                </li>

            </ul>
        <%}%>


            <div class="d-flex align-items-center">


                <% if (fullName != null) { %>
                <!-- Show First Name -->
                <span class="welcome-text me-3">Welcome, <%= fullName %> !</span>
                <a href="logout.jsp" class="btn btn-light">Logout</a>
                <% } else { %>

                <!-- Show Login & Register -->
                <a href="login.jsp" class="btn btn-light me-2">Login</a>
                <a href="register.jsp" class="btn btn-secondary">Register</a>

                <% } %>

            </div>

        </div>
    </div>
</nav>
<!-- Scrollable Vertical Buttons -->
<% if (fullName != null) { %>
<div class="dashboard-container">

    <div class="button-card">
        <a href="forAdd/AddCustomerForm.jsp" class="btn btn-neon">
            <i class="bi bi-person-plus-fill"></i>
            add    <br>
            Customers
        </a>
    </div>

    <div class="button-card">
        <a href="ViewCustomer.jsp" class="btn btn-neon">
            <i class="bi bi-eye-fill"></i>
            View Customers
        </a>
    </div>

    <div class="button-card">
        <a href="UpdateCustomer2.jsp" class="btn btn-neon">
            <i class="bi bi-pencil-square"></i>
            Update Customer
        </a>
    </div>

    <div class="button-card">
        <a href="DeleteCustomer2.jsp" class="btn btn-neon">
            <i class="bi bi-trash-fill"></i>
            Delete Customer
        </a>
    </div>

</div>


<% }else{%>
<div class="d-flex flex-column justify-content-center align-items-center" style="min-height: 100vh; gap: 20px;">
    <!-- Alert -->
    <div class="alert alert-dismissible alert-warning text-center" style="max-width: 700px;">
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
        <h4 class="alert-heading">Warning!</h4>
        <p class="mb-0">
            If you have an account, log in. Otherwise, sign up and then log in to continue.
            <a href="login.jsp" class="alert-link">Login</a>.
            <a href="register.jsp" class="alert-link">Sign up</a>.
        </p>
    </div>

    <!-- Card -->
    <div class="card text-white bg-dark mb-xxl-5" style="max-width: 30rem;">
        <div class="card-header">Welcome</div>
        <div class="card-body">
            <h4 class="card-title">Your Dashboard</h4>
            <p class="card-text">
                Manage your account, view your progress, and explore all the features available to you.
                Stay updated and take control of your experience with ease.
            </p>
        </div>
    </div>
</div>

<%}%>
<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
