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
/* 3.Actualizar el email del cliente con id=1 a "juan@gmail.com".*/
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id=1
/* 4. Eliminar el cliente con id=1 de la tabla "Clientes".*/
DELETE FROM public.clientes
WHERE id=1
/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto(texto) y cantidad (entero).*/
CREATE TABLE IF NOT EXISTS pedidos(
	id SERIAL PRIMARY KEY,
	producto VARCHAR(255),
	cantidad INT NOT NULL, 
	clientes_id INT NOT NULL,
	CONSTRAINT FK_clientes_id FOREIGN KEY (clientes_id) REFERENCES clientes(id)
)