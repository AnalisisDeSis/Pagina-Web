package Modelo;


public class Empleado {
 int id;
 String user;
 String pass;
 int numero;
 
 public Empleado(){
     
 }

    public Empleado(int id, String user, String pass, int numero) {
        this.id = id;
        this.user = user;
        this.pass = pass;
        this.numero = numero;
    }

 
 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }
 
 
}
