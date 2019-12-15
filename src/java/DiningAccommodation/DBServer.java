/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DiningAccommodation;

/**
 *
 * @author tengl
 */
public class DBServer {
    public static final String URL = "localhost:3307";
    public static final String SCHEMA = "diningaccommodations";
    public static final String USERNAME = "root";
    public static final String PASSWORD = "p@ssword";
    
    public static final String SERVER = "jdbc:mysql://"+ 
                                        URL +"/"+ 
                                        SCHEMA +"?useTimezone=true&serverTimezone=UTC&user="+ 
                                        USERNAME +"&password="+ 
                                        PASSWORD+ "";
}
