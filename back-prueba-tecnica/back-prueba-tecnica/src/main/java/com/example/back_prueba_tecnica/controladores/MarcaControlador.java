package com.example.back_prueba_tecnica.controladores;

import com.example.back_prueba_tecnica.modelos.Marca;
import com.example.back_prueba_tecnica.servicios.MarcaServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/marca")
@CrossOrigin(origins = "http://localhost:5173")
public class MarcaControlador {

    @Autowired
    private MarcaServicio marcaServicio;

    @GetMapping
    public List<Marca> getMarcas() {
        return marcaServicio.listarMarcas();
    }
}
