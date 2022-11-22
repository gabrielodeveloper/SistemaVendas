USE [master]
GO
/****** Object:  Database [SistmaVendas]    Script Date: 22/11/2022 16:00:58 ******/
CREATE DATABASE [SistmaVendas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SistmaVendas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SistmaVendas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SistmaVendas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SistmaVendas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SistmaVendas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SistmaVendas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SistmaVendas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SistmaVendas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SistmaVendas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SistmaVendas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SistmaVendas] SET ARITHABORT OFF 
GO
ALTER DATABASE [SistmaVendas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SistmaVendas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SistmaVendas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SistmaVendas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SistmaVendas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SistmaVendas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SistmaVendas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SistmaVendas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SistmaVendas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SistmaVendas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SistmaVendas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SistmaVendas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SistmaVendas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SistmaVendas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SistmaVendas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SistmaVendas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SistmaVendas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SistmaVendas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SistmaVendas] SET  MULTI_USER 
GO
ALTER DATABASE [SistmaVendas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SistmaVendas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SistmaVendas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SistmaVendas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SistmaVendas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SistmaVendas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SistmaVendas] SET QUERY_STORE = OFF
GO
USE [SistmaVendas]
GO
/****** Object:  Table [dbo].[tblPessoa]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoa](
	[IdPessoa] [int] IDENTITY(1,1) NOT NULL,
	[IdPessoaTipo] [int] NOT NULL,
 CONSTRAINT [PK_tblPessoa] PRIMARY KEY CLUSTERED 
(
	[IdPessoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPessoaTipo]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoaTipo](
	[IdPessoaTipo] [int] NOT NULL,
	[Descricao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblPessoaTipo] PRIMARY KEY CLUSTERED 
(
	[IdPessoaTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPessoaFisica]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoaFisica](
	[IdPessoaFisica] [int] NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[CPF] [varchar](11) NOT NULL,
	[RG] [varchar](20) NULL,
	[DataNascimento] [date] NOT NULL,
 CONSTRAINT [PK_tblPessoaFisica] PRIMARY KEY CLUSTERED 
(
	[IdPessoaFisica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPessoaJuridica]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoaJuridica](
	[IdPessoaJuridica] [int] NOT NULL,
	[NomeFantasia] [varchar](50) NOT NULL,
	[RazaoSocial] [varchar](50) NOT NULL,
	[CNPJ] [varchar](14) NOT NULL,
	[InscricaoEstadual] [varchar](20) NULL,
	[DataFundacao] [date] NOT NULL,
 CONSTRAINT [PK_tblPessoaJuridica] PRIMARY KEY CLUSTERED 
(
	[IdPessoaJuridica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[uvwPessoaFisicaJuridica]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[uvwPessoaFisicaJuridica]
AS 

	SELECT 
		tblPessoa.IdPessoa,
		tblPessoa.IdPessoaTipo AS DescricaoTipo,
		tblPessoaTipo.Descricao,
		CASE 
			WHEN tblPessoa.IdPessoaTipo = 1 THEN tblPessoaFisica.CPF
			ELSE tblPessoaJuridica.CNPJ

		END AS CpfCnpj,

		CASE 
			WHEN tblPessoa.IdPessoaTipo = 1 THEN tblPessoaFisica.Nome
			ELSE tblPessoaJuridica.NomeFantasia

		END AS Nome

	FROM 
		tblPessoa 
	JOIN 
		tblPessoaTipo ON tblPessoa.IdPessoaTipo = tblPessoaTipo.IdPessoaTipo
	LEFT JOIN 
		tblPessoaFisica ON tblPessoa.IdPessoa = tblPessoaFisica.IdPessoaFisica 
	LEFT JOIN 
		tblPessoaJuridica ON tblPessoa.IdPessoa = tblPessoaJuridica.IdPessoaJuridica
GO
/****** Object:  Table [dbo].[tblCliente]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCliente](
	[IdPessoaCliente] [int] NOT NULL,
 CONSTRAINT [PK_tblCliente] PRIMARY KEY CLUSTERED 
(
	[IdPessoaCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEstoque]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEstoque](
	[IdPessoaFilial] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
 CONSTRAINT [PK_tblEstoque] PRIMARY KEY CLUSTERED 
(
	[IdPessoaFilial] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEstoqueMovimentado]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEstoqueMovimentado](
	[IdEstoqueMovimentado] [int] IDENTITY(1,1) NOT NULL,
	[IdPessoaFilial] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[DataHora] [datetime] NOT NULL,
	[EntrouSaiu] [char](1) NOT NULL,
 CONSTRAINT [PK_tblEstoqueMovimentado] PRIMARY KEY CLUSTERED 
(
	[IdEstoqueMovimentado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEstoqueReservado]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEstoqueReservado](
	[IdPessoaFilial] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
 CONSTRAINT [PK_tblEstoqueReservado] PRIMARY KEY CLUSTERED 
(
	[IdPessoaFilial] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOperacao]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOperacao](
	[IdOperacao] [int] NOT NULL,
	[Descricao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblOperacao] PRIMARY KEY CLUSTERED 
(
	[IdOperacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPedido]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPedido](
	[IdPedido] [int] IDENTITY(1,1) NOT NULL,
	[DataHora] [datetime] NOT NULL,
	[IdOperacao] [int] NOT NULL,
	[IdSituacao] [int] NOT NULL,
	[IdPessoaEmitente] [int] NOT NULL,
	[IdPessoaDestinatario] [int] NOT NULL,
 CONSTRAINT [PK_tblPedido] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPedidoItem]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPedidoItem](
	[IdPedido] [int] NOT NULL,
	[IdProduto] [int] NOT NULL,
	[Quantidade] [int] NOT NULL,
	[ValorUnitario] [decimal](18, 2) NOT NULL,
	[PercentualDesconto] [decimal](5, 2) NOT NULL,
	[ValorDesconto] [decimal](18, 2) NOT NULL,
	[ValorTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tblPedidoItem] PRIMARY KEY CLUSTERED 
(
	[IdPedido] ASC,
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPessoaFilial]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoaFilial](
	[IdPessoaFilial] [int] NOT NULL,
 CONSTRAINT [PK_tblPessoaFilial] PRIMARY KEY CLUSTERED 
(
	[IdPessoaFilial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPessoaFornecedor]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPessoaFornecedor](
	[IdPessoaFornecedor] [int] NOT NULL,
 CONSTRAINT [PK_tblPessoaFornecedor] PRIMARY KEY CLUSTERED 
(
	[IdPessoaFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPreco]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPreco](
	[IdProduto] [int] NOT NULL,
	[Preco] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_tblPreco] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduto]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduto](
	[IdProduto] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblProduto] PRIMARY KEY CLUSTERED 
(
	[IdProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSituacao]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSituacao](
	[IdSituacao] [int] NOT NULL,
	[Descricao] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tblSituacao] PRIMARY KEY CLUSTERED 
(
	[IdSituacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblPessoaFisicaCPF]    Script Date: 22/11/2022 16:00:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblPessoaFisicaCPF] ON [dbo].[tblPessoaFisica]
(
	[CPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_tblPessoaJuridicaCNPJ]    Script Date: 22/11/2022 16:00:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_tblPessoaJuridicaCNPJ] ON [dbo].[tblPessoaJuridica]
(
	[CNPJ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblPedido] ADD  CONSTRAINT [DF_tblPedido_DataHora]  DEFAULT (getdate()) FOR [DataHora]
GO
ALTER TABLE [dbo].[tblCliente]  WITH CHECK ADD  CONSTRAINT [FK_tblCliente_tblPessoa] FOREIGN KEY([IdPessoaCliente])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblCliente] CHECK CONSTRAINT [FK_tblCliente_tblPessoa]
GO
ALTER TABLE [dbo].[tblEstoque]  WITH CHECK ADD  CONSTRAINT [FK_tblEstoque_tblPessoaFilial] FOREIGN KEY([IdPessoaFilial])
REFERENCES [dbo].[tblPessoaFilial] ([IdPessoaFilial])
GO
ALTER TABLE [dbo].[tblEstoque] CHECK CONSTRAINT [FK_tblEstoque_tblPessoaFilial]
GO
ALTER TABLE [dbo].[tblEstoque]  WITH CHECK ADD  CONSTRAINT [FK_tblEstoque_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([IdProduto])
GO
ALTER TABLE [dbo].[tblEstoque] CHECK CONSTRAINT [FK_tblEstoque_tblProduto]
GO
ALTER TABLE [dbo].[tblEstoqueMovimentado]  WITH CHECK ADD  CONSTRAINT [FK_tblEstoqueMovimentado_tblPessoaFilial] FOREIGN KEY([IdPessoaFilial])
REFERENCES [dbo].[tblPessoaFilial] ([IdPessoaFilial])
GO
ALTER TABLE [dbo].[tblEstoqueMovimentado] CHECK CONSTRAINT [FK_tblEstoqueMovimentado_tblPessoaFilial]
GO
ALTER TABLE [dbo].[tblEstoqueMovimentado]  WITH CHECK ADD  CONSTRAINT [FK_tblEstoqueMovimentado_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([IdProduto])
GO
ALTER TABLE [dbo].[tblEstoqueMovimentado] CHECK CONSTRAINT [FK_tblEstoqueMovimentado_tblProduto]
GO
ALTER TABLE [dbo].[tblEstoqueReservado]  WITH CHECK ADD  CONSTRAINT [FK_tblEstoqueReservado_tblEstoque] FOREIGN KEY([IdPessoaFilial], [IdProduto])
REFERENCES [dbo].[tblEstoque] ([IdPessoaFilial], [IdProduto])
GO
ALTER TABLE [dbo].[tblEstoqueReservado] CHECK CONSTRAINT [FK_tblEstoqueReservado_tblEstoque]
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblPedido_tblOperacao] FOREIGN KEY([IdOperacao])
REFERENCES [dbo].[tblOperacao] ([IdOperacao])
GO
ALTER TABLE [dbo].[tblPedido] CHECK CONSTRAINT [FK_tblPedido_tblOperacao]
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblPedido_tblPessoa_Destinatario] FOREIGN KEY([IdPessoaDestinatario])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPedido] CHECK CONSTRAINT [FK_tblPedido_tblPessoa_Destinatario]
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblPedido_tblPessoa_Emitente] FOREIGN KEY([IdPessoaEmitente])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPedido] CHECK CONSTRAINT [FK_tblPedido_tblPessoa_Emitente]
GO
ALTER TABLE [dbo].[tblPedido]  WITH CHECK ADD  CONSTRAINT [FK_tblPedido_tblSituacao] FOREIGN KEY([IdSituacao])
REFERENCES [dbo].[tblSituacao] ([IdSituacao])
GO
ALTER TABLE [dbo].[tblPedido] CHECK CONSTRAINT [FK_tblPedido_tblSituacao]
GO
ALTER TABLE [dbo].[tblPedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_tblPedidoItem_tblPedido] FOREIGN KEY([IdPedido])
REFERENCES [dbo].[tblPedido] ([IdPedido])
GO
ALTER TABLE [dbo].[tblPedidoItem] CHECK CONSTRAINT [FK_tblPedidoItem_tblPedido]
GO
ALTER TABLE [dbo].[tblPedidoItem]  WITH CHECK ADD  CONSTRAINT [FK_tblPedidoItem_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([IdProduto])
GO
ALTER TABLE [dbo].[tblPedidoItem] CHECK CONSTRAINT [FK_tblPedidoItem_tblProduto]
GO
ALTER TABLE [dbo].[tblPessoa]  WITH CHECK ADD  CONSTRAINT [FK_tblPessoa_tblPessoaTipo] FOREIGN KEY([IdPessoaTipo])
REFERENCES [dbo].[tblPessoaTipo] ([IdPessoaTipo])
GO
ALTER TABLE [dbo].[tblPessoa] CHECK CONSTRAINT [FK_tblPessoa_tblPessoaTipo]
GO
ALTER TABLE [dbo].[tblPessoaFilial]  WITH CHECK ADD  CONSTRAINT [FK_tblPessoaFilial_tblPessoa] FOREIGN KEY([IdPessoaFilial])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPessoaFilial] CHECK CONSTRAINT [FK_tblPessoaFilial_tblPessoa]
GO
ALTER TABLE [dbo].[tblPessoaFisica]  WITH CHECK ADD  CONSTRAINT [FK_tblPessoaFisica_tblPessoa] FOREIGN KEY([IdPessoaFisica])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPessoaFisica] CHECK CONSTRAINT [FK_tblPessoaFisica_tblPessoa]
GO
ALTER TABLE [dbo].[tblPessoaFornecedor]  WITH CHECK ADD  CONSTRAINT [FK_tblPessoaFornecedor_tblPessoa] FOREIGN KEY([IdPessoaFornecedor])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPessoaFornecedor] CHECK CONSTRAINT [FK_tblPessoaFornecedor_tblPessoa]
GO
ALTER TABLE [dbo].[tblPessoaJuridica]  WITH CHECK ADD  CONSTRAINT [FK_tblPessoaJuridica_tblPessoa] FOREIGN KEY([IdPessoaJuridica])
REFERENCES [dbo].[tblPessoa] ([IdPessoa])
GO
ALTER TABLE [dbo].[tblPessoaJuridica] CHECK CONSTRAINT [FK_tblPessoaJuridica_tblPessoa]
GO
ALTER TABLE [dbo].[tblPreco]  WITH CHECK ADD  CONSTRAINT [FK_tblPreco_tblProduto] FOREIGN KEY([IdProduto])
REFERENCES [dbo].[tblProduto] ([IdProduto])
GO
ALTER TABLE [dbo].[tblPreco] CHECK CONSTRAINT [FK_tblPreco_tblProduto]
GO
/****** Object:  StoredProcedure [dbo].[uspClienteConsultarPorCodigoNome]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspClienteConsultarPorCodigoNome]
	@IdPessoaCliente INT = NULL,
	@Nome VARCHAR(50) = NULL
	
AS
BEGIN

	SELECT 
		Cli.IdPessoaCliente,
		Pes.CpfCnpj,
		Pes.Nome,
		Pes.IdPessoa,
		Pes.DescricaoTipo
	FROM 
		tblCliente AS Cli
	JOIN uvwPessoaFisicaJuridica AS Pes ON
		Cli.IdPessoaCliente = Pes.IdPessoa
	WHERE 
		(@IdPessoaCliente IS NULL OR Cli.IdPessoaCliente = @IdPessoaCliente) AND
		(@Nome IS NULL OR Pes.Nome LIKE '%' + @Nome + '%')
END
GO
/****** Object:  StoredProcedure [dbo].[uspClienteInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspClienteInserir]
	@IdPessoaCliente AS INT

AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			
			IF(EXISTS(SELECT IdPessoaCliente FROM tblCliente WHERE IdPessoaCliente = @IdPessoaCliente))
				RAISERROR('Cliente já existente', 14, 1);

			INSERT INTO tblCliente (IdPessoaCliente) VALUES (@IdPessoaCliente)

			SELECT @IdPessoaCliente AS Retorno;
		COMMIT TRAN 
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN
		SELECT ERROR_MESSAGE() AS Retorno;
	END CATCH
	
END
GO
/****** Object:  StoredProcedure [dbo].[uspConsultarEstoque]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspConsultarEstoque]
	@IdPessoaFilial INT,
	@IdProduto INT

AS 
BEGIN 
	
	SELECT
		Est.IdPessoaFilial,
		Fil.Nome AS NomeFilial,
		Fil.CpfCnpj AS CpfCnpjFilial,
		Fil.Descricao AS tipoFilial,
		Est.IdProduto,
		Pro.Descricao AS DescricaoProduto,
		Est.Quantidade
	FROM 
		tblEstoque AS Est
	JOIN 
		uvwPessoaFisicaJuridica AS Fil ON 
		Est.IdPessoaFilial = Fil.IdPessoa
	JOIN 
		tblProduto AS Pro ON
		Est.IdProduto = Pro.IdProduto
	WHERE Est.IdPessoaFilial = @IdPessoaFilial AND Est.IdProduto = @IdProduto;

END
GO
/****** Object:  StoredProcedure [dbo].[uspConsultarEstoqueReservado]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspConsultarEstoqueReservado] 
	@IdPessoaFilial INT,
	@IdProduto INT
AS 
BEGIN

	SELECT 
		EstRes.IdPessoaFilial,
		Fil.Nome AS NomeFilial,
		Fil.CpfCnpj AS CpfCnpjFilial,
		Fil.Descricao as TipoFilial,
		EstRes.IdPessoaFilial,
		EstRes.Quantidade
	FROM 
		tblEstoqueReservado AS EstRes 
	JOIN 
		uvwPessoaFisicaJuridica as Fil ON 
		EstRes.IdPessoaFilial = Fil.IdPessoa
	JOIN 
		tblProduto AS Pro ON 
		EstRes.IdProduto = Pro.IdProduto

	WHERE EstRes.IdPessoaFilial = @IdPessoaFilial AND 
		  EstRes.IdProduto = @IdProduto;

END
GO
/****** Object:  StoredProcedure [dbo].[uspConsultarProduto]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspConsultarProduto]
	@IdProduto INT = NULL,
	@Descricao VARCHAR(50) = NULL

AS
BEGIN

	SELECT 
		IdProduto,
		Descricao
	FROM
		tblProduto WHERE (@IdProduto IS NULL OR IdProduto = @IdProduto) AND (@Descricao IS NULL OR Descricao LIKE '%' + @Descricao + '%');

END
GO
/****** Object:  StoredProcedure [dbo].[uspEstoqueDisponivelConsultar]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspEstoqueDisponivelConsultar]
	@IdPessoaFilial INT, 
	@IdProduto INT
AS 
BEGIN

	DECLARE 
		@NomeFilial VARCHAR(50),
		@CpfCnpjFilial VARCHAR(14),
		@TipoFilial VARCHAR(50),
		@DescricaoProduto VARCHAR(100),
		@Estoque INT,
		@EstoqueReservado INT,
		@EstoqueDisponivel INT

		SET @NomeFilial = ( SELECT Nome FROM uvwPessoaFisicaJuridica WHERE IdPessoa = @IdPessoaFilial);
		SET @CpfCnpjFilial = ( SELECT CpfCnpj FROM uvwPessoaFisicaJuridica WHERE IdPessoa = @IdPessoaFilial);
		SET @TipoFilial = ( SELECT Descricao FROM uvwPessoaFisicaJuridica WHERE IdPessoa = @IdPessoaFilial);
		SET @DescricaoProduto = ( SELECT Descricao FROM tblProduto WHERE IdProduto = @IdProduto);
		SET @Estoque = ( SELECT Quantidade FROM tblEstoque WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto);
		SET @EstoqueReservado = ( SELECT Quantidade FROM tblEstoqueReservado WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto);
		SET @EstoqueDisponivel = COALESCE(@Estoque, 0) - COALESCE(@EstoqueReservado, 0);

		SELECT 
			@IdPessoaFilial AS IdPessoaFilial,
			@NomeFilial AS NomeFilial,
			@CpfCnpjFilial AS CpfCnpjFilial,
			@TipoFilial AS TipoFilial,
			@IdProduto AS IdProduto,
			@DescricaoProduto AS DescricaoProduto,
			@Estoque AS Estoque,
			@EstoqueReservado AS EstoqueReservado,
			@EstoqueDisponivel AS EstoqueDisponivel


END
GO
/****** Object:  StoredProcedure [dbo].[uspEstoqueManter]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspEstoqueManter]
	@IdPessoaFilial AS INT,
	@IdProduto AS INT,
	@Quantidade AS INT
AS 
BEGIN
	BEGIN TRY
		BEGIN TRAN

		IF(EXISTS(SELECT @IdProduto FROM tblEstoque WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto))

			BEGIN 
				UPDATE tblEstoque SET Quantidade = Quantidade + @Quantidade WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto;
			END
			ELSE 
				BEGIN 
					INSERT INTO tblEstoque ( IdPessoaFilial, IdProduto, Quantidade ) VALUES ( @IdPessoaFilial, @IdProduto, @Quantidade )
				END


				DECLARE @EntrouSaiu CHAR(1);

				IF(@Quantidade < 0 )
					SET @EntrouSaiu = 'S';
				ELSE 
					SET @EntrouSaiu = 'E';

					INSERT INTO tblEstoqueMovimentado (IdPessoaFilial, IdProduto, Quantidade, DataHora, EntrouSaiu )
					VALUES
					(@IdPessoaFilial, @IdProduto, @Quantidade, GETDATE(), @EntrouSaiu)


			SELECT @IdProduto AS Retorno;

		COMMIT TRAN
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN

	SELECT ERROR_MESSAGE() AS Retorno;

	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[uspEstoqueReservadoManter]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspEstoqueReservadoManter]
	@IdPessoaFilial AS INT,
	@IdProduto AS INT,
	@Quantidade AS INT
AS 
BEGIN
	BEGIN TRY
		BEGIN TRAN

		IF(EXISTS(SELECT @IdProduto FROM tblEstoqueReservado WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto))

			BEGIN 
				UPDATE tblEstoqueReservado SET Quantidade = Quantidade + @Quantidade WHERE IdPessoaFilial = @IdPessoaFilial AND IdProduto = @IdProduto;
			END
			ELSE 
				BEGIN 
					INSERT INTO tblEstoqueReservado ( IdPessoaFilial, IdProduto, Quantidade ) VALUES ( @IdPessoaFilial, @IdProduto, @Quantidade )
				END


			SELECT @IdProduto AS Retorno;

		COMMIT TRAN
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN

	SELECT ERROR_MESSAGE() AS Retorno;

	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[uspFilialConsultarPorCodigo]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspFilialConsultarPorCodigo]
	@IdPessoaFilial INT

AS 
BEGIN 

	SELECT 
		Fil.IdPessoaFilial,
		Pes.DescricaoTipo,
		Pes.CpfCnpj,
		Pes.Nome,
		Pes.Descricao
	FROM
		tblPessoaFilial AS Fil
	JOIN 
		uvwPessoaFisicaJuridica AS Pes ON 
			Fil.IdPessoaFilial = Pes.IdPessoa
	WHERE Fil.IdPessoaFilial = @IdPessoaFilial;

END
GO
/****** Object:  StoredProcedure [dbo].[uspFilialConsultarPorNome]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspFilialConsultarPorNome]

	@Nome VARCHAR(50)

AS
BEGIN
	SELECT 
		Fil.IdPessoaFilial,
		Pes.DescricaoTipo,
		Pes.CpfCnpj,
		Pes.Nome,
		Pes.Descricao
	FROM 
		tblPessoaFilial as Fil

	JOIN 
		uvwPessoaFisicaJuridica AS Pes ON 
		Fil.IdPessoaFilial = Pes.IdPessoa

	WHERE Pes.Nome LIKE '%' + @Nome + '%'

END
GO
/****** Object:  StoredProcedure [dbo].[uspFilialInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspFilialInserir]

 @IdPessoaFilial AS INT

AS
BEGIN

	BEGIN TRY
		BEGIN TRAN

		IF(EXISTS(SELECT IdPessoaFilial FROM tblPessoaFilial WHERE IdPessoaFilial =  @IdPessoaFilial))
			RAISERROR('Filial já existe', 14, 1);

			INSERT INTO tblPessoaFilial (IdPessoaFilial ) VALUES (@IdPessoaFilial)

			SELECT @IdPessoaFilial AS Retorno;

		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN

		SELECT ERROR_MESSAGE() AS Retorno;
	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[uspFornecedorConsultarPorCodigoNome]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspFornecedorConsultarPorCodigoNome]

	@IdPessoaFornecedor INT = NULL,
	@Nome VARCHAR(50) = NULL

AS 
BEGIN
		SELECT
			Forn.IdPessoaFornecedor,
			Pes.CpfCnpj,
			Pes.Nome,
			Pes.IdPessoa,
			Pes.Descricao
		FROM 
			tblPessoaFornecedor AS Forn
		JOIN
			uvwPessoaFisicaJuridica AS Pes ON
			Forn.IdPessoaFornecedor = Pes.IdPessoa
		WHERE 
			(@IdPessoaFornecedor IS NULL OR Forn.IdPessoaFornecedor = @IdPessoaFornecedor) AND
			(@Nome IS NULL OR Pes.Nome LIKE '%' + @Nome + '%');
END
GO
/****** Object:  StoredProcedure [dbo].[uspFornecedorInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspFornecedorInserir] 

	@IdPessoaFornecedor AS INT

AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			
			IF(EXISTS(SELECT @IdPessoaFornecedor FROM tblPessoaFornecedor WHERE IdPessoaFornecedor = @IdPessoaFornecedor))
				RAISERROR('Fornecedor já existe', 14, 1)
			
			INSERT INTO tblPessoaFornecedor (IdPessoaFornecedor) VALUES ( @IdPessoaFornecedor );

			SELECT @IdPessoaFornecedor AS Retorno;

		COMMIT TRAN 
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN
		SELECT ERROR_MESSAGE() AS Retorno;
	END CATCH
	
END
GO
/****** Object:  StoredProcedure [dbo].[uspPedidoConsultarPorData]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPedidoConsultarPorData]
	@DataInicial DATE,
	@DataFinal DATE

AS 
BEGIN
	
	SELECT 
		Ped.IdPedido,
		Ped.DataHora,
		Ped.IdOperacao,
		Ope.Descricao AS DescOperacao,
		Ped.IdSituacao,
		Sit.Descricao AS DescSituacao,
		Ped.IdPessoaEmitente,
		Emit.Nome AS NomeEmitente,
		Ped.IdPessoaDestinatario,
		Dest.Nome AS NomeDestinatario
	FROM 
		tblPedido AS Ped 
	JOIN 
		tblOperacao AS Ope ON 
		Ped.IdOperacao = Ope.IdOperacao
	JOIN
		tblSituacao AS Sit ON
		Ped.IdSituacao = Sit.IdSituacao
	JOIN 
		uvwPessoaFisicaJuridica AS Emit ON 
		Ped.IdPessoaEmitente = Emit.IdPessoa
	JOIN
		uvwPessoaFisicaJuridica AS Dest ON
		 Ped.IdPessoaDestinatario = Dest.IdPessoa

	WHERE
		CAST(Ped.DataHora AS DATE) BETWEEN @DataInicial AND @DataFinal


END
GO
/****** Object:  StoredProcedure [dbo].[uspPedidoInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPedidoInserir]
	@IdOperacao AS INT,
	@IdSituacao AS INT,
	@IdPessoaEmitente AS INT,
	@IdPessoaDestinatario AS INT
AS 
BEGIN
	BEGIN TRY
		BEGIN TRAN
		
		INSERT INTO tblPedido ( DataHora, IdOperacao, IdSituacao, IdPessoaEmitente, IdPessoaDestinatario )
			VALUES 
		( GETDATE(), @IdOperacao, @IdSituacao, @IdPessoaEmitente, @IdPessoaDestinatario )

		SELECT @@IDENTITY AS Retorno;

		COMMIT TRAN
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN

	SELECT ERROR_MESSAGE() AS Retorno;

	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[uspPedidoItemConsulta]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPedidoItemConsulta]
	@IdPedido INT
AS
BEGIN

	SELECT 
		PedItem.IdPedido,
		PedItem.IdProduto,
		Prod.Descricao AS DescProduto,
		PedItem.Quantidade,
		PedItem.ValorUnitario,
		PedItem.ValorDesconto,
		PedItem.PercentualDesconto,
		PedItem.ValorTotal
	FROM 
		tblPedidoItem as PedItem
	JOIN
		tblProduto AS Prod ON 
		PedItem.IdProduto = Prod.IdProduto
	WHERE 
		PedItem.IdPedido = @IdPedido

END
GO
/****** Object:  StoredProcedure [dbo].[uspPedidoItemInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspPedidoItemInserir]
	@IdPedido INT,
	@IdProduto INT,
	@Quantidade INT,
	@ValorUnitario DECIMAL(18,2),
	@PercentualDesconto DECIMAL(18,2),
	@ValorDesconto DECIMAL(18,2),
	@ValorTotal DECIMAL(18,2)

AS 
BEGIN
	BEGIN TRY
		BEGIN TRAN
		
		IF(EXISTS(SELECT IdProduto FROM tblPedidoItem WHERE IdPedido = @IdPedido AND IdProduto = @IdProduto))
			BEGIN 
				RAISERROR('Produto já está no pedido.', 14, 1);
			END

			INSERT INTO tblPedidoItem ( IdPedido, IdProduto, Quantidade, ValorUnitario, PercentualDesconto, ValorDesconto, ValorTotal )
			VALUES (  @IdPedido, @IdProduto, @Quantidade, @ValorUnitario, @PercentualDesconto, @ValorDesconto, @ValorTotal ) 

			SELECT @IdProduto AS Retorno;

		COMMIT TRAN
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN

	SELECT ERROR_MESSAGE() AS Retorno;

	END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[uspPessoaFisicaInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspPessoaFisicaInserir]

	@Nome AS VARCHAR(50),
	@CPF AS VARCHAR(11),
	@RG AS VARCHAR(20),
	@DataNascimento AS DATE

AS
BEGIN

	BEGIN TRY
		BEGIN TRAN

		
		IF(EXISTS(SELECT IdPessoaFisica FROM tblPessoaFisica WHERE CPF = @CPF))
			RAISERROR('CPF já existe', 14, 1);
			
			DECLARE @IdPessoa AS INT;

			INSERT INTO tblPessoa (IdPessoaTipo) VALUES ( 1 );

			SET @IdPessoa = @@IDENTITY;

			INSERT INTO tblPessoaFisica (IdPessoaFisica, Nome, CPF, RG, DataNascimento) VALUES (@IdPessoa, @Nome, @CPF, @RG, @DataNascimento);

			SELECT @IdPessoa AS Retorno;

		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN

		SELECT ERROR_MESSAGE() AS Retorno;
	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[uspPessoaJuridicaInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[uspPessoaJuridicaInserir]
	
	@NomeFantasia AS VARCHAR(50),
	@RazaoSocial AS VARCHAR(50),
	@CNPJ AS VARCHAR(14),
	@InscricaoEstadual AS VARCHAR(20),
	@DataFundacao AS DATE

AS
BEGIN

	BEGIN TRY
		BEGIN TRAN

		IF(EXISTS(SELECT IdpessoaJuridica FROM tblPessoaJuridica WHERE CNPJ = @CNPJ))
			RAISERROR('CNPJ já existe', 14, 1);

		INSERT INTO tblPessoa ( IdPessoaTipo ) VALUES (2);

		DECLARE @IdPessoa AS INT = @@IDENTITY;
	
		INSERT INTO tblPessoaJuridica
		(
		IdPessoaJuridica,
		NomeFantasia,
		RazaoSocial,
		CNPJ,
		InscricaoEstadual,
		DataFundacao
		) 
		VALUES
		(
		@IdPessoa,
		@NomeFantasia,
		@RazaoSocial,
		@CNPJ,
		@InscricaoEstadual,
		@DataFundacao
		)

		SELECT @IdPessoa AS Retorno;

		COMMIT TRAN
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN

		SELECT ERROR_MESSAGE() AS Retorno;

	END CATCH

END

GO
/****** Object:  StoredProcedure [dbo].[uspProdutoInserir]    Script Date: 22/11/2022 16:00:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspProdutoInserir]
	@Descricao AS VARCHAR(50)
	
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
		
			IF(EXISTS(SELECT IdProduto FROM tblProduto WHERE Descricao = @Descricao))
				RAISERROR('Esté produto já existe no estoque', 14, 1);

			INSERT INTO tblProduto ( Descricao) VALUES ( @Descricao)

			SELECT @@IDENTITY AS Retorno;

		COMMIT TRAN 
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN
		SELECT ERROR_MESSAGE() AS Retorno;
	END CATCH
	
END
GO
USE [master]
GO
ALTER DATABASE [SistmaVendas] SET  READ_WRITE 
GO
