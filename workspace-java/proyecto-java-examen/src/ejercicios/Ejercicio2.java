package ejercicios;
import ejercicios.Persona;

import java.util.Date;

import ejercicios.EnumTipoDocumento;

/**
 * A. Crear una clase Persona con los siguientes campos
 * (con sus respectivos getters, setters y constructor)
 * 
 * TipoDocumento - enum (dni/libretacivica) 
 * NroDocumento - Integer
 * Nombre - String
 * Apellido - String
 * FechaNacimiento - Date
 * 
 * B. En el método main de la clase "Ejercicio2" crear una nueva instancia
 * de la clase persona y settearle valores reales con tus datos
 * 
 * 
 * C. En el método main de la clase "Ejercicio 2" imprimir los valores en 
 * consola 
 * (crear método main e imprimir valores) 
 *  
 * @author examen
 *
 */
public class Ejercicio2 {

	/**
	 * 
	 */
	public Ejercicio2() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	
		Persona persona = new Persona();
		persona.setNombre("Bianca");
		persona.setApellido("Salvucci");
		persona.setTipoDocumento(EnumTipoDocumento.dni);
		persona.setNroDocumento(39367910);
		Date fecha = new Date(96,4,3);
		persona.setFechaNacimiento(fecha);
		
		System.out.println(persona.getApellido());
		System.out.println(persona.getNombre());
		System.out.println(persona.getTipoDocumento());
		System.out.println(persona.getNroDocumento());
		System.out.println(persona.getFechaNacimiento());

	}

}
