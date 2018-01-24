package cl.beans;

import cl.model.Persona;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Singleton;

/**
 *
 * @author alumnossur
 */
@Singleton
public class PersonaBean implements PersonaBeanLocal {
    
    private List<Persona> list = new ArrayList<>();
    
    public PersonaBean(){
        list.add(new Persona("1-1", "Juan Perez Rojas", "Administrador", "jp@gmail.com", "123", true));
        list.add(new Persona("1-2", "Maria Reyes Ramirez", "Persona", "mr@gmail.com", "123", false));
        list.add(new Persona("1-3", "Tomas Torres Perines", "Administrador", "tt@gmail.com", "123", true));
        list.add(new Persona("1-4", "Hector Roa Araya", "Persona", "hr@gmail.com", "123", true));
        list.add(new Persona("1-5", "Anibal Suazo Toro", "Persona", "as@gmail.com", "123", true));
    }

    @Override
    public Persona buscar(String rut) {
        for(Persona persona : list){
            if(persona.getRut().equals(rut)){
                return persona;
            }
        }
        return null;
    }

    @Override
    public Persona loguear(String rut, String clave) {
        for(Persona persona : list){
            if(persona.getRut().equals(rut) && persona.getClave().equals(clave) && persona.isActivo()){
                return persona;
            }
        }
        return null;
    }

    @Override
    public void editar(String rut, boolean activo) {
        Persona person = buscar(rut);
        person.setActivo(activo);
    }

    @Override
    public List<Persona> getPersonaList() {
        return list;
    }

    @Override
    public String add(Persona person) {
        Persona p = buscar(person.getRut());
        if(p==null){
            list.add(person);
            return "Persona creada con exito";
        }
        return "Rut ya se encuentra registrado";
    }

    
}
