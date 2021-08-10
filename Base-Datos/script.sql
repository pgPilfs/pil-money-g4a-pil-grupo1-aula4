USE [master]
GO
/****** Object:  Database [PilMoney]    Script Date: 10/8/2021 19:20:27 ******/
CREATE DATABASE [PilMoney]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PilMoney', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PilMoney.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PilMoney_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PilMoney_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PilMoney] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PilMoney].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PilMoney] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PilMoney] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PilMoney] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PilMoney] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PilMoney] SET ARITHABORT OFF 
GO
ALTER DATABASE [PilMoney] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PilMoney] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PilMoney] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PilMoney] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PilMoney] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PilMoney] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PilMoney] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PilMoney] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PilMoney] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PilMoney] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PilMoney] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PilMoney] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PilMoney] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PilMoney] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PilMoney] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PilMoney] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PilMoney] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PilMoney] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PilMoney] SET  MULTI_USER 
GO
ALTER DATABASE [PilMoney] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PilMoney] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PilMoney] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PilMoney] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PilMoney] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PilMoney] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PilMoney] SET QUERY_STORE = OFF
GO
USE [PilMoney]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 10/8/2021 19:20:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[idCompra] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[CVUContacto] [varchar](50) NULL,
	[AliasContacto] [varchar](50) NULL,
	[CVU] [varchar](50) NOT NULL,
	[idContacto] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Contactos] PRIMARY KEY CLUSTERED 
(
	[idContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuentas]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuentas](
	[CVU] [varchar](50) NOT NULL,
	[Saldo] [float] NULL,
	[Alias] [nvarchar](50) NOT NULL,
	[TipoDeCaja] [nvarchar](50) NOT NULL,
	[IdTipoMoneda] [int] NOT NULL,
	[CUIL] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[CVU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depositos]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depositos](
	[idDeposito] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[CVU] [varchar](50) NULL,
	[Alias] [nvarchar](50) NULL,
 CONSTRAINT [PK_Depositos] PRIMARY KEY CLUSTERED 
(
	[idDeposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inversiones]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inversiones](
	[idInversion] [int] IDENTITY(1,1) NOT NULL,
	[tipoInversion] [varchar](50) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Renovacion] [tinyint] NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Inversion] PRIMARY KEY CLUSTERED 
