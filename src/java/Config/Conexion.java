package Config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection con;
   String user="uux5imfemfjxywfx";
   String pass="y8MEjwfD1qFhLIP9XokL";
   String url="jdbc:mysql://bv8atiwu8ekpgviudhuj-mysql.services.clever-cloud.com:3306/bv8atiwu8ekpgviudhuj";
   
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e){
            
        }
        return con;
    }
}
