/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 13.0 		*/
/*  Created On : 02-Feb-2017 12:46:04 PM 				*/
/*  DBMS       : SQL Server 2012 						*/
/* ---------------------------------------------------- */

/* Drop Foreign Key Constraints */
USE [MirthSource]

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_Claim_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimBASE] DROP CONSTRAINT [FK_Claim_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ClaimAdjustment_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimAdjustmentBASE] DROP CONSTRAINT [FK_X12835ClaimAdjustment_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ClaimAmount_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimAmountBASE] DROP CONSTRAINT [FK_X12835ClaimAmount_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ClaimDate_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimDateBASE] DROP CONSTRAINT [FK_X12835ClaimDate_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ClaimPerson_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimPersonBASE] DROP CONSTRAINT [FK_X12835ClaimPerson_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_BPR_X12Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[FinancialBASE] DROP CONSTRAINT [FK_BPR_X12Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835Payee_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[PayeeBASE] DROP CONSTRAINT [FK_X12835Payee_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835PayeeReference_X12835Payee]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[PayeeReferenceBASE] DROP CONSTRAINT [FK_X12835PayeeReference_X12835Payee]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835Payer_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[PayerBASE] DROP CONSTRAINT [FK_X12835Payer_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835PayerContact_X12835Payer]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[PayerContactBASE] DROP CONSTRAINT [FK_X12835PayerContact_X12835Payer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ProviderAdjustment_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ProviderAdjustmentBASE] DROP CONSTRAINT [FK_X12835ProviderAdjustment_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835Service_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceBASE] DROP CONSTRAINT [FK_X12835Service_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ServiceAdjustment_X12835Service]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceAdjustmentBASE] DROP CONSTRAINT [FK_X12835ServiceAdjustment_X12835Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ServiceAmount_X12835Service]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceAmountBASE] DROP CONSTRAINT [FK_X12835ServiceAmount_X12835Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ServiceDate_X12835Service]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceDateBASE] DROP CONSTRAINT [FK_X12835ServiceDate_X12835Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835TransactionDate_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[TransactionDateBASE] DROP CONSTRAINT [FK_X12835TransactionDate_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ServiceReference_X12835Service]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceReferenceBASE] DROP CONSTRAINT [FK_X12835ServiceReference_X12835Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ServiceRemark_X12835Service]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ServiceRemarkBASE] DROP CONSTRAINT [FK_X12835ServiceRemark_X12835Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835TraceNumber_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[TraceNumberBASE] DROP CONSTRAINT [FK_X12835TraceNumber_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835TransactionReference_X12835Transaction]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[TransactionReferenceBASE] DROP CONSTRAINT [FK_X12835TransactionReference_X12835Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835ClaimReference_X12835Claim]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[ClaimReferenceBASE] DROP CONSTRAINT [FK_X12835ClaimReference_X12835Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835PayerReference_X12835Payer]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[PayerReferenceBASE] DROP CONSTRAINT [FK_X12835PayerReference_X12835Payer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835FinancialReference_X12835Financial]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[FinancialReferenceBASE] DROP CONSTRAINT [FK_X12835FinancialReference_X12835Financial]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12835TraceNumberReference_X12835TraceNumber]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12835].[TraceNumberReferenceBASE] DROP CONSTRAINT [FK_X12835TraceNumberReference_X12835TraceNumber]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FK_X12FunctionalGroup_X12Interchange]') AND OBJECTPROPERTY(id, N'IsForeignKey') = 1) 
ALTER TABLE [X12].[FunctionalGroupBASE] DROP CONSTRAINT [FK_X12FunctionalGroup_X12Interchange]
GO

