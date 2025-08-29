package com.example.back_prueba_tecnica.servicios;

import com.example.back_prueba_tecnica.modelos.Cliente;
import com.example.back_prueba_tecnica.repositorios.IClienteRepositorio;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteServicio {

    private final IClienteRepositorio clienteRepositorio;

    @Autowired
    public ClienteServicio(IClienteRepositorio clienteRepositorio) {
        this.clienteRepositorio = clienteRepositorio;
    }

    // Listar todos
    public List<Cliente> listarClientes() {
        return clienteRepositorio.findAll();
    }

    // Crear / Guardar
    public Cliente guardarCliente(Cliente cliente) {
        return clienteRepositorio.save(cliente);
    }

    // Buscar
    public Optional<Cliente> buscarPorId(Integer id) {
        return clienteRepositorio.findById(id);
    }

    // Actualizar
    public Optional<Cliente> actualizarCliente(Integer id, Cliente datos) {
        return clienteRepositorio.findById(id).map(c -> {
            c.setIdTipo(datos.getIdTipo());
            c.setNumeroIdentificacion(datos.getNumeroIdentificacion());
            c.setNombres(datos.getNombres());
            c.setApellidos(datos.getApellidos());
            c.setFechaNacimiento(datos.getFechaNacimiento());
            c.setDireccion(datos.getDireccion());
            c.setIdCiudad(datos.getIdCiudad());
            c.setIdDepartamento(datos.getIdDepartamento());
            c.setIdPais(datos.getIdPais());
            c.setIdMarca(datos.getIdMarca());
            return clienteRepositorio.save(c);
        });
    }

    // Eliminar
    public boolean eliminarPorId(Integer id) {
        if (clienteRepositorio.existsById(id)) {
            clienteRepositorio.deleteById(id);
            return true;
        }
        return false;
    }
}
