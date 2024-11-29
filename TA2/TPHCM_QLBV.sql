USE [master]
GO
/****** Object:  Database [TPHCM_QLBV]    Script Date: 11/28/2024 8:27:18 AM ******/
CREATE DATABASE [TPHCM_QLBV] 
go
USE [TPHCM_QLBV]
GO
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 11/28/2024 8:27:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[MaChiNhanh] [char](10) NOT NULL,
	[TenChiNhanh] [nvarchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaLoaiXetNghiem] [char](10) NOT NULL,
	[TenLoaiXetNghiem] [nvarchar](50) NULL,
	[GiaXetNghiem] [money] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_DICHVU_1] PRIMARY KEY CLUSTERED 
(
	[MaLoaiXetNghiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DV_TTKHAM]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DV_TTKHAM](
	[IDKham] [int] NOT NULL,
	[IDDichVu] [char](10) NOT NULL,
	[IDNhanVien] [char](10) NULL,
	[IDVaiTro] [char](10) NULL,
 CONSTRAINT [PK_DV_TTKHAM] PRIMARY KEY CLUSTERED 
(
	[IDKham] ASC,
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [char](10) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenLot] [nvarchar](50) NULL,
	[TenNV] [nvarchar](50) NULL,
	[Luong] [money] NULL,
	[MaChiNhanh] [char](10) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NV_VT]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NV_VT](
	[IDVaiTro] [char](10) NOT NULL,
	[MaNV] [char](10) NOT NULL,
 CONSTRAINT [PK_NV_VT] PRIMARY KEY CLUSTERED 
(
	[IDVaiTro] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THONGTINCANHAN]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THONGTINCANHAN](
	[MaNV] [char](10) NOT NULL,
	[STT] [int] NOT NULL,
	[SoDienThoai] [varchar](50) NULL,
	[SoNha] [nvarchar](50) NULL,
	[Duong] [nvarchar](50) NULL,
	[Phuong] [nvarchar](50) NULL,
	[Quan] [nvarchar](50) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_THONGTINCANHAN] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TTChiNhanh]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TTChiNhanh](
	[MaChiNhanh] [char](10) NOT NULL,
	[STT] [int] NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[IDQuanLy] [char](10) NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_TTChiNhanh] PRIMARY KEY CLUSTERED 
(
	[MaChiNhanh] ASC,
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VAITRO]    Script Date: 11/28/2024 8:27:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VAITRO](
	[MaVaiTro] [char](10) NOT NULL,
	[TenVaiTro] [nvarchar](50) NULL,
	[HeSo] [decimal](3, 2) NOT NULL,
	[IDNguon] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayCapNhat] [date] NULL,
 CONSTRAINT [PK_VAITRO] PRIMARY KEY CLUSTERED 
