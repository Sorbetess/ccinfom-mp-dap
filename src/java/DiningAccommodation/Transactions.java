/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DiningAccommodation;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author tengl
 */
public class Transactions {
    public int transno;
    public String transdate;
    public double transamount;
    public String transtype;
    public String transmethod;
    public int bookingid;
    public long ccnumber;
    
    public int status;
    public ArrayList <String> bookings = new ArrayList<String>();
    public ArrayList <String> ccnos = new ArrayList<String>();
    public ArrayList <String> tnos = new ArrayList<String>();
    
    public void register() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt ;

            stmt = conn.prepareStatement("INSERT INTO TRANSACTIONS (transno, transdate, transamount, transtype, transmethod, bookingid, ccnumber) VALUES (?,?,?,?,?,?,?)");    
            stmt.setInt(1, transno);
            stmt.setString(2, transdate);
            stmt.setDouble(3, transamount);
            stmt.setString(4, transtype);
            stmt.setString(5, transmethod);
            stmt.setInt(6, bookingid);
            if("CC".equals(transmethod))
                stmt.setLong(7, ccnumber);
            else 
                stmt.setNull(7, Types.BIGINT);




            // 3. Execute the SQL Statement
            stmt.executeUpdate();
            // 4. Process the results
            status=1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
            status=0;
        }
    }
    
    public void update() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt ;

            stmt = conn.prepareStatement("UPDATE TRANSACTIONS SET transdate=?, transamount=?, transtype=?, transmethod=?, bookingid=?, ccnumber=? WHERE transno=?");    
            stmt.setString(1, transdate);
            stmt.setDouble(2, transamount);
            stmt.setString(3, transtype);
            stmt.setString(4, transmethod);
            stmt.setInt(5, bookingid);
            if("CC".equals(transmethod))
                stmt.setLong(6, ccnumber);
            else 
                stmt.setNull(6, Types.BIGINT);
            stmt.setInt(7, transno);




            // 3. Execute the SQL Statement
            stmt.executeUpdate();
            // 4. Process the results
            status=1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
            status=0;
        }
    }
    
    
    public void getBookings() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
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
            e.printStackTrace();
        }              
    }    
    
    public void getCCNOs() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT ccnumber AS ccno FROM diningaccommodations.credit_cards;");
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            ccnos.clear();
            while (rs.next()) {
                ccnos.add(rs.getString("ccno"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
        }              
    }    
    
    public void getTransactions() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT transno FROM diningaccommodations.transactions;");
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            tnos.clear();
            while (rs.next()) {
                tnos.add(rs.getString("transno"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
        }   
    }    
    
    public void search() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM transactions WHERE transno=?");
            stmt.setInt(1, transno);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            if(rs.next()) {
                transdate = rs.getString("transdate");
                transamount = rs.getDouble("transamount");
                transtype = rs.getString("transtype");
                transmethod = rs.getString("transmethod");
                bookingid = rs.getInt("bookingid");
                ccnumber = rs.getLong("ccnumber");
                status = 1;
                
            }
            else {
                status = -1; // Indicate that a booking is not found
            }
            
            // 5. Disconnect
            stmt.close();
            conn.close();
            
        } catch (Exception e) {
            status = 0;
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void delete() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM transactions WHERE transno=?");
            stmt.setInt(1, transno);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            if(rs.next()) {
                status = 1;
                stmt = conn.prepareStatement("DELETE FROM transactions WHERE transno=?");
                stmt.setInt(1, transno);
                stmt.executeUpdate();
            }
            else {
                status = -1; // Indicate that a booking is not found
            }
            
            // 5. Disconnect
            stmt.close();
            conn.close();
            
        } catch (Exception e) {
            status = 0;
            System.out.println("something went wrong: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
