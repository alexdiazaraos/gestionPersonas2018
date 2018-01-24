
package cl.model;

import java.util.List;
import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class Utilidad implements IUtilidad{

    @Override
    public Persona buscar(String rut, List<Persona> list) {
        for(Persona p:list){
            if (p.getRut().equals(rut)) {//si el rut encontrado es igual al rut buscado que lo retorne
                return p;
            }
        }
        return null;//si NO encuentra el rut buscado retorna null
    }

    @Override
    public Persona loguear(String rut, String clave, List<Persona> list) {
        for (Persona p:list) {
            if(p.getRut().equals(rut) && p.getClave().equals(clave) && p.isActivo()){
                return p;
            }
        }
        return null;
    }
    
}
