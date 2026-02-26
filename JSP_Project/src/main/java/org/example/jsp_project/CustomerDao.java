package org.example.jsp_project;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao {


    public static Connection getConn()  {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/jspdb", "root", "rootroot");
        } catch(SQLException e) {
            e.printStackTrace(); // prints exact reason
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // forces driver load
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return con;
    }

    public static int save(Customer customer) throws SQLException {
        int status = 0;
        String sql =
                "INSERT INTO `customer`(`fullName`, `email`, `phone`, `country`, `gender`) VALUES (?,?,?,?,?)";
        Connection con = CustomerDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1,customer.getFullName());
        pst.setString(2,customer.getEmail());
        pst.setString(3,customer.getPhone());
        pst.setString(4,customer.getCountry());
        pst.setString(5,customer.getGender());
        status = pst.executeUpdate();
        con.close();
        return status;


    }

    public static int update(Customer customer) throws SQLException {
        int status = 0;
        String sql =
                "UPDATE `customer` SET `fullName`=?,`email`=?,`phone`=?,`country`=?,`gender`=? WHERE id = ?";
        Connection con = CustomerDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1,customer.getFullName());
        pst.setString(2,customer.getEmail());
        pst.setString(3,customer.getPhone());
        pst.setString(4,customer.getCountry());
        pst.setString(5,customer.getGender());
        pst.setInt(6,customer.getId());
        status = pst.executeUpdate();
        con.close();
        return status;

    }

    public static int delete(Customer customer) throws SQLException {
        int status = 0;
        String sql =
                "DELETE FROM `customer` WHERE id = ?";
        Connection con = CustomerDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1,customer.getId());
        status = pst.executeUpdate();
        con.close();
        return status;
    }


    public static List<Customer> getCustomers() throws SQLException {
        List<Customer> AllCustomers = new ArrayList<Customer>();
        String sql =
                "SELECT * FROM `customer`";
        Connection con = CustomerDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        ResultSet rs = pst.executeQuery();

        while(rs.next()) {
            Customer customer = new Customer();
            customer.setId(rs.getInt("id"));
            customer.setFullName(rs.getString("fullName"));
            customer.setEmail(rs.getString("email"));
            customer.setPhone(rs.getString("phone"));
            customer.setCountry(rs.getString("country"));
            customer.setGender(rs.getString("gender"));
            AllCustomers.add(customer);
        }
        return AllCustomers;


    }

    public static Customer getCustomer(int id) throws SQLException {
        Customer c = new Customer();
        String sql =
                "SELECT * FROM `customer` WHERE id = ?";
        Connection con = CustomerDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setInt(1,id);
        ResultSet rs = pst.executeQuery();
        while(rs.next()) {
            c.setId(rs.getInt("id"));
            c.setFullName(rs.getString("fullName"));
            c.setEmail(rs.getString("email"));
            c.setPhone(rs.getString("phone"));
            c.setCountry(rs.getString("country"));
            c.setGender(rs.getString("gender"));

        }
        con.close();
        return c;

    }

}
