/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibasgmt;

import java.awt.Image;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.management.Query;
import javax.swing.ImageIcon;
import pojos.Client;

/**
 *
 * @author 1bestcsharp.blogspot.com
 */
public class MyQuery {
    
   public Connection getConnection(){
        Connection con = null;
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hearn","root",null);
        } catch (SQLException ex) {
            Logger.getLogger(Query.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    
    public ArrayList<Client> BindTable(){
        
   ArrayList<Client> list = new ArrayList<Client>();
   Connection con = getConnection();
   Statement st;
   ResultSet rs;
   
   try {
   st = con.createStatement();
   rs = st.executeQuery("SELECT `regId`, `firstName`, `lastName`, `phoneNumber`, `email`, `photo`, `ClientCategory` FROM `client` ");
   
   Client c;
   while(rs.next()){
   c = new Client(
   rs.getString("regId"),        
   rs.getString("firstName"),
   rs.getString("lastName"),
   rs.getString("phoneNumber"),
   rs.getString("email"),
   rs.getBytes("photo"),
   rs.getString("ClientCategory")
   );
   list.add(c);
   }
   
   } catch (SQLException ex) {
   Logger.getLogger(MyQuery.class.getName()).log(Level.SEVERE, null, ex);
   }
   return list;
   }
}
