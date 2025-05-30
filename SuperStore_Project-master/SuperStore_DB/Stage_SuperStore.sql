USE [Stage_SuperStore]
GO
/****** Object:  Table [dbo].[DDS_Transaction_Fact6]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DDS_Transaction_Fact6](
	[order_id] [int] NOT NULL,
	[order_date] [int] NOT NULL,
	[ship_date] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[segment_id] [int] NOT NULL,
	[ship_mode_id] [int] NOT NULL,
	[city_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
	[market_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[sub_category_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[postal_code] [int] NULL,
	[country] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_NDS_Transaction_Fact5] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[order_date] ASC,
	[customer_id] ASC,
	[product_id] ASC,
	[ship_mode_id] ASC,
	[city_id] ASC,
	[region_id] ASC,
	[market_id] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_Address]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_Address](
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[market] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[postal_code] [int] NULL,
	[Source] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_Customer]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_Customer](
	[CustomerID] [nvarchar](255) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_Order]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_Order](
	[order_id] [nvarchar](255) NULL,
	[order_date] [datetime] NULL,
	[ship_date] [datetime] NULL,
	[customer_id] [nvarchar](255) NULL,
	[ship_mode] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](255) NULL,
	[postal_code] [int] NULL,
	[market] [nvarchar](255) NULL,
	[region] [nvarchar](255) NULL,
	[product_id] [nvarchar](255) NULL,
	[quantity] [int] NULL,
	[sales] [float] NULL,
	[discount] [float] NULL,
	[profit] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_OrderDate]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_OrderDate](
	[order_date] [datetime] NOT NULL,
	[source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_Product]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_Product](
	[product_id] [nvarchar](255) NULL,
	[category] [nvarchar](255) NULL,
	[sub_category] [nvarchar](255) NULL,
	[product_name] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[order_date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_Segment]    Script Date: 29/12/2023 3:43:07 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_Segment](
	[segment] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_ShipDate]    Script Date: 29/12/2023 3:43:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_ShipDate](
	[ship_date] [datetime] NOT NULL,
	[source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage_ShipMode]    Script Date: 29/12/2023 3:43:08 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage_ShipMode](
	[ship_mode] [nvarchar](255) NOT NULL,
	[source_id] [int] NOT NULL
) ON [PRIMARY]
GO
