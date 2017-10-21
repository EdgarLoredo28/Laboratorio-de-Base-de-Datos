select *
from dbo.Genero

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Gore')

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Musical')

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Terror')

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Yaoi')

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Accion')

insert into Genero(IdGenero, Nombre)
values (NEwid(), 'Aventura')

delete from Genero
where Nombre = 'yuri' 

select *
-- update Genero set Nombre = 'Yuri', IdGenero = NEWID()
from dbo.Genero
where Nombre = 'Yaoi' and IdGenero = '6F76D00C-EEF7-4045-BF79-E075B998F6AE'


select *
from dbo.Anime

insert into Anime(IdAnime,Nombre,Descripcion, IdGenero, Estado, Descarga)
values (NEWID(),'One Piece', 'Esta bien largo', 'C94C0935-068B-4AEA-8A48-D4C18DF02C43', 'Emision', 'actual')

insert into Anime(IdAnime,Nombre,Descripcion, IdGenero, Estado, Descarga)
values (NEWID(),'Course Party', 'Demasiado sangriento', '659751C4-68E3-4012-932D-1E8E361F8F49', 'Finalizado', 'actual')

insert into Anime(IdAnime,Nombre,Descripcion, IdGenero, Estado, Descarga)
values (NEWID(),'Ganz', 'Buena animacion', '418A3334-ADEF-4C36-ACF7-52CB4CD3D815', 'Emision', 'actual')

delete from Anime
where Nombre = 'One piece'

select *
-- update Anime set Estado = 'Finalizado'
from dbo.Anime
where Nombre = 'Ganz'


select *
from dbo.CapituloA

insert into CapituloA(IdCapitulo, Nombre, IdAnime, URL, Descripcion, Temporada, Duracion, NumeroCapitulo)
values (NEWID(), 'One piece', 'EBB7203B-D804-47BE-A311-457BDA3E51CB', NEWID(), 'Esta bien largo', '8', '30' , '526')

insert into CapituloA(IdCapitulo, Nombre, IdAnime, URL, Descripcion, Temporada, Duracion, NumeroCapitulo)
values (NEWID(), 'Ganz', '86803A50-EB85-4654-8FBB-3F6C06E7426F', NEWID(), 'Buena animacion', '1', '37' , '26')

insert into CapituloA(IdCapitulo, Nombre, IdAnime, URL, Descripcion, Temporada, Duracion, NumeroCapitulo)
values (NEWID(), 'Course Party', 'EB3322AF-2903-4B22-A46B-0FE5FCFE0861', NEWID(), 'Demasiado sangriento', '2', '32' , '56')

delete from CapituloA
where Nombre = 'Ganz'

select * 
--update CapituloA set Duracion = '12'
from dbo.CapituloA
where Duracion = '30'

select *
from dbo.CapituloM

insert into CapituloM(IdCapitulo, Nombre, URL, IdManga, Descripcion, Temporada, NombreCapitulo, NumeroCapitulo)
values (NEWID(), 'One piece', NEWID(), NEWID(), 'Esta bien largo', '8', 'ta bien chido' , '800')

insert into CapituloM(IdCapitulo, Nombre, URL, IdManga, Descripcion, Temporada, NombreCapitulo, NumeroCapitulo)
values (NEWID(), 'Ganz', NEWID(), '4CD474B5-7CBA-467A-BA3A-DFB19FF3492F', 'Buena animacion', '1', 'chidongongo' , '26')

insert into CapituloM(IdCapitulo, Nombre, URL, IdManga, Descripcion, Temporada, NombreCapitulo, NumeroCapitulo)
values (NEWID(), 'Course Party', NEWID(), NEWID(), 'Demaciado sangriento', '2', 'Ojos' , '56')

delete from CapituloM
where Nombre = 'Course Party'

select *
--update CapituloM set IdCapitulo = NEWID()
from dbo.CapituloM
where Nombre =  'Course Party'

select *
from dbo.Manga

insert into Manga(IdManga,Nombre,Descripcion,IdGenero,Estado,Descarga)
values (NEWID(), 'One piece', 'chidongongo', '26FB1E0A-24A3-4759-BC79-89665387ADBE','Emision', 'Actual')

insert into Manga(IdManga,Nombre,Descripcion,IdGenero,Estado,Descarga)
values (NEWID(), 'Ganz', 'Buena animacion', 'C5A49456-ED27-4441-BA00-F4FD77FE41B0','Emision', 'Actual')

insert into Manga(IdManga,Nombre,Descripcion,IdGenero,Estado,Descarga)
values (NEWID(), 'Course Party', 'Ojos', '159D478F-ED68-4F8D-A096-FD1EB4F43FEA','Finalizado', 'Actual')

delete from Manga
where IdManga= 'BADBAE37-3BE5-4F57-A836-348FEA595D96'

select *
--update Manga set Estado= 'Finalizado'
from dbo.Manga
where Nombre = '5E28E1C1-67B1-4287-ABE8-6B2A0528DE9E'




select Genero.Nombre
from Genero
group by Genero.Nombre
order by Genero.Nombre asc

select *
from dbo.CapituloM

select COUNT(CapituloM.Temporada) as 'Cantidad de Mangas', SUM(CapituloM.Temporada) as 'Suma de las temporadas con 56 cap', MAX(CapituloM.NumeroCapitulo) as 'Anime con mayor nu8mero de capitulos'
from CapituloM
group by CapituloM.NumeroCapitulo

select *
from dbo.CapituloA

select Count(CapituloA.Temporada) as 'Cantidad de Anime', SUM(CapituloA.Temporada) as 'Temporada' , Max(CapituloA.Duracion) as 'Duracion'
from CapituloA
group by CapituloA.Duracion

select top 5 Genero.Nombre
from Genero
group by Genero.Nombre
order by Genero.Nombre desc

select COUNT(CapituloM.Temporada) as 'Cantidad de Mangas', AVG(CapituloM.Temporada) as 'Suma de las temporadas con 56 cap', MIN(CapituloM.NumeroCapitulo) as 'Anime con mayor nu8mero de capitulos'
from CapituloM
group by CapituloM.NumeroCapitulo
Having Max(CapituloM.NumeroCapitulo) <= 800 and Max(CapituloM.Temporada) >= 1

select *
from dbo.CapituloA

select Count(CapituloA.Temporada) as 'Cantidad de Anime', SUM(CapituloA.Temporada) as 'Suma total de Temporadas' , Min(CapituloA.Duracion) as 'Total de Duracion'
from CapituloA
group by CapituloA.NumeroCapitulo
Having Max(CapituloA.Duracion) >= 12

select Min(CapituloM.Nombre) as 'Nombre de Manga' ,Max(CapituloM.NumeroCapitulo) as 'Capitulo' , Max(CapituloM.Temporada) as 'Numero de Temporada'
from dbo.CapituloM
where Nombre = 'One piece' and Temporada = 8

select CapituloA.Nombre as 'Nombre Anime' , CapituloA.NumeroCapitulo as 'Capitulos' , CapituloA.Duracion as 'Total de Tiempo'
from dbo.CapituloA
where Duracion > '1' and NumeroCapitulo > '500'


