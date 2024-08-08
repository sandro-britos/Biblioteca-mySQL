DROP DATABASE IF EXISTS libreria_sb;
CREATE DATABASE IF NOT EXISTS libreria_sb;

USE libreria_sb;

CREATE TABLE IF NOT EXISTS autores (
	autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT ,
	nombre VARCHAR(25) NOT NULL,
	apellido VARCHAR(25) NOT NULL,
	seudonimo VARCHAR(40) UNIQUE,
	genero CHAR(1) NOT NULL, -- M o F
	fecha_nacimiento DATE NOT NULL,
	pais_origen VARCHAR(40) NOT NULL,
	fecha_creacion DATETIME DEFAULT current_timestamp 
	);
	
CREATE TABLE libros (
	libros_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	autor_id INT UNSIGNED NOT NULL,
	titulo VARCHAR(70) NOT NULL,	
	paginas INT UNSIGNED,
	fecha_publicacion Date NOT NULL,
	fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
	);
	

INSERT INTO autores (nombre, apellido, seudonimo, genero, fecha_nacimiento, pais_origen)
VALUES ('Stephen', 'King', 'Richard Bachman', 'M', '1947-09-27', 'USA'),
	('Joanne', 'Rowling', 'J.K Rowling', 'F', '1947-09-27', 'UK'),
	('John R.R.', 'Tolkien', 'J.R.R Tolkien', 'M', '1892-01-03', 'UK'),
	('Florencia', 'Bonelli', 'Florencia Bonelli', 'F', '1971-05-05', 'ARG'),
	('Agatha', 'Christie', 'Mary Westmacott', 'F', '1890-09-15', 'UK'),
	('Suzanne', 'Collins', 'Suzanne Collins', 'F', '1962-08-10', 'USA'),
	('James', 'Dashner', 'James Dashner', 'M', '1972-11-26', 'USA');

INSERT INTO libros (autor_id, titulo, fecha_publicacion)
VALUES (1,'Carrie','1974-01-01'),
	(1,'El misterio de Salmes Lost','1975-06-01'),
	(1,'El resplandor','1977-07-11'),
	(1,'It','1986-09-15'),
	(1,'Misery','1987-06-23'),
	(1,'El juego de Gerald','1992-05-08'),
	(1,'La Cúpula','2009-11-10'),
	
	
	(2, 'Harry Potter y la Piedra Filosofal','1997-06-26'),
	(2, 'Harry Potter y la Camara Secreta','1998-07-02'),
	(2, 'Harry Potter y el prisionero de Azkaban','1999-07-08'),
	(2, 'Harry Potter y el cáliz de fuego','2000-07-08'),
	(2, 'Harry Potter y la Orden del Fénix','2003-04-02'),
	(2, 'Harry Potter y el misterio del príncipe mestizo','2005-07-16'),
	(2, 'Harry Potter y las reliquias de la muerte','2007-07-21'),
	
	(3, 'El Hobbit','1937-09-21'), 
	(3, 'El Señor de los Anillos','1954-07-29'),
	(3, 'La Comunidad del Anillo','1954-07-29'),
	(3, 'Las Dos Torres','1954-11-11'),
	(3, 'El Retorno del Rey','1955-10-20'),
	(3, 'El Silmarillion','1977-09-15'),	
	
	(4, 'Caballo de Fuego,Paris','2011-04-15'), 
	(4, 'Caballo de Fuego,Congo','2011-09-17'),
	(4, 'Caballo de Fuego,Gaza','2012-04-10'),

	
	

	(5, 'Asesinato en el Orient Express', '1934-01-01'), 
	(5, 'Diez negritos', '1939-11-1'),
	(5, 'El asesinato de Roger Ackroyd', '1926-06-01'),
	(5, 'El misterio de la guía de ferrocarriles', '1936-01-01'),
	(5, 'Muerte en el Nilo', '1937-11-01'),
	(5, 'Un cadáver en la biblioteca', '1942-01-01'),


	(6, 'Los juegos del hambre', '2008-09-14'), 
	(6, 'En llamas', '2009-09-01'),
	(6, 'Sinsajo', '2010-08-24'),


	(7, 'El corredor del laberinto', '2009-10-06'),
	(7, 'Las pruebas', '2010-09-13'),
	(7, 'La cura mortal', '2011-10-11'),
	(7, 'El corredor del laberinto: Virus letal', '2012-09-18'),
	(7, 'El corredor del laberinto: Leyendas', '2011-12-06');
	
	/* SELECT * FROM autores;
	SELECT * FROM libros; */
