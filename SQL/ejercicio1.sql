/*## Ejercicio 1
1.Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),nombre (texto) y email (texto) */
CREATE TABLE IF NOT EXISTS public.clientes(
id SERIAL PRIMARY KEY,
name VARCHAR (255) NOT NULL ,
email VARCHAR (255) NOT NULL
)

/* 2 Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email="juan@example.com". */
INSERT INTO public.clientes(name,email)
VALUES('Juan','juan@example.com')