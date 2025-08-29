package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.Ciudad;
import com.example.back_prueba_tecnica.repositorios.ICiudadRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CiudadServicio {

    @Autowired
    private ICiudadRepositorio ciudadRepositorio;

    public List<Ciudad> listarCiudades() {
        return ciudadRepositorio.findAll();
    }

    public List<Ciudad> findByDepartamento(Integer idDepartamento) {
        return ciudadRepositorio.findByIdDepartamento(idDepartamento);
    }
}
