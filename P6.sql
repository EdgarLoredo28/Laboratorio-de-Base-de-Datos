USE Hoy
select * 
from dbo.Anime

select * 
from dbo.CapituloA

select * 
from dbo.CapituloM

select * 
from dbo.Genero

select * 
from dbo.Manga
select * 
from dbo.Anime


	create view Prueba1 as
select a.IdAnime as ID, a.Nombre as NOMBRE, a.Descripcion as DESCRIPCION, ca.URL as URL, ca.Temporada as TEMPORADA, a.Estado as ESTADO 
from Anime a
inner join CapituloA as ca on ca.Nombre = a.Nombre

select * from Prueba1

	create view Prueba2 as
select m.IdGenero, cm.Nombre, cm.Descripcion, cm.NombreCapitulo, cm.NumeroCapitulo
from Manga m
join CapituloM as cm on cm.Nombre = m.Nombre

select * from Prueba2

	create view Prueba3 as
select a.IdAnime, m.Nombre, a.Estado, m.Descarga
from Anime a
full join Manga as m on m.Nombre = a.Nombre

select * from Prueba3

	create view Prueba4 as 
select a.IdAnime, cm.Nombre, a.Descripcion, a.Estado
from CapituloM cm
left join Anime as a on a.Descripcion = cm.Descripcion

select * from Prueba4

	create view Prueba5 as
select a.IdAnime as ID, ca.Nombre as "NOMBRE ANIME" , a.Descripcion as "INFORMACION" , a.Descarga, ca.Temporada as "NUMERO DE TEMPORADA"
from CapituloA ca
right join Anime as a on a.Descripcion = ca.Descripcion

select * from Prueba5

select M.IdManga as ID, a.Nombre, M.Descripcion, a.Descarga
into #Temporal_1
from Anime a, Manga M 
where a.Descarga = M.Descarga

select * from #Temporal_1