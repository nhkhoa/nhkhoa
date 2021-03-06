USE [master]
GO
/****** Object:  Database [QLBanHang]    Script Date: 06/20/2016 18:34:38 ******/
CREATE DATABASE [QLBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY  
( NAME = N'qlbanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlbanhang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'qlbanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\qlbanhang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLBanHang] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLBanHang] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLBanHang] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLBanHang] SET ARITHABORT OFF
GO
ALTER DATABASE [QLBanHang] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLBanHang] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLBanHang] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLBanHang] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLBanHang] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLBanHang] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLBanHang] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLBanHang] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLBanHang] SET  DISABLE_BROKER
GO
ALTER DATABASE [QLBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLBanHang] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLBanHang] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLBanHang] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLBanHang] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLBanHang] SET  READ_WRITE
GO
ALTER DATABASE [QLBanHang] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLBanHang] SET  MULTI_USER
GO
ALTER DATABASE [QLBanHang] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLBanHang] SET DB_CHAINING OFF
GO
USE [QLBanHang]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Nhanvien] ON
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (1, N'Lê văn', N'Tâm', N'45 Trần Phú', N'8663447')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (2, N'Trần thị', N'An', N'15 Nguyễn Trãi', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (3, N'Tạ Thành', N'Tâm', N'20 Võ thị Sáu', N'8565666')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (4, N'Ngô Thành', N'Sơn', N'122 Trần Phú', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (5, N'Lê thị', N'Thuỷ', N'25 Ngô Quyền', N'9767677')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (6, N'Nguyễn Hữu', N'An', N'12 Lê Thánh Tôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (7, N'Thái Chí', N'An', N'97 Võ văn Tần', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (8, N'Trần Văn', N'Thanh', N'25 Trần Văn Đang', N'0918158')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (9, N'Nguyễn Dũng', N'Nghi', N'65 Trần Văn Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (10, N'Lê Thế', N'Bảo', N'12 Lê Quý Đôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (11, N'Lê Dũng', N'Nguyễn', N'321 Lê Lợi', N'6987456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (12, N'Nguyễn Thị', N'Thủy', N'654 Nguyễn Huệ', N'9998745')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (13, N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'9874561')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (14, N'Trần Thị Thủy', N'Tiên', N'6543 Nguyễn Huệ', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (15, N'Lê Thị', N'Hiền', N'654 Mai Xuân Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (16, N'Trần Văn', N'Thanh', N'Tân Bình', N'123456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (17, N'Trần Văn', N'Thành', N'Tân Bình', N'12345')
SET IDENTITY_INSERT [dbo].[Nhanvien] OFF
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Rượu')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Bia')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Nước ngọt')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Điện máy')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Viết')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](4) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[DienThoai] [nvarchar](7) NULL,
	[Fax] [nvarchar](12) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH01', N'Anh Hang', N'120 Ha Ton Quyen', N'8171717', N'084088171717')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH02', N'Bong Hong', N'24 Ky Con', N'', N'084088800256')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH03', N'Em Anh', N'6 Ky Hoa', N'', N'084088852258')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH04', N'Ho Han', N'8 Pham van Khoe', N'8430156', N'084088430156')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH05', N'Koko Company', N'90 An Duong Vuong', N'8250102', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH06', N'Queen Cozinha', N'891 An Duong Vuong', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH07', N'Quoc Cuong', N'10 Tan Da', N'8950203', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH08', N'Suoi Tra', N'2817 Minh Phung', N'8356210', N'084088356210')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH09', N'Song Trang', N'187 Lao Tu', N'9450210', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH10', N'Vinh Vien', N'45 Su Van hanh', N'', N'084088654790')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH11', N'TRần Vĩnh Viễn', N'87 Trần Hưng Đạo', N'8855464', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH12', N'Lý Văn Trung', N'123 Tân Tẩn', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH13', N'Cty Minh Hằng', N'456 Công Hòa', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH14', N'Cty Nghĩa Đường', N'12 Lý chính Thắng', N'9874564', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH15', N'Minh Anh', N'15/1 Hậu Giang', N'6548797', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH16', N'Trần Tùng', N'12/15 Hậu Nghĩa', N'6547898', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH17', N'Cty Vĩnh Lợi', N'1812 TRần Quang Khải', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH18', N'Cty Thái Bình Dương', N'145 Nguyễn Huệ', N'6548797', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH19', N'Cty Thần Tài', N'14 Lê Lợi', N'6523154', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH20', N'Cty Trần Văn Thời', N'45 Nguyễn Thị Minh Khai', N'4561234', N'')
