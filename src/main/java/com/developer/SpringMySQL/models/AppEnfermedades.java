package com.developer.SpringMySQL.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "enfermedad")
public class AppEnfermedades {
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "nombre")
	private String nombre_enf;
	@Column(name = "descripcion")
	private String descripcion_enf;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre_enf() {
		return nombre_enf;
	}
	public void setNombre_enf(String nombre_enf) {
		this.nombre_enf = nombre_enf;
	}
	public String getDescripcion_enf() {
		return descripcion_enf;
	}
	public void setDescripcion_enf(String descripcion_enf) {
		this.descripcion_enf = descripcion_enf;
	}

	public AppEnfermedades(int id,String nombre_enf, String descripcion_enf) {
		this.id=id;
		this.nombre_enf = nombre_enf;
		this.descripcion_enf = descripcion_enf;
	}
	
	public AppEnfermedades() {
		
	}
	
}
