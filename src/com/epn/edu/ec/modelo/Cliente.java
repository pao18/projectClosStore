package com.epn.edu.ec.modelo;

import javax.jdo.annotations.*;

@PersistenceCapable(identityType = IdentityType.APPLICATION)

public class Cliente {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Long idCliente;
	@Persistent
	private String nombre;
	@Persistent
	private String usuario;
	@Persistent
	private String email;
	@Persistent
	private String contrasenia;
	
	public Cliente(String nombre, String usuario,String email, String contrasenia) {
		this.nombre = nombre;
		this.usuario = usuario;
		this.email = email;
		this.contrasenia = contrasenia;
	}

	public Long getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(Long idCliente) {
		this.idCliente = idCliente;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}


