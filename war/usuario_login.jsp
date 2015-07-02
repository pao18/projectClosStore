<%String username = request.getParameter("username"); %>
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
    <style>
	  .carousel-inner > .item > img,
	  .carousel-inner > .item > a > img {
	      width: 40%;
	      margin: auto;
	  }
	</style>
  </head>

  <body background="fondo.JPG">
    <nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="/usuario_login.jsp"><img src="/CloStore1.PNG"/></a>
	    </div>
	    <div>
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="/usuario_login.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
        	<li><a href="index.html"><span class="glyphicon glyphicon-log-out"></span><font color="slategray"> Logout</font></a></li>
      	  </ul>
		  <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><img src="/mostrarcarrito.JPG"/><font color="slategray"> Añadir al carrito</font></a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><font color="slategray"> <%=username %></font></a></li>
          </ul>
	    </div>
	  </div>
	</nav>
	
	
<div class="container">
	<div class="jumbotron">
		<div class="row">
		    <div class="col-md-3">
		      <h1><font color="#0080FF"><img src="/CloStore.PNG"/></font></h1>      
    		  <p>CloStore es un tienda en linea que ofrece prendas de vestir para caballero </p>      
    		  <a href="#" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-search"></span> Buscar</a>
		    </div>
		
		    <div class="col-md-9">
			  <br>
			  <div id="myCarousel" class="carousel slide" data-ride="carousel">
			    <!-- Indicators -->
			    <ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
			
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner" role="listbox">
			
			      <div class="item active">
			        <img src="/elegantes1.JPG" alt="Camisas" width="384" height="384">
			        <div class="carousel-caption">
			          <h3>Camisas</h3>
			          <p>Camisas para todos los gustos</p>
			        </div>
			      </div>
			      
			      <div class="item">
			        <img src="/elegantes2.JPG" alt="Ternos" width="384" height="384">
			        <div class="carousel-caption">
			          <h3>Ternos</h3>
			          <p>Ternos elegantes y actuales.</p>
			        </div>
			      </div>
			    
			      <div class="item">
			        <img src="elegantes3.JPG" alt="Sueter" width="384" height="384">
			        <div class="carousel-caption">
			          <h3>Sueter</h3>
			          <p>Un estilo mas fresco.</p>
			        </div>
			      </div>
			 
			    </div>
			
			    <!-- Left and right controls -->
			    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			      <span class="sr-only">Previous</span>
			    </a>
			    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			      <span class="sr-only">Next</span>
			    </a>
		  </div>
		</div>
	</div>
    <div class="clearfix visible-lg"></div>
  </div>
</div>

  </body>
</html>
