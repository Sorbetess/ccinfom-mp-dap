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
    public ArrayList <String> groups = new ArrayList<String>();
    public ArrayList <String> emails = new ArrayList<String>();
    
    public double cost;
    public String bookdate;
    public String confirmdate;
    public String paiddate;
    public int rating;
    public String feedback;
    public String email;
    public int groupid;
    public int diningoffid;
    
    public int status;
    public int nextBooking;
    
   
    
    public void book() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            getNextBooking();  
            PreparedStatement stmt ;
            
            if(groupid != 0){
                stmt = conn.prepareStatement("INSERT INTO BOOKINGS (bookingid, cost, bookdate, confirmdate, paiddate, rating, feedback, email, groupid, diningofferid) VALUES (?,?,?,?,?,?,?,?,?,?)");    
                stmt.setInt(1, nextBooking);
                stmt.setDouble(2, cost);
                stmt.setString(3, bookdate);
                stmt.setString(4, confirmdate);
                stmt.setString(5, paiddate);
                stmt.setInt(6, rating);
                stmt.setString(7, feedback);
                stmt.setString(8, email);
                stmt.setInt(9, groupid);
                stmt.setInt(10, diningoffid);
            }
            else {
                stmt = conn.prepareStatement("INSERT INTO BOOKINGS (bookingid, cost, bookdate, confirmdate, paiddate, rating, feedback, email,diningofferid) VALUES (?,?,?,?,?,?,?,?,?)");
                
                stmt.setInt(1, nextBooking);
                stmt.setDouble(2, cost);
                stmt.setString(3, bookdate);
                stmt.setString(4, confirmdate);
                stmt.setString(5, paiddate);
                stmt.setInt(6, rating);
                stmt.setString(7, feedback);
                stmt.setString(8, email);
                stmt.setInt(9, diningoffid);
            }
            
            
            
            
            // 3. Execute the SQL Statement
            stmt.executeUpdate();
            // 4. Process the results
            status=1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            status=0;
        }
    }
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
    
    public void getGroups() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT groupid AS groupid FROM diningaccommodations.groups ORDER BY groupid");
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            groups.clear();
            while (rs.next()) {
                groups.add(rs.getString("groupid"));
                System.out.println(groups.get(groups.size()-1));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }              
    }
    
    public void getEmails() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT email AS email FROM CLIENT_USERS ORDER BY email");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            emails.clear();
            while (rs.next()) {
                emails.add(rs.getString("email"));
                System.out.println(emails.get(emails.size()-1));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }              
    }
    
     public void getNextBooking() {
     
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT MAX(bookingid) as maxbook FROM diningaccommodations.bookings");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            if(rs.next())
                nextBooking = rs.getInt("maxbook") + 1;
            
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }
        
    }
    
    
    public static void main(String args[]) {
        Booking book = new Booking();
//        book.getOfferings();
//        
//        book.getGroups();
//        
//        book.getEmails();
//        book.getNextBooking();
    }
}



