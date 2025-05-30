USE [DDS_SuperStore]
GO
/****** Object:  Table [dbo].[DDS_Address]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[postal_code] [int] NULL,
	[city] [nvarchar](255) NOT NULL,
	[state] [nvarchar](255) NOT NULL,
	[country] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Category]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Category](
	[id] [int] NOT NULL,
	[category] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_City]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_City](
	[id] [int] NOT NULL,
	[city] [nvarchar](255) NULL,
 CONSTRAINT [PK_DDS_City] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Country]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Country](
	[id] [int] NOT NULL,
	[country] [nvarchar](255) NULL,
 CONSTRAINT [PK_DDS_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Customer]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Customer](
	[id] [int] NOT NULL,
	[customer_id] [nvarchar](255) NOT NULL,
	[customer_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Fact1]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Fact1](
	[order_id] [int] NOT NULL,
	[order_date] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[market_id] [int] NOT NULL,
	[market] [nvarchar](255) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Transaction_Fact1] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[order_date] ASC,
	[customer_id] ASC,
	[market_id] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Fact2]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Fact2](
	[order_id] [int] NOT NULL,
	[order_date] [int] NOT NULL,
	[region] [nvarchar](255) NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[total_sales] [float] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Transaction_Fact2] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[order_date] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Fact3]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Fact3](
	[order_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[segment] [nvarchar](255) NOT NULL,
	[country] [nvarchar](255) NOT NULL,
	[state] [nvarchar](255) NOT NULL,
	[total_profit] [float] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Transaction_Fact3] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Fact5]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Fact5](
	[order_id] [int] NOT NULL,
	[order_date] [int] NOT NULL,
	[city_id] [int] NOT NULL,
	[state_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
	[postal_code_id] [int] NULL,
	[year] [int] NOT NULL,
	[profit] [float] NOT NULL,
	[postal_code] [int] NULL,
	[country] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Fact5] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Fact6]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Fact6](
	[order_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[segment] [nvarchar](255) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[sub_category] [nvarchar](255) NOT NULL,
	[category] [nvarchar](255) NOT NULL,
	[quantity] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Transaction_Fact6] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[customer_id] ASC,
	[product_id] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Market]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Market](
	[id] [int] NOT NULL,
	[market] [nvarchar](255) NULL,
 CONSTRAINT [PK_DDS_Market] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Order]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Order](
	[id] [int] NOT NULL,
	[order_id] [nvarchar](255) NOT NULL,
	[order_date] [int] NOT NULL,
	[ship_date] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[ship_mode] [int] NOT NULL,
	[city] [int] NOT NULL,
	[postal_code] [int] NULL,
	[region] [int] NOT NULL,
	[market] [int] NOT NULL,
	[total_sales] [float] NOT NULL,
	[total_profit] [float] NOT NULL,
 CONSTRAINT [PK_DDS_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_OrderDate]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_OrderDate](
	[id] [int] NOT NULL,
	[day] [int] NULL,
	[month] [int] NULL,
	[year] [int] NULL,
 CONSTRAINT [PK_DDS_OrderDate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_PostalCode]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_PostalCode](
	[id] [int] NOT NULL,
	[postal_code] [int] NULL,
 CONSTRAINT [PK_DDS_PostalCode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Product]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Product](
	[id] [int] NOT NULL,
	[product_id] [nvarchar](255) NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_ProductDetail]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_ProductDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [nvarchar](255) NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[sub_category] [nvarchar](255) NOT NULL,
	[category] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_ProductDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Region]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Region](
	[id] [int] NOT NULL,
	[region] [nvarchar](255) NULL,
 CONSTRAINT [PK_DDS_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Segment]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Segment](
	[id] [int] NOT NULL,
	[segment] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_Segment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_ShipDate]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_ShipDate](
	[id] [int] NOT NULL,
	[day] [int] NULL,
	[month] [int] NULL,
	[year] [int] NULL,
 CONSTRAINT [PK_DDS_ShipDate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_ShipMode]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_ShipMode](
	[id] [int] NOT NULL,
	[ship_mode] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_ShipMode] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_State]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_State](
	[id] [int] NOT NULL,
	[state] [nvarchar](255) NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_SubCategory]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_SubCategory](
	[id] [int] NOT NULL,
	[sub_category] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_DDS_SubCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DDS_Transaction]    Script Date: 30/12/2023 11:52:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Transaction](
	[order_id] [int] NOT NULL,
	[order_date] [int] NOT NULL,
	[ship_date] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[segment] [int] NOT NULL,
	[ship_mode] [int] NOT NULL,
	[city] [int] NOT NULL,
	[state] [int] NOT NULL,
	[country] [int] NOT NULL,
	[postal_code] [int] NULL,
	[region] [int] NOT NULL,
	[market] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[sub_category] [int] NOT NULL,
	[category] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[sales] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[profit] [float] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_DDS_Transaction] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[order_date] ASC,
	[ship_date] ASC,
	[customer_id] ASC,
	[segment] ASC,
	[product_id] ASC,
	[sub_category] ASC,
	[category] ASC,
	[ship_mode] ASC,
	[city] ASC,
	[state] ASC,
	[country] ASC,
	[region] ASC,
	[market] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

create table Fact_OLAP	(
	Country_id	int,
	Product_id int,
	OrderDate_id int,
	Sales float,
	Profit float,
	Quantity int,
	Status int,
	primary key (Country_id, Product_id, OrderDate_id)
)