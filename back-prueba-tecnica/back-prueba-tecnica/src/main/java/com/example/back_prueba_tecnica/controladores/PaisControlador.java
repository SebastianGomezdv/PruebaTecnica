package com.example.back_prueba_tecnica.controladores;

import com.example.back_prueba_tecnica.modelos.Pais;
import com.example.back_prueba_tecnica.servicios.PaisServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pais")
@CrossOrigin(origins = "http://localhost:5173")
public class PaisControlador {

    @Autowired
    private PaisServicio paisServicio;

    // endpoint para listar todos los países
    @GetMapping
    public List<Pais> getPaises() {
        return paisServicio.listarPaises();
    }
}
