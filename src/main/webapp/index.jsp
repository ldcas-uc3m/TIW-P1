<%@
	page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "beans.Jugador"
	import = "java.util.ArrayList"
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Plantilla del Atleti</title>
	</head>
	<body>
	
	<%
	request.getRequestDispatcher("/utils/CreateDB").include(request, response); 
	
	ArrayList<Jugador> plantilla = (ArrayList<Jugador>) getServletContext().getAttribute("plantilla");
	%>
	<ul>
	
	<%
	for (Jugador jugador : plantilla) {
	%>
		<li>
		<%= jugador.getNombre() %> <%= jugador.getApellidos() %> - <%= jugador.getDNI() %> - <%= jugador.getAlias() %> - <%= jugador.getPosicion() %>
		 <a href="EditarJugador.jsp">Editar</a>
		</li>
	<%
	}
	%>
	</ul>
	
	<a href="AñadirJugador.jsp">Añadir Jugador</a>

	
	
	
	</body>
</html>