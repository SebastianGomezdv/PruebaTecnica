package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.TipoIdentificacion;
import com.example.back_prueba_tecnica.repositorios.ITipoIdentificacionRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipoIdentificacionServicio {

    @Autowired
    private ITipoIdentificacionRepositorio tipoIdentificacionRepositorio;

    public List<TipoIdentificacion> listarTipos() {
        return tipoIdentificacionRepositorio.findAll();
    }
}
