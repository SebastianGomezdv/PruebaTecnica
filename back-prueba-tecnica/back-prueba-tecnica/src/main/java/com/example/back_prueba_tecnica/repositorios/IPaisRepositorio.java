package com.example.back_prueba_tecnica.repositorios;

import com.example.back_prueba_tecnica.modelos.Pais;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPaisRepositorio extends JpaRepository<Pais, Integer> {
}
