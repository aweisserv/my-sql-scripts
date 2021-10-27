CREATE SCHEMA IF NOT EXISTS practicas_clase5;

USE practicas_clase5;

CREATE TABLE IF NOT EXISTS
							Personas(
									IdPersona INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                                    Apellido VARCHAR(255) NOT NULL
                                    );
                                    
CREATE TABLE IF NOT EXISTS
							Logros(
								  IdLogro INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
                                  IdPersona INT,
                                  Logro VARCHAR(255) NOT NULL,
                                  FOREIGN KEY (IdPersona) REFERENCES Personas(IdPersona)
                                  );
                                    
INSERT INTO
	Personas(Apellido)
VALUES
	('Fleming'),
    ('Eratóstenes'),
    ('Newton'), 
    ('Fernández');
    
INSERT INTO 
	Logros(IdPersona, Logro )
VALUES
	(1, 'Descubrimiento de la Penicilina'),
    (2, 'Cálculo del perímetro terrestre'),
    (3, 'Ley de gravitación universal'),
    (4, 'Desarollo del cálculo'),
    (NULL, 'Cura del cancer');
    
CREATE TABLE IF NOT EXISTS
							 Libros(
								   IdLibro BIGINT NOT NULL PRIMARY KEY,
                                   Titulo VARCHAR(255),
                                   IdAutor INT NOT NULL
                                   );
								
CREATE TABLE IF NOT EXISTS
							 Libros_Tecnicos(
								   IdLibro BIGINT NOT NULL PRIMARY KEY,
                                   Titulo VARCHAR(255),
                                   IdAutor INT NOT NULL
                                   );
                                   
INSERT INTO
	Libros (IdLibro, Titulo, IdAutor)
VALUES
	(8489367019, 'La Fortaleza Digital', 1),
	(9789584501, 'La Experiencia Starbucks', 2),
	(9879393040, 'Bill Gates: Biografía no autorizada', 3),
	(9789876270, 'El Imperio Digital', 4),
	(9789584503, 'El Modelo Google', 5);

INSERT INTO
	Libros_Tecnicos (IdLibro, Titulo, IdAutor)
VALUES
	(9789879580, 'JAVASCRIPT (aprende el lenguaje de la web)', 9),
	(9780596807,' Programming the Mobile Web', 8),
	(9789871347, 'Ajax Web 2.0', 7);
    
CREATE TABLE IF NOT EXISTS
	Departamentos(
				  IdDepto INT PRIMARY KEY NOT NULL,
				  Nombre VARCHAR(255) NOT NULL
				  );
    
CREATE TABLE IF NOT EXISTS
	Colaboradores(
				  Id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
				  NombreCompleto VARCHAR(255),
				  IdDepto INT NOT NULL,
                  Salario DECIMAL(12,2) NOT NULL,
                  Categoria VARCHAR(255) NOT NULL,
				  FOREIGN KEY(IdDepto) REFERENCES Departamentos(IdDepto)
				  );
                      
INSERT INTO
	Departamentos(IdDepto, Nombre)
VALUES
	(4, 'IT'),
	(5, 'Cuentas a pagar'),
	(6, 'Marketing'),
	(7, 'Ventas');
    
INSERT INTO
	Colaboradores(NombreCompleto, IdDepto, Salario, Categoria)
VALUES
	('Nicolás Moreno', 7, 75000, 'Ventas ejecutivas'),
    ('Julián Conte', 7, 69500, 'Telemarketer'),
    ('Laura Grisel', 7, 101200, 'Ventas ejecutivas'),
    ('Omar Mercado', 7, 96700, 'Telemarketer'),
    ('Fernando Julio', 4, 130200, 'DevOps'),
    ('Nélida Florence', 5, 115000, 'Marketing digital');


