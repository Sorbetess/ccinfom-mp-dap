/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DiningAccommodation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Carlos
 */
public class MenuReport {
    public int status;
    public int reportyear;
    public int reportmonth;
    public ArrayList <Menu> report = new ArrayList<>();
    
    public class Menu {
        public int menuid;
        public String menutype;
        public int rating;

        public Menu(int menuid, String menutype,int rating) {
            this.menuid = menuid;
            this.menutype = menutype;
            this.rating = rating;
        }
    }
    
     public void generateReport() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/diningaccommodations?useTimezone=true&serverTimezone=UTC&user=admin&password=12345");
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement
                                     (" SELECT m.menuid, m.menutype, b.rating\n" +
                                        "FROM BOOKINGS b JOIN DININGOFFERINGS d ON b.diningofferid = d.offeringid\n" +
                                        "               JOIN MENUS m          ON d.offeringid = b.diningofferid\n" +
                                        "WHERE YEAR(b.bookdate) = ? AND MONTH(b.bookdate) = ? AND b.rating > 8\n" +
                                        "ORDER BY b.rating DESC\n" +
                                        "LIMIT 10;");
        
            stmt.setInt(1, reportyear);
            stmt.setInt(2, reportmonth);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            report.clear();
            while (rs.next()) {
                report.add(new Menu(rs.getInt("m.menuid"), rs.getString("m.menutype"), rs.getInt("b.rating")));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
            status = 1;
        } catch (Exception e) {
            status = 0;
            System.out.println("something went wrong: " + e.getMessage());
        }
    }
}
