USE [Property_Analysis]
GO
/****** Object:  Table [dbo].[Fact_Analysis]    Script Date: 27/11/2021 7:10:19 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Analysis](
	[Fact_TableId] [int] NOT NULL,
	[Property_Median_Value] [float] NULL,
	[Station_Id] [int] NOT NULL,
	[School_Id] [int] NOT NULL,
	[Location_Id] [int] NOT NULL,
	[Time_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Fact_TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_Analysis]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Analysis_Dim_Date] FOREIGN KEY([Time_Id])
REFERENCES [dbo].[Dim_Date] ([Time_Id])
GO
ALTER TABLE [dbo].[Fact_Analysis] CHECK CONSTRAINT [FK_Fact_Analysis_Dim_Date]
GO
ALTER TABLE [dbo].[Fact_Analysis]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Analysis_Dim_School] FOREIGN KEY([School_Id])
REFERENCES [dbo].[Dim_School] ([School_Id])
GO
ALTER TABLE [dbo].[Fact_Analysis] CHECK CONSTRAINT [FK_Fact_Analysis_Dim_School]
GO
ALTER TABLE [dbo].[Fact_Analysis]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Analysis_Dim_Station] FOREIGN KEY([Station_Id])
REFERENCES [dbo].[Dim_Station] ([Station_Id])
GO
ALTER TABLE [dbo].[Fact_Analysis] CHECK CONSTRAINT [FK_Fact_Analysis_Dim_Station]
GO
ALTER TABLE [dbo].[Fact_Analysis]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Analysis_Dim_Suburb] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Dim_Suburb] ([Location_Id])
GO
ALTER TABLE [dbo].[Fact_Analysis] CHECK CONSTRAINT [FK_Fact_Analysis_Dim_Suburb]
GO
