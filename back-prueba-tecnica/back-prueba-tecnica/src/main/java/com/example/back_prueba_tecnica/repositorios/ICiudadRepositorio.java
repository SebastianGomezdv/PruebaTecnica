package com.example.back_prueba_tecnica.repositorios;

import com.example.back_prueba_tecnica.modelos.Ciudad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ICiudadRepositorio extends JpaRepository<Ciudad, Integer> {
    List<Ciudad> findByIdDepartamento(Integer idDepartamento);
}
