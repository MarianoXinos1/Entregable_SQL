Use microdesafio1;

-- Obtener los 5 cursos con más unidades: Escribe una consulta que devuelva los títulos de los 5 cursos que tienen más unidades. Los resultados deben estar ordenados en orden descendente por el número de unidades.

Select * from unidades;
Select * from cursos;

Select cursos.titulo, count(unidades.id) AS cantidad_unidades
from unidades
join cursos on cursos.id = unidades.Cursos_id
group by  cursos.id, cursos.titulo
order by cantidad_unidades DESC
limit 5;



-- Obtener la media de unidades por curso: Escribe una consulta que calcule la media de unidades por curso. Los resultados deben estar agrupados por el título del curso.

Select * from unidades;
Select * from cursos;

select cursos.titulo, AVG(unidades.id) 
from unidades
join cursos on cursos.id =  unidades.Cursos_id
group by  cursos.titulo;



-- Obtener los usuarios asociados a más de 3 cursos: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 3 cursos. Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.

Select * from usuarios;
Select * from cursos;
Select * from usuarios_has_cursos;

select Usuarios.nombre, Usuarios.id
from Usuarios
join usuarios_has_cursos uc on usuarios.id = uc.Usuarios_id
group by usuarios.nombre, usuarios.id
having count(uc.cursos_id) >=3
order by usuarios.nombre ASC;



-- Obtener las 10 primeras clases que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 10 primeras clases que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden ascendente por la fecha de inicio.

Select * from unidades;

select fecha_inicio
from unidades
where fecha_inicio > '2024-06-01'
order by fecha_inicio ASC
limit 10;


-- Obtener el número de bloques por tipo para una clase específica: Escribe una consulta que devuelva el número de bloques por tipo para una clase específica. Los resultados deben estar agrupados por el tipo de bloque.

Select * from bloques;

select b.titulo AS tipo, count(*) AS cantidad_bloques
from bloques b
join clases c on b.clases_idclases = c.idclases
where c.idclases = 2
group by b.titulo;


-- Obtener el nombre y el apellido de los usuarios, sustituyendo los valores nulos por una cadena vacía: Escribe una consulta que devuelva el nombre y el apellido de los usuarios, utilizando una función para sustituir los valores nulos por una cadena vacía.

Select * from usuarios;

select coalesce(nombre,' '), coalesce(apellido, ' ')
from usuarios;



-- Obtener los 3 cursos con la mayor cantidad de usuarios: Escribe una consulta que devuelva los títulos de los 3 cursos que tienen más usuarios asociados. Los resultados deben estar ordenados en orden descendente por el número de usuarios.

Select * from cursos;
Select * from usuarios;
Select * from usuarios_has_cursos;

select c.titulo, count( uhc.usuarios_id ) as cantidad_usuarios
from cursos c
join usuarios_has_cursos uhc on c.id = uhc.Cursos_id
group by c.id, c.titulo
order by cantidad_usuarios desc
limit 3;


-- Obtener el promedio de clases por unidad para cada curso: Escribe una consulta que calcule el promedio de clases por unidad para cada curso. Los resultados deben estar agrupados por el título del curso.

Select * from clases;


-- Obtener los usuarios con más de 2 cursos que comienzan después de una fecha determinada: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 2 cursos que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.

Select * from cursos;
Select * from usuarios;
Select * from usuarios_has_cursos;

select concat(u.nombre, ' ', u.apellido) as Usuario , count(uhc.cursos_id) 
from usuarios u
left join usuarios_has_cursos uhc on u.id = uhc.usuarios_id
left join  cursos c on uhc.cursos_id = c.id 
where c.fecha_inicio >='2024-05-01'
group by usuario, u.id
having count(uhc.cursos_id) > 2
order by Usuario ASC;


-- Obtener las 5 últimas unidades que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 5 últimas unidades que comienzan después de una fecha determinada. Los resultados deben estar ordenados en orden descendente por la fecha de inicio.

Select * from unidades;

select *
from unidades 
where fecha_inicio >= '2024-06-01'
order by fecha_inicio desc
limit 5;


-- Obtener el número de usuarios por categoría para un curso específico: Escribe una consulta que devuelva el número de usuarios por categoría para un curso específico. Los resultados deben estar agrupados por la categoría del usuario.

Select * from usuarios;
Select * from categorias;
Select * from cursos;

select count(u.id) as num_usuarios, c.tipo as categoria
from usuarios u
left join usuarios_has_cursos uhc on u.id = uhc.usuarios_id
left join  cursos cr on uhc.cursos_id = cr.id 
left join categorias c on u.categoria_id = c.id
where cr.id = 4
group by c.tipo;

