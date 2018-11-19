package com.developer.SpringMySQL.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "distritos")
public class AppDistrito {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id_d;
	@Column(name = "nombre_d")
	private String nombre_d;
	
	public int getId_d() {
		return id_d;
	}
	public void setId_d(int id_d) {
		this.id_d = id_d;
	}
	public String getNombre_d() {
		return nombre_d;
	}
	public void setNombre_d(String nombre_d) {
		this.nombre_d = nombre_d;
	}

	public AppDistrito(int id_d, String nombre_d) {
		this.id_d = id_d;
		this.nombre_d = nombre_d;
	}
	
	public AppDistrito() {
		
	}
	
}
