
package proyectodeciencias;

import java.util.ArrayList;
import java.sql.*;

public class ProyectodeCiencias {

    
    public static void main(String[] args) {
        //CREAR Alumnos
        ArrayList listadoAlumnos = new ArrayList();
        
        Alumnos miAlumno1 =new Alumnos();
        miAlumno1.nombre = "Veronica";
        miAlumno1.apellido = "Sempertegui";
        
        Alumnos miAlumno2 =new Alumnos();
        miAlumno2.nombre = "Jorge";
        miAlumno2.apellido = "Sandoval";
        
        Alumnos miAlumno3 = new Alumnos();
        miAlumno3.nombre = "Facundo";
        miAlumno3.apellido ="Jara";
        
        listadoAlumnos.add(miAlumno1);
        listadoAlumnos.add(miAlumno2);
        listadoAlumnos.add(miAlumno3);
        
        System.out.println(listadoAlumnos);
         
        //Materias
         ArrayList listadodeMaterias = new ArrayList();
         
         Materias mimateria1 = new Materias();
         mimateria1.nombre ="Matematicas";
          Materias mimateria2 = new Materias();
         mimateria2.nombre ="Literatura";
         Materias mimateria3 = new Materias();
         mimateria3.nombre ="Programacion";
         
         listadodeMaterias.add(mimateria1);
         listadodeMaterias.add(mimateria2);
         listadodeMaterias.add(mimateria3);
         
         System.out.println(listadodeMaterias);
         
         //Inscripcion
         Inscripciones miInscripcion1 = new Inscripciones();
         miInscripcion1.alumno = miAlumno1;
         miInscripcion1.listado.add(mimateria1);
         miInscripcion1.listado.add(mimateria2);
         
         Inscripciones miInscripcion2 = new Inscripciones();
         miInscripcion2.alumno = miAlumno3;
         miInscripcion2.listado.add(mimateria3);
         miInscripcion2.listado.add(mimateria2);
         
         System.out.println("Primera inscripcion");
         System.out.println(miInscripcion1);
         System.out.println(miInscripcion2);
          
            //Conexion a la base de datos
            
            Connection con = null;
        String usuario = "root";
        String clave = "";
        String host = "jdbc:mysql://localhost:3306/proyecto_ciencias";
        String consultaSql = "SELECT * FROM alumnos;";
        try {
            con = DriverManager.getConnection(host, usuario, clave);
            PreparedStatement pstm = con.prepareStatement(consultaSql);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                System.out.println("Nombre: " + rs.getString("nombre") + " " + "email: " + rs.getString("mail"));
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    System.out.println(ex.getMessage());
                }
            }
        }

    }
    
}
