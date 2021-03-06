USE [IStock]
GO
/****** Object:  Table [dbo].[ArrivalPortMaster]    Script Date: 19-11-2021 16:35:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArrivalPortMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTrailLog]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTrailLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EntityName] [varchar](100) NULL,
	[PropertyName] [varchar](100) NULL,
	[PrimaryKeyValue] [varchar](100) NULL,
	[OldValue] [varchar](1000) NULL,
	[NewValue] [varchar](1000) NULL,
	[ChangedBy] [varchar](50) NULL,
	[ChangedDate] [datetime] NULL,
	[ActionType] [varchar](10) NULL,
 CONSTRAINT [PK__AuditTra__3214EC0773CB7299] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Authority]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoutePath] [varchar](100) NULL,
	[MenuName] [varchar](100) NULL,
	[RoleWise] [bit] NULL,
	[Roles] [varchar](100) NULL,
	[UserWise] [bit] NULL,
	[Users] [varchar](200) NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CityMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CityMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateId] [int] NOT NULL,
	[CityName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentStatusMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentStatusMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocStatus] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomingOrderContainerDetails]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomingOrderContainerDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IncomingOrderId] [int] NULL,
	[ContainerNo] [varchar](20) NULL,
	[TotalQty] [int] NULL,
	[ItemId] [int] NULL,
	[BrandId] [int] NULL,
	[PackingId] [int] NULL,
	[CountId] [int] NULL,
	[Qty] [int] NULL,
	[Rate] [decimal](18, 2) NULL,
	[SelfAllocated] [varchar](20) NULL,
	[AllocatedPartyId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Incoming__3214EC0753A93B41] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IncomingOrderDetails]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IncomingOrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BLNo] [varchar](50) NOT NULL,
	[ArrivalPortId] [int] NULL,
	[LoadingWeekNo] [int] NULL,
	[EstDateOfLoading] [datetime] NULL,
	[EstDateOfArrival] [datetime] NULL,
	[ActualArrivalDate] [datetime] NULL,
	[CountryId] [int] NULL,
	[ShipperId] [int] NULL,
	[InvoiceNo] [varchar](50) NULL,
	[NoOfContainer] [int] NULL,
	[PackingListQty] [int] NULL,
	[TotalGrossWeight] [decimal](18, 2) NULL,
	[NetWeight] [decimal](18, 2) NULL,
	[DocumentStatusId] [int] NULL,
	[VesselNo] [varchar](50) NULL,
	[ShippingLineId] [int] NULL,
	[ShippingTerms] [varchar](500) NULL,
	[PaymentTermsAdv] [varchar](100) NULL,
	[PaymentTermsOnDoc] [varchar](100) NULL,
	[PaymentTermsAfterArr] [varchar](100) NULL,
	[Freight] [decimal](18, 2) NULL,
	[Currency] [varchar](50) NULL,
	[ExchangeRate] [decimal](18, 2) NULL,
	[PhytoNo] [varchar](100) NULL,
	[CertificateOfOrigin] [varchar](100) NULL,
	[NonGmoCertificate] [varchar](100) NULL,
	[PerformaInvoiceNo] [varchar](100) NULL,
	[ConversionRate] [decimal](18, 2) NULL,
	[CustomDuty] [decimal](18, 2) NULL,
	[CleaningExpense] [decimal](18, 2) NULL,
	[OtherExpenses] [decimal](18, 2) NULL,
	[InwardingDone] [bit] NULL,
	[InwardingBy] [varchar](20) NULL,
	[InwardingDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Incoming__3214EC07A12E9A1E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemBrandMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemBrandMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemBrandName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCountMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCountMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemCount] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroupMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroupMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemGroupName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemGroupId] [int] NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__ItemMast__3214EC07D4A04E94] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPackingMaster]    Script Date: 19-11-2021 16:35:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPackingMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemPacking] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartyGroupMaster]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyGroupMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartyMaster]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartyMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartyName] [varchar](100) NOT NULL,
	[PartyGroupId] [int] NOT NULL,
	[PartyAddress] [varchar](500) NULL,
	[ContactNo] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[StoreRentCalculationType] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[StateId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[Pincode] [varchar](10) NULL,
	[PANNo] [varchar](20) NULL,
	[CreditLimit] [decimal](18, 2) NOT NULL,
	[PaymentTerms] [int] NOT NULL,
 CONSTRAINT [PK__PartyMas__3214EC07F918E98F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PerformaInvoiceDetails]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PerformaInvoiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PerformaInvoiceNo] [varchar](50) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[VendorId] [int] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[InvoiceStatus] [varchar](20) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingLineMaster]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingLineMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ShippingLine] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StateMaster]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StateMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 19-11-2021 16:35:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserCode] [varchar](50) NULL,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[EmailId] [varchar](100) NULL,
	[ContactNo] [varchar](20) NULL,
	[DeviceId] [varchar](1000) NULL,
	[FirebaseId] [varchar](1000) NULL,
	[RoleId] [varchar](1000) NULL,
	[RoleName] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ArrivalPortMaster] ON 
GO
INSERT [dbo].[ArrivalPortMaster] ([Id], [City], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Mumbai', 1, N'System', CAST(N'2021-09-28T22:47:06.643' AS DateTime), N'sysAdmin', CAST(N'2021-10-03T22:09:49.870' AS DateTime))
GO
INSERT [dbo].[ArrivalPortMaster] ([Id], [City], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Delhi', 1, N'sysAdmin', CAST(N'2021-10-02T16:27:34.030' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ArrivalPortMaster] ([Id], [City], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Kolkata', 1, N'sysAdmin', CAST(N'2021-10-02T16:29:37.227' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ArrivalPortMaster] ([Id], [City], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Ahmedabad', 1, N'sysAdmin', CAST(N'2021-10-02T16:30:15.993' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ArrivalPortMaster] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2ebe801a-4c6e-4f19-b7ed-febfa133b982', N'SysAdmin', N'SYSADMIN', N'ec007562-ddb1-4c3d-8c99-ae4c0e7d902e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'80dd4033-0a9a-499a-8df0-af0354ff9f91', N'2ebe801a-4c6e-4f19-b7ed-febfa133b982')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'80dd4033-0a9a-499a-8df0-af0354ff9f91', N'sysAdmin', N'SYSADMIN', N'joshi.25387@gmail.com', N'JOSHI.25387@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHU4Mx/I6yHpdVzgO9m2n3+F3JW/W3gp1d/03vQsKraL/fI9KYOwKjK+lPweA2rRqQ==', N'QWZFLKQEDXZUT2O7I365V6IZNWWMNZQK', N'78f16e3b-d9be-4e77-b070-6e5a6f12c2fd', N'9873545852', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[AuditTrailLog] ON 
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (1, N'ArrivalPortMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-02T17:01:58.173' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (2, N'ArrivalPortMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-02T17:01:58.173' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (3, N'ArrivalPortMaster', N'UpdatedDate', N'1', N'', N'02-10-2021 17:01:58', NULL, CAST(N'2021-10-02T17:01:58.173' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (4, N'ArrivalPortMaster', N'UpdatedDate', N'1', N'02-10-2021 17:01:58', N'02-10-2021 17:02:55', NULL, CAST(N'2021-10-02T17:02:55.473' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (5, N'ArrivalPortMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-02T17:02:55.470' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (6, N'CountryMaster', N'IsActive', N'2', N'True', N'False', NULL, CAST(N'2021-10-03T14:13:38.537' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (7, N'CountryMaster', N'UpdatedBy', N'2', N'', N'sysAdmin', NULL, CAST(N'2021-10-03T14:13:38.537' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (8, N'CountryMaster', N'UpdatedDate', N'2', N'', N'03-10-2021 14:13:38', NULL, CAST(N'2021-10-03T14:13:38.537' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (9, N'ArrivalPortMaster', N'UpdatedDate', N'1', N'02-10-2021 17:02:55', N'03-10-2021 22:09:49', NULL, CAST(N'2021-10-03T22:09:49.887' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (10, N'ArrivalPortMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-03T22:09:49.887' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (11, N'ItemMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-03T22:12:03.953' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (12, N'ItemMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-03T22:12:03.953' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (13, N'ItemMaster', N'UpdatedDate', N'1', N'', N'03-10-2021 22:12:03', NULL, CAST(N'2021-10-03T22:12:03.953' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (14, N'ItemBrandMaster', N'UpdatedDate', N'1', N'', N'03-10-2021 22:12:04', NULL, CAST(N'2021-10-03T22:12:04.067' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (15, N'ItemBrandMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-03T22:12:04.067' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (16, N'ItemBrandMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-03T22:12:04.067' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (17, N'ItemPackingMaster', N'UpdatedDate', N'1', N'', N'03-10-2021 22:12:04', NULL, CAST(N'2021-10-03T22:12:04.147' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (18, N'ItemPackingMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-03T22:12:04.147' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (19, N'ItemPackingMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-03T22:12:04.147' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (20, N'ItemMaster', N'ItemName', N'1', N'Apple', N'Apple One', NULL, CAST(N'2021-10-15T16:07:31.447' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (21, N'ItemMaster', N'UpdatedDate', N'1', N'03-10-2021 22:12:03', N'15-10-2021 16:07:31', NULL, CAST(N'2021-10-15T16:07:31.447' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (22, N'ItemBrandMaster', N'UpdatedDate', N'1', N'03-10-2021 22:12:04', N'15-10-2021 16:07:31', NULL, CAST(N'2021-10-15T16:07:31.580' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (23, N'ItemBrandMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-15T16:07:31.580' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (24, N'ItemPackingMaster', N'UpdatedDate', N'1', N'03-10-2021 22:12:04', N'15-10-2021 16:07:31', NULL, CAST(N'2021-10-15T16:07:31.613' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (25, N'ItemPackingMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-15T16:07:31.613' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (26, N'ItemMaster', N'UpdatedDate', N'1', N'15-10-2021 16:07:31', N'15-10-2021 20:12:09', NULL, CAST(N'2021-10-15T20:12:09.153' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (27, N'ItemBrandMaster', N'IsActive', N'2', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:09.747' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (28, N'ItemBrandMaster', N'UpdatedBy', N'2', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:09.747' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (29, N'ItemBrandMaster', N'UpdatedDate', N'2', N'', N'15-10-2021 20:12:09', NULL, CAST(N'2021-10-15T20:12:09.747' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (30, N'ItemPackingMaster', N'UpdatedDate', N'2', N'', N'15-10-2021 20:12:09', NULL, CAST(N'2021-10-15T20:12:09.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (31, N'ItemPackingMaster', N'UpdatedBy', N'2', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:09.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (32, N'ItemPackingMaster', N'IsActive', N'2', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:09.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (33, N'ItemMaster', N'UpdatedDate', N'1', N'15-10-2021 20:12:09', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.730' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (34, N'ItemBrandMaster', N'IsActive', N'3', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.780' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (35, N'ItemBrandMaster', N'UpdatedBy', N'3', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.780' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (36, N'ItemBrandMaster', N'UpdatedDate', N'3', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.780' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (37, N'ItemBrandMaster', N'UpdatedDate', N'4', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.787' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (38, N'ItemBrandMaster', N'UpdatedBy', N'4', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.787' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (39, N'ItemBrandMaster', N'IsActive', N'4', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.787' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (40, N'ItemPackingMaster', N'UpdatedDate', N'3', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (41, N'ItemPackingMaster', N'UpdatedBy', N'3', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (42, N'ItemPackingMaster', N'IsActive', N'3', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.793' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (43, N'ItemPackingMaster', N'UpdatedDate', N'4', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.803' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (44, N'ItemPackingMaster', N'UpdatedBy', N'4', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.803' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (45, N'ItemPackingMaster', N'IsActive', N'4', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.803' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (46, N'ItemCountMaster', N'UpdatedDate', N'1', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.810' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (47, N'ItemCountMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.810' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (48, N'ItemCountMaster', N'IsActive', N'1', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.810' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (49, N'ItemCountMaster', N'UpdatedDate', N'2', N'', N'15-10-2021 20:12:23', NULL, CAST(N'2021-10-15T20:12:23.823' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (50, N'ItemCountMaster', N'UpdatedBy', N'2', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:12:23.823' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (51, N'ItemCountMaster', N'IsActive', N'2', N'True', N'False', NULL, CAST(N'2021-10-15T20:12:23.823' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (52, N'ItemMaster', N'UpdatedBy', N'2', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:15:16.003' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (53, N'ItemMaster', N'UpdatedDate', N'2', N'', N'15-10-2021 20:15:16', NULL, CAST(N'2021-10-15T20:15:16.003' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (54, N'ItemBrandMaster', N'UpdatedBy', N'7', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:15:16.123' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (55, N'ItemBrandMaster', N'IsActive', N'7', N'True', N'False', NULL, CAST(N'2021-10-15T20:15:16.123' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (56, N'ItemBrandMaster', N'UpdatedDate', N'7', N'', N'15-10-2021 20:15:16', NULL, CAST(N'2021-10-15T20:15:16.123' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (57, N'ItemPackingMaster', N'UpdatedDate', N'7', N'', N'15-10-2021 20:15:16', NULL, CAST(N'2021-10-15T20:15:16.160' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (58, N'ItemPackingMaster', N'UpdatedBy', N'7', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:15:16.160' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (59, N'ItemPackingMaster', N'IsActive', N'7', N'True', N'False', NULL, CAST(N'2021-10-15T20:15:16.160' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (60, N'ItemCountMaster', N'UpdatedDate', N'5', N'', N'15-10-2021 20:15:16', NULL, CAST(N'2021-10-15T20:15:16.177' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (61, N'ItemCountMaster', N'UpdatedBy', N'5', N'', N'sysAdmin', NULL, CAST(N'2021-10-15T20:15:16.177' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (62, N'ItemCountMaster', N'IsActive', N'5', N'True', N'False', NULL, CAST(N'2021-10-15T20:15:16.177' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (63, N'PerformaInvoiceDetails', N'Amount', N'1', N'100000.00', N'100000', NULL, CAST(N'2021-10-17T23:32:29.733' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (64, N'PerformaInvoiceDetails', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-17T23:32:29.740' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (65, N'PerformaInvoiceDetails', N'UpdatedDate', N'1', N'', N'17-10-2021 23:32:29', NULL, CAST(N'2021-10-17T23:32:29.740' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (66, N'PerformaInvoiceDetails', N'VendorId', N'1', N'1', N'4', NULL, CAST(N'2021-10-17T23:32:29.740' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (67, N'PerformaInvoiceDetails', N'Amount', N'1', N'100000.00', N'100000', NULL, CAST(N'2021-10-17T23:33:29.527' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (68, N'PerformaInvoiceDetails', N'UpdatedDate', N'1', N'17-10-2021 23:32:29', N'17-10-2021 23:33:29', NULL, CAST(N'2021-10-17T23:33:29.527' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (69, N'PartyMaster', N'CreditLimit', N'1', N'0.00', N'0', NULL, CAST(N'2021-10-17T23:39:40.703' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (70, N'PartyMaster', N'Panno', N'1', N'', N'ATSPL8897R', NULL, CAST(N'2021-10-17T23:39:40.703' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (71, N'PartyMaster', N'UpdatedBy', N'1', N'', N'sysAdmin', NULL, CAST(N'2021-10-17T23:39:40.703' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (72, N'PartyMaster', N'UpdatedDate', N'1', N'', N'17-10-2021 23:39:40', NULL, CAST(N'2021-10-17T23:39:40.703' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (73, N'PartyMaster', N'CreditLimit', N'1', N'0.00', N'0', NULL, CAST(N'2021-10-17T23:40:04.633' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (74, N'PartyMaster', N'UpdatedDate', N'1', N'17-10-2021 23:39:40', N'17-10-2021 23:40:04', NULL, CAST(N'2021-10-17T23:40:04.633' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (75, N'PartyMaster', N'CreditLimit', N'3', N'0.00', N'0', NULL, CAST(N'2021-10-17T23:40:21.127' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (76, N'PartyMaster', N'Panno', N'3', N'', N'ATSPL8897Y', NULL, CAST(N'2021-10-17T23:40:21.127' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (77, N'PartyMaster', N'UpdatedBy', N'3', N'', N'sysAdmin', NULL, CAST(N'2021-10-17T23:40:21.127' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (78, N'PartyMaster', N'UpdatedDate', N'3', N'', N'17-10-2021 23:40:21', NULL, CAST(N'2021-10-17T23:40:21.127' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (79, N'PartyMaster', N'CreditLimit', N'4', N'2000.00', N'2000', NULL, CAST(N'2021-10-17T23:40:30.387' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (80, N'PartyMaster', N'Panno', N'4', N'ATSPL8897R', N'ATSPL8899R', NULL, CAST(N'2021-10-17T23:40:30.387' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (81, N'PartyMaster', N'UpdatedBy', N'4', N'', N'sysAdmin', NULL, CAST(N'2021-10-17T23:40:30.387' AS DateTime), N'Update')
GO
INSERT [dbo].[AuditTrailLog] ([Id], [EntityName], [PropertyName], [PrimaryKeyValue], [OldValue], [NewValue], [ChangedBy], [ChangedDate], [ActionType]) VALUES (82, N'PartyMaster', N'UpdatedDate', N'4', N'', N'17-10-2021 23:40:30', NULL, CAST(N'2021-10-17T23:40:30.387' AS DateTime), N'Update')
GO
SET IDENTITY_INSERT [dbo].[AuditTrailLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Authority] ON 
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (1, N'/stock/arrival-port', N'Arrival Port', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-02T09:15:42.447' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (2, N'/stock/country', N'Country', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-03T14:10:05.490' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (3, N'/stock/party-group', N'Party Group', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-03T14:24:07.740' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (4, N'/stock/party', N'Party', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-03T15:00:53.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (5, N'/stock/item', N'Item', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-03T15:42:20.600' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (6, N'/stock/incoming-order', N'Incoming Order', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-05T20:05:29.480' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (7, N'/stock/item-group', N'Item Group', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-15T16:38:14.270' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[Authority] ([Id], [RoutePath], [MenuName], [RoleWise], [Roles], [UserWise], [Users], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [IsActive]) VALUES (8, N'/stock/performa-invoice', N'Performa Invoice', 1, N'SysAdmin', 0, N'', N'System', CAST(N'2021-10-17T21:09:29.700' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Authority] OFF
GO
SET IDENTITY_INSERT [dbo].[CityMaster] ON 
GO
INSERT [dbo].[CityMaster] ([Id], [StateId], [CityName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'New Delhi', 1, N'System', CAST(N'2021-10-14T01:10:13.223' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CityMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[CountryMaster] ON 
GO
INSERT [dbo].[CountryMaster] ([Id], [Country], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'USA', 1, N'System', CAST(N'2021-09-28T22:48:27.123' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[CountryMaster] ([Id], [Country], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'India', 1, N'sysAdmin', CAST(N'2021-10-03T14:13:21.817' AS DateTime), N'sysAdmin', CAST(N'2021-10-03T14:13:38.533' AS DateTime))
GO
INSERT [dbo].[CountryMaster] ([Id], [Country], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Italy', 1, N'sysAdmin', CAST(N'2021-10-12T16:48:56.837' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CountryMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[DocumentStatusMaster] ON 
GO
INSERT [dbo].[DocumentStatusMaster] ([Id], [DocStatus], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Pending', 1, N'System', CAST(N'2021-09-28T22:50:13.197' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[DocumentStatusMaster] ([Id], [DocStatus], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Received', 1, N'System', CAST(N'2021-09-28T22:50:13.197' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[DocumentStatusMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomingOrderContainerDetails] ON 
GO
INSERT [dbo].[IncomingOrderContainerDetails] ([Id], [IncomingOrderId], [ContainerNo], [TotalQty], [ItemId], [BrandId], [PackingId], [CountId], [Qty], [Rate], [SelfAllocated], [AllocatedPartyId], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'11111', 10, 1, 1, 1, NULL, 10, NULL, N'Self', NULL, 1, N'sysAdmin', CAST(N'2021-10-07T23:43:16.573' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[IncomingOrderContainerDetails] ([Id], [IncomingOrderId], [ContainerNo], [TotalQty], [ItemId], [BrandId], [PackingId], [CountId], [Qty], [Rate], [SelfAllocated], [AllocatedPartyId], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 2, N'VB1111', 100, 1, 5, 5, 3, 100, NULL, NULL, NULL, 1, N'sysAdmin', CAST(N'2021-10-18T01:09:11.957' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[IncomingOrderContainerDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[IncomingOrderDetails] ON 
GO
INSERT [dbo].[IncomingOrderDetails] ([Id], [BLNo], [ArrivalPortId], [LoadingWeekNo], [EstDateOfLoading], [EstDateOfArrival], [ActualArrivalDate], [CountryId], [ShipperId], [InvoiceNo], [NoOfContainer], [PackingListQty], [TotalGrossWeight], [NetWeight], [DocumentStatusId], [VesselNo], [ShippingLineId], [ShippingTerms], [PaymentTermsAdv], [PaymentTermsOnDoc], [PaymentTermsAfterArr], [Freight], [Currency], [ExchangeRate], [PhytoNo], [CertificateOfOrigin], [NonGmoCertificate], [PerformaInvoiceNo], [ConversionRate], [CustomDuty], [CleaningExpense], [OtherExpenses], [InwardingDone], [InwardingBy], [InwardingDate], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'12345', 1, 1, CAST(N'2021-10-08T00:00:00.000' AS DateTime), CAST(N'2021-10-15T00:00:00.000' AS DateTime), NULL, 1, 1, N'I12345', 1, 10, CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 1, N'V345', 3, N'S Terms', N'P Terms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, N'sysAdmin', CAST(N'2021-10-07T23:43:16.230' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[IncomingOrderDetails] ([Id], [BLNo], [ArrivalPortId], [LoadingWeekNo], [EstDateOfLoading], [EstDateOfArrival], [ActualArrivalDate], [CountryId], [ShipperId], [InvoiceNo], [NoOfContainer], [PackingListQty], [TotalGrossWeight], [NetWeight], [DocumentStatusId], [VesselNo], [ShippingLineId], [ShippingTerms], [PaymentTermsAdv], [PaymentTermsOnDoc], [PaymentTermsAfterArr], [Freight], [Currency], [ExchangeRate], [PhytoNo], [CertificateOfOrigin], [NonGmoCertificate], [PerformaInvoiceNo], [ConversionRate], [CustomDuty], [CleaningExpense], [OtherExpenses], [InwardingDone], [InwardingBy], [InwardingDate], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'BL98989', 1, NULL, CAST(N'2021-10-18T00:00:00.000' AS DateTime), CAST(N'2021-10-18T00:00:00.000' AS DateTime), NULL, 1, 1, N'JH8787', 2, 100, CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'B8676', 3, N'CIF', N'', N'', N'', NULL, N'AED', NULL, N'', N'', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, N'sysAdmin', CAST(N'2021-10-18T01:09:11.603' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[IncomingOrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemBrandMaster] ON 
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'Delicious', 0, N'sysAdmin', CAST(N'2021-10-03T21:56:00.410' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T16:07:31.577' AS DateTime))
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, N'Delicious', 0, N'sysAdmin', CAST(N'2021-10-15T16:07:31.627' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:09.743' AS DateTime))
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 1, N'Delicious', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.813' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.780' AS DateTime))
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 1, N'Delicious', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.833' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.787' AS DateTime))
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 1, N'Delicious', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.833' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, 1, N'Delicious', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.837' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, 2, N'Del 1', 0, N'sysAdmin', CAST(N'2021-10-15T20:14:14.593' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:15:16.123' AS DateTime))
GO
INSERT [dbo].[ItemBrandMaster] ([Id], [ItemId], [ItemBrandName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, 2, N'Del 1', 1, N'sysAdmin', CAST(N'2021-10-15T20:15:16.190' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemBrandMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemCountMaster] ON 
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'10', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.850' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.810' AS DateTime))
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, N'20', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.887' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.823' AS DateTime))
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 1, N'10', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.853' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 1, N'20', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.863' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 2, N'20', 0, N'sysAdmin', CAST(N'2021-10-15T20:14:14.657' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:15:16.177' AS DateTime))
GO
INSERT [dbo].[ItemCountMaster] ([Id], [ItemId], [ItemCount], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, 2, N'30', 1, N'sysAdmin', CAST(N'2021-10-15T20:15:16.203' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemCountMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemGroupMaster] ON 
GO
INSERT [dbo].[ItemGroupMaster] ([Id], [ItemGroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Apple', 1, N'System', CAST(N'2021-10-15T14:45:17.580' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemGroupMaster] ([Id], [ItemGroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Mango', 1, N'sysAdmin', CAST(N'2021-10-15T17:15:44.713' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemGroupMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemMaster] ON 
GO
INSERT [dbo].[ItemMaster] ([Id], [ItemGroupId], [ItemName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'Apple One', 1, N'sysAdmin', CAST(N'2021-10-03T21:55:59.287' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.730' AS DateTime))
GO
INSERT [dbo].[ItemMaster] ([Id], [ItemGroupId], [ItemName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, N'Apple 1', 1, N'sysAdmin', CAST(N'2021-10-15T20:14:14.213' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:15:16.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ItemMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemPackingMaster] ON 
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, 1, N'10 Kg', 0, N'sysAdmin', CAST(N'2021-10-03T21:56:00.500' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T16:07:31.610' AS DateTime))
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, 1, N'10 Kg', 0, N'sysAdmin', CAST(N'2021-10-15T16:07:31.640' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:09.790' AS DateTime))
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, 1, N'10 Kg', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.837' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.793' AS DateTime))
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, 1, N'10 Kg', 0, N'sysAdmin', CAST(N'2021-10-15T20:12:09.847' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:12:23.800' AS DateTime))
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, 1, N'10 Kg', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, 1, N'10 Kg', 1, N'sysAdmin', CAST(N'2021-10-15T20:12:23.850' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, 2, N'10 Kg', 0, N'sysAdmin', CAST(N'2021-10-15T20:14:14.627' AS DateTime), N'sysAdmin', CAST(N'2021-10-15T20:15:16.160' AS DateTime))
GO
INSERT [dbo].[ItemPackingMaster] ([Id], [ItemId], [ItemPacking], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, 2, N'10 Kg', 1, N'sysAdmin', CAST(N'2021-10-15T20:15:16.197' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ItemPackingMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[PartyGroupMaster] ON 
GO
INSERT [dbo].[PartyGroupMaster] ([Id], [GroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Customer', 1, N'System', CAST(N'2021-09-28T22:51:37.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PartyGroupMaster] ([Id], [GroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'Vendor', 1, N'System', CAST(N'2021-09-28T22:51:37.020' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PartyGroupMaster] ([Id], [GroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'Store', 1, N'sysAdmin', CAST(N'2021-10-03T14:25:46.250' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PartyGroupMaster] ([Id], [GroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'Shipping Line', 1, N'sysAdmin', CAST(N'2021-10-03T15:12:09.767' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[PartyGroupMaster] ([Id], [GroupName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Port Transporter', 1, N'sysAdmin', CAST(N'2021-10-12T16:57:08.613' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[PartyGroupMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[PartyMaster] ON 
GO
INSERT [dbo].[PartyMaster] ([Id], [PartyName], [PartyGroupId], [PartyAddress], [ContactNo], [Email], [StoreRentCalculationType], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StateId], [CityId], [Pincode], [PANNo], [CreditLimit], [PaymentTerms]) VALUES (1, N'Vendor 1', 2, N'Vendor 1 address', N'7878788898', N'', NULL, 1, N'sysAdmin', CAST(N'2021-10-03T15:01:50.317' AS DateTime), N'sysAdmin', CAST(N'2021-10-17T23:40:04.633' AS DateTime), 1, 1, N'', N'ATSPL8897R', CAST(0.00 AS Decimal(18, 2)), 30)
GO
INSERT [dbo].[PartyMaster] ([Id], [PartyName], [PartyGroupId], [PartyAddress], [ContactNo], [Email], [StoreRentCalculationType], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StateId], [CityId], [Pincode], [PANNo], [CreditLimit], [PaymentTerms]) VALUES (2, N'Customer1', 1, N'Customer Address', N'6767676767', N'', NULL, 1, N'sysAdmin', CAST(N'2021-10-07T23:12:35.530' AS DateTime), NULL, NULL, 1, 1, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), 30)
GO
INSERT [dbo].[PartyMaster] ([Id], [PartyName], [PartyGroupId], [PartyAddress], [ContactNo], [Email], [StoreRentCalculationType], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StateId], [CityId], [Pincode], [PANNo], [CreditLimit], [PaymentTerms]) VALUES (3, N'ShippingLine1', 4, N'ShippingLineAddress', N'7686868768', NULL, NULL, 1, N'sysAdmin', CAST(N'2021-10-07T23:12:57.930' AS DateTime), N'sysAdmin', CAST(N'2021-10-17T23:40:21.123' AS DateTime), 1, 1, N'', N'ATSPL8897Y', CAST(0.00 AS Decimal(18, 2)), 30)
GO
INSERT [dbo].[PartyMaster] ([Id], [PartyName], [PartyGroupId], [PartyAddress], [ContactNo], [Email], [StoreRentCalculationType], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [StateId], [CityId], [Pincode], [PANNo], [CreditLimit], [PaymentTerms]) VALUES (4, N'Vendor2', 2, N'Party Address', N'7878788898', N'test@gmail.com', NULL, 1, N'sysAdmin', CAST(N'2021-10-15T16:05:14.053' AS DateTime), N'sysAdmin', CAST(N'2021-10-17T23:40:30.387' AS DateTime), 1, 1, N'', N'ATSPL8899R', CAST(2000.00 AS Decimal(18, 2)), 10)
GO
SET IDENTITY_INSERT [dbo].[PartyMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[PerformaInvoiceDetails] ON 
GO
INSERT [dbo].[PerformaInvoiceDetails] ([Id], [PerformaInvoiceNo], [InvoiceDate], [VendorId], [Amount], [InvoiceStatus], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'P12345', CAST(N'2021-10-17T00:00:00.000' AS DateTime), 4, CAST(100000.00 AS Decimal(18, 2)), N'Pending', 1, N'sysAdmin', CAST(N'2021-10-17T23:19:02.340' AS DateTime), N'sysAdmin', CAST(N'2021-10-17T23:33:29.523' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[PerformaInvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[StateMaster] ON 
GO
INSERT [dbo].[StateMaster] ([Id], [StateName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'Delhi', 1, N'System', CAST(N'2021-10-14T01:09:43.543' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[StateMaster] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInfo] ON 
GO
INSERT [dbo].[UserInfo] ([Id], [UserCode], [FirstName], [LastName], [EmailId], [ContactNo], [DeviceId], [FirebaseId], [RoleId], [RoleName], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'SysAdmin', N'Sandeep', N'Joshi', N'joshi.25387@gmail.com', N'9873545852', NULL, NULL, N'2ebe801a-4c6e-4f19-b7ed-febfa133b982', N'SysAdmin', 1, N'System', CAST(N'2021-10-02T15:07:26.700' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
GO
ALTER TABLE [dbo].[ArrivalPortMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ArrivalPortMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Authority] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CityMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CountryMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[CountryMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DocumentStatusMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DocumentStatusMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemBrandMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ItemBrandMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemCountMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ItemCountMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemGroupMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ItemMaster] ADD  CONSTRAINT [DF__ItemMaste__IsAct__160F4887]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ItemMaster] ADD  CONSTRAINT [DF__ItemMaste__Creat__17036CC0]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemPackingMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ItemPackingMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PartyGroupMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PartyGroupMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PartyMaster] ADD  CONSTRAINT [DF__PartyMast__IsAct__59FA5E80]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[PartyMaster] ADD  CONSTRAINT [DF__PartyMast__Creat__5AEE82B9]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PerformaInvoiceDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ShippingLineMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ShippingLineMaster] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StateMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CityMaster]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Alloc__7FEAFD3E] FOREIGN KEY([AllocatedPartyId])
REFERENCES [dbo].[PartyMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK__IncomingO__Alloc__7FEAFD3E]
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Brand__7E02B4CC] FOREIGN KEY([BrandId])
REFERENCES [dbo].[ItemBrandMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK__IncomingO__Brand__7E02B4CC]
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Incom__7C1A6C5A] FOREIGN KEY([IncomingOrderId])
REFERENCES [dbo].[IncomingOrderDetails] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK__IncomingO__Incom__7C1A6C5A]
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__ItemI__7D0E9093] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK__IncomingO__ItemI__7D0E9093]
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Packi__7EF6D905] FOREIGN KEY([PackingId])
REFERENCES [dbo].[ItemPackingMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK__IncomingO__Packi__7EF6D905]
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails]  WITH CHECK ADD  CONSTRAINT [FK_IncomingOrderContainerDetails_ItemCountMaster] FOREIGN KEY([CountId])
REFERENCES [dbo].[ItemCountMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderContainerDetails] CHECK CONSTRAINT [FK_IncomingOrderContainerDetails_ItemCountMaster]
GO
ALTER TABLE [dbo].[IncomingOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Arriv__756D6ECB] FOREIGN KEY([ArrivalPortId])
REFERENCES [dbo].[ArrivalPortMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderDetails] CHECK CONSTRAINT [FK__IncomingO__Arriv__756D6ECB]
GO
ALTER TABLE [dbo].[IncomingOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Count__76619304] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderDetails] CHECK CONSTRAINT [FK__IncomingO__Count__76619304]
GO
ALTER TABLE [dbo].[IncomingOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Docum__7849DB76] FOREIGN KEY([DocumentStatusId])
REFERENCES [dbo].[DocumentStatusMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderDetails] CHECK CONSTRAINT [FK__IncomingO__Docum__7849DB76]
GO
ALTER TABLE [dbo].[IncomingOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Shipp__7755B73D] FOREIGN KEY([ShipperId])
REFERENCES [dbo].[PartyMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderDetails] CHECK CONSTRAINT [FK__IncomingO__Shipp__7755B73D]
GO
ALTER TABLE [dbo].[IncomingOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__IncomingO__Shipp__793DFFAF] FOREIGN KEY([ShippingLineId])
REFERENCES [dbo].[PartyMaster] ([Id])
GO
ALTER TABLE [dbo].[IncomingOrderDetails] CHECK CONSTRAINT [FK__IncomingO__Shipp__793DFFAF]
GO
ALTER TABLE [dbo].[ItemBrandMaster]  WITH CHECK ADD  CONSTRAINT [FK__ItemBrand__ItemI__236943A5] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemMaster] ([Id])
GO
ALTER TABLE [dbo].[ItemBrandMaster] CHECK CONSTRAINT [FK__ItemBrand__ItemI__236943A5]
GO
ALTER TABLE [dbo].[ItemCountMaster]  WITH CHECK ADD FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemMaster] ([Id])
GO
ALTER TABLE [dbo].[ItemMaster]  WITH CHECK ADD  CONSTRAINT [FK_ItemMaster_ItemGroupMaster] FOREIGN KEY([ItemGroupId])
REFERENCES [dbo].[ItemGroupMaster] ([Id])
GO
ALTER TABLE [dbo].[ItemMaster] CHECK CONSTRAINT [FK_ItemMaster_ItemGroupMaster]
GO
ALTER TABLE [dbo].[ItemPackingMaster]  WITH CHECK ADD  CONSTRAINT [FK__ItemPacki__ItemI__1EA48E88] FOREIGN KEY([ItemId])
REFERENCES [dbo].[ItemMaster] ([Id])
GO
ALTER TABLE [dbo].[ItemPackingMaster] CHECK CONSTRAINT [FK__ItemPacki__ItemI__1EA48E88]
GO
ALTER TABLE [dbo].[PartyMaster]  WITH CHECK ADD  CONSTRAINT [FK__PartyMast__CityI__11158940] FOREIGN KEY([CityId])
REFERENCES [dbo].[CityMaster] ([Id])
GO
ALTER TABLE [dbo].[PartyMaster] CHECK CONSTRAINT [FK__PartyMast__CityI__11158940]
GO
ALTER TABLE [dbo].[PartyMaster]  WITH CHECK ADD  CONSTRAINT [FK__PartyMast__Party__59063A47] FOREIGN KEY([PartyGroupId])
REFERENCES [dbo].[PartyGroupMaster] ([Id])
GO
ALTER TABLE [dbo].[PartyMaster] CHECK CONSTRAINT [FK__PartyMast__Party__59063A47]
GO
ALTER TABLE [dbo].[PartyMaster]  WITH CHECK ADD  CONSTRAINT [FK__PartyMast__State__10216507] FOREIGN KEY([StateId])
REFERENCES [dbo].[StateMaster] ([Id])
GO
ALTER TABLE [dbo].[PartyMaster] CHECK CONSTRAINT [FK__PartyMast__State__10216507]
GO
ALTER TABLE [dbo].[PerformaInvoiceDetails]  WITH CHECK ADD FOREIGN KEY([VendorId])
REFERENCES [dbo].[PartyMaster] ([Id])
GO
