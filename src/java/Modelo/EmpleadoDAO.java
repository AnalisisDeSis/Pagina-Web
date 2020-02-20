package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class EmpleadoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Empleado validar(String user, String pass){
        Empleado em= new Empleado();
        String sql = "select * from testusuarios where Usuario=? and Pass=?";
        try{
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                em.setUser(rs.getString("Usuario"));
                em.setPass(rs.getString("Pass"));
                em.setId(rs.getInt("ID"));
                em.setNumero(rs.getInt("Numero"));
            }
            
        } catch (Exception e){
            
        }
        return em;
    }
}