(
	[idInversion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[idServicio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[fechaVencimiento] [datetime] NOT NULL,
	[fechaPago] [datetime] NULL,
	[Importe] [float] NOT NULL,
	[Entidad] [varchar](50) NULL,
	[Estado] [tinyint] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMonedas]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMonedas](
	[idTipoMoneda] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TipoMoneda] PRIMARY KEY CLUSTERED 
(
	[idTipoMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transferencias]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transferencias](
	[idTransferencia] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Importe] [float] NOT NULL,
	[idContacto] [int] NULL,
	[CVU] [varchar](50) NOT NULL,
	[CVUDestino] [varchar](50) NULL,
	[AliasDestino] [varchar](50) NULL,
 CONSTRAINT [PK_Transferencia] PRIMARY KEY CLUSTERED 
(
	[idTransferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[CUIL] [varchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Contraseña] [nvarchar](50) NOT NULL,
	[NombreCompleto] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[imagenDNI] [varbinary](max) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[CUIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 10/8/2021 19:20:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[Importe] [float] NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[CVU] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Compras] ON 

INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (1, 1300, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123')
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (3, 12341, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123')
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (4, 12345, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (5, 20000, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'12345')
INSERT [dbo].[Compras] ([idCompra], [Importe], [Fecha], [CVU]) VALUES (6, 40000, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123456')
SET IDENTITY_INSERT [dbo].[Compras] OFF
GO
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'123', 0, N'alias.de.prueba', N'ahorro', 2, N'2012345672')
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'1234', 0, N'alias.de.test1', N'ahorro', 1, N'1231231231')
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'12345', 0, N'alias.de.test', N'cuenta corriente', 3, N'1231231231')
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'123456', 0, N'alias.de.test2', N'ahorro', 4, N'1234567657')
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'1234567', 0, N'alias.de.test3', N'ahorro', 2, N'1234566879')
INSERT [dbo].[Cuentas] ([CVU], [Saldo], [Alias], [TipoDeCaja], [IdTipoMoneda], [CUIL]) VALUES (N'12345678', 0, N'alias.de.test4', N'ahorro', 5, N'1234568979')
GO
SET IDENTITY_INSERT [dbo].[Depositos] ON 

INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (1, 20000, N'123', NULL)
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (2, 30000, N'1234', NULL)
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (3, 2000012, N'12345', NULL)
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (4, 123455, N'123', NULL)
INSERT [dbo].[Depositos] ([idDeposito], [Importe], [CVU], [Alias]) VALUES (5, 123345, NULL, N'alias.de.prueba')
SET IDENTITY_INSERT [dbo].[Depositos] OFF
GO
SET IDENTITY_INSERT [dbo].[Inversiones] ON 

INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (1, N'plazofijo', 13000, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 30, N'123')
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (2, N'fci', 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 60, N'1234')
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (4, N'plazofijo', 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 90, N'12345')
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (5, N'fci', 1231234, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 30, N'123456')
INSERT [dbo].[Inversiones] ([idInversion], [tipoInversion], [Importe], [Fecha], [Renovacion], [CVU]) VALUES (6, N'plazofijo', 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 30, N'12345')
SET IDENTITY_INSERT [dbo].[Inversiones] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (1, NULL, CAST(N'2021-08-04T00:00:00.000' AS DateTime), NULL, 1300, N'x', 0, N'123')
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (2, NULL, CAST(N'2021-08-04T00:00:00.000' AS DateTime), NULL, 123123, N'xxxx', 1, N'1234')
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (3, NULL, CAST(N'2021-08-04T00:00:00.000' AS DateTime), NULL, 123123, N'xxxx', 1, N'1234')
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (4, NULL, CAST(N'2021-08-04T00:00:00.000' AS DateTime), NULL, 123123, N'xxxx', 0, N'123')
INSERT [dbo].[Servicios] ([idServicio], [Descripcion], [fechaVencimiento], [fechaPago], [Importe], [Entidad], [Estado], [CVU]) VALUES (5, NULL, CAST(N'2021-08-04T00:00:00.000' AS DateTime), NULL, 123123, N'xxx', 1, N'123')
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoMonedas] ON 

INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (2, N'ARS')
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (3, N'BIT')
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (5, N'ETH')
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (4, N'EUR')
INSERT [dbo].[TipoMonedas] ([idTipoMoneda], [nombre]) VALUES (1, N'USD')
SET IDENTITY_INSERT [dbo].[TipoMonedas] OFF
GO
SET IDENTITY_INSERT [dbo].[Transferencias] ON 

INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (1, CAST(N'2021-08-03T00:00:00.000' AS DateTime), 13000, NULL, N'123', NULL, NULL)
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (2, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, NULL, N'123', NULL, NULL)
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (3, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, NULL, N'1234', NULL, NULL)
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (4, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 123123, NULL, N'12345', NULL, NULL)
INSERT [dbo].[Transferencias] ([idTransferencia], [Fecha], [Importe], [idContacto], [CVU], [CVUDestino], [AliasDestino]) VALUES (5, CAST(N'2021-08-04T00:00:00.000' AS DateTime), 1231234, NULL, N'12345', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Transferencias] OFF
GO
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [imagenDNI]) VALUES (N'1231231231', N'test1@test.com', N'123456', N'test1 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123455678', NULL)
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [imagenDNI]) VALUES (N'1234566879', N'test3@test.com', N'1234567', N'test3 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456687', NULL)
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [imagenDNI]) VALUES (N'1234567657', N'test2@test.com', N'1234567', N'test2 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456789', NULL)
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [imagenDNI]) VALUES (N'1234568979', N'test4@test.com', N'123456876', N'test4 test', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'12345687', NULL)
INSERT [dbo].[Usuarios] ([CUIL], [Email], [Contraseña], [NombreCompleto], [FechaNacimiento], [Telefono], [imagenDNI]) VALUES (N'2012345672', N'pil4a@gmail.com', N'12345678', N'Admin', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'123456789', NULL)
GO
SET IDENTITY_INSERT [dbo].[Venta] ON 

INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (1, 2000, CAST(N'2021-08-03T00:00:00.000' AS DateTime), N'123')
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (2, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (3, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'12345')
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (4, 123123, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'123456')
INSERT [dbo].[Venta] ([idVenta], [Importe], [Fecha], [CVU]) VALUES (5, 1231231, CAST(N'2021-08-04T00:00:00.000' AS DateTime), N'1234')
SET IDENTITY_INSERT [dbo].[Venta] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contactos]    Script Date: 10/8/2021 19:20:28 ******/
ALTER TABLE [dbo].[Contactos] ADD  CONSTRAINT [IX_Contactos] UNIQUE NONCLUSTERED 
(
	[CVUContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Contactos_1]    Script Date: 10/8/2021 19:20:28 ******/
ALTER TABLE [dbo].[Contactos] ADD  CONSTRAINT [IX_Contactos_1] UNIQUE NONCLUSTERED 
(
	[AliasContacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Cuentas_1]    Script Date: 10/8/2021 19:20:28 ******/
ALTER TABLE [dbo].[Cuentas] ADD  CONSTRAINT [IX_Cuentas_1] UNIQUE NONCLUSTERED 
(
	[Alias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_TipoMonedas]    Script Date: 10/8/2021 19:20:28 ******/
ALTER TABLE [dbo].[TipoMonedas] ADD  CONSTRAINT [IX_TipoMonedas] UNIQUE NONCLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Usuarios]    Script Date: 10/8/2021 19:20:28 ******/
ALTER TABLE [dbo].[Usuarios] ADD  CONSTRAINT [IX_Usuarios] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cuentas] ADD  CONSTRAINT [DF_Cuenta_Saldo]  DEFAULT ((0.00)) FOR [Saldo]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Cuentas]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [FK_Contactos_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [FK_Contactos_Cuentas]
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_TipoMonedas1] FOREIGN KEY([IdTipoMoneda])
REFERENCES [dbo].[TipoMonedas] ([idTipoMoneda])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_TipoMonedas1]
GO
ALTER TABLE [dbo].[Cuentas]  WITH CHECK ADD  CONSTRAINT [FK_Cuentas_Usuarios] FOREIGN KEY([CUIL])
REFERENCES [dbo].[Usuarios] ([CUIL])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cuentas] CHECK CONSTRAINT [FK_Cuentas_Usuarios]
GO
ALTER TABLE [dbo].[Depositos]  WITH CHECK ADD  CONSTRAINT [FK_Depositos_Cuentas1] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
GO
ALTER TABLE [dbo].[Depositos] CHECK CONSTRAINT [FK_Depositos_Cuentas1]
GO
ALTER TABLE [dbo].[Inversiones]  WITH CHECK ADD  CONSTRAINT [FK_Inversiones_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inversiones] CHECK CONSTRAINT [FK_Inversiones_Cuentas]
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD  CONSTRAINT [FK_Servicios_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Servicios] CHECK CONSTRAINT [FK_Servicios_Cuentas]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_Contactos] FOREIGN KEY([idContacto])
REFERENCES [dbo].[Contactos] ([idContacto])
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_Contactos]
GO
ALTER TABLE [dbo].[Transferencias]  WITH CHECK ADD  CONSTRAINT [FK_Transferencias_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Transferencias] CHECK CONSTRAINT [FK_Transferencias_Cuentas]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_Cuentas] FOREIGN KEY([CVU])
REFERENCES [dbo].[Cuentas] ([CVU])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_Cuentas]
GO
USE [master]
GO
ALTER DATABASE [PilMoney] SET  READ_WRITE 
GO
