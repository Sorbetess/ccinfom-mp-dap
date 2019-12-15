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
public class TopMenu {
    public int menuid;
    public String menutype;
    public int totalbookings;
    
    public TopMenu(int menuid, String menutype, int totalbookings) {
        this.menuid = menuid;
        this.menutype = menutype;
        this.totalbookings = totalbookings;
    }
}
