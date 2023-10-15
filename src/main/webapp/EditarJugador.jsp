<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Añadir Nuevo Jugador</title>
    <meta property="og:title" content="Añadir nuevo jugador - Atleti">
    <style data-tag="reset-style-sheet">
      html {  line-height: 1.15;}body {  margin: 0;}* {  box-sizing: border-box;  border-width: 0;  border-style: solid;}p,li,ul,pre,div,h1,h2,h3,h4,h5,h6 {  margin: 0;  padding: 0;}button {  background-color: transparent;}button,input,optgroup,select,textarea {  font-family: inherit;  font-size: 100%;  line-height: 1.15;  margin: 0;}button,select {  text-transform: none;}button,[type="button"],[type="reset"],[type="submit"] {  -webkit-appearance: button;}button::-moz-focus-inner,[type="button"]::-moz-focus-inner,[type="reset"]::-moz-focus-inner,[type="submit"]::-moz-focus-inner {  border-style: none;  padding: 0;}button:-moz-focus,[type="button"]:-moz-focus,[type="reset"]:-moz-focus,[type="submit"]:-moz-focus {  outline: 1px dotted ButtonText;}a {  color: inherit;  text-decoration: inherit;}input {  padding: 2px 4px;}img {  display: block;}html { scroll-behavior: smooth  }
    </style>
    <style data-tag="default-style-sheet">
      html {
        font-family: Poppins;
        font-size: 16px;
      }

      body {
        font-weight: 400;
        font-style:normal;
        text-decoration: none;
        text-transform: none;
        letter-spacing: normal;
        line-height: 1.55;
        color: var(--dl-color-gray-black);
        background-color: var(--dl-color-gray-white);

      }
    </style>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap"
      data-tag="font"
    />
    <link rel="stylesheet" href="styles/style.css" />
  </head>
  <body>
  
  <% String index = request.getParameter("index"); %>
  
  <h2>El indice del jugador es: <%= index %></h2>
  
    <div>

      <div class="añadir-jugador-container00">
        <div class="añadir-jugador-body">
          <div class="añadir-jugador-container01">
            <div class="añadir-jugador-title">
              <h1 class="añadir-jugador-heading">Editar jugador:</h1>
            </div>
            
           
            
            <div class="añadir-jugador-formulario">
              <form action="EditarJugadorServlet?index=<%=index%>" method="post" class="añadir-jugador-form">
                <div class="añadir-jugador-campo1">
                  <div class="añadir-jugador-container02">
                    <label class="añadir-jugador-text0">Nombre:</label>
                  </div>
                  <div class="añadir-jugadorcontainer03">
                    <input type="text" class="añadir-jugador-textinput input" name="nombre"/>
                  </div>
                </div>
                <div class="añadir-jugador-campo2">
                  <div class="añadir-jugador-container04">
                    <label class="añadir-jugador-text1">Apellidos:</label>
                  </div>
                  <div class="añadir-jugador-container05">
                    <input type="text" class="input" name="apellidos"/>
                  </div>
                </div>
                <div class="añadir-jugador-campo3">
                  <div class="añadir-jugador-container06">
                    <label class="añadir-jugador-text2">DNI:</label>
                  </div>
                  <div class="añadir-jugador-container07">
                    <input type="text" class="input" name="DNI"/>
                  </div>
                </div>
                <div class="añadir-jugador-campo4">
                  <div class="añadir-jugador-container08">
                    <label class="añadir-jugador-text3">Alias:</label>
                  </div>
                  <div class="añadir-jugador-container09">
                    <input type="text" class="input" name="alias"/>
                  </div>
                </div>
                <div class="añadir-jugador-campo5">
                  <div class="añadir-jugador-container10">
                    <label class="añadir-jugador-text4">Posición:</label>
                  </div>
                  <div class="añadir-jugador-container11">
                    <input type="text" class="input" name="posicion"/>
                  </div>
                </div>

            <div class="añadir-jugador-button">
              <div class="solid-button-container">
                <button type="submit" class="solid-button-button button">
                  <span>Guardar Cambios</span>
                </button>
              </div>
              
              <div class="añadir-jugador-container14">
                <div class="solid-button-container">
                  <button class="solid-button-button button">
                      <span><a href="index.jsp">Cancelar</a></span>
                  </button>
                  </div>
              </div>
                     
              
                      </div>
				</form>     
			     </div> 
              </div>
            </div>
          </div>
		</div>
		
		
		
    <script src="https://unpkg.com/@teleporthq/teleport-custom-scripts"></script>
  </body>
</html>