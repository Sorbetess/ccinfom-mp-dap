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

public class Menu {
    
    public int menuid;
    public String menutype;
    public Date bookleadtime;
    public Date cancelleadtime;
    public Time starttime;
    public Time endtime;
    public String provideremail;
    public int diningofferid;
    
    public int status;
    
    public ArrayList <TopMenu> results = new ArrayList<>();
    
    public ArrayList<TopMenu> getTop10Menu(int year, int month) {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=root&password=p@ssword");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT m.menuid mid, m.menutype mt, COUNT(*) total FROM BOOKINGS b JOIN DININGOFFERINGS dio ON b.diningofferid = dio.offeringid JOIN MENUS m ON dio.offeringid = m.diningofferid WHERE YEAR(b.bookdate) = ? AND MONTH(b.bookdate) = ? GROUP BY m.menuid, m.menutype ORDER BY COUNT(*) DESC, m.menuid, m.menutype LIMIT 10");
            stmt.setInt(1, year);
            stmt.setInt(2, month);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            results.clear();
            while (rs.next()) {
                results.add(new TopMenu(rs.getInt("mid"),
                                        rs.getString("mt"),
                                        rs.getInt("total")));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
            status = 1;
        } catch (Exception e) {
            status = 0;
            System.out.println("something went wrong: " + e.getMessage());
        }
        
        return results;
    }
}
