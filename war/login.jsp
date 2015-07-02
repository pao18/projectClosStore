<%@page import="com.epn.edu.ec.modelo.Cliente" %>
<%@page import="java.util.*"%>
<%List<Cliente> clientes = (List<Cliente>)request.getAttribute("clientes");%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- The HTML 4.01 Transitional DOCTYPE declaration-->
<!-- above set at the top of the file will set     -->
<!-- the browser's rendering engine into           -->
<!-- "Quirks Mode". Replacing this declaration     -->
<!-- with a "Standards Mode" doctype is supported, -->
<!-- but may lead to some differences in layout.   -->

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <title>CloStore</title>
  </head>

  <body background="fondo.JPG">
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html"><img src="/CloStore1.PNG"/></a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html"><span class="glyphicon glyphicon-home"></span>Home</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="crear_cliente.html"><span class="glyphicon glyphicon-user"></span><font color="slategray"> Registrate</font></a></li>
      </ul>
      
    </div>
  </div>
</nav>

<div class="container">
  <div class="jumbotron">
    <h1><font color="#0080FF"> Login </font></h1>      
    <form action="/cliente_servlet" method="get" role="form" name="formLogin">
  <div class="row">
  <div class="col-md-4">
  </div>
  <div class="col-md-4">
    <div class="form-group">
  			<p><label for="nombreCliente">Usuario:</label></p>
  			<input type="text" class="form-control" placeholder="Ingrese su usuario" id="usuario" name="usuario" required>
   	</div>
   	<div class="form-group">
      		<p><label for="nombreCliente">Contraseña:</label></p>
  			<input type="password" class="form-control" placeholder="Contraseña" id="contrasenia" name="contrasenia" required>
    </div>
    <div class="clearfix visible-lg"></div>
    	<input type="hidden" name="action" value="ingresar"/>
		<input type="submit" value=Ingresar class="btn btn-success">
  </div>
  </div>
  </form>
  </div>
</div>
  </body>
</html>