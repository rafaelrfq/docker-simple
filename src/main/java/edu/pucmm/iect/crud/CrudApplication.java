package edu.pucmm.iect.crud;

import edu.pucmm.iect.crud.entidades.Estudiante;
import edu.pucmm.iect.crud.repositorios.EstudianteRepository;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class CrudApplication {

    public static void main(String[] args) {

        ApplicationContext applicationContext = SpringApplication.run(CrudApplication.class, args);

        EstudianteRepository estudianteRepository = (EstudianteRepository) applicationContext.getBean("estudianteRepository");
        Estudiante estudiante = new Estudiante();
        estudiante.setMatricula(20100748);
        estudiante.setNombre("Rafael");
        estudiante.setApellido("Felipe");
        estudiante.setTelefono("8092201111");
        estudianteRepository.save(estudiante);
    }

}