package cl.beans;

import javax.ejb.Local;
import cl.model.Persona;
import java.util.*;

/**
 *
 * @author alumnossur
 */
@Local
public interface PersonaBeanLocal {
    
    Persona buscar(String rut);
    Persona loguear(String rut, String clave);
    void editar(String rut, boolean activo);
    List<Persona> getPersonaList();
    String add(Persona person);//para indicar agregado correctamente o erro
    
}
