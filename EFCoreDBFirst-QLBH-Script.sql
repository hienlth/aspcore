CREATE DATABASE [EFCoreDBFirst];
GO

USE [EFCoreDBFirst];
GO

CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[Hinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	CONSTRAINT [PK_Loai] PRIMARY KEY (MaLoai)
 );

GO

CREATE TABLE [dbo].[HangHoa](
	[MaHH] [int] IDENTITY(1,1) NOT NULL,
	[DonGia] [float] NOT NULL,
	[Hinh] [nvarchar](max) NULL,
	[MaLoai] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TenHH] [nvarchar](50) NOT NULL,
	CONSTRAINT [PK_HangHoa] PRIMARY KEY (MaHH)
);
GO

ALTER TABLE [dbo].[HangHoa]  ADD  CONSTRAINT [FK_HangHoa_Loai_MaLoai] 
	FOREIGN KEY([MaLoai]) REFERENCES [dbo].[Loai] ([MaLoai])
ON DELETE CASCADE
GO