USE [Property_Analysis]
GO
/****** Object:  Table [dbo].[Dim_Suburb]    Script Date: 27/11/2021 7:10:19 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Suburb](
	[Location_Id] [int] NOT NULL,
	[Suburb] [nvarchar](20) NULL,
	[State_Code] [nvarchar](10) NULL,
	[Postcode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
