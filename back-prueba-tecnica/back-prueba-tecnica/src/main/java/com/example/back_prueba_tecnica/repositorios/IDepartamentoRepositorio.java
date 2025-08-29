package com.example.back_prueba_tecnica.repositorios;

import com.example.back_prueba_tecnica.modelos.Departamento;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IDepartamentoRepositorio extends JpaRepository<Departamento, Integer> {
    List<Departamento> findByIdPais(Integer idPais);
}
