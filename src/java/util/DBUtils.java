
package util;

import com.mysql.jdbc.Connection;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javaBean.User;

public class DBUtils {

    private static int USER_ROLE_ID = 2;
    private static Connection getConnection() {
        Connection connection = null;
        try {
            String dbURL = "jdbc:mysql://localhost:3306/collection";
            String username = "root";
            String password = "824022197";
            Class.forName("com.mysql.jdbc.Driver");
            connection = (Connection) DriverManager.getConnection(
                    dbURL, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
    
    public static void createUser(User user) {
        //insert a new roe in the user table
        Connection conn = getConnection();
        String query =
                "INSERT INTO user (firstname, lastname, email, password, role) " +
                "VALUES ('" + user.getFirstName() + "', " +
                 "'" + user.getLastName() + "', " +
                "'" + user.getEmail() + "', " +
                "'" + user.getPassword() + "', " +
                USER_ROLE_ID + ")";
        
        try{
            Statement stmt = conn.createStatement();
            int count = stmt.executeUpdate(query);
            stmt.close();
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            try{
                conn.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
    
    public static void updateUser(User user){
        Connection conn = getConnection();
        String query = "UPDATE user SET " +
                "password = " + "'" + user.getPassword()+ "', " +
                "role = " + "'" + getRoleId(user.getRole())+ "' " +
                "WHERE email = '" + user.getEmail() + "'";
        
        try{
            Statement stmt = conn.createStatement();
            stmt.executeUpdate(query);
            stmt.close();;
        }catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void deleteUser(String email) {
        Connection conn = getConnection();
        String query = "DELETE FROM user WHERE email = '" + email + "'";
        try {
            Statement stmt = conn.createStatement();
            int count = stmt.executeUpdate(query);
            System.out.println("Number of users deleted: " + count);
            stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("catch stmt");
        } finally {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static List<User> getUsers() {
        List<User> users = new ArrayList<User>();
        Connection conn = getConnection();
        String query = "SELECT firstname, lastname, email, user.password, "
                + "role.role FROM user, role "
                + "WHERE user.role = role.id;";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                String fname = rs.getString("firstname");//name in database
                String lname = rs.getString("lastname");
                String email = rs.getString("email");
                String pword = rs.getString("password");
                String role = rs.getString("role");

                User u = new User(fname, lname, email, pword, role);
                users.add(u);
                System.out.println("Fname: " + u.getFirstName());
            }
            rs.close();
            stmt.close();
        } catch (SQLException e) {
            for (Throwable t : e) {
                t.printStackTrace();
            }
        } finally {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return users;
    }
    
    public static int getRoleId(String role){
        if(role.equals("USER"))
            return 2;
        else if(role.equals("ADMIN"))
            return 1;
        else
            return 3;
    }
}
