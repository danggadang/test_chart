USE [ThucTap]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 8/27/2019 6:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
	[Leader] [nvarchar](50) NULL,
	[Member] [nvarchar](max) NULL,
	[Ca] [nvarchar](50) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TestChart]    Script Date: 8/27/2019 6:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestChart](
	[Thang] [nvarchar](50) NOT NULL,
	[TongDon] [int] NOT NULL,
	[XacNhan] [int] NOT NULL,
	[ThanhCong] [int] NOT NULL,
 CONSTRAINT [PK_TestChart] PRIMARY KEY CLUSTERED 
(
	[Thang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 8/27/2019 6:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Pass] [nvarchar](50) NOT NULL,
	[Phone] [varchar](50) NULL,
	[IDGroup] [nvarchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Group] ([ID], [GroupName], [Leader], [Member], [Ca]) VALUES (N'1', N'Nhom1', N'A', N'A,B,C', N'Sáng')
INSERT [dbo].[Group] ([ID], [GroupName], [Leader], [Member], [Ca]) VALUES (N'2', N'Nhom2', N'D', N'D,H,F,I', N'Chiều')
INSERT [dbo].[Group] ([ID], [GroupName], [Leader], [Member], [Ca]) VALUES (N'3', N'Nhom3', N'E', N'E,J,K,L', N'Toi')
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangBa', 23, 23, 7)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangBay', 400, 50, 150)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangBon', 150, 300, 250)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangChin', 200, 300, 100)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangHai', 150, 70, 40)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangMot', 100, 50, 25)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangMuoi', 100, 100, 100)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangMuoiHai', 300, 200, 10)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangMuoiMot', 200, 100, 75)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangNam', 200, 150, 20)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangSau', 300, 50, 10)
INSERT [dbo].[TestChart] ([Thang], [TongDon], [XacNhan], [ThanhCong]) VALUES (N'ThangTam', 300, 20, 200)
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (14, N'A', N'sd', N'23434', N'1')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (15, N'B', N'sd', N'231223', N'1')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (17, N'C', N'we', N'3434', N'1')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (18, N'D', N'123', N'0989797695', N'2')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (19, N'E', N'sd', N'324', N'3')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (20, N'F', N'er', N'546', N'2')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (22, N'H', N'123', N'0989797695', N'2')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (24, N'I', N'we', N'3123', N'2')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (27, N'J', N'SS', N'23434', N'3')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (28, N'K', N'SD', N'233424', N'3')
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (29, N'L', N'SD', N'2323', NULL)
INSERT [dbo].[User] ([ID], [UserName], [Pass], [Phone], [IDGroup]) VALUES (30, N'support', N'123', N'123', NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
