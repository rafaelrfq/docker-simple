package edu.pucmm.iect.crud.servicios;

import edu.pucmm.iect.crud.entidades.Estudiante;
import edu.pucmm.iect.crud.repositorios.EstudianteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EstudianteServices {

    @Autowired
    private EstudianteRepository estudianteRepository;

    public Estudiante estudiantePorMatricula(int matricula){
        System.out.println("Matricula recibida: " + matricula);
        return estudianteRepository.findEstudianteByMatricula(matricula);
    }

    public Estudiante estudiantePorNombreYApellido(String nombre, String apellido){
        System.out.println("Datos recibidos: " + nombre + " " + apellido);
        return estudianteRepository.findEstudianteByNombreAndApellido(nombre, apellido);
    }

    public List<Estudiante> listadoEstudiantesConMatricula() {
        return estudianteRepository.findAllByMatriculaNotNull();
    }

    public Estudiante crearNuevoEstudiante(Estudiante estudiante){
        estudianteRepository.save(estudiante);
        return estudiante;
    }

    public Estudiante editarEstudiante(Estudiante estudiante){
        if(estudianteRepository.existsById(estudiante.getMatricula())){
            estudianteRepository.save(estudiante);
        }
        return estudiante;
    }

    public Boolean eliminarEstudiante(int matricula){
        if(estudianteRepository.existsById(matricula)){
            estudianteRepository.delete(estudianteRepository.findEstudianteByMatricula(matricula));
            return true;
        }
        return false;
    }
}