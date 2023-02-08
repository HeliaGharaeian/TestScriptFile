USE [ToDoListDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/8/2023 12:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[toDoListContexts]    Script Date: 2/8/2023 12:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[toDoListContexts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
	[Delete] [bit] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_toDoListContexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[toDoListContexts] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[toDoListContexts] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Delete]
GO
ALTER TABLE [dbo].[toDoListContexts] ADD  DEFAULT (CONVERT([bit],(0))) FOR [Status]
GO
