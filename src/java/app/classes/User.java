package app.classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class User {
    private int id;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String role;

    public User(String username, String password) {
        this.username = username;
        this.password = MD5.getMd5(password); 
    }

    public User(String firstname, String lastname, String username, String password, String role) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = MD5.getMd5(password);
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getRole() {
        return role;
    }

    public boolean register(Connection con) {
        try {
            String query = "INSERT INTO user(firstName,lastName,username,password,role) VALUES(?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.firstname);
            pstmt.setString(2, this.lastname);
            pstmt.setString(3, this.username);
            pstmt.setString(4, this.password);
            pstmt.setString(5, this.role);
            return pstmt.executeUpdate() > 0;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public boolean authenticate(Connection con) {
        try {
            String query = "SELECT password, role FROM user WHERE username=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, this.username);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String db_pass = rs.getString("password");
                String role = rs.getString("role");
                if (db_pass.equals(this.password)) {
                    this.role = role; 
                    return true;
                }
            }
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
}
