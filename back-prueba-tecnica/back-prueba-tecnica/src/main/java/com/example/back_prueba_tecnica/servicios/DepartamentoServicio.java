package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.Departamento;
import com.example.back_prueba_tecnica.repositorios.IDepartamentoRepositorio;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartamentoServicio {

    @Autowired
    private IDepartamentoRepositorio departamentoRepositorio;

    public List<Departamento> listarDepartamentos() {
        return departamentoRepositorio.findAll();
    }

    public List<Departamento> findByPais(Integer idPais) {
        return departamentoRepositorio.findByIdPais(idPais);
    }

}
