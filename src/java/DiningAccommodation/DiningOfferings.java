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
 * @author Carlos
 */

public class DiningOfferings {
    public ArrayList <String> offers = new ArrayList<String>();
    
    public int offeringid;
    public Date offeringdate;
    public String status;
    public int maxclient;
    public int success_status;
    public int nextoffer;
    
    public void createOffering () {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt ;
            
            stmt = conn.prepareStatement("INSERT INTO DININGOFFERINGS (offeringid, offeringdate, status, maxclients) VALUES (?,?,?,?)");  
            getNextOffer();
            stmt.setInt(1, nextoffer);
            stmt.setDate(2, offeringdate);
            stmt.setString(3, "O");
            stmt.setInt(4, maxclient);
                                                    
            // 3. Execute the SQL Statement
            stmt.executeUpdate();
            
            // 4. Process the results
            success_status=1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            success_status=0;
        }
    }
    
    public void updateOffering () {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt ;
            
            stmt = conn.prepareStatement("UPDATE DININGOFFERINGS SET offeringdate = ?, status = ?, maxclients = ? WHERE status != 'F' AND offeringid = ?");  
            stmt.setDate(1, offeringdate);
            stmt.setString(2, status);
            stmt.setInt(3, maxclient);
            stmt.setInt(4, offeringid);
            // 3. Execute the SQL Statement
            stmt.executeUpdate();
            
            // 4. Process the results
            success_status=1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
            success_status=0;
        }
    }
     
    public void search() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT * FROM DININGOFFERINGS WHERE offeringid=?");
            stmt.setInt(1, offeringid);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            offers.clear();
            if(rs.next()) {
                offeringid = rs.getInt("offeringid");
                offeringdate = rs.getDate("offeringdate");
                status = rs.getString("status");
                maxclient = rs.getInt("maxclients");
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
            success_status = 1;
        } catch (Exception e) {
            success_status = 0;
            System.out.println("something went wrong: " + e.getMessage());
        }
    }
    
     public void deleteOffering() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            // 3. Execute the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM DININGOFFERINGS WHERE offeringid = ?");
            stmt.setInt(1, offeringid);
            stmt.executeQuery();
            stmt = conn.prepareStatement("DELETE FROM FOODITEMS WHERE menuid IN (SELECT menuid FROM MENUS WHERE offeringid = ?)");
            stmt.setInt(1, offeringid);
            stmt.executeQuery();
            stmt = conn.prepareStatement("DELETE FROM MENUS WHERE offeringid = ?");
            stmt.setInt(1, offeringid);
            stmt.executeQuery();
            stmt = conn.prepareStatement("DELETE FROM BOOKINGS WHERE offeringid = ?");
            stmt.setInt(1, offeringid);
            stmt.executeQuery();
            // 4. Process the results
            success_status = 1;
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            success_status = 0;
            System.out.println("something went wrong" + e.getMessage());
        }       
    }
    
    public void getNextOffer() {
     
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT MAX(offeringid) as maxoffer FROM diningaccommodations.diningofferings");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            if(rs.next())
                nextoffer = rs.getInt("maxoffer") + 1;
            
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }
    }
    
    public void getOfferings() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT offeringid FROM diningofferings ORDER BY offeringid");
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
}
