package org.example.jsp_project;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class UserDao {





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

    public static int saveUser(User user) throws SQLException {
        int status = 0;
        String sql =
                "INSERT INTO `users`(`firstname`, `lastname`, `email`, `password`) VALUES (?,?,?,?)";
        Connection con = UserDao.getConn();
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1,user.getFirstName());
        pst.setString(2,user.getLastName());
        pst.setString(3,user.getEmail());
        pst.setString(4,user.getPassword());
        status = pst.executeUpdate();
        con.close();
        return status;


    }

    public static User checkUser(String email,String password) throws SQLException {
        Connection con = UserDao.getConn();
        User u = null;
       String sql =
                "SELECT * FROM `users` WHERE `email` = ? AND `password` = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1,email);
        pst.setString(2,password);
        ResultSet rs = pst.executeQuery();
        if(rs.next()) {

             u = UserDao.getUser(rs.getInt("id"));
        }
        return  u;
    }
    public static User getUser(int id) throws SQLException {
        User u = new User();
        Connection con = UserDao.getConn();
        String sql =
                "SELECT * FROM `users` WHERE id = ?";
        PreparedStatement pst =con.prepareStatement(sql) ;
        pst.setInt(1,id);
        ResultSet rs = pst.executeQuery();
        if(rs.next()) {
            u.setId(rs.getInt("id"));
            u.setFirstName(rs.getString("firstname"));
            u.setLastName(rs.getString("lastname"));
            u.setEmail(rs.getString("email"));
            u.setPassword(rs.getString("password"));
        }
        con.close();
        return u;
    }

}
