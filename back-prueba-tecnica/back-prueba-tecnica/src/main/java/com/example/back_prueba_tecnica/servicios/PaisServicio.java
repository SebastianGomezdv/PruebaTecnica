package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.Pais;
import com.example.back_prueba_tecnica.repositorios.IPaisRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaisServicio {

    @Autowired
    private IPaisRepositorio paisRepositorio;

    public List<Pais> listarPaises() {
        return paisRepositorio.findAll();
    }
}
