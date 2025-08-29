package com.example.back_prueba_tecnica.modelos;

import jakarta.persistence.*;

@Entity
@Table(name = "pais")
public class Pais {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pais")
    private Integer idPais;

    @Column(nullable = false, unique = true)
    private String nombre;

    public Pais() {
    }

    public Pais(Integer idPais, String nombre) {
        this.idPais = idPais;
        this.nombre = nombre;
    }

    // Getters y Setters
    public Integer getIdPais() {
        return idPais;
    }

    public void setIdPais(Integer idPais) {
        this.idPais = idPais;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}