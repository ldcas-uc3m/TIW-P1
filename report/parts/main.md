# Introducción

La aplicación web realizada está basada en la posibilidad de agregar, editar y eliminar jugadores que podrían formar parte de la plantilla del club más prestigioso de España, el Atlético de Madrid. La estructura principal que sigue se divide en dos, siendo estas la parte de Java donde se incluyen los servlets, beans y utils y la parte de WebApp donde aparecen los archivos JavaServer Pages (los que permiten dar el formato 'html' a nuestra web) junto a una hoja de estilos para poder editar fuentes y todo lo relacionado con la apariencia de la aplicación web en posibles actualizaciones.  

# Java 
Dividido en tres carpetas principales (Beans, Servlets y Utils) con sus respectivos archivos y divisiones.

## Beans

### Jugador.java
### Posiciones.java

## Servlets

### AñadirJugadorServlet.java
### EditarJugadorServlet.java
### EliminarJugadorServlet.java

## Utils

### CreateDBServlet.java
### ValidadorDNI.java

# WebApp
Dividido en los diferentes JavaServer Pages y la carpeta de hojas de estilo posible.

## index.jsp

## AñadirJugador.jsp

## EditarJugador.jsp

## ErrorPage.jsp
Esta página, como su propio nombre indica, es la destinada a mostrar errores y permitir lanzar los mensajes de error y excepciones pertinentes. Además, se incluye un botón que permite volver a la página principal para poder seguir navegando si es que ya estabas dentro de la propia aplicación cuando el error dió lugar.


