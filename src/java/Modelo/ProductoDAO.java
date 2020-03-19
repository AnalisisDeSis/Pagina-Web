package Modelo;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProductoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   
    
public Producto buscar(String id){
        Producto p = new Producto();    
        String sql = "Select * from Material where Mat_ID="+id;
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                p.setId(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setPaquete(rs.getInt(3));
                p.setuMedida(rs.getString(5));
                p.setPrecio(rs.getFloat(8));
               
            }
        } catch (Exception e){
            
        }
     return p;
    
}
    
//CRUD
    public List listar(){
        String sql="select * from Material";
        List<Producto>lista=new ArrayList<>();
        try {
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()) {
                Producto pr = new Producto();
                pr.setId(rs.getInt(1));
                pr.setNombre(rs.getString(2));               
                pr.setPaquete(rs.getInt(3));
                pr.setuMedida(rs.getString(5));
                pr.setPrecio(rs.getFloat(8));                
                lista.add(pr);
            }
        } catch (Exception e) {
        }
        return lista;
    }
    
}
