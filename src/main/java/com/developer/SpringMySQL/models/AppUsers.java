package com.developer.SpringMySQL.models;

import javax.persistence.*;
@Entity
@Table(name = "usuario")
public class AppUsers {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public int id;
    @Column(name = "nombre")
    public String nombre;
    @Column(name = "email")
    public String correo;
    @Column(name = "telefono")
    public int telefono;
    @Column(name = "password")
    public String password;

    public AppUsers() {
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

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AppUsers(int id, String nombre, String correo, int telefono, String password) {
		this.id = id;
		this.nombre = nombre;
		this.correo = correo;
		this.telefono = telefono;
		this.password = password;
	}
    
    

}
