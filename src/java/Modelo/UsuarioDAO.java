package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UsuarioDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   
    public Usuario validar(String user, String pass){
        Usuario em= new Usuario();
        String sql = "select * from Cliente where Cli_ID=? and Cli_Pass=?";
        try{
            con = cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs=ps.executeQuery();
            while(rs.next()){
                em.setNombre(rs.getString("Cli_Nombre"));
                em.setNit(rs.getString("Cli_Nit"));
                em.setId(Integer.parseInt(rs.getString("Cli_ID")));
            }
            
        } catch (Exception e){
            
        }
        return em;
    }
}
