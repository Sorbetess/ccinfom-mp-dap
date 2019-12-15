/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ccinfomdap;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author tengl
 */
public class Transactions {
    private int transno;
    private Date transdate;
    private double transamount;
    private String transtype;
    private String transmethod;
    private int bookingid;
    private long ccnumber;

    public Transactions (int transno, Date transdate, double transamount, String transtype, String transmethod, int bookingid, long ccnumber) {
        this.transno = transno;
        this.transdate = transdate;
        this.transamount = transamount;
        this.transtype = transtype;
        this.transmethod = transmethod;
        this.bookingid = bookingid;
        this.ccnumber = ccnumber;
    }

    public int getTransno() {
        return transno;
    }

    public Date getTransdate() {
        return transdate;
    }

    public double getTransamount() {
        return transamount;
    }

    public String getTranstype() {
        return transtype;
    }

    public String getTransmethod() {
        return transmethod;
    }

    public int getBookingid() {
        return bookingid;
    }

    public long getCcnumber() {
        return ccnumber;
    }
    
    public static ArrayList<Integer> getAllBookingIDs() {
        ArrayList<Integer> bookingidlist = null;
        try {
            // 1. Connect to the database
            Connection conn;

            String server = "localhost:3307";
            String username = "root";
            String password = "p@ssword";

            String schema = "diningaccommodations";
            String table = "bookings";

            conn = DriverManager.getConnection("jdbc:mysql://" + server + "/" + schema +"?useTimezone=true&serverTimezone=UTC&user="+ username +"&password=" + password);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT bookingid FROM " + schema + "." + table + "");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results

            bookingidlist = new ArrayList<>();
            while (rs.next()) {
                bookingidlist.add(rs.getInt("bookingid"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }     
        
        return bookingidlist;
    }
    
    public static ArrayList<Transactions> getList() {
        try {
            ArrayList<String> tmlist = new ArrayList<>();
            
            // 1. Connect to the database
            Connection conn;
            
            String server = "localhost:3307";
            String username = "root";
            String password = "p@ssword";
            
            String schema = "diningaccommodations";
            String table = "transactions";
            
            conn = DriverManager.getConnection("jdbc:mysql://" + server + "/" + schema +"?useTimezone=true&serverTimezone=UTC&user="+ username +"&password=" + password);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT transid FROM " + schema + "." + table + "");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            
            
            while (rs.next()) {
                tmlist.add(rs.getString("transid"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }     
        
        return null;
    }
    
    // For testing
    public static void main (String args[]) {
        getList();
    }
    
}
