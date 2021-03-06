USE [Property_Analysis]
GO
/****** Object:  Table [dbo].[Dim_School]    Script Date: 27/11/2021 7:10:19 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_School](
	[School_Id] [int] NOT NULL,
	[Suburb] [nvarchar](20) NULL,
	[State_Code] [nvarchar](10) NULL,
	[Address] [nvarchar](100) NULL,
	[School_Information] [nvarchar](100) NULL,
	[Lattitude] [decimal](11, 8) NULL,
	[Longittude] [decimal](11, 8) NULL,
	[ICSEA_Value] [int] NULL,
	[Student_number] [int] NULL,
	[Postcode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[School_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
