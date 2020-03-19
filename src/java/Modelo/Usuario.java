package Modelo;


public class Usuario {
 String Nombre;
 String Nit;
 int id;
 
 public Usuario(){
     
 }

    public Usuario(String Nombre, String Nit, int id) {
        this.Nombre = Nombre;
        this.Nit = Nit;
        this.id = id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNit() {
        return Nit;
    }

    public void setNit(String Nit) {
        this.Nit = Nit;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

  
}
