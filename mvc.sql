
/****** Object:  Table [dbo].[users]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[products]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[products]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[orderdetails]
GO
/****** Object:  Table [dbo].[manufacturers]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[manufacturers]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 5/20/2015 11:11:31 AM ******/
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[manufacturers]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturers](
	[MaId] [int] IDENTITY(1,1) NOT NULL,
	[MaName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[OrderId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[DetId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK__orderdet__08D097C1CABB75EE] PRIMARY KEY CLUSTERED 
(
	[DetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[Total] [bigint] NOT NULL,
	[OrderStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[ProId] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](50) NULL,
	[ShortDes] [nvarchar](50) NULL,
	[LongDes] [nvarchar](max) NULL,
	[NewPrice] [int] NOT NULL,
	[OldPrice] [int] NOT NULL,
	[CatId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ViewCount] [int] NOT NULL,
	[DateAdd] [date] NOT NULL,
	[MaId] [int] NOT NULL,
	[Sale] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 5/20/2015 11:11:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Permission] [int] NOT NULL,
	[Phone] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (1, N'Túi xách nữ')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (2, N'Túi xách nam')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (3, N'Túi trẻ em')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (4, N'Vali du lịch')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (5, N'Túi doanh nhân')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (6, N'Túi du lịch')
INSERT [dbo].[categories] ([CatId], [CatName]) VALUES (7, N'Ba lô leo núi')
SET IDENTITY_INSERT [dbo].[categories] OFF
SET IDENTITY_INSERT [dbo].[manufacturers] ON 

INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (1, N'Hermès')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (2, N'Yves Renard')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (3, N'Miti')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (4, N'Licony')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (5, N'LV')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (6, N'Armani')
INSERT [dbo].[manufacturers] ([MaId], [MaName]) VALUES (11, N'Loter')
SET IDENTITY_INSERT [dbo].[manufacturers] OFF
SET IDENTITY_INSERT [dbo].[orderdetails] ON 

INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (17, 1, 4, 24)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (18, 1, 1, 25)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (18, 2, 2, 26)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (18, 11, 1, 27)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (18, 10, 1, 28)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (20, 1, 1, 30)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (20, 2, 1, 31)
INSERT [dbo].[orderdetails] ([OrderId], [ProId], [Amount], [DetId]) VALUES (20, 8, 1, 32)
SET IDENTITY_INSERT [dbo].[orderdetails] OFF
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([OrderId], [OrderDate], [UserId], [Total], [OrderStatus]) VALUES (17, CAST(0xF6390B00 AS Date), 4, 1520000, 1)
INSERT [dbo].[orders] ([OrderId], [OrderDate], [UserId], [Total], [OrderStatus]) VALUES (18, CAST(0xF6390B00 AS Date), 4, 1900000, 0)
INSERT [dbo].[orders] ([OrderId], [OrderDate], [UserId], [Total], [OrderStatus]) VALUES (20, CAST(0xF6390B00 AS Date), 4, 1140000, 1)
SET IDENTITY_INSERT [dbo].[orders] OFF
SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (1, N'JGirl 32', N'Túi xách đương đại do Jenifer mang', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 91, 23, CAST(0xC9390B00 AS Date), 4, 9)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (2, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 96, 48, CAST(0xC9390B00 AS Date), 4, 4)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (3, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 100, 4, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (4, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 100, 33, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (5, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 100, 1, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (6, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (7, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 1, 100, 1, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (8, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 96, 3, CAST(0xC9390B00 AS Date), 2, 3)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (9, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 100, 2, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (10, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 93, 4, CAST(0xC9390B00 AS Date), 4, 3)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (11, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 98, 2, CAST(0xC9390B00 AS Date), 5, 1)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (12, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 99, 3, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (13, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (14, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 2, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (15, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 4, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (16, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 1, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (17, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (18, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 0, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (19, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 0, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (20, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (21, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 3, 100, 1, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (22, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (23, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (24, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (25, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (26, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (27, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (28, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 4, 100, 0, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (29, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (30, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (31, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (32, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (33, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (34, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (35, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 5, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (36, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (37, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (38, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (39, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (40, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (41, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (42, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 6, 100, 0, CAST(0xC9390B00 AS Date), 1, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (43, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 1, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (44, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (45, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 6, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (46, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 5, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (47, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 3, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (48, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (49, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 2, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (50, N'LAZA TX 107', N'Đây là túi xách', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 380000, 400000, 7, 100, 0, CAST(0xC9390B00 AS Date), 4, 0)
INSERT [dbo].[products] ([ProId], [ProName], [ShortDes], [LongDes], [NewPrice], [OldPrice], [CatId], [Quantity], [ViewCount], [DateAdd], [MaId], [Sale]) VALUES (60, N'Túi JXA', N'Không có gì tuyệt hơn', N'<p>V&iacute; l&agrave; một phụ kiện thời trang kh&ocirc;ng thể thiếu đối với ph&aacute;i đẹp, n&oacute; kh&ocirc;ng chỉ thể hiện c&aacute; t&iacute;nh m&agrave; c&ograve;n thể hiện đẳng cấp của ph&aacute;i nữ. Chi&eacute;cc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với kiểu d&aacute;ng thanh lịch hẵn sẽ l&agrave; một lựa chọn ph&ugrave; hợp. Chiếc v&iacute; được l&agrave;m từ da thật, tạo cảm gi&aacute;c mềm mại v&agrave; dễ chịu khi thời gian sử dụng c&agrave;ng l&acirc;u. Chiếc v&iacute;&nbsp;<strong>Babylon BL0009</strong>&nbsp;với m&agrave;u đỏ quyến rũ sẽ l&agrave;m nổi bật t&iacute;nh c&aacute;ch cũng như gu thời trang của bạn.</p>

<p><strong>TH&Ocirc;NG TIN CHI TIẾT</strong></p>

<p><strong>- Loại sản phẩm:</strong>&nbsp;V&iacute; da thật.<br />
<strong>- Chất liệu:</strong>&nbsp;Da b&ograve; 100%.<br />
<strong>- K&iacute;ch thước:</strong>&nbsp;2 x 19 x 10cm.<br />
<strong>- Số ngăn:</strong>&nbsp;3 ngăn lớn rộng r&atilde;i v&agrave; nhiều ngăn nhỏ tiện dụng gi&uacute;p bạn sắp xếp giấy tờ, tiền bạc v&agrave; thẻ.<br />
<strong>- Gợi &yacute; phối hợp phụ kiện:</strong>&nbsp;Bạn c&oacute; thể phối hợp chiếc v&iacute; với một chiếc v&aacute;y &ocirc;m gợi cảm c&ugrave;ng một đ&ocirc;i gi&agrave;y cao g&oacute;t s&agrave;nh điệu.</p>
', 3800000, 400000, 5, 23, 6, CAST(0xF8390B00 AS Date), 4, 0)
SET IDENTITY_INSERT [dbo].[products] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1, N'admin', N'admin', N'Lyk Lynh', N'lyklynh@nad.system', CAST(0xE6390B00 AS Date), 1, N'123456789', N'None')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (2, N'guest', N'123456', N'Tester', N'test@gmail.com', CAST(0xC8390B00 AS Date), 0, N'987654321', N'None')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (3, N'test', N'EB6F39C6355E7F3057C5F0F64A7B5241', N'dfsf', N'sdf@flssj.com', CAST(0xEA390B00 AS Date), 1, N'1234', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (4, N'test1', N'4297F44B13955235245B2497399D7A93', N'Kiệt', N'asdf@homci.com', CAST(0x96FC0A00 AS Date), 1, N'1231231232', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1004, N'aaa', N'4297F44B13955235245B2497399D7A93', N'aas', N'sda@sdf', CAST(0xF1390B00 AS Date), 0, N'1212312312312', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1005, N'1', N'4297F44B13955235245B2497399D7A93', N'sasa', N'sxfds@dsf', CAST(0xF7390B00 AS Date), 0, N'12312312312', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1006, N'test2', N'4297F44B13955235245B2497399D7A93', N'aaaa', N'sdlkfj@sdjflk', CAST(0xFD070B00 AS Date), 0, N'123123123', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1007, N'test3', N'4297F44B13955235245B2497399D7A93', N'sdf', N'dsf@sdf.com', CAST(0xCC1E0B00 AS Date), 0, N'1231231232', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1008, N'test4', N'4297F44B13955235245B2497399D7A93', N'ghus', N'sdfs@skjddf', CAST(0xD21E0B00 AS Date), 0, N'1231231232', N'none')
INSERT [dbo].[users] ([Id], [Username], [Password], [Name], [Email], [DOB], [Permission], [Phone], [Address]) VALUES (1009, N'test6', N'4297F44B13955235245B2497399D7A93', N'sddfsd', N'sdfs@sdfsdf', CAST(0xCC1E0B00 AS Date), 0, N'1231231232', N'none')
SET IDENTITY_INSERT [dbo].[users] OFF
