<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Registrar Paciente</title>
<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
 </nav>
   
   <div class="container theme-showcase" role="main">

    <div class="jumbotron">
      <div class="container">
 	<strong><h1 class="text-center">Saludable</h1></strong>
 	  <strong><h2 class="text-success text-center">Control Diario de Pacientes</h2></strong>
      </div>
    </div>


 <div class="container">
 	<div class="panel panel-success">

 	<div class="panel-body">
					<form:form action="alta.do" commandName="nuevopaciente"
									method="post">
									<table>
										<tr>
										</tr>
										<tr>
											<td>nombre</td>
											<td><form:input path="nombre" name="nombre" /></td>
										</tr>
										<tr>
											<td>apellido</td>
											<td><form:input path="apellido" name="apellido" /></td>
										</tr>
										<tr>
											<td>DNI</td>
											<td><form:input path="DNI" name="DNI" /></td>
										</tr>
										<tr>
											<td>sexo</td>
											<td><form:input path="sexo" name="sexo" /></td>
										</tr>
										<tr>
											<td>localidad</td>
											<td><form:input path="localidad" name="localidad" /></td>
										</tr>

											<tr>
											<td>Tipo tratamiento</td>
											<td><form:input path="tipoTratamiento" name="tipoTratamiento" /></td>
										</tr>
											<tr>
											<td>Username</td>
											<td><form:input path="username" name="username" /></td>
										</tr>
											<tr>
											<td>Password</td>
											<td><form:input path="password" name="password" /></td>
										</tr>
										<tr>
											<td></td>
											<td><input type="submit" class="btn btn-success" value="Registrarse" /></td>
										</tr>

									</table>
								</form:form>
								</div></div></div>
	<footer class="footer">
      <div class="container">
      <hr>
        <strong> <h4 class="text-success pull-right"> Saludable</h4> </strong>
      </div>
    </footer>
</body>
</body>

</html>