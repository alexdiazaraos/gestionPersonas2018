package cl.model;

import java.util.List;

public interface IUtilidad {
    Persona buscar(String rut, List<Persona>list);
    Persona loguear(String rut, String clave, List<Persona>list);
}
