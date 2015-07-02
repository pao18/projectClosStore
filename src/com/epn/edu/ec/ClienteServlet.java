package com.epn.edu.ec;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.epn.edu.ec.modelo.Cliente;
import com.epn.edu.ec.utils.ClienteUtil;

@SuppressWarnings("serial")
public class ClienteServlet extends HttpServlet{
	
	public void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		if(req.getParameter("action").equals("create")){
			String nombre = req.getParameter("nombre");
			String apellido = req.getParameter("usuario");
			String email = req.getParameter("email");
			String contrasenia = req.getParameter("contrasenia");
			ClienteUtil.insertarCliente(nombre,apellido,email,contrasenia);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.html");
			rd.forward(req, resp);
		}
		else if(req.getParameter("action").equals("show")){
			List<Cliente> clientes = ClienteUtil.listarClientes();
			req.setAttribute("clientes", clientes);
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/mostrar_clientes.jsp");
			rd.forward(req,resp);
		}
		else if(req.getParameter("action").equals("ingresar")){
			String usuario = req.getParameter("usuario");
			String contrasenia = req.getParameter("contrasenia");
			String username = "";
			List<Cliente> auxcli = ClienteUtil.buscarPassword(usuario);
			String password = "";
			for(Cliente c: auxcli) {
				password = c.getContrasenia();
				username = c.getNombre();
			}
			RequestDispatcher rd;
			if(password.compareTo(contrasenia)==0) {
				rd = getServletContext().getRequestDispatcher("/usuario_login.jsp?username="+username);
			}
			else {
				rd = getServletContext().getRequestDispatcher("/login.jsp");
			}
			rd.forward(req, resp);
		}
	}
	
	@Override
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     processRequest(request, response);
	 } 
	 
	 @Override
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     processRequest(request, response);
	 }


}
