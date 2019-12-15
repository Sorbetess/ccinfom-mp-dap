package DiningAccommodation;
import java.sql.*;
import java.util.*;

public class Booking {
    public class Country {
        public String name;
        public int population;
        
        public Country(String name, int population) {
            this.name= name;
            this.population = population;
        }
    }
    public ArrayList <String> offers = new ArrayList<String>();
    public ArrayList <String> groups = new ArrayList<String>();
    public ArrayList <String> emails = new ArrayList<String>();
    public ArrayList <String> bookings = new ArrayList<String>();
    public ArrayList <Country> report = new ArrayList<Country>();
    public ArrayList <Integer> years = new ArrayList<Integer>();
    public ArrayList <Integer> months = new ArrayList<Integer>();
    
   
    
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
    
    public int reportMonth;
    public int reportYear;
    

    
      
   
    
    public void book() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
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
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            getNextBooking();  
            PreparedStatement stmt = conn.prepareStatement("UPDATE bookings SET cost = ?, bookdate = ?, confirmdate = ?, savedate = ?, canceldate = ?, refunddate = ?, paiddate = ?, rating = ?, feedback = ?, email = ?, groupid = ?, diningofferid = ? WHERE bookingid = ?") ;
            

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
    
    public void search() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT cost AS cost, bookdate AS bookdate, confirmdate AS confirmdate, savedate AS savedate, canceldate AS canceldate, refunddate AS refunddate, paiddate AS paiddate, rating AS rating, feedback AS feedback, email AS email, groupid AS groupid, diningofferid as diningofferid FROM bookings WHERE bookingid=?");
            stmt.setInt(1, bookingid);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            if(rs.next()) {
                cost = rs.getDouble("cost");
                bookdate = rs.getString("bookdate");
                confirmdate = rs.getString("confirmdate");
                savedate = rs.getString("savedate");
                canceldate = rs.getString("canceldate");
                refunddate = rs.getString("refunddate");
                paiddate = rs.getString("paiddate");
                rating = rs.getInt("rating");
                feedback = rs.getString("feedback");
                email = rs.getString("email");
                groupid = rs.getInt("groupid");
                diningoffid = rs.getInt("diningofferid");
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
        }
    }
    
    public void globalReport() {
  
        
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement
                                     ("  SELECT addresscountry AS country, COUNT(addresscountry) AS Population\n" +
                                        "FROM client_users cu\n" +
                                        "WHERE cu.email IN (\n" +
                                        "	SELECT B.email\n" +
                                        "    FROM BOOKINGS B\n" +
                                        "    WHERE YEAR(B.bookdate) = ? AND MONTH(B.bookdate) = ?\n" +
                                        ")\n" +
                                        "GROUP BY addresscountry\n" +
                                        "ORDER BY Population DESC;");
        
            stmt.setInt(1, reportYear);
            stmt.setInt(2, reportMonth);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            report.clear();
            while (rs.next()) {
                report.add(new Country(rs.getString("country"), rs.getInt("Population")));
                System.out.println(report.get(report.size()-1).name + " " + report.get(report.size()-1).population);
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
            status = 1;
        } catch (Exception e) {
            status = 0;
            System.out.println("something went wrong" + e.getMessage());
        }     
        
    }
    
    
    public void getOfferings() {
        try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
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
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT groupid AS groupid FROM diningaccommodations.groups ORDER BY groupid");
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            groups.clear();
            while (rs.next()) {
                groups.add(rs.getString("groupid"));
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
            conn = DriverManager.getConnection(DBServer.SERVER);
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
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT email AS email FROM CLIENT_USERS ORDER BY email");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            emails.clear();
            while (rs.next()) {
                emails.add(rs.getString("email"));

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
            conn = DriverManager.getConnection(DBServer.SERVER);
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
     
     public void getBookingYears() {
         try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT DISTINCT YEAR(bookdate) AS bookyear FROM diningaccommodations.bookings ORDER BY bookyear ASC");
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            years.clear();
            while (rs.next()) {
                years.add(rs.getInt("bookyear"));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }              
     }
     
     public void filterYears() {
         try {
            // 1. Connect to the database
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn;
            conn = DriverManager.getConnection(DBServer.SERVER);
            // 2. Prepare the SQL Statement
            PreparedStatement stmt = conn.prepareStatement("SELECT DISTINCT MONTH(bookdate) AS bookmonth FROM diningaccommodations.bookings WHERE YEAR(bookdate) = ? ORDER BY bookmonth");
            stmt.setInt(1, reportYear);
            // 3. Execute the SQL Statement
            ResultSet rs = stmt.executeQuery();
            // 4. Process the results
            months.clear();
            while (rs.next()) {
                months.add(rs.getInt("bookmonth"));
                System.out.println(months.get(months.size()-1));
            }
            // 5. Disconnect
            stmt.close();
            conn.close();
        } catch (Exception e) {
            System.out.println("something went wrong: " + e.getMessage());
        }              
     }
     
     
     
    
    
    
    public static void main(String args[]) {
        
    }
}



