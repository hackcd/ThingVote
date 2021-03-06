USE [thv_alpha]
GO
/****** Object:  Table [dbo].[ASPvia_SocialVote_ResultDemographics]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVote_ResultDemographics](
	[ResultDemographicsID] [int] IDENTITY(1,1) NOT NULL,
	[VoteResultID] [int] NOT NULL,
	[Gender] [smallint] NULL,
	[Age] [int] NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Zip] [nchar](10) NULL,
 CONSTRAINT [PK_ASPvia_SocialVote_ResultDemographics] PRIMARY KEY CLUSTERED 
(
	[ResultDemographicsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Category]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](150) NULL,
	[ImageFile] [nvarchar](25) NULL,
	[ParentCategoryID] [int] NULL,
	[UrlName] [nvarchar](25) NULL,
	[SortOrder] [int] NULL,
	[MetaKeyword] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_CategoryVote]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_CategoryVote](
	[CategoryID] [int] NOT NULL,
	[VoteID] [int] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_CategoryVote] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC,
	[VoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Publishers]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Publishers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PublisherName] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVote_Publishers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_PublishOption]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_PublishOption](
	[VoteID] [int] NOT NULL,
	[StartAge] [int] NULL,
	[EndAge] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Gender] [smallint] NULL,
	[IsFacebookWall] [bit] NULL,
	[IsTwitter] [bit] NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_PublishOption_1] PRIMARY KEY CLUSTERED 
(
	[VoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Result]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Result](
	[VoteResultID] [int] IDENTITY(1,1) NOT NULL,
	[VoteOptionID] [int] NOT NULL,
	[ResultOwnerID] [int] NOT NULL,
	[DateAdded] [datetime] NULL,
	[DateUpdated] [datetime] NULL,
	[Response] [nvarchar](50) NOT NULL,
	[IPAddress] [nvarchar](25) NULL,
	[Gender] [smallint] NULL,
	[Age] [int] NULL,
	[Latitude] [decimal](9, 6) NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Zip] [nchar](10) NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_Result] PRIMARY KEY CLUSTERED 
(
	[VoteResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Settings]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Settings](
	[PortalId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Status]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Tags]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Tags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](255) NOT NULL,
	[Slug] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[PortalID] [int] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_Tags] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_Vote]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_Vote](
	[VoteID] [int] IDENTITY(1,1) NOT NULL,
	[PortalID] [int] NOT NULL,
	[VoteTitle] [nvarchar](500) NOT NULL,
	[VoteTypeID] [int] NOT NULL,
	[StatusID] [smallint] NOT NULL,
	[VisibilityID] [smallint] NOT NULL,
	[Impressions] [int] NOT NULL,
	[ViewOrder] [int] NULL,
	[MasterImageUrl] [nvarchar](255) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreatedOnDate] [datetime] NOT NULL,
	[LastModifiedOnDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_Vote] PRIMARY KEY CLUSTERED 
(
	[VoteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_VoteOptions]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_VoteOptions](
	[VoteOptionID] [int] IDENTITY(1,1) NOT NULL,
	[VoteID] [int] NOT NULL,
	[OptionImageTitle] [nvarchar](250) NULL,
	[OptionImageUrl] [nvarchar](200) NOT NULL,
	[ThumbnailUrl] [nvarchar](200) NULL,
	[Votes] [int] NOT NULL,
	[ViewOrder] [int] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_VoteOptions] PRIMARY KEY CLUSTERED 
(
	[VoteOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_VotesResults]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_VotesResults](
	[VoteID] [int] NOT NULL,
	[VoteResultID] [int] NOT NULL,
	[ResultOwnerID] [int] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_VotesResults] PRIMARY KEY CLUSTERED 
(
	[VoteID] ASC,
	[VoteResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_VotesTags]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_VotesTags](
	[VoteItemTagID] [int] IDENTITY(1,1) NOT NULL,
	[VoteID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_ASPvia_SocialVotes_VotesTags] PRIMARY KEY CLUSTERED 
(
	[VoteItemTagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ASPvia_SocialVotes_VoteTypes]    Script Date: 5/2/2013 6:50:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASPvia_SocialVotes_VoteTypes](
	[VoteTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VoteTypeName] [nvarchar](100) NOT NULL,
	[VoteTypeTitle] [nvarchar](200) NULL,
	[VoteTypeDescription] [nvarchar](500) NULL,
	[VoteTypeImageUrl] [nvarchar](200) NULL,
	[VoteTypeHasMasterImage] [bit] NULL,
	[VoteTypeHasImageOption] [bit] NULL,
	[VoteTypeTotalImageOptions] [tinyint] NULL,
 CONSTRAINT [PK_ASPvia_SocialVote_VoteType] PRIMARY KEY CLUSTERED 
(
	[VoteTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_Result] ADD  CONSTRAINT [DF_ASPvia_SocialVotes_Result_DateAdded]  DEFAULT (getdate()) FOR [DateAdded]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_Result] ADD  CONSTRAINT [DF_ASPvia_SocialVotes_Result_DateUpdated]  DEFAULT (getdate()) FOR [DateUpdated]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VoteTypes] ADD  CONSTRAINT [DF_ASPvia_SocialVote_VoteType_HasMasterImage]  DEFAULT ((0)) FOR [VoteTypeHasMasterImage]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VoteTypes] ADD  CONSTRAINT [DF_ASPvia_SocialVote_VoteType_HasImageOption]  DEFAULT ((0)) FOR [VoteTypeHasImageOption]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VoteTypes] ADD  CONSTRAINT [DF_ASPvia_SocialVote_VoteType_TotalImageOption]  DEFAULT ((0)) FOR [VoteTypeTotalImageOptions]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_PublishOption]  WITH CHECK ADD  CONSTRAINT [FK_ASPvia_SocialVotes_PublishOption_ASPvia_SocialVotes_Vote] FOREIGN KEY([VoteID])
REFERENCES [dbo].[ASPvia_SocialVotes_Vote] ([VoteID])
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_PublishOption] CHECK CONSTRAINT [FK_ASPvia_SocialVotes_PublishOption_ASPvia_SocialVotes_Vote]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_Result]  WITH CHECK ADD  CONSTRAINT [FK_ASPvia_SocialVotes_Result_ASPvia_SocialVotes_VoteOptions] FOREIGN KEY([VoteOptionID])
REFERENCES [dbo].[ASPvia_SocialVotes_VoteOptions] ([VoteOptionID])
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_Result] CHECK CONSTRAINT [FK_ASPvia_SocialVotes_Result_ASPvia_SocialVotes_VoteOptions]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VoteOptions]  WITH CHECK ADD  CONSTRAINT [FK_ASPvia_SocialVotes_VoteOptions_ASPvia_SocialVotes_Vote] FOREIGN KEY([VoteID])
REFERENCES [dbo].[ASPvia_SocialVotes_Vote] ([VoteID])
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VoteOptions] CHECK CONSTRAINT [FK_ASPvia_SocialVotes_VoteOptions_ASPvia_SocialVotes_Vote]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VotesTags]  WITH CHECK ADD  CONSTRAINT [FK_ASPvia_SocialVotes_VotesTags_ASPvia_SocialVotes_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[ASPvia_SocialVotes_Tags] ([TagID])
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VotesTags] CHECK CONSTRAINT [FK_ASPvia_SocialVotes_VotesTags_ASPvia_SocialVotes_Tags]
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VotesTags]  WITH CHECK ADD  CONSTRAINT [FK_ASPvia_SocialVotes_VotesTags_ASPvia_SocialVotes_Vote] FOREIGN KEY([VoteID])
REFERENCES [dbo].[ASPvia_SocialVotes_Vote] ([VoteID])
GO
ALTER TABLE [dbo].[ASPvia_SocialVotes_VotesTags] CHECK CONSTRAINT [FK_ASPvia_SocialVotes_VotesTags_ASPvia_SocialVotes_Vote]
GO