/* Drop Tables */

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimAdjustmentBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimAdjustmentBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimAmountBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimAmountBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimDateBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimDateBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimPersonBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimPersonBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FinancialBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[FinancialBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[PayeeBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[PayeeBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[PayeeReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[PayeeReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[PayerBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[PayerBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[PayerContactBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[PayerContactBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ProviderAdjustmentBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ProviderAdjustmentBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceAdjustmentBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceAdjustmentBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceAmountBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceAmountBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceDateBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceDateBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[TransactionDateBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[TransactionDateBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ServiceRemarkBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ServiceRemarkBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[TraceNumberBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[TraceNumberBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[TransactionBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[TransactionBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[TraceNumberReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[TraceNumberReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[ClaimReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[ClaimReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[PayerReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[PayerReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[FinancialReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[FinancialReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12835].[TransactionReferenceBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12835].[TransactionReferenceBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12].[FunctionalGroupBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12].[FunctionalGroupBASE]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[X12].[InterchangeBASE]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1) 
DROP TABLE [X12].[InterchangeBASE]
GO

/* Create Tables */
CREATE TABLE [X12835].[ClaimBASE]
(
	[ClaimID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[LX01] varchar(255) NOT NULL,
	[CLP01] varchar(255) NULL,
	[CLP02] varchar(255) NULL,
	[CLP03] varchar(255) NULL,
	[CLP04] varchar(255) NULL,
	[CLP05] varchar(255) NULL,
	[CLP06] varchar(255) NULL,
	[CLP07] varchar(255) NULL,
	[CLP08] varchar(255) NULL,
	[CLP09] varchar(255) NULL,
	[CLP10] varchar(255) NULL,
	[CLP11] varchar(255) NULL,
	[CLP12] varchar(255) NULL,
	[CLP13] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ClaimAdjustmentBASE]
(
	[ClaimAdjustmentID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[CAS01] varchar(255) NOT NULL,
	[CAS02] varchar(255) NULL,
	[CAS03] varchar(255) NULL,
	[CAS04] varchar(255) NULL,
	[CAS05] varchar(255) NULL,
	[CAS06] varchar(255) NULL,
	[CAS07] varchar(255) NULL,
	[CAS08] varchar(255) NULL,
	[CAS09] varchar(255) NULL,
	[CAS10] varchar(255) NULL,
	[CAS11] varchar(255) NULL,
	[CAS12] varchar(255) NULL,
	[CAS13] varchar(255) NULL,
	[CAS14] varchar(255) NULL,
	[CAS15] varchar(255) NULL,
	[CAS16] varchar(255) NULL,
	[CAS17] varchar(255) NULL,
	[CAS18] varchar(255) NULL,
	[CAS19] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ClaimAmountBASE]
(
	[ClaimAmountID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[AMT01] varchar(255) NOT NULL,
	[AMT02] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ClaimDateBASE]
(
	[ClaimDateID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[DTM01] varchar(255) NOT NULL,
	[DTM02] varchar(255) NOT NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ClaimPersonBASE]
(
	[ClaimPersonID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[NM101] varchar(255) NOT NULL,
	[NM102] varchar(255) NULL,
	[NM103] varchar(255) NULL,
	[NM104] varchar(255) NULL,
	[NM105] varchar(255) NULL,
	[NM106] varchar(255) NULL,
	[NM107] varchar(255) NULL,
	[NM108] varchar(255) NULL,
	[NM109] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[FinancialBASE]
(
	[FinancialID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[BPR01] varchar(255) NOT NULL,
	[BPR02] varchar(255) NULL,    -- Monetary Amount
	[BPR03] varchar(255) NULL,    -- Credit/Debit Flag
	[BPR04] varchar(255) NULL,    -- PAYMENT METHOD CODE
	[BPR05] varchar(255) NULL,    -- PAYMENT FORMAT CODE
	[BPR06] varchar(255) NULL,
	[BPR07] varchar(255) NULL,
	[BPR08] varchar(255) NULL,
	[BPR09] varchar(255) NULL,
	[BPR10] varchar(255) NULL,
	[BPR11] varchar(255) NULL,
	[BPR12] varchar(255) NULL,
	[BPR13] varchar(255) NULL,
	[BPR14] varchar(255) NULL,
	[BPR15] varchar(255) NULL,
	[BPR16] varchar(255) NULL,-- Check Issue or EFT Effective Date
	[LoadDTS] datetime2    
)
GO

CREATE TABLE [X12835].[PayeeBASE]
(
	[PayeeID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[N101] varchar(255) NULL,
	[N102] varchar(255) NULL,
	[N103] varchar(255) NULL,
	[N104] varchar(255) NULL,
	[N301] varchar(255) NULL,
	[N302] varchar(255) NULL,
	[N401] varchar(255) NULL,
	[N402] varchar(255) NULL,
	[N403] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[PayeeReferenceBASE]
(
	[PayeeReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[PayeeID] numeric(38) NOT NULL,
	[REF01] varchar(255) NULL,
	[REF02] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[PayerBASE]
(
	[PayerID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[N101] varchar(255) NULL,
	[N102] varchar(255) NULL,
	[N103] varchar(255) NULL,
	[N104] varchar(255) NULL,
	[N301] varchar(255) NULL,
	[N302] varchar(255) NULL,
	[N401] varchar(255) NULL,
	[N402] varchar(255) NULL,
	[N403] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[PayerContactBASE]
(
	[PayerContactID] numeric(38) NOT NULL IDENTITY (1, 1),
	[PayerID] numeric(38) NOT NULL,
	[PER01] varchar(255) NULL,
	[PER02] varchar(255) NULL,
	[PER03] varchar(255) NULL,
	[PER04] varchar(255) NULL,
	[PER05] varchar(255) NULL,
	[PER06] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ProviderAdjustmentBASE]
(
	[ProviderAdjustmentID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[PLB01] varchar(255) NULL,
	[PLB02] varchar(255) NULL,    -- Fiscal Period Date
	[PLB0301] varchar(255) NULL,
	[PLB0302] varchar(255) NULL,
	[PLB04] varchar(255) NULL,    -- Provider Adjustment Amount
	[PLB05] varchar(255) NULL,
	[PLB06] varchar(255) NULL,
	[PLB07] varchar(255) NULL,
	[PLB08] varchar(255) NULL,
	[PLB09] varchar(255) NULL,
	[PLB10] varchar(255) NULL,
	[PLB11] varchar(255) NULL,
	[PLB12] varchar(255) NULL,
	[PLB13] varchar(255) NULL,
	[PLB14] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceBASE]
(
	[ServiceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[TransactionID] numeric(38) NULL,
	[SVC0101] varchar(255) NOT NULL,
	[SVC0102] varchar(255) NOT NULL,
	[SVC0103] varchar(255) NOT NULL,
	[SVC02] varchar(255) NULL,
	[SVC03] varchar(255) NULL,
	[SVC04] varchar(255) NULL,
	[SVC05] varchar(255) NULL,
	[SVC06] varchar(255) NULL,
	[SVC07] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceAdjustmentBASE]
(
	[ServiceAdjustmentID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ServiceID] numeric(38) NOT NULL,
	[CAS01] varchar(255) NOT NULL,
	[CAS02] varchar(255) NULL,
	[CAS03] varchar(255) NULL,
	[CAS04] varchar(255) NULL,
	[CAS05] varchar(255) NULL,
	[CAS06] varchar(255) NULL,
	[CAS07] varchar(255) NULL,
	[CAS08] varchar(255) NULL,
	[CAS09] varchar(255) NULL,
	[CAS10] varchar(255) NULL,
	[CAS11] varchar(255) NULL,
	[CAS12] varchar(255) NULL,
	[CAS13] varchar(255) NULL,
	[CAS14] varchar(255) NULL,
	[CAS15] varchar(255) NULL,
	[CAS16] varchar(255) NULL,
	[CAS17] varchar(255) NULL,
	[CAS18] varchar(255) NULL,
	[CAS19] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceAmountBASE]
(
	[ServiceAmountID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ServiceID] numeric(38) NOT NULL,
	[AMT01] varchar(255) NOT NULL,    -- Amount Qualifier
	[AMT02] varchar(255) NULL,    -- Amount
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceDateBASE]
(
	[ServiceDateID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ServiceID] numeric(38) NOT NULL,
	[DTM01] varchar(255) NOT NULL,
	[DTM02] varchar(255) NOT NULL,    -- Service Date
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[TransactionDateBASE]
(
	[TransactionDateID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[DTM01] varchar(255) NOT NULL,
	[DTM02] varchar(255) NOT NULL,    -- Service Date
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceReferenceBASE]
(
	[ServiceReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ServiceID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,
	[REF02] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ServiceRemarkBASE]
(
	[ServiceRemarkID] numeric(38) NOT NULL,
	[ServiceID] numeric(38) NOT NULL,
	[LQ01] varchar(255) NULL,
	[LQ02] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[TraceNumberBASE]
(
	[TraceNumberID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[TRN01] varchar(255) NULL,    -- Trace Type Code
	[TRN02] varchar(255) NULL,    -- REFERENCE IDENTIFICATION
	[TRN03] varchar(255) NULL,    -- ORIGINATING COMPANY IDENTIFIER
	[TRN04] varchar(255) NULL,    -- Originating Company Supplemental Code
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[TransactionBASE]
(
	[TransactionID] numeric(38) NOT NULL IDENTITY (1, 1),
	[FunctionalGroupID] numeric(38) NOT NULL,
	[InterchangeID] bigint NULL,
	[ST01] varchar(255) NOT NULL,
	[ST02] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[TransactionReferenceBASE]
(
	[ReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TransactionID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,    -- Receiver Identification Qualifier
	[REF02] varchar(255) NOT NULL,    -- Receiver Identification Number
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[PayerReferenceBASE]
(
	[ReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[PayerID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,    -- Receiver Identification Qualifier
	[REF02] varchar(255) NOT NULL,    -- Receiver Identification Number
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[ClaimReferenceBASE]
(
	[ReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ClaimID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,    -- Receiver Identification Qualifier
	[REF02] varchar(255) NOT NULL,    -- Receiver Identification Number
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[TraceNumberReferenceBASE]
(
	[ReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[TraceNumberID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,    -- Receiver Identification Qualifier
	[REF02] varchar(255) NOT NULL,    -- Receiver Identification Number
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12835].[FinancialReferenceBASE]
(
	[ReferenceID] numeric(38) NOT NULL IDENTITY (1, 1),
	[FinancialID] numeric(38) NOT NULL,
	[REF01] varchar(255) NOT NULL,    -- Receiver Identification Qualifier
	[REF02] varchar(255) NOT NULL,    -- Receiver Identification Number
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12].[FunctionalGroupBASE]
(
	[FunctionalGroupID] numeric(38) NOT NULL IDENTITY (1, 1),
	[InterchangeID] numeric(38) NOT NULL,
	[GS01] varchar(255) NULL,
	[GS02] varchar(255) NULL,
	[GS03] varchar(255) NULL,
	[GS04] varchar(255) NULL,
	[GS05] varchar(255) NULL,
	[GS06] varchar(255) NULL,
	[GS07] varchar(255) NULL,
	[GS08] varchar(255) NULL,
	[LoadDTS] datetime2
)
GO

CREATE TABLE [X12].[InterchangeBASE]
(
	[InterchangeID] numeric(38) NOT NULL IDENTITY (1, 1),
	[ISA01] varchar(255) NULL,
	[ISA02] varchar(255) NULL,
	[ISA03] varchar(255) NULL,
	[ISA04] varchar(255) NULL,
	[ISA05] varchar(255) NULL,
	[ISA06] varchar(255) NULL,
	[ISA07] varchar(255) NULL,
	[ISA08] varchar(255) NULL,
	[ISA09] varchar(255) NULL,
	[ISA10] varchar(255) NULL,
	[ISA11] varchar(255) NULL,
	[ISA12] varchar(255) NULL,
	[ISA13] varchar(255) NULL,
	[ISA14] varchar(255) NULL,
	[ISA15] varchar(255) NULL,
	[ISA16] varchar(255) NULL,
	[SourceMessage] varchar(max) NOT NULL,
	[LoadedDTS] datetime2(7) NOT NULL
)
GO

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE [X12835].[ClaimBASE] 
 ADD CONSTRAINT [PK_X12835Claim]
	PRIMARY KEY CLUSTERED ([ClaimID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_Claim_X12835Transaction] 
 ON [X12835].[ClaimBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[ClaimAdjustmentBASE] 
 ADD CONSTRAINT [PK_X12835ClaimAdjustment]
	PRIMARY KEY CLUSTERED ([ClaimAdjustmentID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ClaimAdjustment_X12835Claim] 
 ON [X12835].[ClaimAdjustmentBASE] ([ClaimID] ASC)
GO

ALTER TABLE [X12835].[ClaimAmountBASE] 
 ADD CONSTRAINT [PK_X12835ClaimAmount]
	PRIMARY KEY CLUSTERED ([ClaimAmountID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ClaimAmount_X12835Claim] 
 ON [X12835].[ClaimAmountBASE] ([ClaimID] ASC)
GO

ALTER TABLE [X12835].[ClaimDateBASE] 
 ADD CONSTRAINT [PK_X12835ClaimDate]
	PRIMARY KEY CLUSTERED ([ClaimDateID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ClaimDate_X12835Claim] 
 ON [X12835].[ClaimDateBASE] ([ClaimID] ASC)
GO

ALTER TABLE [X12835].[ClaimPersonBASE] 
 ADD CONSTRAINT [PK_X12835ClaimPerson]
	PRIMARY KEY CLUSTERED ([ClaimPersonID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ClaimPerson_X12835Claim] 
 ON [X12835].[ClaimPersonBASE] ([ClaimID] ASC)
GO

ALTER TABLE [X12835].[FinancialBASE] 
 ADD CONSTRAINT [PK_X12835Financial]
	PRIMARY KEY CLUSTERED ([FinancialID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_BPR_X12Transaction] 
 ON [X12835].[FinancialBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[PayeeBASE] 
 ADD CONSTRAINT [PK_X12835Payee]
	PRIMARY KEY CLUSTERED ([PayeeID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835Payee_X12835Transaction] 
 ON [X12835].[PayeeBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[PayeeReferenceBASE] 
 ADD CONSTRAINT [PK_X12835PayeeReference]
	PRIMARY KEY CLUSTERED ([PayeeReferenceID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835PayeeReference_X12835Payee] 
 ON [X12835].[PayeeReferenceBASE] ([PayeeID] ASC)
GO

ALTER TABLE [X12835].[PayerBASE] 
 ADD CONSTRAINT [PK_X12835Payer]
	PRIMARY KEY CLUSTERED ([PayerID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835Payer_X12835Transaction] 
 ON [X12835].[PayerBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[PayerContactBASE] 
 ADD CONSTRAINT [PK_X12835PayerContact]
	PRIMARY KEY CLUSTERED ([PayerContactID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835PayerContact_X12835Payer] 
 ON [X12835].[PayerContactBASE] ([PayerID] ASC)
GO

ALTER TABLE [X12835].[ProviderAdjustmentBASE] 
 ADD CONSTRAINT [PK_X12835ProviderAdjustment]
	PRIMARY KEY CLUSTERED ([ProviderAdjustmentID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ProviderAdjustment_X12835Transaction] 
 ON [X12835].[ProviderAdjustmentBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[ServiceBASE] 
 ADD CONSTRAINT [PK_X12835Service]
	PRIMARY KEY CLUSTERED ([ServiceID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835Service_X12835Claim] 
 ON [X12835].[ServiceBASE] ([ClaimID] ASC)
GO

ALTER TABLE [X12835].[ServiceAdjustmentBASE] 
 ADD CONSTRAINT [PK_X12835ServiceAdjustment]
	PRIMARY KEY CLUSTERED ([ServiceAdjustmentID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ServiceAdjustment_X12835Service] 
 ON [X12835].[ServiceAdjustmentBASE] ([ServiceID] ASC)
GO

ALTER TABLE [X12835].[ServiceAmountBASE] 
 ADD CONSTRAINT [PK_X12835ServiceAmount]
	PRIMARY KEY CLUSTERED ([ServiceAmountID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ServiceAmount_X12835Service] 
 ON [X12835].[ServiceAmountBASE] ([ServiceID] ASC)
GO

ALTER TABLE [X12835].[ServiceDateBASE] 
 ADD CONSTRAINT [PK_X12835ServiceDate]
	PRIMARY KEY CLUSTERED ([ServiceDateID] ASC)
GO

ALTER TABLE [X12835].[TransactionDateBASE] 
 ADD CONSTRAINT [PK_X12835TransactionDate]
	PRIMARY KEY CLUSTERED ([TransactionDateID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ServiceDate_X12835Service] 
 ON [X12835].[ServiceDateBASE] ([ServiceID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835TransactionDate_X12835Transaction] 
 ON [X12835].[TransactionDateBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[ServiceReferenceBASE] 
 ADD CONSTRAINT [PK_X12835ServiceReference]
	PRIMARY KEY CLUSTERED ([ServiceReferenceID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ServiceReference_X12835Service] 
 ON [X12835].[ServiceReferenceBASE] ([ServiceID] ASC)
GO

ALTER TABLE [X12835].[ServiceRemarkBASE] 
 ADD CONSTRAINT [PK_X12835ServiceRemark]
	PRIMARY KEY CLUSTERED ([ServiceRemarkID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ServiceRemark_X12835Service] 
 ON [X12835].[ServiceRemarkBASE] ([ServiceID] ASC)
GO

ALTER TABLE [X12835].[TraceNumberBASE] 
 ADD CONSTRAINT [PK_X12835TraceNumber]
	PRIMARY KEY CLUSTERED ([TraceNumberID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835TraceNumber_X12835Transaction] 
 ON [X12835].[TraceNumberBASE] ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[TransactionBASE] 
 ADD CONSTRAINT [PK_Transaction]
	PRIMARY KEY CLUSTERED ([TransactionID] ASC)
GO

ALTER TABLE [X12835].[TransactionReferenceBASE] 
 ADD CONSTRAINT [PK_X12835TransactionReference]
	PRIMARY KEY CLUSTERED ([ReferenceID] ASC)
GO

ALTER TABLE [X12835].[TraceNumberReferenceBASE] 
 ADD CONSTRAINT [PK_X12835TraceNumberReference]
	PRIMARY KEY CLUSTERED ([ReferenceID] ASC)
GO

ALTER TABLE [X12835].[ClaimReferenceBASE] 
 ADD CONSTRAINT [PK_X12835ClaimReference]
	PRIMARY KEY CLUSTERED ([ReferenceID] ASC)
GO

ALTER TABLE [X12835].[PayerReferenceBASE] 
 ADD CONSTRAINT [PK_X12835PayerReference]
	PRIMARY KEY CLUSTERED ([ReferenceID] ASC)
GO

ALTER TABLE [X12835].[FinancialReferenceBASE] 
 ADD CONSTRAINT [PK_X12835FinancialReference]
	PRIMARY KEY CLUSTERED ([ReferenceID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835TransactionReference_X12835Transaction] 
 ON [X12835].[TransactionReferenceBASE] ([TransactionID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835TraceNumberReference_X12835TraceNumber] 
 ON [X12835].[TraceNumberReferenceBASE] ([TraceNumberID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835ClaimReference_X12835Claim] 
 ON [X12835].[ClaimReferenceBASE] ([ClaimID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835PayerReference_X12835Payer] 
 ON [X12835].[PayerReferenceBASE] ([PayerID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12835FinancialReference_X12835Financial] 
 ON [X12835].[FinancialReferenceBASE] ([FinancialID] ASC)
GO

ALTER TABLE [X12].[FunctionalGroupBASE] 
 ADD CONSTRAINT [PK_X12FunctionalGroup]
	PRIMARY KEY CLUSTERED ([FunctionalGroupID] ASC)
GO

CREATE NONCLUSTERED INDEX [IXFK_X12FunctionalGroup_X12Interchange] 
 ON [X12].[FunctionalGroupBASE] ([InterchangeID] ASC)
GO

ALTER TABLE [X12].[InterchangeBASE] 
 ADD CONSTRAINT [PK_X12Interchange]
	PRIMARY KEY CLUSTERED ([InterchangeID] ASC)
GO

/* Create Foreign Key Constraints */

ALTER TABLE [X12835].[ClaimBASE] ADD CONSTRAINT [FK_Claim_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ClaimAdjustmentBASE] ADD CONSTRAINT [FK_X12835ClaimAdjustment_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ClaimAmountBASE] ADD CONSTRAINT [FK_X12835ClaimAmount_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ClaimDateBASE] ADD CONSTRAINT [FK_X12835ClaimDate_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ClaimPersonBASE] ADD CONSTRAINT [FK_X12835ClaimPerson_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[FinancialBASE] ADD CONSTRAINT [FK_BPR_X12Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[PayeeBASE] ADD CONSTRAINT [FK_X12835Payee_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[PayeeReferenceBASE] ADD CONSTRAINT [FK_X12835PayeeReference_X12835Payee]
	FOREIGN KEY ([PayeeID]) REFERENCES [X12835].[PayeeBASE] ([PayeeID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[PayerBASE] ADD CONSTRAINT [FK_X12835Payer_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[PayerContactBASE] ADD CONSTRAINT [FK_X12835PayerContact_X12835Payer]
	FOREIGN KEY ([PayerID]) REFERENCES [X12835].[PayerBASE] ([PayerID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ProviderAdjustmentBASE] ADD CONSTRAINT [FK_X12835ProviderAdjustment_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceBASE] ADD CONSTRAINT [FK_X12835Service_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceAdjustmentBASE] ADD CONSTRAINT [FK_X12835ServiceAdjustment_X12835Service]
	FOREIGN KEY ([ServiceID]) REFERENCES [X12835].[ServiceBASE] ([ServiceID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceAmountBASE] ADD CONSTRAINT [FK_X12835ServiceAmount_X12835Service]
	FOREIGN KEY ([ServiceID]) REFERENCES [X12835].[ServiceBASE] ([ServiceID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceDateBASE] ADD CONSTRAINT [FK_X12835ServiceDate_X12835Service]
	FOREIGN KEY ([ServiceID]) REFERENCES [X12835].[ServiceBASE] ([ServiceID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[TransactionDateBASE] ADD CONSTRAINT [FK_X12835TransactionDate_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceReferenceBASE] ADD CONSTRAINT [FK_X12835ServiceReference_X12835Service]
	FOREIGN KEY ([ServiceID]) REFERENCES [X12835].[ServiceBASE] ([ServiceID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ServiceRemarkBASE] ADD CONSTRAINT [FK_X12835ServiceRemark_X12835Service]
	FOREIGN KEY ([ServiceID]) REFERENCES [X12835].[ServiceBASE] ([ServiceID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[TraceNumberBASE] ADD CONSTRAINT [FK_X12835TraceNumber_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[TransactionReferenceBASE] ADD CONSTRAINT [FK_X12835TransactionReference_X12835Transaction]
	FOREIGN KEY ([TransactionID]) REFERENCES [X12835].[TransactionBASE] ([TransactionID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[TraceNumberReferenceBASE] ADD CONSTRAINT [FK_X12835TraceNumberReference_X12835TraceNumber]
	FOREIGN KEY ([TraceNumberID]) REFERENCES [X12835].[TraceNumberBASE] ([TraceNumberID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[ClaimReferenceBASE] ADD CONSTRAINT [FK_X12835ClaimReference_X12835Claim]
	FOREIGN KEY ([ClaimID]) REFERENCES [X12835].[ClaimBASE] ([ClaimID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[PayerReferenceBASE] ADD CONSTRAINT [FK_X12835PayerReference_X12835Payer]
	FOREIGN KEY ([PayerID]) REFERENCES [X12835].[PayerBASE] ([PayerID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12835].[FinancialReferenceBASE] ADD CONSTRAINT [FK_X12835FinancialReference_X12835Financial]
	FOREIGN KEY ([FinancialID]) REFERENCES [X12835].[FinancialBASE] ([FinancialID]) ON DELETE Cascade ON UPDATE No Action
GO

ALTER TABLE [X12].[FunctionalGroupBASE] ADD CONSTRAINT [FK_X12FunctionalGroup_X12Interchange]
	FOREIGN KEY ([InterchangeID]) REFERENCES [X12].[InterchangeBASE] ([InterchangeID]) ON DELETE Cascade ON UPDATE No Action
GO

/* Create Table Comments */

EXEC sp_addextendedproperty 'MS_Description', 'Monetary Amount', 'Schema', [X12835], 'table', [FinancialBASE], 'column', [BPR02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Credit/Debit Flag', 'Schema', [X12835], 'table', [FinancialBASE], 'column', [BPR03]
GO

EXEC sp_addextendedproperty 'MS_Description', 'PAYMENT METHOD CODE', 'Schema', [X12835], 'table', [FinancialBASE], 'column', [BPR04]
GO

EXEC sp_addextendedproperty 'MS_Description', 'PAYMENT FORMAT CODE', 'Schema', [X12835], 'table', [FinancialBASE], 'column', [BPR05]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Check Issue or EFT Effective Date', 'Schema', [X12835], 'table', [FinancialBASE], 'column', [BPR16]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Fiscal Period Date', 'Schema', [X12835], 'table', [ProviderAdjustmentBASE], 'column', [PLB02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Provider Adjustment Amount', 'Schema', [X12835], 'table', [ProviderAdjustmentBASE], 'column', [PLB04]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Amount Qualifier', 'Schema', [X12835], 'table', [ServiceAmountBASE], 'column', [AMT01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Amount', 'Schema', [X12835], 'table', [ServiceAmountBASE], 'column', [AMT02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Service Date', 'Schema', [X12835], 'table', [ServiceDateBASE], 'column', [DTM02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Service Date', 'Schema', [X12835], 'table', [TransactionDateBASE], 'column', [DTM02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Trace Type Code', 'Schema', [X12835], 'table', [TraceNumberBASE], 'column', [TRN01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'REFERENCE IDENTIFICATION', 'Schema', [X12835], 'table', [TraceNumberBASE], 'column', [TRN02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'ORIGINATING COMPANY IDENTIFIER', 'Schema', [X12835], 'table', [TraceNumberBASE], 'column', [TRN03]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Originating Company Supplemental Code', 'Schema', [X12835], 'table', [TraceNumberBASE], 'column', [TRN04]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [TransactionReferenceBASE], 'column', [REF01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Number', 'Schema', [X12835], 'table', [TransactionReferenceBASE], 'column', [REF02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [TraceNumberReferenceBASE], 'column', [REF01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [TraceNumberReferenceBASE], 'column', [REF02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [ClaimReferenceBASE], 'column', [REF01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [ClaimReferenceBASE], 'column', [REF02]
GO

　
EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [PayerReferenceBASE], 'column', [REF01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [PayerReferenceBASE], 'column', [REF02]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [FinancialReferenceBASE], 'column', [REF01]
GO

EXEC sp_addextendedproperty 'MS_Description', 'Receiver Identification Qualifier', 'Schema', [X12835], 'table', [FinancialReferenceBASE], 'column', [REF02]
GO
