USE [master]
GO
CREATE DATABASE [MortgageDB]
 CONTAINMENT = NONE
 

 GO
ALTER DATABASE [MortgageDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MortgageDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MortgageDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MortgageDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MortgageDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MortgageDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MortgageDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MortgageDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MortgageDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MortgageDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MortgageDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MortgageDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MortgageDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MortgageDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MortgageDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MortgageDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MortgageDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MortgageDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MortgageDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MortgageDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MortgageDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MortgageDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MortgageDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MortgageDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MortgageDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MortgageDB] SET  MULTI_USER 
GO
ALTER DATABASE [MortgageDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MortgageDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MortgageDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MortgageDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MortgageDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MortgageDB', N'ON'
GO
ALTER DATABASE [MortgageDB] SET QUERY_STORE = OFF
GO
USE [MortgageDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-08-2021 01:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Smoker] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mortgage]    Script Date: 22-08-2021 01:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mortgage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[MortgageType] [varchar](50) NOT NULL,
	[MortgageAmount] [nvarchar](max) NULL,
	[PaymentType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Mortgage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MortgageTypeLookUp]    Script Date: 22-08-2021 01:37:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MortgageTypeLookUp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_MortgageTypeLookUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Mortgage_CustomerId]    Script Date: 22-08-2021 01:37:51 ******/
CREATE NONCLUSTERED INDEX [IX_Mortgage_CustomerId] ON [dbo].[Mortgage]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MortgageDB] SET  READ_WRITE 
GO
