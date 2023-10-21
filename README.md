# Práctica 1: Plantilla de un equipo de fútbol
By Luis Daniel Casais Mezquida, Pablo Montero Poyatos, Javier Moreno Yébenes & Alberto Urbano Ballesteros  
Tecnologías informáticas para la web 23/24  
Bachelor's Degree in Computer Science and Engineering  
Universidad Carlos III de Madrid


## Enunciado de la práctica
Se ha de construir una aplicación Web Dinámica, en la que se mantenga los nombres y posiciones de la plantilla de un equipo de futbol.

Por cada jugador se tendrá la siguiente información:
- Nombre, Apellidos
- DNI
- Alias
- Posición. Exclusivamente estas: delantero, defensa, medio y portero.

Las restricciones por cada equipo son las siguientes:
- Cada plantilla tiene 25 jugadores
- Exclusivamente como mucho 3 porteros, 8 defensas, 8 medios y 6 delanteros



## Instalación

El proyecto está desarrollado y pensado para ejecutarse en Eclipse con Payara, recomendamos las versiones específicas.  
Para importar el proyecto:
1. Descarga e instala [Java SE 17](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
2. Descarga e instala [Eclipse IDE for Enterprise Java and Web Developers 2023-09](https://www.eclipse.org/downloads/packages/release/2023-09/r/eclipse-ide-enterprise-java-and-web-developers)
3. Descarga y descomprime [Payara-5.2022.3](
https://nexus.payara.fish/#browse/browse:payara-community:fish%2Fpayara%2Fdistributions%2Fpayara%2F5.2022.3%2Fpayara-5.2022.3.zip)
3. Instala [Payara Tools para Eclipse](https://marketplace.eclipse.org/content/payara-tools), preferiblemente desde el Eclipse Marketplace (en Eclipse: `Help` → `Eclipse Marketplace` → `Search` → `Find` y escribir "`Payara Tools`" → `Install`)
4. Crea un servidor de Payara:
    1. Abre la vista `Servers` en `Window` → `Show View` → `Other` → `Server` → `Server`.
    2. Ve a la vista `Servers` (abajo) y haz clic en `No servers are available. Click this link to create new server...` → `Payara` → `Payara`, y selecciona la versión 17 de Java y la dirección de la carpeta de payara (`payara5/`).


## Ejecución

- **Con Eclipse EE:** Si has seguido los pasos de la [Instalación](#instalación), asegúrate de tener seleccionado el proyecto y haz clic en `Run` → `Run As` → `Run on Server` y selecciona tu servidor de Payara.
- **A través de la línea de comandos:** Una vez exportado [el archivo WAR](https://github.com/ldcas-uc3m/TIW-P1/releases/download/v0.1.0/TIW-P1.war) (e instalado Java y Payara):
    ```bash
    JAVA_HOME=<path-to-java>
    PAYARA_PATH=<path-to-payara>

    sudo $PAYARA_PATH/bin/asadmin start-domain -d
    sudo $PAYARA_PATH/bin/asadmin deploy TIW-P1.war
    ```

    Recuerda que se te abrirá la aplicación en http://localhost:8080/TIW-P1.

    Para quitarlo usa:
    ```bash
    sudo $PAYARA_PATH/bin/asadmin undeploy TIW-P1
    ```
