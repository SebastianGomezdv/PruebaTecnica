USE fidelizacionbd;

CREATE TABLE tipo_identificacion (
    id_tipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE pais (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);

CREATE TABLE ciudad (
    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE marca (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cliente (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  id_tipo INT NOT NULL,
  numero_identificacion VARCHAR(255) NOT NULL UNIQUE,
  nombres VARCHAR(255) NOT NULL,
  apellidos VARCHAR(255) NOT NULL,
  fecha_nacimiento DATE NOT NULL,
  direccion VARCHAR(255) NOT NULL,
  id_ciudad INT NOT NULL,
  id_departamento INT NOT NULL,
  id_pais INT NOT NULL,
  id_marca INT NOT NULL
);


INSERT INTO tipo_identificacion (nombre) VALUES
('Cédula de ciudadanía'),
('Cédula de extranjería'),
('Pasaporte'),
('Tarjeta de identidad');

INSERT INTO pais (nombre) VALUES
('Colombia'),
('Estados Unidos');

INSERT INTO departamento (nombre, id_pais) VALUES
('Antioquia', 1),
('Cundinamarca', 1),
('Florida', 2);

INSERT INTO ciudad (nombre, id_departamento) VALUES
('Medellín', 1),
('Bogotá', 2),
('Miami', 3);

INSERT INTO pais (nombre) VALUES
('México'),        
('Panamá'),       
('Perú'),          
('Chile');

/*departamentos colombia faltantes*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Valle del Cauca', 1),        
('Atlántico', 1),              
('Santander', 1),             
('Bolívar', 1),                
('Risaralda', 1); 

/*departamentos estados unidos faltantes*/
INSERT INTO departamento (nombre, id_pais) VALUES
('California', 2),             
('New York', 2),              
('Texas', 2),                 
('Illinois', 2); 

/*departamentos mexico*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Ciudad de México', 3),       
('Jalisco', 3),                
('Nuevo León', 3),             
('Quintana Roo', 3)         

/*departamentos panama*/;
INSERT INTO departamento (nombre, id_pais) VALUES
('Panamá', 4),                 
('Panamá Oeste', 4),          
('Chiriquí', 4);    

/*departamentos peru*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Lima', 5),                   
('Arequipa', 5),               
('La Libertad', 5);

/*departamentos chile*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Región Metropolitana de Santiago', 6), 
('Valparaíso', 6),                      
('Biobío', 6);

/*ciudades*/

/*colombia ciudades faltantes*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Envigado', 1), ('Itagüí', 1), ('Bello', 1), ('Sabaneta', 1),
('Soacha', 2), ('Chía', 2), ('Zipaquirá', 2), ('Facatativá', 2),
('Cali', 4), ('Palmira', 4), ('Jamundí', 4), ('Yumbo', 4),
('Barranquilla', 5), ('Soledad', 5), ('Malambo', 5), ('Puerto Colombia', 5),
('Bucaramanga', 6), ('Floridablanca', 6), ('Girón', 6), ('Piedecuesta', 6),
('Cartagena', 7), ('Turbaco', 7), ('Arjona', 7), ('Magangué', 7),
('Pereira', 8), ('Dosquebradas', 8), ('Santa Rosa de Cabal', 8), ('La Virginia', 8);

/*Estados unidos ciudades faltantes*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Orlando', 3), ('Tampa', 3), ('Fort Lauderdale', 3), ('Jacksonville', 3),
('Los Angeles', 9), ('San Diego', 9), ('San Francisco', 9), ('San Jose', 9),
('New York City', 10), ('Brooklyn', 10), ('Queens', 10), ('Buffalo', 10),
('Houston', 11), ('Dallas', 11), ('Austin', 11), ('San Antonio', 11),
('Chicago', 12), ('Aurora', 12), ('Naperville', 12), ('Springfield', 12);

/*mexico*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Ciudad de México', 4),      
('Guadalajara', 5),            
('Monterrey', 6),              
('Cancún', 7),                 
('Playa del Carmen', 7);

/*panama*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Ciudad de Panamá', 8),       
('Arraiján', 9),               
('David', 10);                 
     
/*peru*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Lima', 11),                
('Arequipa', 12),            
('Trujillo', 13); 

/*chile*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Santiago', 14),              
('Viña del Mar', 15),         
('Concepción', 16);

INSERT INTO pais (nombre) VALUES
('Ecuador'),                   
('Costa Rica'),                
('República Dominicana'),      
('Guatemala'),                 
('Bolivia'),                   
('Paraguay');  
      
 /*departamentos*/
 /*ecuador*/
 INSERT INTO departamento (nombre, id_pais) VALUES
('Pichincha', 7),              
('Guayas', 7),                 
('Azuay', 7),                  
('Manabí', 7);  
 
 /*costa rica*/
 INSERT INTO departamento (nombre, id_pais) VALUES
('San José', 8),               
('Alajuela', 8),               
('Heredia', 8),                
('Guanacaste', 8); 
 
 /*republica dominicana*/
 INSERT INTO departamento (nombre, id_pais) VALUES
('Distrito Nacional', 9),      
('Santiago', 9),               
('La Altagracia', 9),          
('Puerto Plata', 9);  

/*guatemala*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Guatemala', 10),             
('Sacatepéquez', 10),          
('Quetzaltenango', 10),       
('Izabal', 10);  

/*bolivia*/
INSERT INTO departamento (nombre, id_pais) VALUES
('La Paz', 11),                
('Santa Cruz', 11),            
('Cochabamba', 11),            
('Chuquisaca', 11);           

/*paraguay*/
INSERT INTO departamento (nombre, id_pais) VALUES
('Distrito Capital', 12),     
('Central', 12),               
('Alto Paraná', 12),           
('Itapúa', 12); 

/*ciudades*/
/*ecuador*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Quito', 17), ('Sangolquí', 17), ('Tumbaco', 17), ('Cayambe', 17),
('Guayaquil', 18), ('Durán', 18), ('Samborondón', 18), ('Daule', 18),
('Cuenca', 19), ('Gualaceo', 19), ('Paute', 19), ('Chordeleg', 19),
('Manta', 20), ('Portoviejo', 20), ('Bahía de Caráquez', 20), ('Chone', 20); 

/*costa rica*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('San José', 21), ('Escazú', 21), ('Santa Ana', 21), ('Curridabat', 21),
('Alajuela', 22), ('Grecia', 22), ('San Ramón', 22), ('Atenas', 22),
('Heredia', 23), ('Santo Domingo', 23), ('Belén', 23), ('Barva', 23),
('Liberia', 24), ('Tamarindo', 24), ('Playas del Coco', 24), ('Nicoya', 24);

/*republica dominicana*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Santo Domingo Centro', 25), ('Mirador Sur', 25), ('Piantini', 25), ('Bella Vista', 25),
('Santiago de los Caballeros', 26), ('Licey al Medio', 26), ('Tamboril', 26), ('Villa González', 26),
('Punta Cana', 27), ('Higüey', 27), ('Bávaro', 27), ('Verón', 27),
('San Felipe de Puerto Plata', 28), ('Sosúa', 28), ('Cabarete', 28), ('Luperón', 28);

/*guatemala*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Ciudad de Guatemala', 29), ('Mixco', 29), ('Villa Nueva', 29), ('Santa Catarina Pinula', 29),
('Antigua Guatemala', 30), ('Jocotenango', 30), ('Ciudad Vieja', 30), ('Sumpango', 30),
('Quetzaltenango', 31), ('Salcajá', 31), ('Olintepeque', 31), ('La Esperanza', 31),
('Puerto Barrios', 32), ('Livingston', 32), ('El Estor', 32), ('Morales', 32);

/*bolivia*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('La Paz', 33), ('El Alto', 33), ('Viacha', 33), ('Achocalla', 33),
('Santa Cruz de la Sierra', 34), ('Montero', 34), ('Warnes', 34), ('La Guardia', 34),
('Cochabamba', 35), ('Quillacollo', 35), ('Sacaba', 35), ('Tiquipaya', 35),
('Sucre', 36), ('Tarabuco', 36), ('Monteagudo', 36), ('Padilla', 36);

/*paraguay*/
INSERT INTO ciudad (nombre, id_departamento) VALUES
('Asunción', 37), ('Villa Morra', 37), ('Carmelitas', 37), ('Sajonia', 37),
('Luque', 38), ('San Lorenzo', 38), ('Capiatá', 38), ('Fernando de la Mora', 38),
('Ciudad del Este', 39), ('Hernandarias', 39), ('Presidente Franco', 39), ('Minga Guazú', 39),
('Encarnación', 40), ('Coronel Bogado', 40), ('Hohenau', 40), ('Bella Vista', 40);

INSERT INTO marca (nombre) VALUES
('Americanino'),
('American Eagle'),
('Chevignon'),
('Esprit'),
('Naf Naf'),
('Rifle');

SELECT * FROM marca

-- Cliente 1
INSERT INTO cliente (
    id_tipo,
    numero_identificacion,
    nombres,
    apellidos,
    fecha_nacimiento,
    direccion,
    id_ciudad,
    id_departamento,
    id_pais,
    id_marca
) VALUES (
    1,                -- id_tipo (ej: Cédula de ciudadanía)
    '123456789',
    'Juan',
    'Pérez',
    '1990-05-15',
    'Calle 123 #45-67',
    1,                -- id_ciudad (ej: Medellín)
    1,                -- id_departamento (ej: Antioquia)
    1,                -- id_pais (ej: Colombia)
    1                 -- id_marca (ej: Americanino)
);

-- Cliente 2
INSERT INTO cliente (
    id_tipo,
    numero_identificacion,
    nombres,
    apellidos,
    fecha_nacimiento,
    direccion,
    id_ciudad,
    id_departamento,
    id_pais,
    id_marca
) VALUES (
    2,                -- id_tipo (ej: Tarjeta de Identidad)
    '987654321',
    'María',
    'López',
    '1995-10-20',
    'Carrera 50 #10-20',
    2,                -- id_ciudad (ej: Bogotá)
    2,                -- id_departamento (ej: Cundinamarca)
    1,                -- id_pais (ej: Colombia)
    2                 -- id_marca (ej: Naf Naf)
);

-- Cliente 3
INSERT INTO cliente (
    id_tipo,
    numero_identificacion,
    nombres,
    apellidos,
    fecha_nacimiento,
    direccion,
    id_ciudad,
    id_departamento,
    id_pais,
    id_marca
) VALUES (
    1,                -- id_tipo
    '555222111',
    'Carlos',
    'García',
    '1988-03-08',
    'Av. Siempre Viva 742',
    3,                -- id_ciudad (ej: Cali)
    3,                -- id_departamento (ej: Valle del Cauca)
    1,                -- id_pais
    3                 -- id_marca (ej: Chevignon)
);

SELECT * FROM cliente

/*ignorar*/
DROP TABLE IF EXISTS cliente;

DESCRIBE cliente;

ALTER TABLE cliente DROP COLUMN departamento;
ALTER TABLE cliente DROP COLUMN marca;
ALTER TABLE cliente DROP COLUMN pais;
ALTER TABLE cliente DROP COLUMN tipo_identificacion;

DESCRIBE cliente;

SELECT * FROM cliente;
