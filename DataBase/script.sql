USE [master]
GO
/****** Object:  Database [UniversityLibraryDb]    Script Date: 10/20/2016 10:56:34 PM ******/
CREATE DATABASE [UniversityLibraryDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniversityLibraryDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UniversityLibraryDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UniversityLibraryDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\UniversityLibraryDb_log.ldf' , SIZE = 5696KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [UniversityLibraryDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniversityLibraryDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniversityLibraryDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniversityLibraryDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniversityLibraryDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniversityLibraryDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniversityLibraryDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UniversityLibraryDb] SET  MULTI_USER 
GO
ALTER DATABASE [UniversityLibraryDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniversityLibraryDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniversityLibraryDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniversityLibraryDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [UniversityLibraryDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [UniversityLibraryDb]
GO
/****** Object:  Table [dbo].[tblAuthor]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAuthor](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[YearOfBirth] [int] NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tblAuthor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblBooks]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBooks](
	[Id] [int] NOT NULL,
	[BookTitle] [nvarchar](100) NOT NULL,
	[IdAuthor] [int] NOT NULL,
	[PublishingYear] [int] NOT NULL,
	[QuantityMax] [int] NOT NULL,
	[QuantityAvailable] [int] NOT NULL,
	[IdGenre] [int] NOT NULL,
	[ldLocation] [int] NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_tblBooks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGenre]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGenre](
	[Id] [int] NOT NULL,
	[GenreTitle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLocation]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLocation](
	[Id] [int] NOT NULL,
	[NumberOfRow] [int] NOT NULL,
	[NumberOfBookshelf] [int] NOT NULL,
	[NumberOfShelf] [int] NOT NULL,
 CONSTRAINT [PK_tblLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[Id] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblStudents]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudents](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Faculty] [nvarchar](500) NOT NULL,
	[photo] [image] NULL,
 CONSTRAINT [PK_tblStudents] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblUserHistory]    Script Date: 10/20/2016 10:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserHistory](
	[IdBook] [int] NOT NULL,
	[IdStudent] [int] NOT NULL,
	[DateOfReceiving] [date] NOT NULL,
	[ReturnDate] [date] NOT NULL,
	[IdStatus] [int] NOT NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblAuthor] FOREIGN KEY([IdAuthor])
REFERENCES [dbo].[tblAuthor] ([Id])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblAuthor]
GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblGenre] FOREIGN KEY([IdGenre])
REFERENCES [dbo].[tblGenre] ([Id])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblGenre]
GO
ALTER TABLE [dbo].[tblBooks]  WITH CHECK ADD  CONSTRAINT [FK_tblBooks_tblLocation] FOREIGN KEY([ldLocation])
REFERENCES [dbo].[tblLocation] ([Id])
GO
ALTER TABLE [dbo].[tblBooks] CHECK CONSTRAINT [FK_tblBooks_tblLocation]
GO
ALTER TABLE [dbo].[tblUserHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblUserHistory_tblBooks] FOREIGN KEY([IdBook])
REFERENCES [dbo].[tblBooks] ([Id])
GO
ALTER TABLE [dbo].[tblUserHistory] CHECK CONSTRAINT [FK_tblUserHistory_tblBooks]
GO
ALTER TABLE [dbo].[tblUserHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblUserHistory_tblStatus] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[tblStatus] ([Id])
GO
ALTER TABLE [dbo].[tblUserHistory] CHECK CONSTRAINT [FK_tblUserHistory_tblStatus]
GO
ALTER TABLE [dbo].[tblUserHistory]  WITH CHECK ADD  CONSTRAINT [FK_tblUserHistory_tblStudents] FOREIGN KEY([IdStudent])
REFERENCES [dbo].[tblStudents] ([Id])
GO
ALTER TABLE [dbo].[tblUserHistory] CHECK CONSTRAINT [FK_tblUserHistory_tblStudents]
GO
USE [master]
GO
ALTER DATABASE [UniversityLibraryDb] SET  READ_WRITE 
GO
