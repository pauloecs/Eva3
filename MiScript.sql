USE [EVA3]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 17-07-2022 16:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 17-07-2022 16:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] NOT NULL,
	[Nombre] [nchar](30) NOT NULL,
	[Descripcion] [nchar](200) NOT NULL,
	[Precio] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 17-07-2022 16:02:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[email] [nchar](320) NOT NULL,
	[nombre] [nchar](100) NOT NULL,
	[clave] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (1, N'Audio y video                                     ')
GO
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Deportes                                          ')
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [Precio], [Stock], [IdCategoria]) VALUES (1, N'Aiwa200                       ', N'Audifono                                                                                                                                                                                                ', 21500, 30, 1)
GO
INSERT [dbo].[Producto] ([Id], [Nombre], [Descripcion], [Precio], [Stock], [IdCategoria]) VALUES (2, N'Maxxis 26x2.1                 ', N'Neumatico Bicicleta                                                                                                                                                                                     ', 10990, 50, 2)
GO
INSERT [dbo].[Usuario] ([email], [nombre], [clave]) VALUES (N'paulo@gmail.com                                                                                                                                                                                                                                                                                                                 ', N'Paulo                                                                                               ', N'gatogato       ')
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria1] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria1]
GO
