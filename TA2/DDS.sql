create database [QLDT_DDS]
go
USE [QLDT_DDS]
GO
/****** Object:  Table [dbo].[DIM_CHINHANH]    Script Date: 11/25/2024 11:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_CHINHANH](
	[IDChiNhanh] [int] NOT NULL,
	[TenChiNhanh] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_DIM_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[IDChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_DICHVU]    Script Date: 11/25/2024 11:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_DICHVU](
	[IDDichVu] [int] NOT NULL,
	[MaLoaiXetNghiem] [varchar](50) NULL,
	[TenLoaiXetNghiem] [varbinary](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_DIM_DICHVU] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_NGAYTHANG]    Script Date: 11/25/2024 11:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_NGAYTHANG](
	[IDNgayThang] [int] NOT NULL,
	[Ngay] [int] NULL,
	[Thang] [int] NULL,
	[Nam] [int] NULL,
	[NgayThang] [date] NULL,
	[Tuan] [int] NULL,
 CONSTRAINT [PK_DIM_NGAYTHANG] PRIMARY KEY CLUSTERED 
(
	[IDNgayThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_NHANVIEN]    Script Date: 11/25/2024 11:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_NHANVIEN](
	[IDNhanVien] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[IDChiNhanh] [int] NULL,
	[Luong] [money] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
	[NgayBatDau] [date] NULL,
	[NgayKetThuc] [date] NULL,
 CONSTRAINT [PK_DIM_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[IDNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_DICHVUKHAMBENH]    Script Date: 11/25/2024 11:14:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_DICHVUKHAMBENH](
	[IDKham] [int] NOT NULL,
	[IDBenhNhan] [int] NULL,
	[IDDichVu] [int] NOT NULL,
	[IDNhanVien] [int] NULL,
	[IDNgayThang] [int] NOT NULL,
	[IDChiNhanh] [int] NULL,
	[SoLuotSuDung] [int] NULL,
 CONSTRAINT [PK_FACT_KHAMBENH] PRIMARY KEY CLUSTERED 
(
	[IDKham] ASC,
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIM_NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_DIM_NHANVIEN_DIM_CHINHANH] FOREIGN KEY([IDChiNhanh])
REFERENCES [dbo].[DIM_CHINHANH] ([IDChiNhanh])
GO
ALTER TABLE [dbo].[DIM_NHANVIEN] CHECK CONSTRAINT [FK_DIM_NHANVIEN_DIM_CHINHANH]
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH]  WITH CHECK ADD  CONSTRAINT [FK_FACT_KHAMBENH_DIM_DICHVU] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DIM_DICHVU] ([IDDichVu])
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH] CHECK CONSTRAINT [FK_FACT_KHAMBENH_DIM_DICHVU]
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH]  WITH CHECK ADD  CONSTRAINT [FK_FACT_KHAMBENH_DIM_NGAYTHANG] FOREIGN KEY([IDNgayThang])
REFERENCES [dbo].[DIM_NGAYTHANG] ([IDNgayThang])
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH] CHECK CONSTRAINT [FK_FACT_KHAMBENH_DIM_NGAYTHANG]
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH]  WITH CHECK ADD  CONSTRAINT [FK_FACT_KHAMBENH_DIM_NHANVIEN] FOREIGN KEY([IDNhanVien])
REFERENCES [dbo].[DIM_NHANVIEN] ([IDNhanVien])
GO
ALTER TABLE [dbo].[FACT_DICHVUKHAMBENH] CHECK CONSTRAINT [FK_FACT_KHAMBENH_DIM_NHANVIEN]
GO


UPDATE FACT_DICHVUKHAMBENH
SET SoLuotSuDung = aggregated.TongSoLuotSuDung
FROM   FACT_DICHVUKHAMBENH AS fk INNER JOIN
                 (SELECT IDKham, IDDichVu, SUM(SoLuotSuDung) AS TongSoLuotSuDung
                 FROM    FACT_DICHVUKHAMBENH
                 GROUP BY IDKham, IDDichVu) AS aggregated ON fk.IDKham = aggregated.IDKham 
	AND fk.IDDichVu = aggregated.IDDichVu CROSS JOIN FACT_DICHVUKHAMBENH
