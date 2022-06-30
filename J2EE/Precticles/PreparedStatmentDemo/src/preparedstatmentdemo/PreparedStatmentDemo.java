/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PreparedStatmentDemo;

/**
 *
 * @author Jeet404
 */
import java.sql.*;
import java.util.Scanner;

public class PreparedStatmentDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO `students`(`Id`, `Name`, `Age`, `Course`) VALUES (NULL,?,?,?)");
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter Name : ");
            String name = sc.next();
            System.out.print("Enter Age : ");
            int age = sc.nextInt();
            System.out.print("Enter Course : ");
            String course = sc.next();
            stmt.setString(1, name);
            stmt.setInt(2, age);
            stmt.setString(3, course);
            int res = stmt.executeUpdate();
            System.out.println(res + "Rows Inserted");
            conn.close();
            System.out.println("End of data");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }

}
