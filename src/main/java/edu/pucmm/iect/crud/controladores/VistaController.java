package edu.pucmm.iect.crud.controladores;

import edu.pucmm.iect.crud.entidades.Estudiante;
import edu.pucmm.iect.crud.servicios.EstudianteServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;
import java.util.Map;

@Controller
@RequestMapping("/")
public class VistaController {
    @Autowired
    private EstudianteServices estudianteServices;

    @GetMapping("/")
    public String index() { return "index"; }

    @GetMapping("/listado")
    public String listado(Model model) {
        model.addAttribute("estudiantes", estudianteServices.listadoEstudiantesConMatricula());
        return "list";
    }

    @GetMapping("/visualizar")
    public String visualizar(Model model, @PathParam("matricula") Integer matricula){
        model.addAttribute("estudiante", estudianteServices.estudiantePorMatricula(matricula));
        return "view";
    }

    @GetMapping("/crear")
    public String crear() {
        return "create";
    }

    @PostMapping("/crear")
    public String creado(@ModelAttribute("estudiante") Estudiante estudiante) {
        estudianteServices.crearNuevoEstudiante(estudiante);
        return "redirect:/crear";
    }

    @GetMapping("/editar")
    public String editar(Model model, @PathParam("matricula") Integer matricula) {
        model.addAttribute("estudiante", estudianteServices.estudiantePorMatricula(matricula));
        return "edit";
    }

    @PostMapping("/editar")
    public String editado(@ModelAttribute("estudiante") Estudiante estudiante) {
        estudianteServices.editarEstudiante(estudiante);
        return "redirect:/listado";
    }

    @GetMapping("/eliminar")
    public String eliminar(@PathParam("matricula") Integer matricula){
        estudianteServices.eliminarEstudiante(matricula);
        return "redirect:/listado";
    }
}
