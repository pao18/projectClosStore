<%@page import="com.epn.edu.ec.modelo.Cliente" %>
<%@page import="java.util.*"%>
<%List<Cliente> clientes = (List<Cliente>)request.getAttribute("clientes");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Clientes</title>
    	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
   		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</head>
	
	<body>
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html"><img src="/CloStore1.PNG"/></a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
        <li><a href="crear_cliente.html">Registro</a></li>
      </ul>
    </div>
  </div>
</nav>
	<%if (clientes.size()==0) {%>
		<p>
			<span class="header">Producto no encontrado</span>
		</p>
	<% } else {%>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nombre</th>
				<th>Usuario</th>
				<th>e-mail</th>
				<th>Contraseña</th>
			</tr>
		</thead>
		<tbody>
<%
 for (int i = 0; i < clientes.size(); i++) {
	 Cliente p = (Cliente) clientes.get(i);
%>
    		<tr>
    			<td><%= p.getIdCliente()%></td>
    			<td><%= p.getNombre() %></td>
    			<td><%= p.getUsuario() %></td>
    			<td><%= p.getEmail() %></td>
    			<td><%= p.getContrasenia() %></td>
    		</tr>

<%}%>
   		</tbody>
  	</table>
<%}%>
  </body>
</html>