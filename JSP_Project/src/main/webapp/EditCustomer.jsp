<%@ page import="org.example.jsp_project.CustomerDao" %>
<%@ page import="org.example.jsp_project.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    Customer c = CustomerDao.getCustomer(Integer.parseInt(id));
%>

<html>
<head>
    <title>Update Customer</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
        }

        .card-custom {
            max-width: 700px;
            margin: 60px auto;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.08);
            background: #190a4c;
        }

        .form-title {
            font-weight: 600;
            margin-bottom: 25px;
            color: #ffffff;
        }

        .form-control {
            border-radius: 6px;
            height: 45px;
        }

        .btn-update {
            background: #facc15;
            color: #111;
            font-weight: 600;
            border: none;
            padding: 10px 25px;
            border-radius: 6px;
        }

        .btn-update:hover {
            background: #eab308;
        }

        .btn-cancel {
            background: #6c757d;
            color: white;
            padding: 10px 25px;
            border-radius: 6px;
            text-decoration: none;
        }

        .btn-cancel:hover {
            background: #5a6268;
        }
    </style>
</head>

<body>

<div class="card-custom">
    <h3 class="form-title">Update Customer Information</h3>

    <form action="UpdateCustomer.jsp" method="post">

        <!-- Hidden ID -->
        <input type="hidden" name="id" value="<%= c.getId() %>">

        <div class="mb-3">
            <label class="form-label">Full Name</label>
            <input type="text" name="fullName" class="form-control"
                   value="<%= c.getFullName() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email Address</label>
            <input type="email" name="email" class="form-control"
                   value="<%= c.getEmail() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Phone Number</label>
            <input type="text" name="phone" class="form-control"
                   value="<%= c.getPhone() %>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Country</label>
            <input type="text" name="country" class="form-control"
                   value="<%= c.getCountry() %>" required>
        </div>

        <div class="mb-4">
            <label class="form-label">Gender</label>
            <select name="gender" class="form-control" required>
                <option value="Male" <%= c.getGender().equals("Male") ? "selected" : "" %>>Male</option>
                <option value="Female" <%= c.getGender().equals("Female") ? "selected" : "" %>>Female</option>
            </select>
        </div>

        <div class="d-flex justify-content-between">
            <a href="ViewCustomer.jsp" class="btn-cancel">Cancel</a>

            <button type="submit" class="btn-update">
                Update Customer
            </button>

        </div>

    </form>
</div>

</body>
</html>