import { useEffect, useState } from "react";
import "./RegistroForm.css";
import Swal from 'sweetalert2';

/*
Componente del formulario de registro
*/
export default function RegistroForm() {
    const [tiposIdentificacion, setTiposIdentificacion] = useState([]);
    const [paises, setPaises] = useState([]);
    const [departamentos, setDepartamentos] = useState([]);
    const [ciudades, setCiudades] = useState([]);
    const [marcas, setMarcas] = useState([]);

    const [loading, setLoading] = useState(true);
    const [error, setError] = useState("");

    const [form, setForm] = useState({
        idTipo: "",
        numeroIdentificacion: "",
        nombres: "",
        apellidos: "",
        fechaNacimiento: "",
        direccion: "",
        idPais: "",
        idDepartamento: "",
        idCiudad: "",
        idMarca: "",
    });

    // Efectos para cargar datos del formulario y actualizar departamentos/ciudades según la selección
    useEffect(() => {
        async function fetchData() {
            try {
                const [tiposRes, paisesRes, marcasRes] = await Promise.all([
                    fetch("http://localhost:8080/api/tipo-identificacion").then(r => r.json()),
                    fetch("http://localhost:8080/api/pais").then(r => r.json()),
                    fetch("http://localhost:8080/api/marca").then(r => r.json())
                ]);

                setTiposIdentificacion(tiposRes);
                setPaises(paisesRes);
                setMarcas(marcasRes);
                setLoading(false);
            } catch (err) {
                setError("Error al cargar datos del formulario.");
                setLoading(false);
            }
        }
        fetchData();
    }, []);

    useEffect(() => {
        async function fetchDepartamentos() {
            if (!form.idPais) return setDepartamentos([]);
            const res = await fetch(`http://localhost:8080/api/departamento/pais/${form.idPais}`);
            const data = await res.json();
            setDepartamentos(data);
        }
        fetchDepartamentos();
    }, [form.idPais]);

    useEffect(() => {
        async function fetchCiudades() {
            if (!form.idDepartamento) return setCiudades([]);
            const res = await fetch(`http://localhost:8080/api/ciudad/departamento/${form.idDepartamento}`);
            const data = await res.json();
            setCiudades(data);
        }
        fetchCiudades();
    }, [form.idDepartamento]);

    const handleChange = (e) => {
        setForm({ ...form, [e.target.name]: e.target.value });
    };


    // Manejo el envío del formulario, registra el cliente y muestra mensajes de éxito o error según la respuesta del backend
    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            const res = await fetch("http://localhost:8080/api/cliente", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify(form)
            });

            if (res.ok) {
                Swal.fire({
                    title: '¡Registrado!',
                    text: 'Cliente registrado exitosamente.',
                    icon: 'success',
                    confirmButtonText: 'Ok'
                }).then(() => {
                    setForm({
                        idTipo: "",
                        numeroIdentificacion: "",
                        nombres: "",
                        apellidos: "",
                        fechaNacimiento: "",
                        direccion: "",
                        idPais: "",
                        idDepartamento: "",
                        idCiudad: "",
                        idMarca: "",
                    });
                });
            } else {
                let errorMessage = "Error al registrar cliente. Intente nuevamente.";
                try {
                    const errorData = await res.json();
                    if (errorData.message) {
                        errorMessage = errorData.message;
                    } else if (errorData.error) {
                        errorMessage = errorData.error;
                    }
                } catch (jsonError) {
                    errorMessage = `Error HTTP: ${res.status} - ${res.statusText}`;
                }
                Swal.fire('Error de Registro', errorMessage, 'error');
            }
        } catch (err) {
            console.error("Error en la conexión con el backend:", err);
            Swal.fire(
                'Error de Conexión',
                'No se pudo conectar con el servidor. Verifique su conexión o intente más tarde.',
                'error'
            );
        }
    };

    if (loading) return <p style={{ textAlign: "center" }}>Cargando datos...</p>;
    if (error) return <p style={{ textAlign: "center", color: "red" }}>{error}</p>;


    /* Renderizo el formulario de registro */
    return (
        <form onSubmit={handleSubmit} className="glass-form">
            <div className="form-header">
                <h2>Crea tu Cuenta</h2>
                <p>Únete a nuestro programa de fidelidad</p>
            </div>

            <fieldset>
                <legend>Información Personal</legend>
                <select name="idTipo" value={form.idTipo} onChange={handleChange} required>
                    <option value="">Tipo de identificación</option>
                    {tiposIdentificacion.map(t => <option key={t.idTipo} value={t.idTipo}>{t.nombre}</option>)}
                </select>
                <input name="numeroIdentificacion" value={form.numeroIdentificacion} onChange={handleChange} placeholder="Número de identificación" required />
                <input name="nombres" value={form.nombres} onChange={handleChange} placeholder="Nombres" required />
                <input name="apellidos" value={form.apellidos} onChange={handleChange} placeholder="Apellidos" required />
                <input type="date" name="fechaNacimiento" value={form.fechaNacimiento} onChange={handleChange} required title="Fecha de Nacimiento" />
            </fieldset>

            <fieldset>
                <legend>Ubicación y Marca</legend>
                <input name="direccion" value={form.direccion} onChange={handleChange} placeholder="Dirección" required />
                <select name="idPais" value={form.idPais} onChange={handleChange} required>
                    <option value="">Seleccione un país</option>
                    {paises.map(p => <option key={p.idPais} value={p.idPais}>{p.nombre}</option>)}
                </select>
                <select name="idDepartamento" value={form.idDepartamento} onChange={handleChange} required>
                    <option value="">Seleccione un departamento</option>
                    {departamentos.map(d => <option key={d.idDepartamento} value={d.idDepartamento}>{d.nombre}</option>)}
                </select>
                <select name="idCiudad" value={form.idCiudad} onChange={handleChange} required>
                    <option value="">Seleccione una ciudad</option>
                    {ciudades.map(c => <option key={c.idCiudad} value={c.idCiudad}>{c.nombre}</option>)}
                </select>
                <select name="idMarca" value={form.idMarca} onChange={handleChange} required>
                    <option value="">Seleccione una marca</option>
                    {marcas.map(m => <option key={m.idMarca} value={m.idMarca}>{m.nombre}</option>)}
                </select>
            </fieldset>

            <button type="submit">Registrar Cliente</button>
        </form>
    );
}