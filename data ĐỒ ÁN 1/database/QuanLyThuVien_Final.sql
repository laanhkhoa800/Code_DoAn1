USE [master]
GO
/****** Object:  Database [QuanLyThuVien]    Script Date: 05/19/2021 22:22:15 ******/
CREATE DATABASE [QuanLyThuVien] ON  PRIMARY 
( NAME = N'QuanLyThuVien', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyThuVien_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyThuVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyThuVien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyThuVien] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyThuVien] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyThuVien] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyThuVien] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyThuVien] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyThuVien] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyThuVien] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyThuVien] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyThuVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyThuVien] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyThuVien] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyThuVien] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyThuVien] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyThuVien] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyThuVien] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyThuVien] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyThuVien] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyThuVien] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyThuVien] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyThuVien] SET DB_CHAINING OFF
GO
USE [QuanLyThuVien]
GO
/****** Object:  Table [dbo].[TinhTrangSach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangSach](
	[MaTinhTrangSach] [int] NOT NULL,
	[TenTinhTrangSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrangSach] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TinhTrangSach] ([MaTinhTrangSach], [TenTinhTrangSach]) VALUES (1, N'Còn sách')
INSERT [dbo].[TinhTrangSach] ([MaTinhTrangSach], [TenTinhTrangSach]) VALUES (2, N'Cho mượn')
INSERT [dbo].[TinhTrangSach] ([MaTinhTrangSach], [TenTinhTrangSach]) VALUES (3, N'Mất')
INSERT [dbo].[TinhTrangSach] ([MaTinhTrangSach], [TenTinhTrangSach]) VALUES (4, N'Hỏng')
/****** Object:  Table [dbo].[TinhTrang_TheTV]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrang_TheTV](
	[MaTinhTrang] [int] NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TinhTrang_TheTV] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TinhTrang_TheTV] ([MaTinhTrang], [TenTinhTrang]) VALUES (1, N'Block')
INSERT [dbo].[TinhTrang_TheTV] ([MaTinhTrang], [TenTinhTrang]) VALUES (2, N'Active')
INSERT [dbo].[TinhTrang_TheTV] ([MaTinhTrang], [TenTinhTrang]) VALUES (3, N'Đang mượn')
/****** Object:  Table [dbo].[DauSach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DauSach](
	[MaDauSach] [int] NOT NULL,
	[TenSach] [nvarchar](max) NULL,
	[TacGia] [nvarchar](50) NULL,
	[TheLoai] [nvarchar](50) NULL,
	[NamXuatBan] [int] NULL,
	[NhaXuatBan] [nvarchar](50) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_DauSach] PRIMARY KEY CLUSTERED 
(
	[MaDauSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (1, N'Đọc Vị Bất Kì Ai', N'David J.Lieberman', N'Tâm Lý - Kỹ Năng sống', 2019, N'Thái Hà', N'~/Content/imgsach/2.jpg', 4)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (2, N'Sức Mạnh Của Tiềm Thức', N'Joseph Murphy, Ph.D, D.D  ', N'Nghệ thuật sống', 2019, N'NXB Tổng hợp thành phố HCM', N'~/Content/imgsach/3.jpg', 3)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (3, N'Lược Sử Thời Gian', N'StenPhen W. HawKing', N'Khoa Học - Kỹ Thuật', 2017, N'NXB Tổng hợp thành phố HCM', N'~/Content/imgsach/4.jpg', 3)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (4, N'Cuộc Đời Và Vũ Trụ', N'StenPhen W. HawKing', N'Khoa Học - Kỹ Thuật', 2017, N'NXB Tổng hợp thành phố HCM', N'~/Content/imgsach/5.jpg', 2)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (5, N'Chiến Thắng Con Quỷ Trong Bạn', N'Napoleon Hill', N'Tâm Lý - Kỹ Năng sống', 2018, N'Thái Hà', N'~/Content/imgsach/6.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (6, N'Thing And Grow Rich', N'Napoleon Hill', N'Kỹ Năng làm việc', 2019, N'Thái Hà', N'~/Content/imgsach/7.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (7, N'Tư Duy Logic', N'Minorikanbe', N'Kỹ  Năng làm việc', 2017, N'1980 Books', N'~/Content/imgsach/8.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (8, N'Nhiệm Vụ Triệu Đô', N'Han Kok Kwang', N'Sách Tư Duy -Kỹ Năng Sống', 2018, N'NXB Thanh Niên', N'~/Content/imgsach/9.jpg', 2)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (9, N'Đừng Chạy Theo Số Đông', N'Kiên Trần', N'Sách Tư Duy -Kỹ Năng Sống', 2020, N'NXB Thế Giới', N'~/Content/imgsach/10.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (10, N'Trí Tuệ Do Thái', N'Eran Katz', N'Sách Tư Duy -Kỹ Năng Sống', 2018, N'NXB Lao Động Xã Hội', N'~/Content/imgsach/11.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (11, N'Càng Kỹ Luật Càng Tự Do', N'Ca Tây', N'Sách Tư Duy -Kỹ Năng Sống', 2020, N'NXB Thế Giới', N'~/Content/imgsach/12.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (12, N'How Psychology Works', N'Jo Hemmings', N'Sách Tư Duy -Kỹ Năng Sống', 2020, N'NXB Thế Giới', N'~/Content/imgsach/13.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (13, N'Thuật Đọc Tâm', N'Nhiều Tác Giả', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Thế Giới', N'~/Content/imgsach/14.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (14, N'Não Bộ Kể Gì Về Bạn', N'David Eagleman', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Thế Giới', N'~/Content/imgsach/15.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (15, N'Đi Tìm Lẽ Sống', N'Viktor Emil Frank', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Thế Giới', N'~/Content/imgsach/16.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (16, N'Trò Chuyện Với Thượng Đế', N'Mitsuro Sato', N'Sách Tư Duy -Kỹ Năng Sống', 2020, N'NXB Thế Giới', N'~/Content/imgsach/17.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (17, N'Hành Trình Về Phương Đông', N'Nguyên Phong', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Thế Giới', N'~/Content/imgsach/18.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (18, N'Triết Lý Cuộc Đời', N'Jim Rohn', N'Sách Tư Duy -Kỹ Năng Sống', 2018, N'Thái Hà', N'~/Content/imgsach/19.jpg', 1)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (19, N'Đời Ngắn Đừng Ngủ Dài', N'Robin Sharma', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Trẻ', N'~/Content/imgsach/20.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (20, N'3 Người Thầy Vĩ Đại', N'Robin Sharma', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Trẻ', N'~/Content/imgsach/21.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (21, N'Đừng Lựa Chọn An Nhàn Khi Còn Trẻ', N'Miêu Công Trử, Canh Thiên', N'Sách Tư Duy -Kỹ Năng Sống', 2019, N'NXB Trẻ', N'~/Content/imgsach/22.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (22, N'Giải Thích Ngữ Pháp Tiếng Anh', N'Mai Lan Hương, Hà Thanh Uyên', N'Sách Học Tiếng Anh', 2020, N'Nhà Xuất Bản Đà Nẵng', N'~/Content/imgsach/23.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (23, N'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề', N'The Windy', N'Sách Học Tiếng Anh', 2017, N'NXB Đại Học Quốc Gia Hà Nội', N'~/Content/imgsach/24.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (24, N'Cẩm Nang Cấu Trúc Tiếng Anh', N'Trang Anh', N'Sách Học Tiếng Anh', 2017, N'NXB Đại Học Sư Phạm', N'~/Content/imgsach/25.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (25, N'Tiếng Anh Cơ Bản 1', N'Nhiều Tác Giả', N'Sách Học Tiếng Anh', 2019, N'NXB Thanh Niên', N'~/Content/imgsach/26.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (26, N'Tiếng Anh Cơ Bản 2', N'Nhiều Tác Giả', N'Sách Học Tiếng Anh', 2019, N'NXB Thanh Niên', N'~/Content/imgsach/27.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (27, N'Ứng Dụng Siêu Trí Tuệ 6000 Từ DỰng Thông Dụng Nhất', N'The Windy', N'Sách Học Tiếng Anh', 2018, N'NXB Hồng Đức', N'~/Content/imgsach/28.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (28, N'Tự Học Viết Luận Tiếng Anh Cho Người Mới Bắt Đầu', N'Dương Hương', N'Sách Học Tiếng Anh', 2019, N'NXB Đại Học Quốc Gia Hà Nội', N'~/Content/imgsach/29.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (29, N'Giải Thích Ngữ Pháp Tiếng Anh English Grammar', N'Trần Mạnh Tường', N'Sách Học Tiếng Anh', 2016, N'Nhà sách Minh Thắng', N'~/Content/imgsach/30.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (30, N'EILTS Special Journal 1', N'Nhiều Tác Giả', N'Sách Học Tiếng Anh', 2019, N'NXB Thanh Niên', N'~/Content/imgsach/31.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (31, N'Luyện Thi TOEIC 850 Listnning', N'Jo Gang-Soo ', N'Sách Học Tiếng Anh', 2016, N'Alphabooks', N'~/Content/imgsach/32.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (32, N'EILTS Special Journal 2', N'Nhiều Tác Giả', N'Sách Học Tiếng Anh', 2019, N'NXB Thanh Niên', N'~/Content/imgsach/33.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (33, N'Ngữ Pháp Tiếng Anh Trình Độ Sơ Cấp', N'Bennis Le Boeuf, Liming Jing, Alex Rath, PH.D', N'Sách Học Tiếng Anh', 2018, N'NXB Tổng hợp thành phố HCM', N'~/Content/imgsach/34.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (34, N'The Pperfect EngLish Grammar Work Book', N'Lisa Mclendon', N'Sách Học Tiếng Anh', 2018, N'NXB Đà Nẵng', N'~/Content/imgsach/35.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (35, N'ABC TOEIC LC', N'Lee-Soo-Yong', N'Sách Học Tiếng Anh', 2019, N'NXB Tổng hợp thành phố HCM', N'~/Content/imgsach/36.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (36, N'Stephen King IT', N'Stephen King', N'Giáo Trình', 2017, N'Hachette Book Group', N'~/Content/imgsach/37.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (37, N'Python Cơ Bản', N'Bùi Việt Hà', N'Giáo Trình', 2017, N'NXB Đại Học Quốc Gia Hà Nội', N'~/Content/imgsach/38.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (38, N'Cấu Trúc Dữ Liệu và Thuật Toán', N'PGS,TS. Hoàng Nghĩa Tý', N'Giáo Trình', 2014, N'NXB Xây Dựng', N'~/Content/imgsach/39.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (39, N'Code Dạo Kí Sự - Lập Trình Viên Đâu Chỉ Biết Code', N'Phạm Huy Hoàng', N'Giáo Trình', 2017, N'Tri Thức Trẻ', N'~/Content/imgsach/40.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (40, N'Hello World - Làm Việc Trên Kỹ Nguyên Máy', N'Hannah Fry', N'Giáo Trình', 2020, N'Nhà Xuất Bản Dân Trí', N'~/Content/imgsach/41.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (41, N'Giáo Trình C++ và Lập Trình Hướng Đối Tượng', N'Phạm Văn Ất, Lê Trường Thông', N'Giáo Trình', 2018, N'Nhà Xuất Bản Dân Trí', N'~/Content/imgsach/42.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (42, N'HacKer Lược Sử', N'Nhiều Tác Giả', N'Giáo Trình', 2016, N'Alphabooks', N'~/Content/imgsach/43.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (43, N'Gián Điệp Mạng', N'Nhiều Tác Giả', N'Giáo Trình', 2016, N'Alphabooks', N'~/Content/imgsach/44.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (44, N'Nghệ Thuật Ẩn Mình', N'Nhiều Tác Giả', N'Giáo Trình', 2016, N'Alphabooks', N'~/Content/imgsach/45.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (45, N'Bóng Ma Trên Mạng', N'Nhiều Tác Giả', N'Giáo Trình', 2016, N'Alphabooks', N'~/Content/imgsach/46.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (46, N'An Toàn Dữ Liệu', N'TS. Lê Đắc Nhường', N'Giáo Trình', 2020, N'NXB Đại Học Quốc Gia Hà Nội', N'~/Content/imgsach/47.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (47, N'Giáo Trình C  Căn bản và Nâng Cao', N'Nhiều Tác Giả', N'Giáo Trình', 2019, N'Huy Hoàng Bookstore', N'~/Content/imgsach/48.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (48, N'JAVA Hướng Dẫn Cho Người Mới Học Tập 1 : OOP', N'HerBert Schildt', N'Giáo Trình', 2018, N'Trường Đại Học FPT', N'~/Content/imgsach/49.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (49, N'JAVA Hướng Dẫn Cho Người Mới Học Tập 2: Lập Trình JAVA', N'HerBert Schildt', N'Giáo Trình', 2018, N'Trường Đại Học FPT', N'~/Content/imgsach/50.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (50, N'C# Dành Cho Người Bắt Đầu', N'Phạm Quang Huy, Phạm Quang Hiển', N'Giáo Trình', 2019, N'NXB Đại Học Quốc Gia Hà Nộ', N'~/Content/imgsach/51.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (51, N'Lập trình web front-end cơ bản với Bootstrap 4, Jquery, CSS3, HTML5', N'GV. Nguyễn Đức Việt', N'Giáo Trình', 2018, N'Alphabooks', N'~/Content/imgsach/52.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (52, N'Truyện đọc Pháp - Harry Potter - Tome 3 - Harry Potter Et Le Prisonnier', N'JKRowLing', N'Truyện Tranh', 2017, N'Hachette', N'~/Content/imgsach/53.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (53, N'Truyện đọc Pháp - Harry Potter - Tome 2 - Harry Potter Et La Chambre Des Secrets', N'JKRowLing', N'Truyện Tranh', 2017, N'Hachette', N'~/Content/imgsach/54.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (54, N'Truyện đọc Pháp - Harry Potter - Tome 1 - Harry Potter à l''école des sorciers', N'JKRowLing', N'Truyện Tranh', 2017, N'Hachette', N'~/Content/imgsach/55.jpg', 0)
INSERT [dbo].[DauSach] ([MaDauSach], [TenSach], [TacGia], [TheLoai], [NamXuatBan], [NhaXuatBan], [HinhAnh], [SoLuong]) VALUES (60, N'a', N'a', N'a', 60, N'a', N'~/Content/imgsach/163484991_272234901097714_8597327568031094687_n.jpg', 0)
/****** Object:  Table [dbo].[DangKyTheTV]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKyTheTV](
	[MaDangKyThe] [int] IDENTITY(1,1) NOT NULL,
	[MaThe] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgayLam] [datetime] NULL,
 CONSTRAINT [PK_DangKyTheTV] PRIMARY KEY CLUSTERED 
(
	[MaDangKyThe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoTraSach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoTraSach](
	[id_BaoCaoTraSach] [int] IDENTITY(1,1) NOT NULL,
	[NgayTra] [datetime] NULL,
	[MSSV] [nvarchar](50) NULL,
	[MaSach] [int] NULL,
	[NgayMuon] [datetime] NULL,
	[HoTen] [nvarchar](50) NULL,
	[TenSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_BaoCaoTraSach] PRIMARY KEY CLUSTERED 
(
	[id_BaoCaoTraSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaoCaoMuonSach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaoCaoMuonSach](
	[id_BaoCaoMuonSach] [int] IDENTITY(1,1) NOT NULL,
	[NgayMuon] [datetime] NULL,
	[Mssv] [nvarchar](50) NULL,
	[MaSach] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[TenSach] [nvarchar](50) NULL,
 CONSTRAINT [PK_BaoCaoMuonSach] PRIMARY KEY CLUSTERED 
(
	[id_BaoCaoMuonSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Admin]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Admin](
	[MaAccount] [int] IDENTITY(1,1) NOT NULL,
	[User] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAccount] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account_Admin] ON
INSERT [dbo].[Account_Admin] ([MaAccount], [User], [Password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[Account_Admin] OFF
/****** Object:  Table [dbo].[Sach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SoKiemSoat] [int] NOT NULL,
	[MaDauSach] [int] NULL,
	[MaTinhTrangSach] [int] NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sach] ON
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (34, 2, 3, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (35, 1, 1, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (36, 2, 1, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (37, 2, 2, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (38, 3, 2, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (39, 3, 1, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (40, 1, 3, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (41, 1, 4, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (42, 1, 5, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (43, 1, 6, 2, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (44, 1, 7, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (45, 1, 8, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (46, 2, 8, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (48, 1, 14, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (49, 1, 9, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (50, 1, 10, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (51, 1, 13, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (52, 1, 11, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (53, 1, 12, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (54, 1, 17, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (55, 1, 15, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (56, 1, 18, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (57, 1, 16, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (58, 1, 2, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (59, 3, 4, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (60, 3, 3, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (61, 5, 3, 1, NULL)
INSERT [dbo].[Sach] ([id], [SoKiemSoat], [MaDauSach], [MaTinhTrangSach], [GhiChu]) VALUES (62, 10, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Sach] OFF
/****** Object:  Table [dbo].[TheThuVien]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheThuVien](
	[MaThe] [nvarchar](50) NOT NULL,
	[MaTinhTrang] [int] NULL,
	[Password] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgayLam] [datetime] NULL,
	[NgayHetHan] [datetime] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheThuVien] PRIMARY KEY CLUSTERED 
(
	[MaThe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'11111', 3, N'123', N'Trần đại', CAST(0x0000AD2800FC0BD4 AS DateTime), CAST(0x0000B2DD00FC1AE4 AS DateTime), NULL)
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'1122334455', 2, N'123', N'Dai', CAST(0x0000AD2800FA5402 AS DateTime), CAST(0x0000B2DD00FA5402 AS DateTime), NULL)
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'18dh110111', 2, N'1', N'tranquocdai', CAST(0x0000AD29010AEBC2 AS DateTime), CAST(0x0000B2DE010B7CC7 AS DateTime), NULL)
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'18dh1101123', 2, N'123', N'tranquocdai', CAST(0x0000AD27007CD28F AS DateTime), NULL, NULL)
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'18DH110218', 2, N'123', N'Cao Hữu Tài', CAST(0x0000AD1F00000000 AS DateTime), NULL, NULL)
INSERT [dbo].[TheThuVien] ([MaThe], [MaTinhTrang], [Password], [HoTen], [NgayLam], [NgayHetHan], [GhiChu]) VALUES (N'18DH110249', 2, N'123', N'Lê Hoàng Nam', CAST(0x0000AD1F00000000 AS DateTime), NULL, NULL)
/****** Object:  Table [dbo].[Sach_Dang_Muon]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach_Dang_Muon](
	[MaSachMuon] [int] IDENTITY(1,1) NOT NULL,
	[MaThe] [nvarchar](50) NULL,
	[MaSach] [int] NULL,
	[NgayMuon] [datetime] NULL,
 CONSTRAINT [PK_Sach_Dang_Muon] PRIMARY KEY CLUSTERED 
(
	[MaSachMuon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Sach_Dang_Muon] ON
INSERT [dbo].[Sach_Dang_Muon] ([MaSachMuon], [MaThe], [MaSach], [NgayMuon]) VALUES (24, N'11111', 43, CAST(0x0000AD2D0151F098 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sach_Dang_Muon] OFF
/****** Object:  Table [dbo].[DKyMuonSach]    Script Date: 05/19/2021 22:22:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DKyMuonSach](
	[MaDangKyMuonSach] [int] IDENTITY(1,1) NOT NULL,
	[MaThe] [nvarchar](50) NULL,
	[MaSach] [int] NULL,
 CONSTRAINT [PK_DKyMuonSach] PRIMARY KEY CLUSTERED 
(
	[MaDangKyMuonSach] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Sach_DauSach]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_DauSach] FOREIGN KEY([MaDauSach])
REFERENCES [dbo].[DauSach] ([MaDauSach])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_DauSach]
GO
/****** Object:  ForeignKey [FK_Sach_TinhTrangSach]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TinhTrangSach] FOREIGN KEY([MaTinhTrangSach])
REFERENCES [dbo].[TinhTrangSach] ([MaTinhTrangSach])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TinhTrangSach]
GO
/****** Object:  ForeignKey [FK_TheThuVien_TinhTrang_TheTV]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[TheThuVien]  WITH CHECK ADD  CONSTRAINT [FK_TheThuVien_TinhTrang_TheTV] FOREIGN KEY([MaTinhTrang])
REFERENCES [dbo].[TinhTrang_TheTV] ([MaTinhTrang])
GO
ALTER TABLE [dbo].[TheThuVien] CHECK CONSTRAINT [FK_TheThuVien_TinhTrang_TheTV]
GO
/****** Object:  ForeignKey [FK_Sach_Dang_Muon_Sach]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[Sach_Dang_Muon]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Dang_Muon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([id])
GO
ALTER TABLE [dbo].[Sach_Dang_Muon] CHECK CONSTRAINT [FK_Sach_Dang_Muon_Sach]
GO
/****** Object:  ForeignKey [FK_Sach_Dang_Muon_TheThuVien]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[Sach_Dang_Muon]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Dang_Muon_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
GO
ALTER TABLE [dbo].[Sach_Dang_Muon] CHECK CONSTRAINT [FK_Sach_Dang_Muon_TheThuVien]
GO
/****** Object:  ForeignKey [FK_DKyMuonSach_Sach]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[DKyMuonSach]  WITH CHECK ADD  CONSTRAINT [FK_DKyMuonSach_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([id])
GO
ALTER TABLE [dbo].[DKyMuonSach] CHECK CONSTRAINT [FK_DKyMuonSach_Sach]
GO
/****** Object:  ForeignKey [FK_DKyMuonSach_TheThuVien]    Script Date: 05/19/2021 22:22:16 ******/
ALTER TABLE [dbo].[DKyMuonSach]  WITH CHECK ADD  CONSTRAINT [FK_DKyMuonSach_TheThuVien] FOREIGN KEY([MaThe])
REFERENCES [dbo].[TheThuVien] ([MaThe])
GO
ALTER TABLE [dbo].[DKyMuonSach] CHECK CONSTRAINT [FK_DKyMuonSach_TheThuVien]
GO