/****** Object:  Table [dbo].[Users]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'admin', N'12345')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'us1', N'12345')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'us2', N'12345')
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](4) NOT NULL,
	[TenSP] [nvarchar](20) NULL,
	[Donvitinh] [nvarchar](8) NULL,
	[Dongia] [float] NULL,
	[MaLoaiSP] [int] NULL,
	[HinhSP] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'Bb12', N'Bia Bến thành', N'Chai', 10080, 2, N'~/images/biabenthanhchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BH01', N'Bia Heineken', N'Chai', 20000, 2, N'~/images/biaheinekenchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BS01', N'Bia Sapporo', N'Chai', 25000, 2, N'~/images/biasapporochai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'Bs14', N'Bia Sài gòn', N'Chai', 15000, 2, N'~/images/biasaigonchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BS15', N'Bia 333', N'Thùng', 215000, 2, N'~/Images/bia33thung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BT04', N'Beer Tiger', N'Thùng', 255000, 2, N'~/images/biatigerthung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CC06', N'Coca Cola', N'Thùng', 115000, 3, N'~/images/cocacolathung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CH07', N'Cassette Sharp 100W', N'Cái', 2250000, 4, N'~/images/cassetsharp.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CH08', N'Cassette Sharp 500W', N'Cái', 4250000, 4, N'~/images/cassetsharp500w.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PC01', N'But chi den', N'Cái', 2000, 5, N'~/images/butchiden.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PL02', N'But long kim', N'Cái', 50000, 5, N'~/images/butlongkim.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PS05', N'But sap', N'Hộp', 60000, 5, N'~/Images/butsap.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PS15', N'Pepsi', N'Thùng', 150000, 3, N'~/images/pepsithung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RC17', N'Ruou chat do', N'Chai', 110000, 1, N'~/images/ruouchatdo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RC19', N'Ruou Champagne', N'Chai', 160000, 1, N'~/images/ruouchampagne.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RN01', N'Rượu nếp Gò đen', N'Chai', 15000, 1, N'~/images/ruounepgoden.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RN02', N'Rượu Napoleon ', N'Chai', 3100000, 1, N'~/images/ruounapoleon.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RX01', N'Rượu XO', N'Chai', 1160000, 1, N'~/images/ruouxo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RX12', N'Rượu Xuân Thạnh', N'Chai', 12000, 1, N'~/images/ruouxuanthanh.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'TS01', N'Tivi Sharp 14"', N'Cái', 1600000, 4, N'~/images/tivisharp.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'TS21', N'Tivi Sony 20"', N'Cái', 1310000, 4, N'~/images/tivisony.jpg')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaKH] [nvarchar](4) NULL,
	[MaNV] [int] NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD001', N'KH01', 4, CAST(0x00008EE400000000 AS DateTime), CAST(0x00008F6300000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD002', N'KH08', 7, CAST(0x0000917600000000 AS DateTime), CAST(0x0000917600000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD003', N'KH10', 8, CAST(0x0000903A00000000 AS DateTime), CAST(0x0000917300000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD004', N'KH09', 7, CAST(0x00008F8400000000 AS DateTime), CAST(0x00008F8600000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD005', N'KH05', 1, CAST(0x00008F8500000000 AS DateTime), CAST(0x00008F8A00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD006', N'KH03', 15, CAST(0x0000945000000000 AS DateTime), CAST(0x0000945100000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD007', N'KH10', 12, CAST(0x000091E400000000 AS DateTime), CAST(0x000091EF00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD008', N'KH09', 1, CAST(0x00008FD200000000 AS DateTime), CAST(0x00008FDB00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD009', N'KH06', 10, CAST(0x0000922300000000 AS DateTime), CAST(0x000092DA00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD010', N'KH04', 9, CAST(0x000090F500000000 AS DateTime), CAST(0x0000916F00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD011', N'KH03', 3, CAST(0x0000904800000000 AS DateTime), CAST(0x0000906000000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD012', N'KH08', 4, CAST(0x0000928200000000 AS DateTime), CAST(0x000092DD00000000 AS DateTime))
/****** Object:  Table [dbo].[CTHD]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaSP] [nvarchar](4) NOT NULL,
	[Soluong] [smallint] NULL,
	[Giamgia] [real] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'Bb12', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'BH01', 12, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'BS01', 4, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'Bs14', 100, 0.2)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'BS15', 4, 1)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'BT04', 10, 0.1)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'CC06', 2, 0.3)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD004', N'CH07', 2, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD004', N'CH08', 3, 0.8)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PC01', 100, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PL02', 25, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PS05', 32, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'PS15', 50, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'RC17', 9, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'RC19', 5, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD007', N'RN01', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD007', N'RN02', 8, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD008', N'RX01', 7, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD008', N'RX12', 6, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD009', N'TS01', 30, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD009', N'TS21', 20, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'RX12', 5, 0.4)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'TS01', 5, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'TS21', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'BH01', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'BS01', 21, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'Bs14', 12, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD012', N'PC01', 34, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD012', N'PL02', 20, 0)
/****** Object:  ForeignKey [FK_SanPham_LoaiSP]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_Nhanvien]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[Nhanvien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Nhanvien]
GO
/****** Object:  ForeignKey [FK_CTHD_HoaDon]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
/****** Object:  ForeignKey [FK_CTHD_SanPham]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
