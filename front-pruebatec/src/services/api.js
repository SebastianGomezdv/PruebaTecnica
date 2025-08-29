// CONSUMO DE LA API
const API_URL = "http://localhost:8080/api";


// Funciones para consumir la API del backend y obtener datos como países, departamentos, ciudades, marcas, tipos de identificación y registrar
export const getPaises = async () => {
    const res = await fetch(`${API_URL}/pais`);
    if (!res.ok) throw new Error("Error al cargar los países");
    return await res.json();
};

export const getDepartamentos = async (idPais) => {
    const res = await fetch(`${API_URL}/departamento/pais/${idPais}`);
    if (!res.ok) throw new Error("Error al cargar los departamentos");
    return await res.json();
};

export const getCiudades = async (idDepartamento) => {
    const res = await fetch(`${API_URL}/ciudad/departamento/${idDepartamento}`);
    if (!res.ok) throw new Error("Error al cargar las ciudades");
    return await res.json();
};

export const getMarcas = async () => {
    const res = await fetch(`${API_URL}/marca`);
    if (!res.ok) throw new Error("Error al cargar las marcas");
    return await res.json();
};

export const getTiposIdentificacion = async () => {
    const res = await fetch(`${API_URL}/tipo-identificacion`);
    if (!res.ok) throw new Error("Error al cargar los tipos de identificación");
    return await res.json();
};

export const registrarCliente = async (data) => {
    const res = await fetch(`${API_URL}/cliente`, {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
    });
    if (!res.ok) throw new Error("Error al registrar el cliente");
    return await res.json();
};
