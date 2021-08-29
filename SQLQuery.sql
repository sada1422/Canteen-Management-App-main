USE [CManagement]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 29/08/2021 19:11:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [varchar](50) NOT NULL,
	[LName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Ctype] [varchar](50) NOT NULL,
	[CardNo] [varchar](50) NOT NULL,
	[ExpDate] [datetime] NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Products]    Script Date: 29/08/2021 19:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Products](
	[OrderID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[TotalSale] [money] NOT NULL,
 CONSTRAINT [PK_Order_Products] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 29/08/2021 19:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[CID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29/08/2021 19:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[Brand] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [int] NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[SID] [int] NOT NULL,
	[ROL] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartData]    Script Date: 29/08/2021 19:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartData](
	[TempOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [int] NOT NULL,
	[PName] [varchar](50) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingCartData] PRIMARY KEY CLUSTERED 
(
	[TempOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 29/08/2021 19:11:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[Suburb] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[Postcode] [varchar](50) NOT NULL,
	[ChefName] [nvarchar](256) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1, N'sada', N'shiva', N'07597946652', N'256', N'Granville Road', N'sheffield', N's22rp', N'sheffield', N'VISA', N'1234567890123456', CAST(N'2015-12-12T00:00:00.000' AS DateTime), N'sss@gmail.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (2, N'Bhargava', N'Mamidala', N'09989979203', N'5', N'Eckington', N'Chesterfiled', N'w32rp', N'Eckington', N'VISA', N'9876543211234567', CAST(N'2018-05-14T00:00:00.000' AS DateTime), N'bhargava@outlook.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (47, N'Nikitha', N'Kanus', N'09848643505', N'506', N'chapaltown', N'sheffield', N's613wp', N'sheffield', N'AMEX', N'123456789123456', CAST(N'2012-06-09T00:00:00.000' AS DateTime), N'Niki@gamil.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (50, N'srikanth', N'sangi', N'09676126626', N'47', N'london', N'heathrow', N's112eq', N'london', N'Mastercard', N'1234123412341234', CAST(N'2021-10-14T00:00:00.000' AS DateTime), N'sri898@gmail.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1001, N'Arjun', N'Nagireddy', N'09100714274', N'255', N'Granville Road', N'sheffield', N'506002', N'NSW', N'Master Card', N'4321123456783456', CAST(N'2023-11-12T00:00:00.000' AS DateTime), N'arjun@gmail.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1002, N'SADASHIVA', N'SANGINENI', N'07597946652', N'255', N'Granville Road', N'Sheffield', N'S2 2RP', N'', N'VISA', N'4321123456783456', CAST(N'2021-10-22T00:00:00.000' AS DateTime), N'ssangineni8@gmail.com')
GO
INSERT [dbo].[Customers] ([CID], [FName], [LName], [Phone], [Address1], [Address2], [Suburb], [Postcode], [State], [Ctype], [CardNo], [ExpDate], [Email]) VALUES (1005, N'Mohan', N'Adapa', N'07586779114', N'255', N'Granville Road', N'Sheffield', N's33rp', N'Sheffield', N'Mastercard', N'1234567887654321', CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'mohanadapa@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (52, 12, 1, 200.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (55, 10, 1, 35.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (1052, 10, 1, 35.0000)
GO
INSERT [dbo].[Order_Products] ([OrderID], [PID], [Qty], [TotalSale]) VALUES (1053, 10, 1, 35.0000)
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (52, CAST(N'2012-05-24T10:44:22.093' AS DateTime), CAST(N'2012-05-26T00:00:00.000' AS DateTime), 47)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (55, CAST(N'2021-08-11T12:23:53.320' AS DateTime), CAST(N'2021-08-16T12:23:53.320' AS DateTime), 50)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (1052, CAST(N'2021-08-26T12:21:59.957' AS DateTime), CAST(N'2021-08-31T12:21:59.957' AS DateTime), 1001)
GO
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [DeliveryDate], [CID]) VALUES (1053, CAST(N'2021-08-26T17:26:46.117' AS DateTime), CAST(N'2021-08-31T17:26:46.117' AS DateTime), 1002)
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (3, N'Chicken Biryani', N'Main Course', 30.0000, 40, N'Indian', N'Indian Spicy Food', 2, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (10, N'Fish and chips', N'Main Course', 35.0000, 12, N'UK', N'Delicious Meat', 6, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (12, N'Meat Masala', N'Main Course', 20.0000, 1, N'Indian', N'Meat Bacon', 2, 5)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (15, N'Butter naun', N'Starter', 15.0000, 8, N'Indian', N'Starter', 2, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (16, N'Fries', N'Starter', 25.0000, 9, N'American', N'Fries', 7, 10)
GO
INSERT [dbo].[Products] ([PID], [PName], [Brand], [UnitPrice], [UnitsInStock], [Category], [Description], [SID], [ROL]) VALUES (19, N'Ice cream', N'Heritage', 15.0000, 100, N'Deserts', N'Deserts List', 2, 11)
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (2, N'Indian', N'0425874123', N'Hyderabad@paradise.co.in', N'Hyderabad', N'Banjara Hills', N'SouthBank', N'VICS', N'3006', N'Nandi')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (6, N'UK', N'0425678915', N'Breville@yahoo.com', N'14', N'St.Kilda Road', N'Southbank', N'VIC', N'3006', N'John')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (7, N'American', N'0425578911', N'dave@yahoo.com', N'10', N'Fred', N'East', N'California', N'3008', N'David')
GO
INSERT [dbo].[Suppliers] ([SID], [SName], [Phone], [Email], [Address1], [Address2], [Suburb], [State], [Postcode], [ChefName]) VALUES (10, N'Chinese', N'0432134829', N'chujang@gmail.com', N'10', N'Alwyn', N'North', N'Calif', N'3009', N'Chu Jang')
GO
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Orders]
GO
ALTER TABLE [dbo].[Order_Products]  WITH CHECK ADD  CONSTRAINT [FK_Order_Products_Products] FOREIGN KEY([PID])
REFERENCES [dbo].[Products] ([PID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order_Products] CHECK CONSTRAINT [FK_Order_Products_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers] FOREIGN KEY([CID])
REFERENCES [dbo].[Customers] ([CID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY([SID])
REFERENCES [dbo].[Suppliers] ([SID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Suppliers]
GO
