<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <!-- Bootswatch Vapor Theme -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Animate.css for extra animations -->
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

            /* Darker overlay */
            background:
                    linear-gradient(rgba(20,10,40,0.85), rgba(40,10,60,0.85)),
                    url('https://plus.unsplash.com/premium_photo-1661963212517-830bbb7d76fc?q=80&w=1086&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center;
            background-size: cover;
        }

        /* Darker glass card */
        .login-card {
            width: 380px;
            padding: 3rem 2.5rem;
            border-radius: 25px;
            background: rgba(0, 0, 0, 0.35); /* darker */
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

        .login-card h2 {
            text-align: center;
            margin-bottom: 2rem;
            font-weight: 600;
        }

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

        .form-check-label {
            font-size: 0.9rem;
        }

        .btn-login {
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

        .btn-login:hover {
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
        .toggle-eye {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: white;              /* Make it visible */
            font-size: 1.2rem;
            opacity: 0.8;
            transition: 0.3s;
        }

        .toggle-eye:hover {
            opacity: 1;
            transform: translateY(-50%) scale(1.2);
        }
    </style>
</head>
<body>

<div class="login-card">
    <h2>Login</h2>

    <form action="loginProcess.jsp" method="post">

        <div class="mb-4">
            <input type="email" class="form-control" placeholder="Email" name="email" required>
        </div>

        <div class="mb-3 position-relative">
            <input type="password"
                   class="form-control pe-5"
                   placeholder="Password"
                   id="password"
                   name="password"
                   required>

            <i class="bi bi-eye-fill toggle-eye"
               onclick="togglePassword()"></i>
        </div>

        <div class="d-flex justify-content-between align-items-center">
            <div class="form-check">
                <input class="form-check-input" type="checkbox">
                <label class="form-check-label">Remember Me</label>
            </div>

            <a href="#" class="text-white small">Forgot Password</a>
        </div>

        <button type="submit" class="btn btn-login">
            Log in
        </button>

        <div class="bottom-text">
            Don't have a account? <a href="register.jsp">Register</a>
        </div>

    </form>
</div>



<script>
    function togglePassword() {
        const input = document.getElementById("password");
        const icon = document.querySelector(".toggle-eye");

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