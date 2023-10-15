package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;


import beans.Jugador;
import beans.Posiciones;

/**
 * Servlet implementation class AñadirJugadorServlet
 */
@WebServlet("/AñadirJugadorServlet")
public class AñadirJugadorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AñadirJugadorServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// obtenemos la lista de jugadores y posiciones
		ArrayList<Jugador> plantilla = (ArrayList<Jugador>) getServletContext().getAttribute("plantilla");
		Posiciones posiciones = (Posiciones) getServletContext().getAttribute("posiciones");
		
		// añadir jugador
		Jugador nuevoJugador = new Jugador(
			(String) request.getParameter("nombre"),
			(String) request.getParameter("apellidos"),
			(String) request.getParameter("DNI"),
			(String) request.getParameter("alias"),
			(String) request.getParameter("posicion")
		);

		// actualizar número de posiciones
		posiciones.añadirPosicion(nuevoJugador.getPosicion());
	
		plantilla.add(nuevoJugador);

		// guardarlo en el ServletContext
		getServletContext().setAttribute("plantilla", plantilla);
		getServletContext().setAttribute("posiciones", posiciones);

	}

}
