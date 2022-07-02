/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package oraclecondemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/**
 *
 * @author Jeet404
 */
public class OracleConDemo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "manager");
            Scanner sc = new Scanner(System.in);
            int choice;
            int cont = 0;
            do {
                System.out.println("1. View Records");
                System.out.println("2. Insert Records");
                System.out.println("3. Update Records");
                System.out.println("4. Delete Records");
                System.out.print("Enter Your Choice[1,2,3,4] : ");
                choice = sc.nextInt();
                if (choice == 1) {
                    Statement stmt = conn.createStatement();
                    ResultSet res = stmt.executeQuery("SELECT * FROM students");
                    while (res.next()) {
                        System.out.print(res.getInt(1) + " " + res.getString(2) + " " + res.getInt(3) + " " + res.getString(4));
                        System.out.println();
                    }
                    System.out.println("End of data");
                } else if (choice == 2) {
                    PreparedStatement stmt = conn.prepareStatement("INSERT INTO `students`(`Id`, `Name`, `Age`, `City`) VALUES (?,?,?,?)");
                    System.out.print("Enter Id : ");
                    int id = sc.nextInt();
                    System.out.print("Enter Name : ");
                    String name = sc.next();
                    System.out.print("Enter Age : ");
                    int age = sc.nextInt();
                    System.out.print("Enter City : ");
                    String city = sc.next();
                    stmt.setInt(1, id);
                    stmt.setString(2, name);
                    stmt.setInt(3, age);
                    stmt.setString(4, city);
                    int res = stmt.executeUpdate();
                    System.out.println(res + "Rows Inserted");
                    System.out.println("End of Process");
                } else if (choice == 3) {
                    PreparedStatement stmt = conn.prepareStatement("UPDATE students SET Name=?,Age=?,City=? WHERE Id=?");
                    System.out.print("Enter Name : ");
                    String name = sc.next();
                    System.out.print("Enter Age : ");
                    int age = sc.nextInt();
                    System.out.print("Enter Course : ");
                    String course = sc.next();
                    System.out.print("Enter ID of Record : ");
                    int id = sc.nextInt();
                    stmt.setString(1, name);
                    stmt.setInt(2, age);
                    stmt.setString(3, course);
                    stmt.setInt(4, id);
                    int res = stmt.executeUpdate();
                    System.out.println(res + "Rows Updated");
                    System.out.println("End of Process");
                } else if (choice == 4) {
                    PreparedStatement stmt = conn.prepareStatement("DELETE FROM students WHERE Id=?");
                    System.out.print("Enter ID of Record : ");
                    int id = sc.nextInt();
                    stmt.setInt(1, id);
                    int res = stmt.executeUpdate();
                    System.out.println(res + "Rows Deleted");
                    System.out.println("End of Process");
                }
                System.out.print("If you want to continue than Press 1");
                cont = sc.nextInt();
            } while (cont == 1);
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }

}
