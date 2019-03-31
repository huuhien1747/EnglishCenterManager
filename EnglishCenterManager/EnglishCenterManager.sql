USE [master]
GO
/****** Object:  Database [EnglishCenterManager]    Script Date: 3/31/2019 10:49:17 PM ******/
CREATE DATABASE [EnglishCenterManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnglishCenterManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EnglishCenterManager.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EnglishCenterManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\EnglishCenterManager_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EnglishCenterManager] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnglishCenterManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnglishCenterManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EnglishCenterManager] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EnglishCenterManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnglishCenterManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnglishCenterManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EnglishCenterManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnglishCenterManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EnglishCenterManager] SET  MULTI_USER 
GO
ALTER DATABASE [EnglishCenterManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnglishCenterManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnglishCenterManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnglishCenterManager] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EnglishCenterManager]
GO
/****** Object:  Table [dbo].[BANGDIEM]    Script Date: 3/31/2019 10:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BANGDIEM](
	[MAHP] [char](20) NOT NULL,
	[IDHS] [char](20) NOT NULL,
	[CHUYENCAN] [int] NULL,
	[GIUAKI] [int] NULL,
	[CUOIKI] [float] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 3/31/2019 10:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[ID] [char](20) NOT NULL,
	[MATKHAU] [char](20) NOT NULL,
	[CHUCVU] [char](10) NOT NULL,
 CONSTRAINT [PK_DANGNHAP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 3/31/2019 10:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[IDGV] [char](20) NOT NULL,
	[HOTEN] [nvarchar](30) NOT NULL,
	[NGAYSINH] [date] NOT NULL,
	[CMND] [char](20) NOT NULL,
	[DIACHI] [nvarchar](30) NOT NULL,
	[KINHNGHIEM] [int] NOT NULL,
	[TRUONGDH] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[IDGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOCPHAN]    Script Date: 3/31/2019 10:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOCPHAN](
	[MAHP] [char](20) NOT NULL,
	[TENHP] [nvarchar](30) NULL,
	[SISO] [int] NULL,
	[IDGV] [char](20) NULL,
	[HOCPHI] [float] NULL,
 CONSTRAINT [PK_HOCPHAN] PRIMARY KEY CLUSTERED 
(
	[MAHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HOCSINH]    Script Date: 3/31/2019 10:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HOCSINH](
	[IDHS] [char](20) NOT NULL,
	[HOTEN] [nvarchar](50) NOT NULL,
	[NAMSINH] [date] NOT NULL,
	[CMND] [char](20) NOT NULL,
	[DIACHI] [nvarchar](50) NOT NULL,
	[KHOILOP] [int] NOT NULL,
	[TRUONG] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_HOCSINH] PRIMARY KEY CLUSTERED 
(
	[IDHS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAILIEU]    Script Date: 3/31/2019 10:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAILIEU](
	[MATAILIEU] [char](20) NOT NULL,
	[TEN] [nvarchar](30) NOT NULL,
	[KHOILOP] [int] NOT NULL,
	[LINK] [char](50) NOT NULL,
 CONSTRAINT [PK_TAILIEU] PRIMARY KEY CLUSTERED 
(
	[MATAILIEU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THONGBAOHOCPHAN]    Script Date: 3/31/2019 10:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THONGBAOHOCPHAN](
	[MAHP] [char](20) NOT NULL,
	[MOTA] [char](65) NOT NULL,
	[NOIDUNG] [char](200) NOT NULL,
	[NGAYDANG] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH CHECK ADD  CONSTRAINT [FK_BANGDIEM_HOCPHAN] FOREIGN KEY([MAHP])
REFERENCES [dbo].[HOCPHAN] ([MAHP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_HOCPHAN]
GO
ALTER TABLE [dbo].[BANGDIEM]  WITH CHECK ADD  CONSTRAINT [FK_BANGDIEM_HOCSINH] FOREIGN KEY([IDHS])
REFERENCES [dbo].[HOCSINH] ([IDHS])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BANGDIEM] CHECK CONSTRAINT [FK_BANGDIEM_HOCSINH]
GO
ALTER TABLE [dbo].[HOCPHAN]  WITH CHECK ADD  CONSTRAINT [FK_HOCPHAN_GIAOVIEN] FOREIGN KEY([IDGV])
REFERENCES [dbo].[GIAOVIEN] ([IDGV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HOCPHAN] CHECK CONSTRAINT [FK_HOCPHAN_GIAOVIEN]
GO
ALTER TABLE [dbo].[DANGNHAP]  WITH CHECK ADD  CONSTRAINT [CK_CHUCVU] CHECK  (([CHUCVU] like 'HS' OR [CHUCVU] like 'GV'))
GO
ALTER TABLE [dbo].[DANGNHAP] CHECK CONSTRAINT [CK_CHUCVU]
GO
USE [master]
GO
ALTER DATABASE [EnglishCenterManager] SET  READ_WRITE 
GO
