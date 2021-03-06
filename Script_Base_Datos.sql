USE [master]
GO
/****** Object:  Database [kataleyabd]    Script Date: 09/19/2014 22:51:53 ******/
CREATE DATABASE [kataleyabd] ON  PRIMARY 
( NAME = N'kataleyabd', FILENAME = N'D:\SISE BD\kataleyabd.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'kataleyabd_log', FILENAME = N'D:\SISE BD\kataleyabd_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [kataleyabd] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kataleyabd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kataleyabd] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [kataleyabd] SET ANSI_NULLS OFF
GO
ALTER DATABASE [kataleyabd] SET ANSI_PADDING OFF
GO
ALTER DATABASE [kataleyabd] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [kataleyabd] SET ARITHABORT OFF
GO
ALTER DATABASE [kataleyabd] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [kataleyabd] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [kataleyabd] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [kataleyabd] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [kataleyabd] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [kataleyabd] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [kataleyabd] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [kataleyabd] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [kataleyabd] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [kataleyabd] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [kataleyabd] SET  DISABLE_BROKER
GO
ALTER DATABASE [kataleyabd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [kataleyabd] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [kataleyabd] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [kataleyabd] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [kataleyabd] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [kataleyabd] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [kataleyabd] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [kataleyabd] SET  READ_WRITE
GO
ALTER DATABASE [kataleyabd] SET RECOVERY FULL
GO
ALTER DATABASE [kataleyabd] SET  MULTI_USER
GO
ALTER DATABASE [kataleyabd] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [kataleyabd] SET DB_CHAINING OFF
GO
USE [kataleyabd]
GO
/****** Object:  Table [dbo].[VEHICULO_COTIZA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VEHICULO_COTIZA](
	[idCotizacion] [int] NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[anio] [smallint] NULL,
	[idCategoriaVeh] [int] NULL,
	[idUbicacion] [int] NULL,
	[idTipoTimon] [int] NULL,
	[marcaAmericana] [char](1) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_VEHICULO_COTIZA] PRIMARY KEY CLUSTERED 
(
	[idCotizacion] ASC,
	[idVehiculo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SCORING]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SCORING](
	[idScoring] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NULL,
	[rangoIni] [smallint] NULL,
	[rangoFin] [smallint] NULL,
	[grupo1] [varchar](10) NULL,
	[grupo2] [varchar](10) NULL,
	[grupo3] [varchar](10) NULL,
	[tipoValor] [char](1) NULL,
	[valor] [numeric](10, 6) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_SCORING] PRIMARY KEY CLUSTERED 
(
	[idScoring] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[US_USUARIO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[US_USUARIO](
	[UsuarioID] [int] NOT NULL,
	[ClaveAcceso] [char](50) NOT NULL,
	[IndExpiracionClave] [char](1) NOT NULL,
	[FechaExpiracionClave] [datetime] NULL,
	[DNI] [char](8) NOT NULL,
	[ApellidoPaterno] [char](30) NOT NULL,
	[ApellidoMaterno] [char](30) NOT NULL,
	[Nombre] [char](50) NOT NULL,
	[SituacionRegistro] [char](1) NULL,
	[FechaSituacion] [datetime] NULL,
	[FechaAcceso] [datetime] NULL,
	[SituacionAcceso] [char](1) NULL,
	[UsuarioRed] [char](50) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioCreacion] [int] NOT NULL,
	[FechaModifica] [datetime] NOT NULL,
	[UsuarioModifica] [int] NOT NULL,
 CONSTRAINT [PK_US_USUARIO] PRIMARY KEY CLUSTERED 
(
	[UsuarioID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UNI_NEG]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UNI_NEG](
	[idUniNeg] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_UNI_NEG] PRIMARY KEY CLUSTERED 
(
	[idUniNeg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIPO_CATALOGO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TIPO_CATALOGO](
	[idTipoCatalogo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_TIPO_CATALOGO] PRIMARY KEY CLUSTERED 
(
	[idTipoCatalogo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TARIFA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TARIFA](
	[idTarifa] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NULL,
	[idCobertura] [int] NULL,
	[rangoIni] [smallint] NULL,
	[rangoFin] [smallint] NULL,
	[grupo1] [varchar](10) NULL,
	[grupo2] [varchar](10) NULL,
	[grupo3] [varchar](10) NULL,
	[tipoValor] [char](1) NULL,
	[valor] [numeric](10, 6) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_TARIFA] PRIMARY KEY CLUSTERED 
(
	[idTarifa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mig_catalogo_vehiculo_rimac]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mig_catalogo_vehiculo_rimac](
	[idMarca] [varchar](10) NULL,
	[marca] [varchar](50) NULL,
	[idModelo] [varchar](10) NULL,
	[modelo] [varchar](50) NULL,
	[idClase_veh] [varchar](10) NULL,
	[clase_veh] [varchar](50) NULL,
	[idTipo_veh] [varchar](10) NULL,
	[tipo_veh] [varchar](50) NULL,
	[idCategoria_veh] [varchar](10) NULL,
	[categoria_veh] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mig_catalogo_vehiculo_pacifico]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mig_catalogo_vehiculo_pacifico](
	[idMarca] [varchar](10) NULL,
	[marca] [varchar](50) NULL,
	[idModelo] [varchar](10) NULL,
	[modelo] [varchar](50) NULL,
	[anio] [varchar](10) NULL,
	[valor_comercial] [varchar](10) NULL,
	[idClase_veh] [varchar](10) NULL,
	[clase] [varchar](50) NULL,
	[idCategoria_veh] [varchar](10) NULL,
	[categoria] [varchar](50) NULL,
	[marca_gps] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mig_catalogo_vehiculo_apeseg]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mig_catalogo_vehiculo_apeseg](
	[cod_marca_apeseg] [varchar](20) NULL,
	[cod_modelo_apeseg] [varchar](20) NULL,
	[valor0] [varchar](10) NULL,
	[valor1] [varchar](10) NULL,
	[valor2] [varchar](10) NULL,
	[valor3] [varchar](10) NULL,
	[valor4] [varchar](10) NULL,
	[valor5] [varchar](10) NULL,
	[valor6] [varchar](10) NULL,
	[valor7] [varchar](10) NULL,
	[valor8] [varchar](10) NULL,
	[valor9] [varchar](10) NULL,
	[valor10] [varchar](10) NULL,
	[valor11] [varchar](10) NULL,
	[valor12] [varchar](10) NULL,
	[valor13] [varchar](10) NULL,
	[valor14] [varchar](10) NULL,
	[valor15] [varchar](10) NULL,
	[marca] [varchar](100) NULL,
	[modelo] [varchar](100) NULL,
	[marca_aseg] [varchar](5) NULL,
	[fec_reg] [varchar](20) NULL,
	[fec_mod] [varchar](20) NULL,
	[tipo_riesgo] [varchar](5) NULL,
	[marca_timon] [varchar](5) NULL,
	[marca_americana] [varchar](5) NULL,
	[origen] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARCA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARCA](
	[idMarca] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[idOrigen] [int] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_MARCA] PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IMPUESTO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[IMPUESTO](
	[idImpuesto] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NULL,
	[orden] [smallint] NULL,
	[idGrupoImpuesto] [int] NULL,
	[idTipoImpuesto] [int] NULL,
	[tipoValor] [char](1) NULL,
	[valor] [numeric](10, 6) NULL,
	[marcaIncluirSuma] [char](1) NULL,
	[marcaSobreSuma] [char](1) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_IMPUESTO] PRIMARY KEY CLUSTERED 
(
	[idImpuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CIA_SEG]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CIA_SEG](
	[idCiaSeg] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_CIA_SEG] PRIMARY KEY CLUSTERED 
(
	[idCiaSeg] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATALOGO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATALOGO](
	[idCatalogo] [int] IDENTITY(1,1) NOT NULL,
	[idTipoCatalogo] [int] NULL,
	[nombre] [varchar](50) NULL,
	[abrev] [varchar](10) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_CATALOGO] PRIMARY KEY CLUSTERED 
(
	[idCatalogo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[descripcion] [varchar](200) NULL,
	[idCiaSeg] [int] NULL,
	[idRamo] [int] NULL,
	[moneda] [char](3) NULL,
	[diasVigencia] [smallint] NULL,
	[marcaDeremi] [char](1) NULL,
	[marcaImpuesto] [char](1) NULL,
	[diasCarencia] [smallint] NULL,
	[diasGracia] [smallint] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PRODUCTO] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRIMA_MINIMA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRIMA_MINIMA](
	[idPrimaMinima] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NULL,
	[grupo1] [varchar](10) NULL,
	[grupo2] [varchar](10) NULL,
	[grupo3] [varchar](10) NULL,
	[valorMin] [numeric](10, 4) NULL,
	[valorMax] [numeric](10, 4) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PRIMA_MINIMA] PRIMARY KEY CLUSTERED 
(
	[idPrimaMinima] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PERSONA](
	[idPersona] [int] IDENTITY(1,1) NOT NULL,
	[nroDocumento] [varchar](15) NULL,
	[nombres] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fecNacimiento] [datetime] NULL,
	[telefono] [varchar](20) NULL,
	[email] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PERSONA] PRIMARY KEY CLUSTERED 
(
	[idPersona] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MODELO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MODELO](
	[idModelo] [int] IDENTITY(1,1) NOT NULL,
	[idMarca] [int] NULL,
	[nombre] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_MODELO] PRIMARY KEY CLUSTERED 
(
	[idModelo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBERTURA]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBERTURA](
	[idCobertura] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[abrev] [varchar](10) NULL,
	[idCiaSeg] [int] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_COBERTURA] PRIMARY KEY CLUSTERED 
(
	[idCobertura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN](
	[idPlan] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[idProducto] [int] NOT NULL,
	[tipoVigencia] [varchar](50) NULL,
	[sumaAsegMin] [numeric](10, 4) NULL,
	[sumaAsegMax] [numeric](10, 4) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PLAN] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CANAL]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CANAL](
	[idCanal] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[idUniNeg] [int] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_CANAL] PRIMARY KEY CLUSTERED 
(
	[idCanal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GRUPO_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GRUPO_VEHICULO](
	[idGrupoVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NOT NULL,
	[idClaseVeh] [int] NOT NULL,
	[idTipoTimon] [int] NOT NULL,
	[idCategoriaVeh] [int] NOT NULL,
	[idUsoVeh] [int] NOT NULL,
	[grupoVeh] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_GRUPO_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[idGrupoVehiculo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN_SCORING]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_SCORING](
	[idPlan] [int] NOT NULL,
	[idScoring] [int] NOT NULL,
	[estadoScoring] [char](1) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PLAN_SCORING] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC,
	[idScoring] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PLAN_IMPUESTO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PLAN_IMPUESTO](
	[idPlan] [int] NOT NULL,
	[idImpuesto] [int] NOT NULL,
	[estadoImpuesto] [char](1) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_PLAN_IMPUESTO] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC,
	[idImpuesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COBERTURA_PLAN]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COBERTURA_PLAN](
	[idPlan] [int] NOT NULL,
	[idCobertura] [int] NOT NULL,
	[marcaPrincipal] [varchar](50) NULL,
	[idReglaTarifa] [int] NOT NULL,
	[sumaAsegurada] [numeric](10, 4) NULL,
	[deducible] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
	[orden] [varchar](50) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_COBERTURA_PLAN] PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC,
	[idCobertura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SUBMODELO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SUBMODELO](
	[idSubmodelo] [int] IDENTITY(1,1) NOT NULL,
	[idModelo] [int] NULL,
	[nombre] [varchar](20) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_SUBMODELO] PRIMARY KEY CLUSTERED 
(
	[idSubmodelo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTO_CANAL]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTO_CANAL](
	[idCanal] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_producto_canal] PRIMARY KEY CLUSTERED 
(
	[idCanal] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VEHICULO](
	[idVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[idCiaSeg] [int] NULL,
	[idMarca] [int] NULL,
	[idModelo] [int] NULL,
	[idSubmodelo] [int] NULL,
	[nombre] [varchar](70) NULL,
	[idClaseVeh] [int] NULL,
	[idTipoVeh] [int] NULL,
	[idCategoriaVeh] [int] NULL,
	[nroAsientos] [smallint] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[idVehiculo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_GRUPO_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_GRUPO_VEHICULO](
	[idVehiculo] [int] NOT NULL,
	[idGrupoVehiculo] [int] NOT NULL,
	[estadoGrupo] [char](1) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_DETALLE_GRUPO_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[idVehiculo] ASC,
	[idGrupoVehiculo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[COTIZACION]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[COTIZACION](
	[idCotizacion] [int] NOT NULL,
	[nroCotiza] [varchar](10) NULL,
	[idCliente] [int] NULL,
	[idUniNeg] [int] NULL,
	[idCanal] [int] NULL,
	[idCiaSeg] [int] NULL,
	[idRamo] [int] NULL,
	[idProducto] [int] NULL,
	[idPlan] [int] NULL,
	[idVehiculo] [int] NULL,
	[sumaAsegurada] [numeric](10, 4) NULL,
	[moneda] [char](3) NULL,
	[tasa] [numeric](10, 6) NULL,
	[primaNeta] [numeric](10, 4) NULL,
	[descuento] [numeric](10, 4) NULL,
	[recargo] [numeric](10, 4) NULL,
	[derechoEmision] [numeric](10, 4) NULL,
	[impuesto] [numeric](10, 4) NULL,
	[primaTotal] [numeric](10, 4) NULL,
	[usuCotiza] [int] NULL,
	[fecCotiza] [datetime] NULL,
	[fecExpira] [datetime] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_COTIZACION] PRIMARY KEY CLUSTERED 
(
	[idCotizacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CATALOGO_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATALOGO_VEHICULO](
	[idCiaSeg] [int] NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[anio] [int] NOT NULL,
	[moneda]  [char](3) NULL,
	[valorComercial] [money] NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_CATALOGO_VEHICULO] PRIMARY KEY CLUSTERED 
(
	[idCiaSeg] ASC,
	[idVehiculo] ASC,
	[anio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CERTIFICADO_VEHICULAR]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CERTIFICADO_VEHICULAR](
	[nropoliza] [int] NOT NULL,
	[nroCertificado] [int] NOT NULL,
	[idCotizacion] [int] NOT NULL,
	[moneda] [money] NULL,
	[primaNeta] [numeric](10, 4) NULL,
	[descuento] [numeric](10, 4) NULL,
	[primaTecnica] [numeric](10, 4) NULL,
	[derechoEmision] [numeric](10, 4) NULL,
	[impuesto] [numeric](10, 6) NULL,
	[primaTotal] [numeric](10, 4) NULL,
	[estado] [char](1) NULL,
	[usuReg] [int] NULL,
	[fecReg] [datetime] NULL,
 CONSTRAINT [PK_CERTIFICADO_VEHICULAR] PRIMARY KEY CLUSTERED 
(
	[nropoliza] ASC,
	[nroCertificado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DOCUMENTO_PAGO]    Script Date: 09/19/2014 22:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTO_PAGO](
	[idDocumento] [int] NOT NULL,
	[nroPoliza] [int] NOT NULL,
	[nroCertificado] [int] NOT NULL,
	[nro_cuota] [int] NULL,
	[fec_vencimiento] [date] NULL,
 CONSTRAINT [PK_DOCUMENTO_PAGO] PRIMARY KEY CLUSTERED 
(
	[idDocumento] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_modelo_marca]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[MODELO]  WITH CHECK ADD  CONSTRAINT [FK_modelo_marca] FOREIGN KEY([idMarca])
REFERENCES [dbo].[MARCA] ([idMarca])
GO
ALTER TABLE [dbo].[MODELO] CHECK CONSTRAINT [FK_modelo_marca]
GO
/****** Object:  ForeignKey [FK_COBERTURA_CIA_SEG]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COBERTURA]  WITH CHECK ADD  CONSTRAINT [FK_COBERTURA_CIA_SEG] FOREIGN KEY([idCiaSeg])
REFERENCES [dbo].[CIA_SEG] ([idCiaSeg])
GO
ALTER TABLE [dbo].[COBERTURA] CHECK CONSTRAINT [FK_COBERTURA_CIA_SEG]
GO
/****** Object:  ForeignKey [FK_plan_producto]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PLAN]  WITH CHECK ADD  CONSTRAINT [FK_plan_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[PRODUCTO] ([idProducto])
GO
ALTER TABLE [dbo].[PLAN] CHECK CONSTRAINT [FK_plan_producto]
GO
/****** Object:  ForeignKey [FK_canal_uni_neg]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[CANAL]  WITH CHECK ADD  CONSTRAINT [FK_canal_uni_neg] FOREIGN KEY([idUniNeg])
REFERENCES [dbo].[UNI_NEG] ([idUniNeg])
GO
ALTER TABLE [dbo].[CANAL] CHECK CONSTRAINT [FK_canal_uni_neg]
GO
/****** Object:  ForeignKey [FK_grupo_vehiculo_plan]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[GRUPO_VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_grupo_vehiculo_plan] FOREIGN KEY([idPlan])
REFERENCES [dbo].[PLAN] ([idPlan])
GO
ALTER TABLE [dbo].[GRUPO_VEHICULO] CHECK CONSTRAINT [FK_grupo_vehiculo_plan]
GO
/****** Object:  ForeignKey [FK_PLAN_SCORING_PLAN]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PLAN_SCORING]  WITH CHECK ADD  CONSTRAINT [FK_PLAN_SCORING_PLAN] FOREIGN KEY([idPlan])
REFERENCES [dbo].[PLAN] ([idPlan])
GO
ALTER TABLE [dbo].[PLAN_SCORING] CHECK CONSTRAINT [FK_PLAN_SCORING_PLAN]
GO
/****** Object:  ForeignKey [FK_plan_scoring_scoring]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PLAN_SCORING]  WITH CHECK ADD  CONSTRAINT [FK_plan_scoring_scoring] FOREIGN KEY([idScoring])
REFERENCES [dbo].[SCORING] ([idScoring])
GO
ALTER TABLE [dbo].[PLAN_SCORING] CHECK CONSTRAINT [FK_plan_scoring_scoring]
GO
/****** Object:  ForeignKey [FK_plan_impuesto_impuesto]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PLAN_IMPUESTO]  WITH CHECK ADD  CONSTRAINT [FK_plan_impuesto_impuesto] FOREIGN KEY([idImpuesto])
REFERENCES [dbo].[IMPUESTO] ([idImpuesto])
GO
ALTER TABLE [dbo].[PLAN_IMPUESTO] CHECK CONSTRAINT [FK_plan_impuesto_impuesto]
GO
/****** Object:  ForeignKey [FK_plan_impuesto_plan]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PLAN_IMPUESTO]  WITH CHECK ADD  CONSTRAINT [FK_plan_impuesto_plan] FOREIGN KEY([idPlan])
REFERENCES [dbo].[PLAN] ([idPlan])
GO
ALTER TABLE [dbo].[PLAN_IMPUESTO] CHECK CONSTRAINT [FK_plan_impuesto_plan]
GO
/****** Object:  ForeignKey [FK_COBERTURA_PLAN_COBERTURA]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COBERTURA_PLAN]  WITH CHECK ADD  CONSTRAINT [FK_COBERTURA_PLAN_COBERTURA] FOREIGN KEY([idCobertura])
REFERENCES [dbo].[COBERTURA] ([idCobertura])
GO
ALTER TABLE [dbo].[COBERTURA_PLAN] CHECK CONSTRAINT [FK_COBERTURA_PLAN_COBERTURA]
GO
/****** Object:  ForeignKey [FK_COBERTURA_PLAN_PLAN]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COBERTURA_PLAN]  WITH CHECK ADD  CONSTRAINT [FK_COBERTURA_PLAN_PLAN] FOREIGN KEY([idPlan])
REFERENCES [dbo].[PLAN] ([idPlan])
GO
ALTER TABLE [dbo].[COBERTURA_PLAN] CHECK CONSTRAINT [FK_COBERTURA_PLAN_PLAN]
GO
/****** Object:  ForeignKey [FK_submodelo_modelo]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[SUBMODELO]  WITH CHECK ADD  CONSTRAINT [FK_submodelo_modelo] FOREIGN KEY([idModelo])
REFERENCES [dbo].[MODELO] ([idModelo])
GO
ALTER TABLE [dbo].[SUBMODELO] CHECK CONSTRAINT [FK_submodelo_modelo]
GO
/****** Object:  ForeignKey [FK_producto_canal_canal]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PRODUCTO_CANAL]  WITH CHECK ADD  CONSTRAINT [FK_producto_canal_canal] FOREIGN KEY([idCanal])
REFERENCES [dbo].[CANAL] ([idCanal])
GO
ALTER TABLE [dbo].[PRODUCTO_CANAL] CHECK CONSTRAINT [FK_producto_canal_canal]
GO
/****** Object:  ForeignKey [FK_producto_canal_producto]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[PRODUCTO_CANAL]  WITH CHECK ADD  CONSTRAINT [FK_producto_canal_producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[PRODUCTO] ([idProducto])
GO
ALTER TABLE [dbo].[PRODUCTO_CANAL] CHECK CONSTRAINT [FK_producto_canal_producto]
GO
/****** Object:  ForeignKey [FK_vehiculo_submodelo]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_vehiculo_submodelo] FOREIGN KEY([idSubmodelo])
REFERENCES [dbo].[SUBMODELO] ([idSubmodelo])
GO
ALTER TABLE [dbo].[VEHICULO] CHECK CONSTRAINT [FK_vehiculo_submodelo]
GO
/****** Object:  ForeignKey [FK_DETALLE_GRUPO_VEHICULO_GRUPO_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[DETALLE_GRUPO_VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_GRUPO_VEHICULO_GRUPO_VEHICULO] FOREIGN KEY([idGrupoVehiculo])
REFERENCES [dbo].[GRUPO_VEHICULO] ([idGrupoVehiculo])
GO
ALTER TABLE [dbo].[DETALLE_GRUPO_VEHICULO] CHECK CONSTRAINT [FK_DETALLE_GRUPO_VEHICULO_GRUPO_VEHICULO]
GO
/****** Object:  ForeignKey [FK_detalle_grupo_vehiculo_vehiculo]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[DETALLE_GRUPO_VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_detalle_grupo_vehiculo_vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[VEHICULO] ([idVehiculo])
GO
ALTER TABLE [dbo].[DETALLE_GRUPO_VEHICULO] CHECK CONSTRAINT [FK_detalle_grupo_vehiculo_vehiculo]
GO
/****** Object:  ForeignKey [FK_COTIZACION_CANAL]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COTIZACION]  WITH CHECK ADD  CONSTRAINT [FK_COTIZACION_CANAL] FOREIGN KEY([idCanal])
REFERENCES [dbo].[CANAL] ([idCanal])
GO
ALTER TABLE [dbo].[COTIZACION] CHECK CONSTRAINT [FK_COTIZACION_CANAL]
GO
/****** Object:  ForeignKey [FK_COTIZACION_PERSONA]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COTIZACION]  WITH CHECK ADD  CONSTRAINT [FK_COTIZACION_PERSONA] FOREIGN KEY([idCliente])
REFERENCES [dbo].[PERSONA] ([idPersona])
GO
ALTER TABLE [dbo].[COTIZACION] CHECK CONSTRAINT [FK_COTIZACION_PERSONA]
GO
/****** Object:  ForeignKey [FK_COTIZACION_PLAN]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COTIZACION]  WITH CHECK ADD  CONSTRAINT [FK_COTIZACION_PLAN] FOREIGN KEY([idPlan])
REFERENCES [dbo].[PLAN] ([idPlan])
GO
ALTER TABLE [dbo].[COTIZACION] CHECK CONSTRAINT [FK_COTIZACION_PLAN]
GO
/****** Object:  ForeignKey [FK_COTIZACION_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[COTIZACION]  WITH CHECK ADD  CONSTRAINT [FK_COTIZACION_VEHICULO] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[VEHICULO] ([idVehiculo])
GO
ALTER TABLE [dbo].[COTIZACION] CHECK CONSTRAINT [FK_COTIZACION_VEHICULO]
GO
/****** Object:  ForeignKey [FK_CATALOGO_VEHICULO_CIA_SEG]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[CATALOGO_VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_CATALOGO_VEHICULO_CIA_SEG] FOREIGN KEY([idCiaSeg])
REFERENCES [dbo].[CIA_SEG] ([idCiaSeg])
GO
ALTER TABLE [dbo].[CATALOGO_VEHICULO] CHECK CONSTRAINT [FK_CATALOGO_VEHICULO_CIA_SEG]
GO
/****** Object:  ForeignKey [FK_CATALOGO_VEHICULO_VEHICULO]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[CATALOGO_VEHICULO]  WITH CHECK ADD  CONSTRAINT [FK_CATALOGO_VEHICULO_VEHICULO] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[VEHICULO] ([idVehiculo])
GO
ALTER TABLE [dbo].[CATALOGO_VEHICULO] CHECK CONSTRAINT [FK_CATALOGO_VEHICULO_VEHICULO]
GO
/****** Object:  ForeignKey [FK_CERTIFICADO_VEHICULAR_COTIZACION]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[CERTIFICADO_VEHICULAR]  WITH CHECK ADD  CONSTRAINT [FK_CERTIFICADO_VEHICULAR_COTIZACION] FOREIGN KEY([idCotizacion])
REFERENCES [dbo].[COTIZACION] ([idCotizacion])
GO
ALTER TABLE [dbo].[CERTIFICADO_VEHICULAR] CHECK CONSTRAINT [FK_CERTIFICADO_VEHICULAR_COTIZACION]
GO
/****** Object:  ForeignKey [FK_documento_pago_certificado_vehicular]    Script Date: 09/19/2014 22:51:55 ******/
ALTER TABLE [dbo].[DOCUMENTO_PAGO]  WITH CHECK ADD  CONSTRAINT [FK_documento_pago_certificado_vehicular] FOREIGN KEY([nroPoliza], [nroCertificado])
REFERENCES [dbo].[CERTIFICADO_VEHICULAR] ([nropoliza], [nroCertificado])
GO
ALTER TABLE [dbo].[DOCUMENTO_PAGO] CHECK CONSTRAINT [FK_documento_pago_certificado_vehicular]
GO

CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](20) NOT NULL,
	[claveAcceso] [varchar](20) NOT NULL,
	[indExpiracionClave] [varchar](1) NOT NULL,
	[fechaExpiracionClave] [datetime] NULL,
	[DNI] [char](8) NOT NULL,
	[apellidoPaterno] [varchar](30) NOT NULL,
	[apellidoMaterno] [varchar](30) NOT NULL,
	[nombre] [char](50) NOT NULL,
	[situacionRegistro] [varchar](1) NULL,
	[fechaCreacion] [datetime] NOT NULL,
	[usuarioCreacion] [int] NOT NULL,
	
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO