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
		<h1>Plantilla del Atleti</h1>
	</head>
	<body>
	
	<%
	request.getRequestDispatcher("/utils/CreateDB").include(request, response); 
	
	ArrayList<Jugador> plantilla = (ArrayList<Jugador>) getServletContext().getAttribute("plantilla");
	%>
	<ul>
	
	<%
	int i = 0;
	for (Jugador jugador : plantilla) {
	%>
		<li>
		<%= jugador.getNombre() %> <%= jugador.getApellidos() %> - <%= jugador.getDNI() %> - <%= jugador.getAlias() %> - <%= jugador.getPosicion() %>
		 <a href="EditarJugador.jsp?index=<%=i%> ">Editar</a>
		 <a href="EliminarJugadorServlet?index=<%=i%> ">Eliminar</a>
		</li>
		
	<%
		i++;
	}
	%>
	</ul>
	
	<a href="AñadirJugador.jsp">Añadir Jugador</a>

	
	
	
	</body>
</html>