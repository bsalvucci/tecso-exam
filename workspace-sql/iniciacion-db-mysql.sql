CREATE SCHEMA `tecso_eval` ;

drop table if exists inscripciones_curso;
drop table if exists inscripciones_carrera;
drop table if exists curso;
drop table if exists carrera;
drop table if exists alumno;
drop table if exists persona;

CREATE TABLE persona (
  identificador integer NOT NULL,
  tipodoc char(5) NOT NULL,
  documento bigint NOT NULL,
  nombre  varchar(40)  NOT NULL,
  apellido  varchar(40)  NOT NULL,
  fechanac date NOT NULL,
  PRIMARY KEY (identificador));

CREATE TABLE alumno (
    identificador  integer PRIMARY KEY NOT NULL,
    idpersona	    integer UNIQUE,
    legajo 	    integer NOT NULL,
    FOREIGN KEY (idpersona) REFERENCES persona(identificador));

CREATE TABLE carrera (
    identificador  integer NOT NULL,
    nombre       varchar(40) NOT NULL,
    descripcion      varchar(250),
    fechadesde		date NOT NULL,
    fechahasta 	date,
	PRIMARY KEY (identificador));

CREATE TABLE curso (
    identificador  integer NOT NULL,
    idcarrera 		integer,
    nombre       varchar(40) NOT NULL,
    descripcion      varchar(250),
    cupomaximo 	smallint NOT NULL,
    anio			smallint NOT NULL,
	FOREIGN KEY (idcarrera) REFERENCES carrera(identificador),
	PRIMARY KEY (identificador));

CREATE TABLE inscripciones_carrera(
    idalumno 		integer NOT NULL,
    idcarrera		integer NOT NULL,
    fechainscripcion	date NOT NULL,
    FOREIGN KEY (idalumno) REFERENCES alumno(identificador),
    FOREIGN KEY (idcarrera) REFERENCES carrera(identificador));


CREATE TABLE inscripciones_curso(
    idalumno 		integer NOT NULL,
    idcurso 		integer NOT NULL,
    fechainscripcion	date NOT NULL,
	FOREIGN KEY (idalumno) REFERENCES alumno(identificador),
    FOREIGN KEY (idcurso) REFERENCES curso(identificador));

----- Insert de datos iniciales persona
   INSERT INTO persona VALUES
    (1,'DNI', 31565839, 'Florencia', 'Maneiro', '1985-06-28');
   INSERT INTO persona VALUES
    (2,'DNI', 31000123, 'Patricia', 'Brumatti', '1985-01-13');
    INSERT INTO persona VALUES
    (3,'DNI', 20945422, 'Diego', 'Menendez', '1982-04-10');   
    INSERT INTO persona VALUES
    (4,'DNI', 30999281, 'Franzo', 'Perez', '1986-02-05');
    INSERT INTO persona VALUES
    (5,'DNI', 24112872, 'Leandro', 'Garcia', '1988-01-03');

    ----- Insert de datos iniciales alumno
   INSERT INTO alumno VALUES
    (1,3, 98734);
   INSERT INTO alumno VALUES
    (2,4, 09213);
   INSERT INTO alumno VALUES
    (3,1, 35839);
   INSERT INTO alumno VALUES
    (4,5, 36299);
   INSERT INTO alumno VALUES
    (5,2, 11009);

----- Insert de datos iniciales carrera
   INSERT INTO carrera(identificador, nombre, descripcion, fechadesde) VALUES
    (1,'Ingenieria en sistema de información', 'Carrera a fines a programación y desarrollo de software en general','1960-01-01');

   INSERT INTO carrera(identificador, nombre, descripcion, fechadesde) VALUES
    (2,'Ingenieria civil', 'Carrera a fines a construcción, planificación y desarrollo de obras de desarrollo urbano','1980-01-01');


----- Insert de datos iniciales curso
   INSERT INTO curso VALUES
    (1,1,'Análisis matemático', 'Curso sobre el desarrollo avanzado de matemáticas', 5,2018);
    
  INSERT INTO curso VALUES
    (2,1,'Diseño de sistemas', 'Curso sobre diseño de componentes de sistemas de software', 3,2018);

  INSERT INTO curso VALUES
    (3,1,'Java', 'Curso sobre el lenguaje de programación JAVA', 4,2018);

  INSERT INTO curso VALUES
    (4,1,'Base de datos-SQL', 'Curso sobre tipos de base de datos y consultas sql', 10,2018);

  INSERT INTO curso VALUES
    (5,2,'Fisica básica', 'Curso sobre fundamentos base de física', 5,2018);

  INSERT INTO curso VALUES
    (6,2,'Dibujo', 'Curso sobre dibujo de planos', 10,2018);
    

----- Insert de datos iniciales inscripciones
INSERT INTO inscripciones_carrera VALUES
(1,1,'2000-01-01');
INSERT INTO inscripciones_carrera VALUES
(2,1,'2003-01-01');
INSERT INTO inscripciones_carrera VALUES
(3,1,'2004-01-01');
INSERT INTO inscripciones_carrera VALUES
(4,1,'2001-01-01');

INSERT INTO inscripciones_carrera VALUES
(5,2,'2000-01-01');
INSERT INTO inscripciones_carrera VALUES
(4,2,'2000-01-01');

INSERT INTO inscripciones_curso VALUES
(1,1,'2002-01-01');
INSERT INTO inscripciones_curso VALUES
(1,2,'2006-01-01');
INSERT INTO inscripciones_curso VALUES
(1,3,'2002-01-01');
INSERT INTO inscripciones_curso VALUES
(2,1,'2004-01-01');
INSERT INTO inscripciones_curso VALUES
(2,3,'2002-01-01');
INSERT INTO inscripciones_curso VALUES
(2,4,'2004-01-01');
INSERT INTO inscripciones_curso VALUES
(3,1,'2010-01-01');
INSERT INTO inscripciones_curso VALUES
(3,3,'2010-01-01');
INSERT INTO inscripciones_curso VALUES
(4,1,'2010-01-01');
INSERT INTO inscripciones_curso VALUES
(4,3,'2010-01-01');
INSERT INTO inscripciones_curso VALUES
(5,3,'2010-01-01');

INSERT INTO inscripciones_curso VALUES
(4,3,'2010-01-01');
INSERT INTO inscripciones_curso VALUES
(5,4,'2011-01-01');
INSERT INTO inscripciones_curso VALUES
(4,4,'2011-01-01');
INSERT INTO inscripciones_curso VALUES
(2,5,'2011-01-01');
INSERT INTO inscripciones_curso VALUES
(2,6,'2011-01-01');