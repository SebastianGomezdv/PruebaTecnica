package com.example.back_prueba_tecnica.modelos;

import jakarta.persistence.*;

@Entity
@Table(name = "departamento")
public class Departamento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_departamento")
    private Integer idDepartamento;

    @Column(nullable = false)
    private String nombre;

    @Column(name = "id_pais", nullable = false)
    private Integer idPais;

    public Departamento() {
    }

    public Departamento(Integer idDepartamento, String nombre, Integer idPais) {
        this.idDepartamento = idDepartamento;
        this.nombre = nombre;
        this.idPais = idPais;
    }

    public Integer getIdDepartamento() {
        return idDepartamento;
    }

    public void setIdDepartamento(Integer idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getIdPais() {
        return idPais;
    }

    public void setIdPais(Integer idPais) {
        this.idPais = idPais;
    }
}
