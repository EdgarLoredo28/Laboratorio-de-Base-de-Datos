USE [Hoy]
GO
/****** Object:  Table [dbo].[Anime]    Script Date: 16/10/2017 08:19:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Anime](
	[IdAnime] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdGenero] [uniqueidentifier] NULL,
	[Estado] [varchar](50) NULL,
	[Descarga] [varchar](50) NULL,
 CONSTRAINT [PK_Anime] PRIMARY KEY CLUSTERED 
(
	[IdAnime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapituloA]    Script Date: 16/10/2017 08:19:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapituloA](
	[IdCapitulo] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdAnime] [uniqueidentifier] NULL,
	[URL] [uniqueidentifier] NULL,
	[Descripcion] [varchar](50) NULL,
	[Temporada] [int] NULL,
	[NumeroCapitulo] [int] NULL,
	[Duracion] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CapituloM]    Script Date: 16/10/2017 08:19:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CapituloM](
	[IdCapitulo] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[URL] [uniqueidentifier] NULL,
	[IdManga] [uniqueidentifier] NULL,
	[Descripcion] [varchar](50) NULL,
	[Temporada] [int] NULL,
	[NombreCapitulo] [varchar](50) NULL,
	[NumeroCapitulo] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Genero]    Script Date: 16/10/2017 08:19:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genero](
	[IdGenero] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[IdGenero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manga]    Script Date: 16/10/2017 08:19:24 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manga](
	[IdManga] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[IdGenero] [uniqueidentifier] NULL,
	[Estado] [varchar](50) NULL,
	[Descarga] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Anime]  WITH CHECK ADD  CONSTRAINT [FK_Anime_Genero] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Genero] ([IdGenero])
GO
ALTER TABLE [dbo].[Anime] CHECK CONSTRAINT [FK_Anime_Genero]
GO
