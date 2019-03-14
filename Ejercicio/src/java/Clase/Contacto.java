/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clase;

/**
 *
 * @author E201
 */
public class Contacto {
    
    private int id;
    private String nombre;
    private String apellidos;
    private String preferido;
    private  String [] hobbies;

    public Contacto() {
    }

    public Contacto(int id, String nombre, String apellidos, String preferido, String[] hobbies) {
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.preferido = preferido;
        this.hobbies = hobbies;
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

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPreferido() {
        return preferido;
    }

    public void setPreferido(String preferido) {
        this.preferido = preferido;
    }

    public String[] getHobbies() {
        return hobbies;
    }

    public void setHobbies(String[] hobbies) {
        this.hobbies = hobbies;
    }
    
    
    
}
