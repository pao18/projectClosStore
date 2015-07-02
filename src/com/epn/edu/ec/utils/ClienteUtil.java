package com.epn.edu.ec.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jdo.PersistenceManager;
import javax.jdo.Query;

import com.epn.edu.ec.modelo.Cliente;
import com.epn.edu.ec.pmf.GenericPMF;

public class ClienteUtil {
	public static void insertarCliente(String nombre, String usuario, String email, String contrasenia) {
		PersistenceManager pmf = GenericPMF.getPmfinstancia().getPersistenceManager();
		Cliente cliente = new Cliente(nombre,usuario,email,contrasenia);
		pmf.makePersistent(cliente);
	}
	
	@SuppressWarnings("unchecked")
	public static List<Cliente> listarClientes() {
		final PersistenceManager pmf = GenericPMF.getPmfinstancia().getPersistenceManager();
		final Query query = pmf.newQuery(Cliente.class);
		List<Cliente> cliente = (List<Cliente>)query.execute();
		System.out.println("Enviando datos...");
		return cliente;
	}
	
	@SuppressWarnings("unchecked")
	public static List<Cliente> buscarPassword(String usuario) {
		final PersistenceManager pmf = GenericPMF.getPmfinstancia().getPersistenceManager();
		final Query query = pmf.newQuery(Cliente.class);
		query.setFilter("usuario== :TheUser");
		Map<String, String> paramValues = new HashMap();
		paramValues.put("TheUser", usuario);
		List<Cliente> password = (List<Cliente>)query.executeWithMap(paramValues);
		return password;
	}
}
