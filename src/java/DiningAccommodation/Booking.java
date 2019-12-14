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
    public ArrayList <String> bookings = new ArrayList<String>();
    
    public int bookingid;
    public double cost;
    public String bookdate;
    public String confirmdate;
    public String savedate;
    public String canceldate;
    public String refunddate;
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
            
            stmt = conn.prepareStatement("INSERT INTO BOOKINGS (bookingid, cost, bookdate, confirmdate, paiddate, rating, feedback, email, groupid, diningofferid) VALUES (?,?,?,?,?,?,?,?,?,?)");    
            stmt.setInt(1, nextBooking);
            stmt.setDouble(2, cost);
            stmt.setString(3, bookdate);
            stmt.setString(4, confirmdate);
            stmt.setString(5, paiddate);
            stmt.setInt(6, rating);
            stmt.setString(7, feedback);
            stmt.setString(8, email);
            if(groupid != 0)
                stmt.setInt(9, groupid);
            else 
                stmt.setNull(9, Types.INTEGER);
            stmt.setInt(9, groupid);
            stmt.setInt(10, diningoffid);
            
            
            
            
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
    
    public void update() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            getNextBooking();  
            PreparedStatement stmt = conn.prepareStatement("UPDATE bookings SET cost = ?, bookdate = ?, confirmdate = ?, savedate = ?, canceldate = ?, refunddate = ?, paiddate = ?, rating = ?, feedback = ?, email = ?, groupid = ?, diningofferid = ? WHERE bookingid = ?") ;
            
//            if(groupid != 0){
//                stmt = conn.prepareStatement("UPDATE bookings SET cost = ?, bookdate = ?, confirmdate = ?, savedate = ?, canceldate = ?, refunddate = ?, paiddate = ?, rating = ?, feedback = ?, email = ?, groupid = ?, diningofferid = ? WHERE bookingid = ?") ; 
//                stmt.setDouble(1, cost);
//                stmt.setString(2, bookdate);
//                stmt.setString(3, confirmdate);
//                stmt.setString(4, savedate);
//                stmt.setString(5, canceldate);
//                stmt.setString(6, refunddate);
//                stmt.setString(7, paiddate);
//                stmt.setInt(8, rating);
//                stmt.setString(9, feedback);
//                stmt.setString(10, email);
//                stmt.setInt(11, groupid);
//                stmt.setInt(12, diningoffid);
//                stmt.setInt(13, bookingid);
//            }
//            else {
//                
//                
//               
//            }
            stmt = conn.prepareStatement("UPDATE bookings SET cost = ?, bookdate = ?, confirmdate = ?, savedate = ?, canceldate = ?, refunddate = ?, paiddate = ?, rating = ?, feedback = ?, email = ?, groupid = ?, diningofferid = ? WHERE bookingid = ?") ; 
                stmt.setDouble(1, cost);
                stmt.setString(2, bookdate);
                stmt.setString(3, confirmdate);
                stmt.setString(4, savedate);
                stmt.setString(5, canceldate);
                stmt.setString(6, refunddate);
                stmt.setString(7, paiddate);
                stmt.setInt(8, rating);
                stmt.setString(9, feedback);
                stmt.setString(10, email);
            
                if(groupid != 0)
                     stmt.setInt(11, groupid);
                else 
                    stmt.setNull(11, Types.INTEGER);
                stmt.setInt(12, diningoffid);
                stmt.setInt(13, bookingid);
            
            
             
  
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
            System.out.println("something went wrong" + e.getMessage());
        }              
    }
    
    public void getBookings() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT bookingid AS bookid FROM diningaccommodations.bookings ORDER BY bookid;");
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            bookings.clear();
            while (rs.next()) {
                bookings.add(rs.getString("bookid"));
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



