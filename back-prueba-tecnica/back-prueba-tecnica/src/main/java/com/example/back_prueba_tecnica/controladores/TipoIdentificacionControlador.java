package com.example.back_prueba_tecnica.controladores;

import com.example.back_prueba_tecnica.modelos.TipoIdentificacion;
import com.example.back_prueba_tecnica.servicios.TipoIdentificacionServicio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/tipo-identificacion")
@CrossOrigin(origins = "http://localhost:5173")
public class TipoIdentificacionControlador {

    @Autowired
    private TipoIdentificacionServicio tipoIdentificacionServicio;

    @GetMapping
    public List<TipoIdentificacion> getTipos() {
        return tipoIdentificacionServicio.listarTipos();
    }
}