(
	[MaVaiTro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CHINHANH] ([MaChiNhanh], [TenChiNhanh], [SoDienThoai], [NgayTao], [NgayCapNhat]) VALUES (N'CN001     ', N'TPHCM', N'0901000001', CAST(N'2024-01-20' AS Date), CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[CHINHANH] ([MaChiNhanh], [TenChiNhanh], [SoDienThoai], [NgayTao], [NgayCapNhat]) VALUES (N'CN002     ', N'Hà Nội', N'0909221211', CAST(N'2024-01-20' AS Date), CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[CHINHANH] ([MaChiNhanh], [TenChiNhanh], [SoDienThoai], [NgayTao], [NgayCapNhat]) VALUES (N'CN003     ', N'Đà Nẵng', N'0909888222', CAST(N'2024-01-20' AS Date), CAST(N'2024-01-20' AS Date))
GO
INSERT [dbo].[DICHVU] ([MaLoaiXetNghiem], [TenLoaiXetNghiem], [GiaXetNghiem], [NgayTao], [NgayCapNhat]) VALUES (N'DV001     ', N'Xét nghiệm máu', 100000.0000, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[DICHVU] ([MaLoaiXetNghiem], [TenLoaiXetNghiem], [GiaXetNghiem], [NgayTao], [NgayCapNhat]) VALUES (N'DV002     ', N'Siêu âm', 250000.0000, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[DICHVU] ([MaLoaiXetNghiem], [TenLoaiXetNghiem], [GiaXetNghiem], [NgayTao], [NgayCapNhat]) VALUES (N'DV003     ', N'X-Quang', 200000.0000, CAST(N'2024-09-30' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[DICHVU] ([MaLoaiXetNghiem], [TenLoaiXetNghiem], [GiaXetNghiem], [NgayTao], [NgayCapNhat]) VALUES (N'DV004     ', N'MRI', 2000000.0000, CAST(N'2024-09-30' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[DICHVU] ([MaLoaiXetNghiem], [TenLoaiXetNghiem], [GiaXetNghiem], [NgayTao], [NgayCapNhat]) VALUES (N'DV005     ', N'Xét nghiệm nuớc tiểu', 120000.0000, CAST(N'2024-09-30' AS Date), CAST(N'2024-09-30' AS Date))
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenLot], [TenNV], [Luong], [MaChiNhanh], [NgayTao], [NgayCapNhat]) VALUES (N'NV001     ', N'Nguyễn ', N'Mỹ', N'Dung', 10000000.0000, NULL, CAST(N'2000-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenLot], [TenNV], [Luong], [MaChiNhanh], [NgayTao], [NgayCapNhat]) VALUES (N'NV002     ', N'Trần', N'Văn', N'Sơn', 12000000.0000, NULL, CAST(N'2000-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenLot], [TenNV], [Luong], [MaChiNhanh], [NgayTao], [NgayCapNhat]) VALUES (N'NV003     ', N'Nguyễn', N'Thị', N'Bích', 12000000.0000, NULL, CAST(N'2000-09-20' AS Date), CAST(N'2023-09-20' AS Date))
GO
INSERT [dbo].[NHANVIEN] ([MaNV], [HoNV], [TenLot], [TenNV], [Luong], [MaChiNhanh], [NgayTao], [NgayCapNhat]) VALUES (N'NV004     ', N'Trần', N'Hữu', N'Nghị', 12000000.0000, NULL, CAST(N'2000-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[NV_VT] ([IDVaiTro], [MaNV]) VALUES (N'VT001     ', N'NV001     ')
GO
INSERT [dbo].[NV_VT] ([IDVaiTro], [MaNV]) VALUES (N'VT002     ', N'NV001     ')
GO
INSERT [dbo].[NV_VT] ([IDVaiTro], [MaNV]) VALUES (N'VT003     ', N'NV002     ')
GO
INSERT [dbo].[NV_VT] ([IDVaiTro], [MaNV]) VALUES (N'VT004     ', N'NV002     ')
GO
INSERT [dbo].[NV_VT] ([IDVaiTro], [MaNV]) VALUES (N'VT005     ', N'NV004     ')
GO
INSERT [dbo].[THONGTINCANHAN] ([MaNV], [STT], [SoDienThoai], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NgayTao], [NgayCapNhat]) VALUES (N'NV001     ', 1, N'0909118112', N'8 Bis', N'Nguyễn Trung Trực', N'11', N'7', N'TP HCM', CAST(N'2000-03-20' AS Date), CAST(N'2000-09-20' AS Date))
GO
INSERT [dbo].[THONGTINCANHAN] ([MaNV], [STT], [SoDienThoai], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NgayTao], [NgayCapNhat]) VALUES (N'NV001     ', 2, N'0901921231', N'8 Bis', N'Nguyễn Trung Trực', N'11', N'7', N'TP HCM', CAST(N'2000-03-20' AS Date), CAST(N'2024-02-01' AS Date))
GO
INSERT [dbo].[THONGTINCANHAN] ([MaNV], [STT], [SoDienThoai], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NgayTao], [NgayCapNhat]) VALUES (N'NV002     ', 1, N'0901928333', N'11', N'Nguyễn Trãi', N'4', N'5', N'TP HCM', CAST(N'2000-03-20' AS Date), CAST(N'2009-01-01' AS Date))
GO
INSERT [dbo].[THONGTINCANHAN] ([MaNV], [STT], [SoDienThoai], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NgayTao], [NgayCapNhat]) VALUES (N'NV003     ', 1, N'0908881111', N'123', N'Nguyễn Văn Cừ', N'4', N'5', N'TP HCM', CAST(N'2000-03-20' AS Date), CAST(N'2009-10-01' AS Date))
GO
INSERT [dbo].[THONGTINCANHAN] ([MaNV], [STT], [SoDienThoai], [SoNha], [Duong], [Phuong], [Quan], [ThanhPho], [NgayTao], [NgayCapNhat]) VALUES (N'NV004     ', 1, N'0998781122', N'233', N'Nguyễn Thị Minh Khai', N'1', N'3', N'TP HCM', CAST(N'2000-03-20' AS Date), CAST(N'2009-10-10' AS Date))
GO
INSERT [dbo].[TTChiNhanh] ([MaChiNhanh], [STT], [DiaChi], [Email], [IDQuanLy], [NgayTao], [NgayCapNhat]) VALUES (N'CN001     ', 1, N'11 Nguyễn Thái Học Q1', N'tphcm@gmail.com', N'NV001     ', CAST(N'2000-01-02' AS Date), CAST(N'2000-02-02' AS Date))
GO
INSERT [dbo].[TTChiNhanh] ([MaChiNhanh], [STT], [DiaChi], [Email], [IDQuanLy], [NgayTao], [NgayCapNhat]) VALUES (N'CN001     ', 2, N'11 Nguyễn Thái Học Q1', N'tphcm@gmail.com', N'NV002     ', CAST(N'2000-01-02' AS Date), CAST(N'2020-02-02' AS Date))
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [HeSo], [IDNguon], [NgayTao], [NgayCapNhat]) VALUES (N'VT001     ', N'Bác sĩ', CAST(2.50 AS Decimal(3, 2)), NULL, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [HeSo], [IDNguon], [NgayTao], [NgayCapNhat]) VALUES (N'VT002     ', N'KTV xét nghiệm', CAST(1.30 AS Decimal(3, 2)), NULL, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [HeSo], [IDNguon], [NgayTao], [NgayCapNhat]) VALUES (N'VT003     ', N'KTV hình ảnh', CAST(1.00 AS Decimal(3, 2)), NULL, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [HeSo], [IDNguon], [NgayTao], [NgayCapNhat]) VALUES (N'VT004     ', N'Điều dưỡng', CAST(0.80 AS Decimal(3, 2)), NULL, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
INSERT [dbo].[VAITRO] ([MaVaiTro], [TenVaiTro], [HeSo], [IDNguon], [NgayTao], [NgayCapNhat]) VALUES (N'VT005     ', N'Gây mê hồi sức', CAST(2.10 AS Decimal(3, 2)), NULL, CAST(N'2024-09-20' AS Date), CAST(N'2024-09-20' AS Date))
GO
ALTER TABLE [dbo].[DV_TTKHAM]  WITH CHECK ADD  CONSTRAINT [FK_DV_TTKHAM_DICHVU] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DICHVU] ([MaLoaiXetNghiem])
GO
ALTER TABLE [dbo].[DV_TTKHAM] CHECK CONSTRAINT [FK_DV_TTKHAM_DICHVU]
GO
ALTER TABLE [dbo].[DV_TTKHAM]  WITH CHECK ADD  CONSTRAINT [FK_DV_TTKHAM_NV_VT1] FOREIGN KEY([IDVaiTro], [IDNhanVien])
REFERENCES [dbo].[NV_VT] ([IDVaiTro], [MaNV])
GO
ALTER TABLE [dbo].[DV_TTKHAM] CHECK CONSTRAINT [FK_DV_TTKHAM_NV_VT1]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_CHINHANH] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[CHINHANH] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_CHINHANH]
GO
ALTER TABLE [dbo].[NV_VT]  WITH CHECK ADD  CONSTRAINT [FK_NV_VT_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[NV_VT] CHECK CONSTRAINT [FK_NV_VT_NHANVIEN]
GO
ALTER TABLE [dbo].[NV_VT]  WITH CHECK ADD  CONSTRAINT [FK_NV_VT_VAITRO] FOREIGN KEY([IDVaiTro])
REFERENCES [dbo].[VAITRO] ([MaVaiTro])
GO
ALTER TABLE [dbo].[NV_VT] CHECK CONSTRAINT [FK_NV_VT_VAITRO]
GO
ALTER TABLE [dbo].[THONGTINCANHAN]  WITH CHECK ADD  CONSTRAINT [FK_THONGTINCANHAN_NHANVIEN] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[THONGTINCANHAN] CHECK CONSTRAINT [FK_THONGTINCANHAN_NHANVIEN]
GO
ALTER TABLE [dbo].[TTChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_TTChiNhanh_CHINHANH] FOREIGN KEY([MaChiNhanh])
REFERENCES [dbo].[CHINHANH] ([MaChiNhanh])
GO
ALTER TABLE [dbo].[TTChiNhanh] CHECK CONSTRAINT [FK_TTChiNhanh_CHINHANH]
GO
ALTER TABLE [dbo].[TTChiNhanh]  WITH CHECK ADD  CONSTRAINT [FK_TTChiNhanh_NHANVIEN] FOREIGN KEY([IDQuanLy])
REFERENCES [dbo].[NHANVIEN] ([MaNV])
GO
ALTER TABLE [dbo].[TTChiNhanh] CHECK CONSTRAINT [FK_TTChiNhanh_NHANVIEN]
GO
USE [master]
GO
ALTER DATABASE [TPHCM_QLBV] SET  READ_WRITE 
GO
