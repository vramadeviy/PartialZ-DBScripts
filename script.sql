USE [PartialClaims]
GO
/****** Object:  Schema [Archive]    Script Date: 8/15/2023 12:25:11 PM ******/
CREATE SCHEMA [Archive]
GO
/****** Object:  Schema [Data]    Script Date: 8/15/2023 12:25:11 PM ******/
CREATE SCHEMA [Data]
GO
/****** Object:  Schema [Export]    Script Date: 8/15/2023 12:25:11 PM ******/
CREATE SCHEMA [Export]
GO
/****** Object:  Schema [Import]    Script Date: 8/15/2023 12:25:11 PM ******/
CREATE SCHEMA [Import]
GO
/****** Object:  Schema [STATE\DOL_UC  Partials]    Script Date: 8/15/2023 12:25:11 PM ******/
CREATE SCHEMA [STATE\DOL_UC  Partials]
GO
/****** Object:  Table [dbo].[EmployeeDirectories_History]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDirectories_History](
	[EmployeeDirectoryId] [int] NOT NULL,
	[FilerId] [int] NULL,
	[SocialSecurityNumber] [nvarchar](20) NULL,
	[DateOfBirth] [datetime] NULL,
	[TelephoneNumber] [nvarchar](15) NULL,
	[ClaimantFirstName] [nvarchar](100) NULL,
	[ClaimantMiddleName] [nvarchar](100) NULL,
	[ClaimantLastName] [nvarchar](100) NULL,
	[ClaimantSuffix] [int] NULL,
	[AuthorizedAlienNumber] [nvarchar](20) NULL,
	[MailingStreetAddress] [nvarchar](200) NULL,
	[MailingCity] [nvarchar](150) NULL,
	[MailingState] [int] NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Gender] [int] NULL,
	[Handicap] [int] NULL,
	[VeteranStatus] [int] NULL,
	[Race] [int] NULL,
	[Ethnicity] [int] NULL,
	[FederalwithHolding] [int] NULL,
	[Citizen] [int] NULL,
	[Education] [int] NULL,
	[Occupation] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
	[TimeStart] [datetime2](0) NOT NULL,
	[TimeEnd] [datetime2](0) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeDirectories]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeDirectories](
	[EmployeeDirectoryId] [int] IDENTITY(1,1) NOT NULL,
	[FilerId] [int] NULL,
	[SocialSecurityNumber] [nvarchar](20) NULL,
	[DateOfBirth] [datetime] NULL,
	[TelephoneNumber] [nvarchar](15) NULL,
	[ClaimantFirstName] [nvarchar](100) NULL,
	[ClaimantMiddleName] [nvarchar](100) NULL,
	[ClaimantLastName] [nvarchar](100) NULL,
	[ClaimantSuffix] [int] NULL,
	[AuthorizedAlienNumber] [nvarchar](20) NULL,
	[MailingStreetAddress] [nvarchar](200) NULL,
	[MailingCity] [nvarchar](150) NULL,
	[MailingState] [int] NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Gender] [int] NULL,
	[Handicap] [int] NULL,
	[VeteranStatus] [int] NULL,
	[Race] [int] NULL,
	[Ethnicity] [int] NULL,
	[FederalwithHolding] [int] NULL,
	[Citizen] [int] NULL,
	[Education] [int] NULL,
	[Occupation] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
	[TimeStart] [datetime2](0) GENERATED ALWAYS AS ROW START NOT NULL,
	[TimeEnd] [datetime2](0) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK_EmployeeDirectories] PRIMARY KEY CLUSTERED 
(
	[EmployeeDirectoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([TimeStart], [TimeEnd])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON (HISTORY_TABLE = [dbo].[EmployeeDirectories_History])
)
GO
/****** Object:  Table [dbo].[Claims]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Claims](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[FilerId] [int] NULL,
	[SocialSecurityNumber] [nchar](15) NULL,
	[DateOfBirth] [datetime] NULL,
	[TelephoneNumber] [nvarchar](15) NULL,
	[ClaimantFirstName] [nvarchar](100) NULL,
	[ClaimantMiddleName] [nvarchar](100) NULL,
	[ClaimantLastName] [nvarchar](100) NULL,
	[ClaimantSuffix] [int] NULL,
	[AuthorizedAlienNumber] [nchar](20) NULL,
	[MailingStreetAddress] [nvarchar](200) NULL,
	[MailingCity] [nvarchar](150) NULL,
	[MailingState] [int] NULL,
	[ZipCode] [nchar](10) NULL,
	[Gender] [int] NULL,
	[Handicap] [int] NULL,
	[VeteranStatus] [int] NULL,
	[Race] [int] NULL,
	[Ethnicity] [int] NULL,
	[FederalwithHolding] [int] NULL,
	[Citizen] [int] NULL,
	[Education] [int] NULL,
	[Occupation] [nvarchar](150) NULL,
	[WeekEndingDate] [datetime] NULL,
	[LastDateWorked] [nvarchar](50) NULL,
	[Earnings] [decimal](18, 0) NULL,
	[VacationPay] [decimal](18, 0) NULL,
	[HolidayPay] [decimal](18, 0) NULL,
	[OtherPay] [decimal](18, 0) NULL,
	[OtherStateWages] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
 CONSTRAINT [PK_Claims] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Citizen]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Citizen](
	[CitizenID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Citizen] PRIMARY KEY CLUSTERED 
(
	[CitizenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_City]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Education]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Education](
	[EducationID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Education] PRIMARY KEY CLUSTERED 
(
	[EducationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Ethnicity]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Ethnicity](
	[EthnicityID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Ethnicity] PRIMARY KEY CLUSTERED 
(
	[EthnicityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Gender]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Handicap]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Handicap](
	[HandicapID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Handicap] PRIMARY KEY CLUSTERED 
(
	[HandicapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_NameSuffix]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_NameSuffix](
	[NameSuffixID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_NameSuffix] PRIMARY KEY CLUSTERED 
(
	[NameSuffixID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_OtherWages]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_OtherWages](
	[OtherWagesID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_OtherWages] PRIMARY KEY CLUSTERED 
(
	[OtherWagesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Race]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Race](
	[RaceID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Race] PRIMARY KEY CLUSTERED 
(
	[RaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Veteran]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Veteran](
	[VeteranID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Veteran] PRIMARY KEY CLUSTERED 
(
	[VeteranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_Withholdings]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_Withholdings](
	[WithholdingsID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Dropdown_Withholdings] PRIMARY KEY CLUSTERED 
(
	[WithholdingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dropdown_ZIP]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dropdown_ZIP](
	[ZIPID] [int] IDENTITY(1,1) NOT NULL,
	[ZIP] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](2) NOT NULL,
 CONSTRAINT [PK_Dropdown_] PRIMARY KEY CLUSTERED 
(
	[ZIPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplates]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Template] [nvarchar](max) NULL,
	[Subject] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[IsActive] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
 CONSTRAINT [PK_EmailTemplates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeWorkHistory]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeWorkHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployerId] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[PayrollEndDay] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
 CONSTRAINT [PK_EmployeeWorkHistory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employer]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer](
	[EmployerId] [int] IDENTITY(1,1) NOT NULL,
	[EANNumber] [nvarchar](100) NULL,
	[FEINNumber] [nvarchar](100) NULL,
	[EmployerEmail] [nvarchar](100) NULL,
	[Name] [nvarchar](500) NULL,
	[Address] [nvarchar](max) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
 CONSTRAINT [PK_Employer] PRIMARY KEY CLUSTERED 
(
	[EmployerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filer]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filer](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](max) NULL,
	[BusinessTitle] [nvarchar](500) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[IsVerified] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifedDate] [datetime] NULL,
	[LoginOTP] [int] NULL,
	[IsPartialUnitApproved] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateCode] [varchar](2) NOT NULL,
	[StateName] [varchar](128) NOT NULL,
	[Code] [varchar](4) NOT NULL,
	[FIPSCode] [varchar](2) NULL,
	[LowZip] [varchar](3) NULL,
	[HighZip] [varchar](3) NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  CONSTRAINT [DF_EmailTemplates_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  CONSTRAINT [DF_ETCD]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  CONSTRAINT [DF_ETLMD]  DEFAULT (getdate()) FOR [LastModifedDate]
GO
ALTER TABLE [dbo].[EmployeeDirectories] ADD  CONSTRAINT [DFT_AWBuildVersion_TimeStart]  DEFAULT ('19000101') FOR [TimeStart]
GO
ALTER TABLE [dbo].[EmployeeDirectories] ADD  CONSTRAINT [DFT_AWBuildVersion_TimeEnd]  DEFAULT ('99991231 23:59:59') FOR [TimeEnd]
GO
ALTER TABLE [dbo].[EmployeeWorkHistory] ADD  CONSTRAINT [DF_EWHCD]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[EmployeeWorkHistory] ADD  CONSTRAINT [DF_EHWLMD]  DEFAULT (getdate()) FOR [LastModifedDate]
GO
ALTER TABLE [dbo].[Employer] ADD  CONSTRAINT [DF_ERCD]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employer] ADD  CONSTRAINT [DF_ERLMD]  DEFAULT (getdate()) FOR [LastModifedDate]
GO
ALTER TABLE [dbo].[Filer] ADD  CONSTRAINT [DF_Employee_IsVerified]  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [dbo].[Filer] ADD  CONSTRAINT [DF_CD]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Filer] ADD  CONSTRAINT [DF_LMD]  DEFAULT (getdate()) FOR [LastModifedDate]
GO
ALTER TABLE [dbo].[Claims]  WITH CHECK ADD FOREIGN KEY([FilerId])
REFERENCES [dbo].[Filer] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeDirectories]  WITH CHECK ADD FOREIGN KEY([FilerId])
REFERENCES [dbo].[Filer] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeDirectories]  WITH CHECK ADD FOREIGN KEY([FilerId])
REFERENCES [dbo].[Filer] ([EmployeeId])
GO
/****** Object:  StoredProcedure [dbo].[sp_Employer_Validate]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --=============================================
 --Author:		Meg Stringer
 --Create date: February 8, 2022
 --Description:	Get Employer info and wages from DataMart.
 --=============================================
CREATE PROCEDURE [dbo].[sp_Employer_Validate]
	 --Add the parameters for the stored procedure here
	@EAN VARCHAR(10)
	,@FEIN VARCHAR(9)
AS
	BEGIN
		 --SET NOCOUNT ON added to prevent extra result sets from
		 --interfering with SELECT statements.
		SET NOCOUNT ON;

		 ----Insert statements for procedure here
		--TESTING
		--DECLARE @EAN varchar(10)	 = '1011654400'
		--DECLARE @FEIN varchar(9)	 = '631015757'
		--TESTING

	--IF (SELECT COUNT([DisabledAccountsID])
	--	FROM [Data].[DisabledAccounts]
	--	WHERE [EAN] = @EAN
	--		AND [FEIN] = @FEIN
	--	) > 0
	--	BEGIN
	--		SELECT 'ACCOUNT IS DISABLED IN DisabledAccounts TABLE' AS [Results]                           
	--		--RETURN 1
	--	END

		DECLARE @EmployerID int					= NULL
		DECLARE @EmployerName varchar(100)		= NULL
		DECLARE @PayrollEndDay  varchar(25)			= NULL
		DECLARE @Address varchar(100)			= NULL
		DECLARE @City varchar(100)				= NULL
		DECLARE @State varchar(2)				= NULL
		DECLARE @ZIP varchar(5)					= NULL
		DECLARE @ZIPPlus4 varchar(4)			= NULL
		DECLARE @ContactName varchar(100)		= NULL
		DECLARE @ContactPhone varchar(11)		= NULL
		DECLARE @Wages decimal(19,2) = 0

		SELECT @EmployerID = s.[EmployerID]
		FROM [DOLDATAMART_LINK].[Datamart].[Sensitive].[EAN] AS s
			INNER JOIN [DOLDATAMART_LINK].[Datamart].[DS_Tax].[Employer] AS e
				ON s.[EmployerID] = e.[EmployerID]
		WHERE [EAN] = @EAN
			AND [FEIN] = @FEIN
			AND [CurrentLiabilityStatusCode] = 'ACTIVE'

		SELECT @EmployerName = e.[LegalName]
		  ,@Address = CASE
			   WHEN el.[Line1] IS NOT NULL AND (el.[Line2] IS NOT NULL OR el.[Line2] NOT LIKE '') AND (el.[Line3] IS NOT NULL OR el.[Line3] NOT LIKE '') THEN LTRIM(RTRIM(el.[Line1])) + ' ' + LTRIM(RTRIM(el.[Line2])) + ' ' + LTRIM(RTRIM(el.[Line3]))
			   WHEN el.[Line1] IS NOT NULL AND (el.[Line2] IS NOT NULL OR el.[Line2] NOT LIKE '') AND (el.[Line3] IS NULL OR el.[Line3] LIKE '') THEN LTRIM(RTRIM(el.[Line1])) + ' ' + LTRIM(RTRIM(el.[Line2]))
			   WHEN el.[Line1] IS NOT NULL AND (el.[Line2] IS NULL OR el.[Line2] LIKE '') AND (el.[Line3] IS NULL OR el.[Line3] LIKE '') THEN LTRIM(RTRIM(el.[Line1]))
			   ELSE NULL
			  END
		  ,@City = LTRIM(RTRIM(el.[City]))
		  ,@State = el.[StateCode]
		  ,@ZIP = CASE
			  WHEN el.[ZipCode] IS NULL THEN NULL
			  WHEN LEN(el.[ZipCode]) = 5 THEN LEFT(el.[ZipCode],5)
			  WHEN LEN(el.[ZipCode]) > 5 AND el.[ZipCode] LIKE '%-%' THEN LTRIM(RTRIM(LEFT(REPLACE(el.[ZipCode],'-',''),5)))
			  WHEN LEN(el.[ZipCode]) > 5 THEN LTRIM(RTRIM(LEFT(REPLACE(el.[ZipCode],'-',''),5)))
			  ELSE LEFT(LTRIM(RTRIM(el.[ZipCode])),5)
			 END
		  ,@ZIPPlus4 = CASE
				WHEN el.[ZipCode] IS NOT NULL AND LEN(el.[ZipCode]) >= 9 THEN RIGHT(el.[ZipCode],4)
				ELSE NULL
			   END
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Tax].[EmployerLocation] as el
		 LEFT JOIN [DOLDATAMART_LINK].[Datamart].[DS_Tax].[Employer] AS e
		  ON el.[EmployerID] = e.[EmployerID]
		WHERE e.[EmployerID] = @EmployerID
			AND [EmployerLocationTypeCode] LIKE 'TAXMAILING'

		SELECT @ContactName = LTRIM(RTRIM([Name]))
			,@ContactPhone = LTRIM(RTRIM([PhoneNumber]))
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Tax].[EmployerContact]
		WHERE [EmployerID] = @EmployerID
			AND [PhoneNumber] IS NOT NULL
			AND [PhoneNumber] NOT LIKE ''

		DECLARE @Name varchar(100)
		DECLARE @NameLength int
		DECLARE @FirstName varchar(50)
		DECLARE @FirstNameLength int
		DECLARE @LastName varchar(50)
		DECLARE @prefix varchar(10)
		DECLARE @suffix varchar(10)

		SET @Name = @ContactName

		SET @Name = LTRIM(RTRIM(REPLACE(REPLACE(@Name,'   ',' '),'  ',' ')))
		SET @NameLength = LEN(@Name)

		SET @FirstName = (SELECT CASE
										WHEN @Name LIKE '% [A-Z] [A-Z] %'	THEN LEFT(@Name, PATINDEX('% [A-Z] [A-Z] %',@Name)+ 4)
										WHEN @Name LIKE '% [A-Z] %'			THEN LEFT(@Name, PATINDEX('% [A-Z] %',@Name)+ 2)
										WHEN @Name LIKE '[A-Z] [A-Z] % %'	THEN LEFT(@Name, PATINDEX('[A-Z] [A-Z] % %',@Name))
										WHEN @Name LIKE '[A-Z] % %'			THEN LEFT(@Name, PATINDEX('[A-Z] % %',@Name))
										WHEN @Name LIKE '% %'				THEN LEFT(@Name, PATINDEX('% %',@Name))
										ELSE @Name
									END)

		SET @FirstNameLength = LEN(@FirstName)
		SET @FirstName = [dbo].[FN_ProperCase](LTRIM(RTRIM(@FirstName)),NULL,NULL)

		SET @LastName = LTRIM(RTRIM(RIGHT(@Name,(@NameLength - @FirstNameLength))))
		SET @LastName = [dbo].[FN_ProperCase](@LastName,'|II|III|IV|V|VI|VII|VIII|CPA|COO|CEO|MD|DMD|VP|PC|LLC|DBA|PhD|',NULL)

		----6 quarters back
		DECLARE @TodaysDate date				= GETDATE()
		DECLARE @QuarterDate date				= CAST(DATEADD(d,-1,DATEADD(qq, 1,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @OneQuarterBackEndDate date		= CAST(DATEADD(d,-1,DATEADD(qq, 0,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @TwoQuarterBackEndDate date		= CAST(DATEADD(d,-1,DATEADD(qq,-1,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @ThreeQuarterBackEndDate date	= CAST(DATEADD(d,-1,DATEADD(qq,-2,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @FourQuarterBackEndDate date	= CAST(DATEADD(d,-1,DATEADD(qq,-3,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @FiveQuarterBackEndDate date	= CAST(DATEADD(d,-1,DATEADD(qq,-4,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)
		DECLARE @SixQuarterBackEndDate date		= CAST(DATEADD(d,-1,DATEADD(qq,-5,DATEADD(QUARTER,DATEDIFF(QUARTER,0,GETDATE()),0))) AS date)

		DECLARE @OneQuarterBackYear smallint	= CAST(DATEPART(YYYY,@OneQuarterBackEndDate) AS smallint)
		DECLARE @TwoQuarterBackYear smallint	= CAST(DATEPART(YYYY,@TwoQuarterBackEndDate) AS smallint)
		DECLARE @ThreeQuarterBackYear smallint	= CAST(DATEPART(YYYY,@ThreeQuarterBackEndDate) AS smallint)
		DECLARE @FourQuarterBackYear smallint	= CAST(DATEPART(YYYY,@FourQuarterBackEndDate) AS smallint)
		DECLARE @FiveQuarterBackYear smallint	= CAST(DATEPART(YYYY,@FiveQuarterBackEndDate) AS smallint)
		DECLARE @SixQuarterBackYear smallint	= CAST(DATEPART(YYYY,@SixQuarterBackEndDate) AS smallint)

		DECLARE @CurrentQuarterInt tinyint		= DATEPART(Q,@QuarterDate)
		DECLARE @OneQuarterBackInt tinyint		= DATEPART(Q,@OneQuarterBackEndDate)
		DECLARE @TwoQuarterBackInt tinyint		= DATEPART(Q,@TwoQuarterBackEndDate)
		DECLARE @ThreeQuarterBackInt tinyint	= DATEPART(Q,@ThreeQuarterBackEndDate)
		DECLARE @FourQuarterBackInt tinyint		= DATEPART(Q,@FourQuarterBackEndDate)
		DECLARE @FiveQuarterBackInt tinyint		= DATEPART(Q,@FiveQuarterBackEndDate)
		DECLARE @SixQuarterBackInt tinyint		= DATEPART(Q,@SixQuarterBackEndDate)


		--SELECT SUM([Amount])
		SELECT @Wages = SUM([Amount])
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Wages].[Wage] w
			INNER JOIN [DOLDATAMART_LINK].[Datamart].[DS_Wages].[Employee] ee
				ON ee.[EmployeeID] = w.[EmployeeID]
			INNER JOIN [DOLDATAMART_LINK].[Datamart].[DS_Tax].[Employer] er
				ON ee.[EmployerID] = er.[EmployerID]
			LEFT JOIN [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[Claimant] c
				ON c.[ClientID] = ee.[ClientID]
		WHERE 	(ee.[EmployerID] = @EmployerID)
			AND (
				(w.[Year] = @OneQuarterBackYear AND w.[Quarter] = @OneQuarterBackInt)
				OR
				(w.[Year] = @TwoQuarterBackYear AND w.[Quarter] = @TwoQuarterBackInt)
				OR
				(w.[Year] = @ThreeQuarterBackYear AND w.[Quarter] = @ThreeQuarterBackInt)
				OR
				(w.[Year] = @FourQuarterBackYear AND w.[Quarter] = @FourQuarterBackInt)
				OR
				(w.[Year] = @FiveQuarterBackYear AND w.[Quarter] = @FiveQuarterBackInt)
				OR
				(w.[Year] = @SixQuarterBackYear AND w.[Quarter] = @SixQuarterBackInt)
				)

		--IF (SELECT COUNT([PayRollEndDateOverRideID])
		--	FROM [Data].[PayRollEndDateOverRide]
		--	WHERE [EAN] = @EAN
		--		AND [FEIN] = @FEIN
		--	) > 0
		--	BEGIN
		--		SELECT @PayrollEndDay = [PayrollEndDay]
		--		FROM [Data].[PayRollEndDateOverRide]
		--		WHERE [EAN] = @EAN
		--			AND [FEIN] = @FEIN
		--	END
		--	ELSE
		--	BEGIN
				SELECT TOP (1) 
					--ec.EmployerID
					@PayrollEndDay = DATENAME(WEEKDAY,ec.BenefitWeekEnding) --AS BenefitWeekEndingDay
				FROM [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[EmployerCharge] AS ec
					INNER JOIN [DOLDATAMART_LINK].[Datamart].[Sensitive].[EAN] AS e
						ON ec.EmployerID = e.EmployerID
					INNER JOIN [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[PartialHistory] AS ph
						ON e.EAN = ph.EAN
				WHERE e.EAN = @EAN
				ORDER BY ec.CreatedDate DESC
		--	END

		SELECT @EmployerID	AS [EmployerID]
			,@EmployerName	AS [EmployerName]
			,@Address		AS [Address]
			,@City			AS [City]
			,@State			AS [State]
			,@ZIP			AS [ZIP]
			,@ZIPPlus4		AS [ZIPPlus4]
			,@FirstName		AS [ContactFirstName]
			,@LastName		AS [ContactLastName]
			,@ContactPhone	AS [ContactPhone]
			,@Wages			AS [Wages]
			,@PayrollEndDay		AS [PayrollEndDay]

	END


GO
/****** Object:  StoredProcedure [dbo].[sp_ValidateAccountRoutingNumber]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Meg Stringer
-- Create date: July 25, 2022
-- Description:	Validate a bank routing number.
-- =============================================
-- Change notes:
-- 2022-08-23	mfs	Altered to have the following responses returned:  V = valid, B = bad/not found, F = fraud
-- 2022-10-06	mfs	Altered to change the following responses returned:  F = fraud changed to A = Account fraud or R = Routing number blocked
--					Added @BankAccountNumber so can check for bad accounts on DataMart.
-- 2023-01-10	mfs	Altered to have the following response returned:  E = No bank number entered.
-- =============================================
CREATE PROCEDURE [dbo].[sp_ValidateAccountRoutingNumber]
	-- Add the parameters for the stored procedure here
	@RoutingNumber char(9)
	,@BankAccountNumber varchar(9)
	,@Status char(1) output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	------TESTING
	--DECLARE @RoutingNumber varchar(9) = '291975465'
	--	,@BankAccountNumber varchar(9) = '123456789'
	--	,@Status char(1)
	----FRAUD '122105249'
	----VALID '291975465'
	----BAD '987654321'
	------TESTING
	IF @BankAccountNumber IS NULL OR @BankAccountNumber LIKE ''
		BEGIN
			SET @Status =  'E'
		END		
		ELSE
	IF (SELECT COUNT([SuspiciousActorBankID])
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Central].[SuspiciousActorBank]
		WHERE [RoutingNumber] = @RoutingNumber
			AND [AccountNumber] = @BankAccountNumber
		) > 0
		BEGIN
			SET @Status =  'A'
		END
		ELSE
		IF (SELECT COUNT([SuspiciousActorBankID])
			FROM [DOLDATAMART_LINK].[Datamart].[DS_Central].[SuspiciousActorBank]
			WHERE [RoutingNumber] = @RoutingNumber
				AND [AccountNumber] IS NULL
			) > 0
			BEGIN
				SET @Status =  'R'
			END
			ELSE
			IF (SELECT COUNT([RoutingNumberID])
				FROM [DOLDATAMART_LINK].[Datamart].[DS_Central].[RoutingNumber]
				WHERE [Number] LIKE @RoutingNumber
				) > 0
				BEGIN
					SET @Status =  'V'
				END
				ELSE
				BEGIN
					SET @Status =  'B'
				END
	SELECT @Status
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ValidateClaimant]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --=============================================
 --Author:		Meg Stringer
 --Create date: July 31, 2023
 --Description:	Get Claimant info from DataMart.
 --=============================================
CREATE PROCEDURE [dbo].[sp_ValidateClaimant]
	 --Add the parameters for the stored procedure here
	@SSN char(9)
	,@DOB date	= NULL
AS
	BEGIN
		 --SET NOCOUNT ON added to prevent extra result sets from
		 --interfering with SELECT statements.
		SET NOCOUNT ON;

		 ----Insert statements for procedure here
		----TESTING
		--DECLARE @SSN char(9)	 = '421130372'
		--DECLARE @DOB date	 = '1962-07-19'
		----TESTING

		DECLARE @ClientID int				= NULL
		DECLARE @FirstName varchar(100)		= NULL
		DECLARE @LastName varchar(100)		= NULL
		DECLARE @MiddleInit varchar(1)		= NULL
		DECLARE @NameSuffix varchar(5)		= NULL
		--DECLARE @DOB date					= NULL
		DECLARE @AlienNumber varchar(15)	= NULL
		DECLARE @PhoneNumber varchar(10)	= NULL
		DECLARE @AddressLine1 varchar(100)	= NULL
		DECLARE @AddressLine2 varchar(100)	= NULL
		DECLARE @City varchar(100)			= NULL
		DECLARE @State varchar(2)			= NULL
		DECLARE @ZIP varchar(11)			= NULL
		DECLARE @Gender varchar(100)		= NULL
		DECLARE @Handicap varchar(3)		= NULL
		DECLARE @Veteran varchar(3)			= NULL
		DECLARE @Race varchar(100)			= NULL
		DECLARE @Ethnicity varchar(100)		= NULL
		DECLARE @Withholdings varchar(100)	= NULL
		DECLARE @Citizen varchar(100)		= NULL
		DECLARE @Education varchar(100)		= NULL


		IF (SELECT COUNT([ClientID])
			FROM [DOLDATAMART_LINK].[Datamart].[Sensitive].[SSN] AS s
			WHERE [SSN] = @SSN
			) > 0
			BEGIN
				SELECT @ClientID = [ClientID]
				FROM [DOLDATAMART_LINK].[Datamart].[Sensitive].[SSN] AS s
				WHERE [SSN] = @SSN
			END
			ELSE
			BEGIN
				SELECT 'Claimant SSN does not exist in Datamart.' AS [Results]
				RETURN 1
				--SET NOEXEC ON
			END

		SELECT @PhoneNumber = [PhoneNumber]
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[Phone]
		WHERE [IsPreferred] = 1
			AND [ClientID] = @ClientID

		SELECT @FirstName = [dbo].[fn_ProperCase]([FirstName],NULL,NULL)
			,@MiddleInit = CASE
					WHEN [MiddleInitial] IS NULL THEN ''
					ELSE UPPER([MiddleInitial])
				END --AS [MiddleInitial]
			,@LastName = CASE
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% jr'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'jr',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% sr'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'sr',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% ii'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'ii',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% iii'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'iii',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% iv'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'iv',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% v'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'v',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% vi'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'vi',' ')	
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% vii'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'vii',' ')
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% viii'	THEN  REPLACE(REPLACE(REPLACE([dbo].[fn_ProperCase]([LastName],NULL,NULL),'.',' '),',',' '),'viii',' ')
								ELSE [dbo].[fn_ProperCase]([LastName],NULL,NULL)
							END
			,@NameSuffix = CASE
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% jr' THEN  'Jr'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% sr' THEN  'Sr'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% ii' THEN  'II'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% iii' THEN  'III'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% iv' THEN  'IV'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% v' THEN  'V'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% vi' THEN  'VI'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% vii' THEN  'VII'
								WHEN REPLACE(REPLACE([LastName],'.',' '),',',' ') like '% viii' THEN  'VIII'
								ELSE ''
							END
			,@DOB = [BirthDate]
			,@Gender = [GenderCode]
			,@Ethnicity = [EthnicityCode]
			,@Education = [EducationCode]
			,@Citizen = [CitizenshipCode]
			,@Withholdings = [WithholdingTypeCode]
			,@AlienNumber = CASE
					WHEN [AuthorizedAlienNumber] IS NULL THEN 'N/A'
					ELSE [AuthorizedAlienNumber]
				END --AS [AuthorizedAlienNumber]
			,@Handicap = CASE
					WHEN [IsDisabled] = 0 THEN 'No'
					WHEN [IsDisabled] = 1 THEN 'Yes'
				END --AS [Handicapped]
			,@Veteran = CASE
					WHEN [IsVeteran] = 0 THEN 'No'
					WHEN [IsVeteran] = 1 THEN 'Yes'
				END --AS [Veteran]
			,@Race = [RaceCode]
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[Claimant]
		WHERE [ClientID] = @ClientID
			AND 
			(@DOB IS NULL OR (@DOB IS NOT NULL AND @DOB = [Birthdate]))

		SELECT 
			@AddressLine1 = [Line1]
			,@AddressLine2 = [Line2]
			,@City = [City]
			,@State = [StateCode]
			,@ZIP = [ZipCode]
		FROM [DOLDATAMART_LINK].[Datamart].[DS_Benefits].[Address]
		WHERE [AddressTypeCode] = 'MAILING'
			AND [AddressStatusCode] = 'CURRENT'
			AND [ClientID] = @ClientID

		SELECT @ClientID	AS [ClientID]
			,@PhoneNumber	AS [PhoneNumber]
			,@FirstName		AS [ClaimantFirstName]
			,@MiddleInit	AS [ClaimantMiddleName]
			,@LastName		AS [ClaimantLastName]
			,@NameSuffix	AS [ClaimantNameSuffix]
			,@AlienNumber	AS [AuthorizedAlienNumber]
			,@AddressLine1	AS [AddressLine1]
			,@AddressLine2	AS [AddressLine2]
			,@City			AS [City]
			,@State			AS [State]
			,@ZIP			AS [ZIP]
			,@Gender		AS [Gender]
			,@Handicap		AS [Handicap]
			,@Veteran		AS [Veteran]
			,@Race			AS [Race]
			,@Ethnicity		AS [Ethnicity]
			,@Withholdings	AS [Withholdings]
			,@Citizen		AS [Citizen]
			,@Education		AS [Education]
			,@DOB			AS [DOB]
	END


GO
/****** Object:  StoredProcedure [dbo].[sp_ValidateEANandFEIN]    Script Date: 8/15/2023 12:25:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 --=============================================
 --Author:		Meg Stringer
 --Create date: July 3, 2023
 --Description:	Validate Employer EAN and FEIN from DataMart.
 --=============================================
CREATE PROCEDURE [dbo].[sp_ValidateEANandFEIN]
	 --Add the parameters for the stored procedure here
	@EAN VARCHAR(10)
	,@FEIN VARCHAR(9)
AS
	BEGIN
		 --SET NOCOUNT ON added to prevent extra result sets from
		 --interfering with SELECT statements.
		SET NOCOUNT ON;

		 ----Insert statements for procedure here
		--TESTING
		--DECLARE @EAN varchar(10)	 = '1011654400'
		--DECLARE @FEIN varchar(9)	 = '631015757'
		--TESTING

		DECLARE @EmployerID int					= 0

		SELECT @EmployerID = s.[EmployerID]
		FROM [DOLDATAMART_LINK].[Datamart].[Sensitive].[EAN] AS s
			INNER JOIN [DOLDATAMART_LINK].[Datamart].[DS_Tax].[Employer] AS e
				ON s.[EmployerID] = e.[EmployerID]
		WHERE [EAN] = @EAN
			AND [FEIN] = @FEIN
			AND [CurrentLiabilityStatusCode] = 'ACTIVE'

	IF (@EmployerID > 0)
		BEGIN
			SELECT 'VALID' AS [Results]
		END
		ELSE
		BEGIN
			SELECT 'INVALID' AS [Results]
		END
	END

GO
