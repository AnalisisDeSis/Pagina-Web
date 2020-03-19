package Modelo;


public class Producto {
int id;
String nombre;
int paquete;
String uMedida;
float precio;

   public Producto(){
       
   }

    public Producto(int id, String nombre, int paquete, String uMedida, float precio) {
        this.id = id;
        this.nombre = nombre;
        this.paquete = paquete;
        this.uMedida = uMedida;
        this.precio = precio;
    }
   
       
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPaquete() {
        return paquete;
    }

    public void setPaquete(int paquete) {
        this.paquete = paquete;
    }

    public String getuMedida() {
        return uMedida;
    }

    public void setuMedida(String uMedida) {
        this.uMedida = uMedida;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

  


}
