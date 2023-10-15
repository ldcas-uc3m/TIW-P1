<%@
	page language="java"
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "beans.Jugador"
    import = "beans.Posiciones"
	import = "java.util.ArrayList"
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
</head>
<body>
	<h1>Plantilla del Atleti</h1>
	
	<%
	request.getRequestDispatcher("/utils/CreateDB").include(request, response); 
	
	ArrayList<Jugador> plantilla = (ArrayList<Jugador>) getServletContext().getAttribute("plantilla");
	Posiciones posiciones = (Posiciones) getServletContext().getAttribute("posiciones");
	%>
	
	<h4>
		Porteros: <%= posiciones.numPorteros %>/<%= posiciones.maxPorteros %> |
		Defensas: <%= posiciones.numDefensas %>/<%= posiciones.maxDefensas %> |
		Medios: <%= posiciones.numMedios %>/<%= posiciones.maxMedios %> |
		Delanteros: <%= posiciones.numDelanteros %>/<%= posiciones.maxDelanteros %>
	</h4>
	
	
	<ol start="0">
	<%
	int i = 0;
	for (Jugador jugador : plantilla) {
	%>
		<li>
		[<%= jugador.getPosicion() %>] <%= jugador.getNombre() %> "<%= jugador.getAlias() %>" <%= jugador.getApellidos() %> - <%= jugador.getDNI() %>
		 <a href="EditarJugador.jsp?index=<%=i%> ">Editar</a>
		 <a href="EliminarJugadorServlet?index=<%=i%> ">Eliminar</a>
		</li>
		
	<%
		i++;
	}
	%>
	</ol>
	
	<a href="A�adirJugador.jsp">A�adir Jugador</a>
	
	
	</body>
</html>