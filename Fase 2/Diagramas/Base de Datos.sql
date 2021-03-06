USE [master]
GO
/****** Object:  Database [Fase2J15]    Script Date: 23/06/2015 1:34:44 a. m. ******/
CREATE DATABASE [Fase2J15]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Fase2J15', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Fase2J15.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Fase2J15_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Fase2J15_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Fase2J15] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Fase2J15].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Fase2J15] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Fase2J15] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Fase2J15] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Fase2J15] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Fase2J15] SET ARITHABORT OFF 
GO
ALTER DATABASE [Fase2J15] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Fase2J15] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Fase2J15] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Fase2J15] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Fase2J15] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Fase2J15] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Fase2J15] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Fase2J15] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Fase2J15] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Fase2J15] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Fase2J15] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Fase2J15] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Fase2J15] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Fase2J15] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Fase2J15] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Fase2J15] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Fase2J15] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Fase2J15] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Fase2J15] SET RECOVERY FULL 
GO
ALTER DATABASE [Fase2J15] SET  MULTI_USER 
GO
ALTER DATABASE [Fase2J15] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Fase2J15] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Fase2J15] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Fase2J15] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Fase2J15', N'ON'
GO
USE [Fase2J15]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 23/06/2015 1:34:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Administrador](
	[ID_Administrador] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[Apellido] [varchar](max) NULL,
	[Telefono] [int] NULL,
	[Sueldo] [float] NULL,
	[Domicilio] [varchar](max) NULL,
	[DPI] [int] NULL,
	[Correo] [varchar](max) NULL,
	[contraseña] [varchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 23/06/2015 1:34:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[DPI] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Apellido] [varchar](max) NOT NULL,
	[NIT] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Tarjeta] [int] NOT NULL,
	[usuario] [varchar](max) NULL,
	[contraseña] [varchar](max) NULL,
	[Aprobacion] [int] NULL,
	[Casilla] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[ID_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamento](
	[ID_Departamento] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_depa] [varchar](max) NOT NULL,
	[ID_Sucursal] [int] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[ID_Departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Devoluciones]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Devoluciones](
	[ID_Devolucion] [int] IDENTITY(1,1) NOT NULL,
	[ID_Pago] [int] NOT NULL,
	[comentario] [varchar](max) NOT NULL,
	[fecha] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Devoluciones] PRIMARY KEY CLUSTERED 
(
	[ID_Devolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[ID_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[Apellido] [varchar](max) NULL,
	[Telefono] [int] NULL,
	[Sueldo] [float] NULL,
	[Domicilio] [varchar](max) NULL,
	[DPI] [int] NULL,
	[Correo] [varchar](max) NULL,
	[ID_Depa] [int] NULL,
	[contraseña] [varchar](50) NOT NULL,
	[rol] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[ID_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[ID_Historial] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Impuesto]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Impuesto](
	[ID_Impuesto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[valor] [int] NULL,
 CONSTRAINT [PK_Impuesto] PRIMARY KEY CLUSTERED 
(
	[ID_Impuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lote]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lote](
	[ID_Lote] [int] IDENTITY(1,1) NOT NULL,
	[fecha_salida] [varchar](50) NULL,
	[fecha_envio] [varchar](50) NULL,
 CONSTRAINT [PK_Lot] PRIMARY KEY CLUSTERED 
(
	[ID_Lote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Paquete](
	[ID_Paquete] [int] IDENTITY(1,1) NOT NULL,
	[Peso_Lb] [float] NULL,
	[Impuesto] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Comision] [int] NULL,
	[ValorFinal] [float] NULL,
	[usuario] [int] NULL,
	[lote] [int] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[ID_Paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Peso] [float] NOT NULL,
	[Valor] [float] NOT NULL,
	[Costo] [float] NOT NULL,
	[Impuesto] [int] NOT NULL,
	[Comision] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[Stock] [int] NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sede]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[ID_Sede] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Pais] [varchar](max) NULL,
	[Comision] [int] NULL,
	[cobroPeso] [int] NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[ID_Sede] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sucursal](
	[ID_Sucursal] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Sucursal] [varchar](max) NULL,
	[ID_Pais] [int] NOT NULL,
	[Dirección] [varchar](max) NOT NULL,
	[Capacidad] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[ID_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tarjeta]    Script Date: 23/06/2015 1:34:45 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarjeta](
	[No_Tarjeta] [int] NOT NULL,
	[Tipo] [varchar](max) NOT NULL,
	[Nombre_Propietario] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[No_Tarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Administrador] ADD  CONSTRAINT [DF_Administrador_contraseña]  DEFAULT ('2015quetzal') FOR [contraseña]
GO
ALTER TABLE [dbo].[Empleado] ADD  CONSTRAINT [DF_Empleado_contraseña]  DEFAULT ('2015quetzal') FOR [contraseña]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Tarjeta] FOREIGN KEY([Tarjeta])
REFERENCES [dbo].[Tarjeta] ([No_Tarjeta])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Tarjeta]
GO
ALTER TABLE [dbo].[Departamento]  WITH CHECK ADD  CONSTRAINT [FK_Departamento_Sucursal] FOREIGN KEY([ID_Sucursal])
REFERENCES [dbo].[Sucursal] ([ID_Sucursal])
GO
ALTER TABLE [dbo].[Departamento] CHECK CONSTRAINT [FK_Departamento_Sucursal]
GO
ALTER TABLE [dbo].[Empleado]  WITH NOCHECK ADD  CONSTRAINT [FK_Empleado_Departamento] FOREIGN KEY([ID_Depa])
REFERENCES [dbo].[Departamento] ([ID_Departamento])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [FK_Empleado_Departamento]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Clientes] FOREIGN KEY([usuario])
REFERENCES [dbo].[Clientes] ([ID_Cliente])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Clientes]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Lot] FOREIGN KEY([lote])
REFERENCES [dbo].[Lote] ([ID_Lote])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Lot]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Impuesto] FOREIGN KEY([Impuesto])
REFERENCES [dbo].[Impuesto] ([ID_Impuesto])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Impuesto]
GO
ALTER TABLE [dbo].[Sucursal]  WITH CHECK ADD  CONSTRAINT [FK_Sucursal_Sede] FOREIGN KEY([ID_Pais])
REFERENCES [dbo].[Sede] ([ID_Sede])
GO
ALTER TABLE [dbo].[Sucursal] CHECK CONSTRAINT [FK_Sucursal_Sede]
GO
USE [master]
GO
ALTER DATABASE [Fase2J15] SET  READ_WRITE 
GO
