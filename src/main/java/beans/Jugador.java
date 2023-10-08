package beans;

public class Jugador implements java.io.Serializable {
	private static final long serialVersionUID = 1L;

    public Jugador(String nombre, String apellidos, String DNI, String alias, String posicion) {
        super();
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.DNI = DNI;
        this.alias = alias;
        this.posicion = posicion;
    }
    
    String nombre;
    String apellidos;
    String DNI;
    String alias;
    String posicion;
    
    public String getNombre() {
    	return nombre;
    }
    
    public void setNombre(String nombre) {
    	this.nombre = nombre;
    }
    
    public String getApellidos() {
    	return apellidos;
    }
    
    public void setApellidos(String apellidos) {
    	this.apellidos = apellidos;
    }
    
    public String getDNI() {
    	return DNI;
    }
    
    public void setDNI(String DNI) {
    	this.DNI = DNI;
    }
    
    public String getAlias() {
    	return alias;
    }
    
    public void setAlias(String alias) {
    	this.alias = alias;
    }
    
    public String getPosicion() {
    	return posicion;
    }
    
    public void setPosicion(String posicion) {
    	this.posicion = posicion;
    }

}
