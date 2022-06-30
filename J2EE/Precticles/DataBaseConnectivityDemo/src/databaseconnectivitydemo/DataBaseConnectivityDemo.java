/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconnectivitydemo;

/**
 *
 * @author Jeet404
 */
import java.sql.*;

public class DataBaseConnectivityDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo","root","");
            Statement stmt = conn.createStatement();
            ResultSet res = stmt.executeQuery("SELECT * FROM students");
            while (res.next()) {
                System.out.print(res.getInt(1)+" "+res.getString(2)+" "+res.getInt(3)+" "+res.getString(4));
                System.out.println();
            }
            conn.close();
            System.out.println("End of data");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }

}
