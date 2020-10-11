package edu.pucmm.iect.crud.repositorios;

import edu.pucmm.iect.crud.entidades.Estudiante;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EstudianteRepository extends JpaRepository<Estudiante, Integer> {
    // Para encontrar estudiante individual pasando ciertos parametros
    Estudiante findEstudianteByMatricula(int matricula);
    Estudiante findEstudianteByNombreAndApellido(String nombre, String apellido);

    // Para encontrar o listar todos los estudiantes
    List<Estudiante> findAllByMatriculaNotNull();


}
