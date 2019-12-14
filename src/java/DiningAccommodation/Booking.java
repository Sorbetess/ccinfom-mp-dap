/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DiningAccommodation;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Bryce Ramirez
 */
public class Booking {
    public ArrayList <String> offers = new ArrayList<String>();
    
    public void getOfferings() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT offeringid AS offeringid FROM diningofferings ORDER BY offeringid");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            offers.clear();
            while (rs.next()) {
                offers.add(rs.getString("offeringid"));
                System.out.println(offers.get(offers.size()-1));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong" + e.getMessage());
        }              
    }
    
    
    public static void main(String args[]) {
        Booking book = new Booking();
        book.getOfferings();
    }
}



