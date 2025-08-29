package com.example.back_prueba_tecnica.controladores;

import com.example.back_prueba_tecnica.modelos.Departamento;
import com.example.back_prueba_tecnica.servicios.DepartamentoServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/departamento")
@CrossOrigin(origins = "http://localhost:5173")
public class DepartamentoControlador {

    @Autowired
    private DepartamentoServicio departamentoServicio;

    @GetMapping
    public List<Departamento> getDepartamentos() {
        return departamentoServicio.listarDepartamentos();
    }

    @GetMapping("/pais/{idPais}")
    public ResponseEntity<List<Departamento>> getDepartamentosByPais(@PathVariable Integer idPais) {
        List<Departamento> departamentos = departamentoServicio.findByPais(idPais);
        return ResponseEntity.ok(departamentos);
    }

}
