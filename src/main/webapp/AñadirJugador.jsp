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
    <div>

      <div class="add-event-page-container">
        <div class="add-event-page-body">
          <div class="add-event-page-container01">
            <div class="add-event-page-title">
              <h1 class="add-event-page-heading">Añadir nuevo jugador:</h1>
            </div>
            <div class="add-event-page-formulario">
              <form action="StoreEvents" method="post" class="add-event-page-form">
                <div class="add-event-page-campo1">
                  <div class="add-event-page-container02">
                    <label class="add-event-page-text">Nombre:</label>
                  </div>
                  <div class="add-event-page-container03">
                    <input type="text" class="add-event-page-textinput input" name="nombre"/>
                  </div>
                </div>
                <div class="add-event-page-campo2">
                  <div class="add-event-page-container04">
                    <label class="add-event-page-text1">Apellidos:</label>
                  </div>
                  <div class="add-event-page-container05">
                    <input type="text" class="input" name="apellidos"/>
                  </div>
                </div>
                <div class="add-event-page-campo3">
                  <div class="add-event-page-container06">
                    <label class="add-event-page-text2">DNI:</label>
                  </div>
                  <div class="add-event-page-container07">
                    <input type="date" class="input" name="DNI"/>
                  </div>
                </div>
                <div class="add-event-page-campo4">
                  <div class="add-event-page-container08">
                    <label class="add-event-page-text3">Alias:</label>
                  </div>
                  <div class="add-event-page-container09">
                    <input type="text" class="input" name="alias"/>
                  </div>
                </div>
                <div class="add-event-page-campo5">
                  <div class="add-event-page-container10">
                    <label class="add-event-page-text4">Posición:</label>
                  </div>
                  <div class="add-event-page-container11">
                    <input type="text" class="input" name="posicion"/>
                  </div>
                </div>

            <div class="add-event-page-button">
              <div class="solid-button-container">
                <button type="submit" class="solid-button-button button">
                  <span>Añadir</span>
                </button>
              </div>
              <div class="add-event-page-container14">
                <div class="solid-button-container">
                  <button class="solid-button-button button">
                    <span><a href="EditarJugadores.jsp">Cancelar</a></span>
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