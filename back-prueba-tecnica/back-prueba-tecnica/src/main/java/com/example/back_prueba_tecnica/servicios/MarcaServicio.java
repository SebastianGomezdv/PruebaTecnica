package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.Marca;
import com.example.back_prueba_tecnica.repositorios.IMarcaRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MarcaServicio {

    @Autowired
    private IMarcaRepositorio marcaRepositorio;

    public List<Marca> listarMarcas() {
        return marcaRepositorio.findAll();
    }
}
