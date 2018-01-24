
package cl.web;

import cl.model.Persona;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ContextoPersona implements ServletContextListener{

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        List <Persona> list = new ArrayList();
        list.add(new Persona("1-1", "Juan Perez", "Administrador", "jp@gmail.com", "123", true));
        list.add(new Persona("1-2", "Maria Reyes", "Persona", "mr@gmail.com", "123", false));
        list.add(new Persona("1-3", "Tomas Torres", "Administrador", "tt@gmail.com", "123", true));
        list.add(new Persona("1-4", "Hector Roa", "Persona", "hr@gmail.com", "123", true));
        list.add(new Persona("1-5", "Anibal Suazo", "Persona", "as@gmail.com", "123", true));
        
        
        //con esta linea compartimos lo que tenemos en el contexto personas al recurso global data
        sce.getServletContext().setAttribute("data", list);        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
