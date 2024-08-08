--Query de consultas :

--Query busqueda de palabras parciales 
SELECT * FROM tabla_deseado WHERE nombre_columna LIKE '%VALOR%';

--Query para buscar titulos de libros por autor 
 SELECT * FROM nombre_tabla WHERE autor_id = 'VALOR' ;

--Query combinar dos tablas con informacion usando INNER JOIN -
SELECT autores.seudonimo,libros.titulo FROM autores INNER JOIN libros ON autores.autor_id = libros.autor_id;

--Query para concatenar informacion de una tabla (+ agregar nombre de la columna).
SELECT CONCAT (nombre ," ", apellido ) FROM autores;
SELECT CONCAT (nombre ," ", apellido ) AS Nombre_Apellido FROM autores;

