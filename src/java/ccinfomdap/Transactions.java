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
    private java.sql.Date transdate;
    private double transamount;
    private String transtype;
    private String transmethod;
    private int bookingid;

    public Transactions (int transno, java.sql.Date transdate, ) {
        this.transdate = transdate;
        
    }

    /**
     * @return the transno
     */
    public int getTransno() {
        return transno;
    }

    /**
     * @return the transdate
     */
    public Date getTransdate() {
        return transdate;
    }

    /**
     * @return the transamount
     */
    public double getTransamount() {
        return transamount;
    }

    /**
     * @return the transtype
     */
    public String getTranstype() {
        return transtype;
    }

    /**
     * @return the transmethod
     */
    public String getTransmethod() {
        return transmethod;
    }

    /**
     * @return the bookingid
     */
    public int getBookingid() {
        return bookingid;
    }

    /**
     * @return the ccnumber
     */
    public long getCcnumber() {
        return ccnumber;
    }
    
    public static ArrayList<Transactions> getList() {
        try {
            // ArrayList<Transactions> list = new ArrayList<>();
            ArrayList<String> tmlist = new ArrayList<>();
            
            // 1. Connect to the database
            Connection conn;
            
            String server = "localhost:3307";
            String schema = "diningaccommodations";
            String username = "root";
            String password = "p@ssword";
            
            conn = DriverManager.getConnection("jdbc:mysql://" + server + "/" + schema +"?useTimezone=true&serverTimezone=UTC&user="+ username +"&password=" + password);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT transtype FROM " + schema + ".transactions LIMIT 10");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            tmlist.clear();
            while (rs.next()) {
                tmlist.add(rs.getString("transtype"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
            
            for (String s: tmlist) {
                System.out.println(s);
            }
        } catch (Exception e) {
            System.out.println("something went wrong - " + e.getMessage());
            e.printStackTrace();
        }     
        
        return null;
    }
    
    public static void main (String args[]) {
        getList();
    }
    
}
