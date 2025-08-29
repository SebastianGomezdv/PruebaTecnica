package com.example.back_prueba_tecnica.modelos;

import jakarta.persistence.*;

@Entity
@Table(name = "ciudad")
public class Ciudad {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ciudad")
    private Integer idCiudad;

    @Column(nullable = false)
    private String nombre;

    @Column(name = "id_departamento", nullable = false)
    private Integer idDepartamento;

    public Ciudad() {
    }

    public Ciudad(Integer idCiudad, String nombre, Integer idDepartamento) {
        this.idCiudad = idCiudad;
        this.nombre = nombre;
        this.idDepartamento = idDepartamento;
    }

    public Integer getIdCiudad() {
        return idCiudad;
    }

    public void setIdCiudad(Integer idCiudad) {
        this.idCiudad = idCiudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(Integer idDepartamento) {
        this.idDepartamento = idDepartamento;
    }
}
