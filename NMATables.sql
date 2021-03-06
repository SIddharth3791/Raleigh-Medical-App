USE [NMA]
GO
/****** Object:  Table [dbo].[DoctorMaster]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoctorMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Type] [nvarchar](15) NULL,
	[Speciality] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[Salary] [int] NULL,
	[Employeementnumber] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Doctorschedule]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doctorschedule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](50) NULL,
	[Day] [varchar](20) NULL,
	[Date] [varchar](30) NULL,
	[Timefrom] [varchar](10) NULL,
	[Timeto] [varchar](10) NULL,
	[Availability] [bit] NULL,
	[Speciality] [varchar](max) NULL,
	[Active] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jobtype]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jobtype](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Jobtype] [nvarchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NurseMaster]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NurseMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Employeementnumber] [nvarchar](20) NULL,
	[gender] [nvarchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[Speciality] [nvarchar](max) NULL,
	[Grade] [nvarchar](50) NULL,
	[year] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[Salary] [int] NULL,
	[Jobtype] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Patientdetails]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patientdetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[patientnumber] [nvarchar](30) NULL,
	[ssn] [nvarchar](30) NULL,
	[patientname] [nvarchar](50) NULL,
	[gender] [nvarchar](10) NULL,
	[dob] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[telephone1] [nvarchar](20) NULL,
	[telephone2] [nvarchar](20) NULL,
	[bloodtype] [nvarchar](15) NULL,
	[hdl] [nvarchar](10) NULL,
	[ldl] [nvarchar](10) NULL,
	[triglycerides] [nvarchar](10) NULL,
	[bloodsuger] [nvarchar](10) NULL,
	[allergies] [nvarchar](max) NULL,
	[Illnessdesc] [nvarchar](max) NULL,
	[previousillnessdiagnoses] [nvarchar](max) NULL,
	[doctor] [nvarchar](50) NULL,
	[appointmentdate] [nvarchar](20) NULL,
	[appointmenttime] [nvarchar](10) NULL,
	[notes] [nvarchar](max) NULL,
	[RoombeddetailId] [int] NULL,
	[Assigneddate] [nvarchar](50) NULL,
	[Assignedtime] [nvarchar](50) NULL,
	[Removeddate] [nvarchar](50) NULL,
	[Removedtime] [nvarchar](50) NULL,
	[NurseId] [int] NULL,
	[Surgerytime] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Room_Surgery_Doctor_Relation]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room_Surgery_Doctor_Relation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SurgeryId] [int] NULL,
	[RoomId] [int] NULL,
	[DoctorId] [int] NULL,
	[PatientId] [int] NULL,
	[Ondate] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoomBedDetails]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomBedDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nursingunit] [nvarchar](10) NULL,
	[Wing] [nvarchar](5) NULL,
	[Bedtype] [nvarchar](5) NULL,
	[Bednumber] [nvarchar](30) NULL,
	[ForDate] [nvarchar](30) NULL,
	[Availability] [bit] NULL,
	[Description] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supportstaff]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supportstaff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Speciality] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[Salary] [int] NULL,
	[Employeementnumber] [nvarchar](20) NULL,
	[Gender] [nvarchar](10) NULL,
	[Jobtype] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SurgeryMaster]    Script Date: 5/4/2015 5:56:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurgeryMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Anatomicallocation] [nvarchar](200) NULL,
	[Specialneeds] [nvarchar](max) NULL,
	[Active] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
