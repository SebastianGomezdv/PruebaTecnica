package com.example.back_prueba_tecnica.repositorios;

import com.example.back_prueba_tecnica.modelos.Marca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IMarcaRepositorio extends JpaRepository<Marca, Integer> {
}
