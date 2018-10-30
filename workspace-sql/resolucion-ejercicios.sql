#EJERCICIO1
select p.tipodoc, p.documento, p.nombre, p.apellido, a.legajo 
from alumno a inner join persona p
on p.identificador = a.idpersona;

#EJERCICIO2
select a.legajo, p.nombre, p.apellido, c.nombre, i.fechainscripcion
from alumno a 
inner join inscripciones_carrera i 
on a.identificador = i.idalumno 
inner join persona p
on p.identificador = a.idpersona
inner join carrera c
on c.identificador = i.idcarrera
order by a.legajo desc;

#EJERCICIO 3
select c.nombre as 'Nombre carrera', cu.nombre as 'Nombre curso', count(i.fechainscripcion) as 'Cantidad de inscriptos', cu.cupomaximo
from inscripciones_curso i
inner join curso cu 
on cu.identificador = i.idcurso
inner join carrera c
on c.identificador = cu.idcarrera
group by c.nombre, cu.nombre, cu.cupomaximo;

#EJERCICIO4
select c.nombre as 'Nombre carrera', cu.nombre as 'Nombre curso', count(i.fechainscripcion) as 'Cantidad de inscriptos', cu.cupomaximo
from inscripciones_curso i
inner join curso cu 
on cu.identificador = i.idcurso
inner join carrera c
on c.identificador = cu.idcarrera
group by c.nombre, cu.nombre, cu.cupomaximo
having count(i.fechainscripcion) > cupomaximo;

#EJERCICIO5
update curso 
set cupomaximo=10 
where anio=2018 and cupomaximo<5;

#EJERCICIO6 (con update manual)
select cu.idcarrera, cu.identificador, cu.nombre, ica.fechainscripcion as 'Fecha de inscripcion carrera', icu.fechainscripcion as 'Fecha de inscripcion curso'
from curso cu 
inner join inscripciones_curso icu
on icu.idcurso = cu.identificador 
inner join inscripciones_carrera ica
on ica.idcarrera = cu.idcarrera
where icu.fechainscripcion < ica.fechainscripcion;

#EJERCICIO7
insert into persona values('6','DNI', '39367910', 'Bianca', 'Salvucci', '1996-05-03');
insert into alumno values('6','6','41775');
insert into inscripciones_carrera values(6,1,'2018-12-12');
insert into inscripciones_curso values(6,2,'2018-03-11');
insert into inscripciones_curso values(6,3,'2018-03-20');
insert into inscripciones_curso values(6,4,'2018-03-12');
insert into inscripciones_curso values(6,5,'2018-03-13');

#EJERCICIO8
ALTER TABLE `tecso_eval`.`persona` 
ADD COLUMN `direccion` VARCHAR(200) NOT NULL AFTER `fechanac`;



