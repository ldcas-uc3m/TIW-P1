package beans;


enum Posicion {
	Delantero,
	Defensa,
	Medio,
	Portero
}

public class Posiciones implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	
    public Posiciones() {
    }
    
    public int numDelanteros = 0;
    public int numDefensas = 0;
    public int numMedios = 0;
    public int numPorteros = 0;
    
    private int maxDelanteros = 6;
    private int maxDefensas = 8;
    private int maxMedios = 8;
    private int maxPorteros = 3;
    
    public void añadirPosicion(String posicion) throws IllegalArgumentException{
    	
    	Posicion pos = null;
    	
    	try {
    		pos = Posicion.valueOf(posicion);
    	}
    	catch (IllegalArgumentException e){
    		throw new IllegalArgumentException("Posición no reconocida");
    	}
   
    	switch(pos) {
	    	case Delantero:
	    		if (this.numDelanteros < maxDelanteros) {
	    			this.numDelanteros += 1;
	    		}
	    		else throw new IllegalArgumentException("Se ha superado el número permitido de delanteros");
	    		
	    		break;
	    	case Defensa:
	    		if (this.numDefensas < maxDefensas) {
	    			this.numDefensas += 1;
	    		}
	    		else throw new IllegalArgumentException("Se ha superado el número permitido de defensas");
	
	    		break;
	    	case Medio:
	    		if (this.numMedios < maxMedios) {
	    			this.numMedios += 1;
	    		}
	    		else throw new IllegalArgumentException("Se ha superado el número permitido de medios");
	
	    		break;
	    	case Portero:
	    		if (this.numPorteros < maxPorteros) {
	    			this.numPorteros += 1;
	    		}
	    		else throw new IllegalArgumentException("Se ha superado el número permitido de porteros");
	
	    		break;
	    }
    }

}
