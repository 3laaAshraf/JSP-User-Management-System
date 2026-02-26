<%@ page import="java.util.List" %>
<%@ page import="org.example.jsp_project.CustomerDao" %>
<%@ page import="org.example.jsp_project.Customer" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Customers</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <style>
        body {
            min-height: 100vh;

            font-family: 'Segoe UI', sans-serif;
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
        }

        .vapor-card {
            width: 100%;
            max-width: 1000px;
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(15px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 0 40px rgba(0, 255, 255, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.2);
            animation: fadeIn 0.8s ease;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 600;
            letter-spacing: 2px;
            background: linear-gradient(90deg, #00f5ff, #ff00c8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        /* Top Vapor Bar */
        .top-bar {
            position: fixed;
            top: 0;
            width: 100%;
            padding: 15px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            backdrop-filter: blur(10px);
            background: rgba(255, 255, 255, 0.05);
            border-bottom: 1px solid rgba(255,255,255,0.1);
            box-shadow: 0 0 20px rgba(255, 0, 255, 0.2);
        }
        .btn-neon {
            padding: 10px 20px;
            border: none;
            border-radius: 25px;
            background: linear-gradient(45deg, #ff00cc, #3333ff);
            color: white;
            cursor: pointer;
            font-weight: bold;
            letter-spacing: 1px;
            transition: 0.3s ease;
            box-shadow: 0 0 10px #ff00cc;
        }

        .btn-neon:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px #ff00cc, 0 0 40px #3333ff;
        }
        .logo {
            font-size: 20px;
            font-weight: bold;
            letter-spacing: 2px;
            color: #ff00cc;
            text-shadow: 0 0 10px #ff00cc;
        }
        table {
            color: white;
        }

        .table thead {
            background: rgba(0, 255, 255, 0.15);
        }

        .table tbody tr {
            transition: 0.3s ease;
        }

        .table tbody tr:hover {
            background: rgba(255, 0, 200, 0.15);
            transform: scale(1.01);
        }

        .btn-vapor {
            background: linear-gradient(90deg, #00f5ff, #ff00c8);
            border: none;
            color: white;
            border-radius: 30px;
            padding: 8px 20px;
            transition: 0.3s ease;
        }

        .btn-vapor:hover {
            opacity: 0.8;
            box-shadow: 0 0 15px #ff00c8;
        }
        .vapor-table {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            overflow: hidden;
            border-collapse: separate;
            border-spacing: 0;
        }

        .vapor-table thead {
            background: rgba(255, 255, 255, 0.08);
            backdrop-filter: blur(20px);
        }

        .vapor-table thead tr {
            background: linear-gradient(90deg, #8757ef, #d0a9f4) !important;
        }

        .vapor-table thead th {
            background: transparent !important;
            color: #111 !important;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border: 1px solid rgba(0,0,0,0.2) !important;
        }

        .vapor-table td {
            border: 1px solid rgba(255,255,255,0.15);
            padding: 12px;
            color: #eaeaea;
        }

        .vapor-table tbody tr {
            transition: all 0.3s ease;
        }

        .vapor-table tbody tr:hover {
            background: rgba(255,255,255,0.08);
        }

        /* Professional Buttons */
        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 10px;
        }

        /* Edit Button */
        .btn-edit {
            background: #facc15; /* professional yellow */
            color: #1a1a1a;
            border: none;
            padding: 6px 16px;
            font-size: 13px;
            font-weight: 600;
            border-radius: 6px;
            transition: all 0.2s ease-in-out;
        }

        .btn-edit:hover {
            background: #eab308;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(250, 204, 21, 0.4);
        }

        /* Delete Button */
        .btn-delete {
            background: #dc2626; /* professional red */
            color: #ffffff;
            border: none;
            padding: 6px 16px;
            font-size: 13px;
            font-weight: 600;
            border-radius: 6px;
            transition: all 0.2s ease-in-out;
        }

        .btn-delete:hover {
            background: #b91c1c;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(220, 38, 38, 0.4);
        }
        tr:hover {
            background-color: rgba(255,255,255,0.05);
        }
    </style>
</head>

<body>

<%
    List<Customer> allCustomers = CustomerDao.getCustomers();
%>
<%
    String fullName = (String) session.getAttribute("fullName");
%>
<% if (fullName != null) { %>
<div class="top-bar">
    <div class="logo">Delete Customer Panel</div>
    <button class="btn-neon" onclick="window.location.href='home.jsp'">
        Home
    </button>
</div>
<div class="vapor-card">
    <h1>All Customers</h1>

    <table class="table table-bordered text-center align-middle vapor-table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>phone</th>
            <th>Gender</th>

        </tr>
        </thead>
        <tbody>

        <%
            if(allCustomers != null && !allCustomers.isEmpty()) {
                for(Customer customer : allCustomers) {
        %>
        <tr onclick="confirmDelete(<%= customer.getId() %>)"
            style="cursor:pointer;">
            <td><%= customer.getId() %></td>
            <td><%= customer.getFullName() %></td>
            <td><%= customer.getEmail() %></td>
            <td><%= customer.getCountry() %></td>
            <td><%= customer.getPhone() %></td>
            <td><%= customer.getGender() %></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="4">No customers found.</td>
        </tr>
        <%
            }
        %>
        <script>
            function confirmDelete(id) {
                if (confirm("Are you sure you want to delete this customer?")) {
                    window.location = "DeleteCustomer.jsp?id=" + id;
                }
            }
        </script>
        </tbody>
    </table>

    <div class="text-center mt-4">
        <a href="forAdd/AddCustomerForm.jsp" class="btn btn-vapor">+ Add New Customer</a>
    </div>

</div>
<%}else {
    response.sendRedirect("login.jsp");
}%>
</body>
</html>