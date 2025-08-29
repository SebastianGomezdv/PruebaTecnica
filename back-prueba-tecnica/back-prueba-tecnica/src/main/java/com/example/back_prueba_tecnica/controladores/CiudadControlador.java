package com.example.back_prueba_tecnica.controladores;

import com.example.back_prueba_tecnica.modelos.Ciudad;
import com.example.back_prueba_tecnica.servicios.CiudadServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/ciudad")
@CrossOrigin(origins = "http://localhost:5173")
public class CiudadControlador {

    @Autowired
    private CiudadServicio ciudadServicio;

    @GetMapping
    public List<Ciudad> getCiudades() {
        return ciudadServicio.listarCiudades();
    }

    @GetMapping("/departamento/{idDepartamento}")
    public ResponseEntity<List<Ciudad>> getCiudadesByDepartamento(@PathVariable Integer idDepartamento) {
        List<Ciudad> ciudades = ciudadServicio.findByDepartamento(idDepartamento);
        return ResponseEntity.ok(ciudades);
    }
}
