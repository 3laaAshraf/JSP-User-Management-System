
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <!-- Vapor Theme -->
    <link href="https://cdn.jsdelivr.net/npm/bootswatch@5.3.2/dist/vapor/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">


    <style>
        body {
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;

            /* Dark purple overlay + background image */
            background:
                    linear-gradient(rgba(20,10,40,0.85), rgba(40,10,60,0.85)),
                    url('https://images.unsplash.com/photo-1500073584060-670c36a703f1?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGRlc2t0b3AlMjB3YWxscGFwZXJ8ZW58MHx8MHx8fDA%3D') no-repeat center center;
            background-size: cover;
        }

        .register-card {
            width: 420px;
            padding: 3rem 2.5rem;
            border-radius: 25px;
            background: rgba(0, 0, 0, 0.35);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255,255,255,0.25);
            box-shadow: 0 0 50px rgba(0,0,0,0.6);
            color: white;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .register-card h2 {
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 600;
        }

        /* Minimal input style */
        .form-control {
            background: transparent;
            border: none;
            border-bottom: 1px solid rgba(255,255,255,0.7);
            border-radius: 0;
            color: white;
            padding-left: 0;
        }

        .form-control:focus {
            box-shadow: none;
            border-bottom: 1px solid white;
            background: transparent;
            color: white;
        }

        .form-control::placeholder {
            color: rgba(255,255,255,0.7);
        }

        /* Eye icon */
        .toggle-password {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: white;
            font-size: 1.1rem;
            opacity: 0.8;
            transition: 0.3s;
        }

        .toggle-password:hover {
            opacity: 1;
            transform: translateY(-50%) scale(1.2);
        }

        /* White rounded button */
        .btn-register {
            width: 100%;
            margin-top: 1.5rem;
            border-radius: 30px;
            background: white;
            color: #6f42c1;
            font-weight: 600;
            border: none;
            padding: 0.6rem;
            transition: 0.3s;
        }

        .btn-register:hover {
            background: #eee;
            transform: scale(1.05);
        }

        .bottom-text {
            margin-top: 1.5rem;
            text-align: center;
            font-size: 0.9rem;
        }

        .bottom-text a {
            color: white;
            font-weight: 600;
            text-decoration: none;
        }

        .bottom-text a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>


<div class="register-card">
    <h2>Register</h2>

    <form action="registerProcess.jsp" method="post">

        <div class="mb-4">
            <input type="text" class="form-control" placeholder="First Name" name="firstName" required>
        </div>

        <div class="mb-4">
            <input type="text" class="form-control" placeholder="Last Name" name="lastName" required>
        </div>

        <div class="mb-4">
            <input type="email" class="form-control" placeholder="Email" name="email" required>
        </div>

        <div class="mb-4 position-relative">
            <input type="password" class="form-control pe-5" placeholder="Password"
                   id="password" name="password" required>
            <i class="bi bi-eye-fill toggle-password"
               onclick="togglePassword('password', this)"></i>
        </div>

        <div class="mb-3 position-relative">
            <input type="password" class="form-control pe-5" placeholder="Confirm Password"
                   id="confirmPassword" name="confirmPassword" required>
            <i class="bi bi-eye-fill toggle-password"
               onclick="togglePassword('confirmPassword', this)"></i>
        </div>

        <button type="submit" class="btn btn-register">
            Create Account
        </button>

        <div class="bottom-text">
            Already have an account? <a href="login.jsp">Login</a>
        </div>

    </form>
</div>

<script>
    function togglePassword(fieldId, icon) {
        const input = document.getElementById(fieldId);

        if (input.type === "password") {
            input.type = "text";
            icon.classList.remove("bi-eye-fill");
            icon.classList.add("bi-eye-slash-fill");
        } else {
            input.type = "password";
            icon.classList.remove("bi-eye-slash-fill");
            icon.classList.add("bi-eye-fill");
        }
    }
</script>

</body>
</html>
