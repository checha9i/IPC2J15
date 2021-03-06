USE [master]
GO
/****** Object:  Database [Whizz_Hard_Books]    Script Date: 16/06/2015 9:00:20 a. m. ******/
CREATE DATABASE [Whizz_Hard_Books]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Whizz Hard Books', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Whizz Hard Books.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Whizz Hard Books_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Whizz Hard Books_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Whizz_Hard_Books] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Whizz_Hard_Books].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Whizz_Hard_Books] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET ARITHABORT OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Whizz_Hard_Books] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Whizz_Hard_Books] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Whizz_Hard_Books] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Whizz_Hard_Books] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Whizz_Hard_Books] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET RECOVERY FULL 
GO
ALTER DATABASE [Whizz_Hard_Books] SET  MULTI_USER 
GO
ALTER DATABASE [Whizz_Hard_Books] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Whizz_Hard_Books] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Whizz_Hard_Books] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Whizz_Hard_Books] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Whizz_Hard_Books', N'ON'
GO
USE [Whizz_Hard_Books]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 16/06/2015 9:00:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[Carnet] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[DPI] [bigint] NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Telefono1] [int] NOT NULL,
	[Telefono2] [int] NULL,
	[Telefono3] [int] NULL,
	[n_prestamos] [int] NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Carnet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libro]    Script Date: 16/06/2015 9:00:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Libro](
	[Nombre] [varchar](max) NOT NULL,
	[Autor] [varchar](max) NOT NULL,
	[Existencia] [int] NOT NULL,
	[Paginas] [int] NOT NULL,
	[Tema] [varchar](max) NOT NULL,
	[Co_Autor] [varchar](max) NULL,
	[ID_Libro] [int] NOT NULL,
	[Disponibles] [int] NULL,
	[Prestados] [int] NULL,
	[Reservados] [int] NULL,
	[topprestados] [int] NULL,
 CONSTRAINT [PK_Libro] PRIMARY KEY CLUSTERED 
(
	[ID_Libro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Prestamos]    Script Date: 16/06/2015 9:00:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Prestamos](
	[ID_Prestamo] [int] NOT NULL,
	[carnet] [int] NOT NULL,
	[ID_Libro] [int] NOT NULL,
	[fecha_prestamo] [varchar](50) NOT NULL,
	[fecha_devolucion] [varchar](100) NULL,
 CONSTRAINT [PK_Prestamos] PRIMARY KEY CLUSTERED 
(
	[ID_Prestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 16/06/2015 9:00:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reservas](
	[ID_reserva] [int] NOT NULL,
	[ID_Libro] [int] NOT NULL,
	[carnet] [int] NOT NULL,
	[fecha_reservacion] [varchar](50) NOT NULL,
	[finalizada] [int] NULL,
 CONSTRAINT [PK_Reservas] PRIMARY KEY CLUSTERED 
(
	[ID_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [FK_Prestamos_Clientes] FOREIGN KEY([carnet])
REFERENCES [dbo].[Clientes] ([Carnet])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [FK_Prestamos_Clientes]
GO
ALTER TABLE [dbo].[Prestamos]  WITH CHECK ADD  CONSTRAINT [FK_Prestamos_Libro] FOREIGN KEY([ID_Libro])
REFERENCES [dbo].[Libro] ([ID_Libro])
GO
ALTER TABLE [dbo].[Prestamos] CHECK CONSTRAINT [FK_Prestamos_Libro]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Clientes] FOREIGN KEY([carnet])
REFERENCES [dbo].[Clientes] ([Carnet])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Clientes]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Libro] FOREIGN KEY([ID_Libro])
REFERENCES [dbo].[Libro] ([ID_Libro])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Libro]
GO
USE [master]
GO
ALTER DATABASE [Whizz_Hard_Books] SET  READ_WRITE 
GO
