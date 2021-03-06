USE [home_management]
GO
/****** Object:  Table [dbo].[home_price]    Script Date: 3/8/2022 7:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[home_price](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[room_price] [nvarchar](50) NOT NULL,
	[electric_price] [nvarchar](50) NOT NULL,
	[water_price] [nvarchar](50) NULL,
	[internet_price] [nvarchar](50) NOT NULL,
	[garbage_price] [nvarchar](50) NOT NULL,
	[living_price] [nvarchar](50) NOT NULL,
	[total] [nvarchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[created_at] [date] NOT NULL,
	[deposited_at] [date] NULL,
	[note] [nvarchar](512) NULL,
 CONSTRAINT [PK_home_price] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/8/2022 7:44:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[description] [nchar](512) NULL,
	[role] [tinyint] NOT NULL,
	[active] [tinyint] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[home_price]  WITH CHECK ADD  CONSTRAINT [FK_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[home_price] CHECK CONSTRAINT [FK_User]
GO
