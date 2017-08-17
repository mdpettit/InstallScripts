USE [MirthSource]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12].[Interchange]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12].[Interchange]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12].[FunctionalGroup]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12].[FunctionalGroup]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Transaction]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Transaction]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Payee]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Payee]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[PayeeReference]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[PayeeReference]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Payer]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Payer]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[PayerContact]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[PayerContact]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[PayerReference]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[PayerReference]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ProviderAdjustment]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ProviderAdjustment]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Header]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Header]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Claim]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Claim]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimAdjustment]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimAdjustment]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimAmount]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimAmount]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimDate]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimDate]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimPerson]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimPerson]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimQuantity]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimQuantity]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ClaimReference]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ClaimReference]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[Service]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[Service]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ServiceAdjustment]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ServiceAdjustment]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ServiceAmount]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ServiceAmount]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ServiceQuantity]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ServiceQuantity]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ServiceReference]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ServiceReference]
GO

IF EXISTS (SELECT 1 FROM dbo.sysobjects WHERE id = object_id(N'[DiscrepancyX12835].[ServiceRemark]') AND OBJECTPROPERTY(id, N'IsView') = 1)
DROP VIEW [DiscrepancyX12835].[ServiceRemark]
GO

/****** Object:  View [DiscrepancyX12].[Interchange]    Script Date: 8/8/2017 9:28:31 AM ******/

CREATE VIEW [DiscrepancyX12].[Interchange] ([InterchangeID], [ISA01], [ISA02], [ISA03], [ISA04], [ISA05], [ISA06], [ISA07], [ISA08], [ISA09], [ISA10], [ISA11], [ISA12], [ISA13], [ISA14], [ISA15], [ISA16], [SourceFileNM], [SourceMessageChecksum], [DiscrepancyCD], [DiscrepancyDSC], [LoadDTS]) AS
	SELECT [InterchangeID], [ISA01], [ISA02], [ISA03], [ISA04], [ISA05], [ISA06], [ISA07], [ISA08], [ISA09], [ISA10], [ISA11], [ISA12], [ISA13], [ISA14], [ISA15], [ISA16], [SourceFileNM], [SourceMessageChecksum], [DiscrepancyCD], [DiscrepancyDSC], [LoadDTS]
	FROM (SELECT 
InterchangeID
, ISA01
, ISA02
, ISA03
, ISA04
, ISA05
, ISA06
, ISA07
, ISA08
, CONVERT(datetime2,COALESCE(NULLIF(ISA09,''), '990101'),12) ISA09
, CONVERT(datetime2,COALESCE(NULLIF(SUBSTRING(ISA10,1,2),''),'00')+':'+COALESCE(NULLIF(SUBSTRING(ISA10,3,2),''),'00')+':00',8) ISA10
, ISA11
, ISA12
, ISA13
, CAST(ISA14 AS bit) ISA14
, ISA15
, ISA16
, SourceFileNM
, SourceMessageChecksum
, DiscrepancyCD
, DiscrepancyDSC
, LoadDTS
FROM MirthSource.X12.InterchangeBASE
WHERE DiscrepancyCD <> 0) AS UserQuery
GO


USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12].[FunctionalGroup]    Script Date: 8/8/2017 9:28:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12].[FunctionalGroup] ([FunctionalGroupID], [InterchangeID], [SourceMessageChecksum], [GS01], [GS02], [GS03], [GS04], [GS05], [GS06], [GS07], [GS08], [LoadDTS]) AS
	SELECT [FunctionalGroupID], [InterchangeID], [SourceMessageChecksum], [GS01], [GS02], [GS03], [GS04], [GS05], [GS06], [GS07], [GS08], [LoadDTS]
	FROM (SELECT
f.FunctionalGroupID
, i.InterchangeID
, i.SourceMessageChecksum
, GS01
, GS02
, GS03
, CONVERT(DATETIME2,GS04,112) GS04
, CONVERT(DATETIME2,(substring(GS05,1,2)+':'+substring(GS05,3,2)+':00'),108) GS05
, GS06 
, GS07 
, GS08 
, f.LoadDTS
FROM MirthSource.X12.FunctionalGroupBASE f
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Transaction]    Script Date: 8/8/2017 9:28:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Transaction] ([TransactionID], [FunctionalGroupID], [SourceMessageChecksum], [GS06], [ST01], [ST02], [BPR01], [BPR02], [BPR03], [BPR04], [BPR05], [BPR06], [BPR07], [BPR08], [BPR09], [BPR10], [BPR11], [BPR12], [BPR13], [BPR14], [BPR15], [BPR16], [TRN01], [TRN02], [TRN03], [TRN04], [CUR01], [CUR02], [CUR03], [CUR04], [CUR05], [CUR06], [CUR07], [CUR08], [CUR09], [CUR10], [CUR11], [CUR12], [CUR13], [CUR14], [CUR15], [CUR16], [CUR17], [CUR18], [CUR19], [CUR20], [CUR21], [TR01_REF02], [TR02_REF02], [DTM02], [PR_N102], [PR_N103], [PR_N104], [PR_N301], [PR_N302], [PR_N401], [PR_N402], [PR_N403], [PE_N102], [PE_N103], [PE_N104], [PE_N301], [PE_N302], [PE_N401], [PE_N402], [PE_N403], [LoadDTS]) AS
	SELECT [TransactionID], [FunctionalGroupID], [SourceMessageChecksum], [GS06], [ST01], [ST02], [BPR01], [BPR02], [BPR03], [BPR04], [BPR05], [BPR06], [BPR07], [BPR08], [BPR09], [BPR10], [BPR11], [BPR12], [BPR13], [BPR14], [BPR15], [BPR16], [TRN01], [TRN02], [TRN03], [TRN04], [CUR01], [CUR02], [CUR03], [CUR04], [CUR05], [CUR06], [CUR07], [CUR08], [CUR09], [CUR10], [CUR11], [CUR12], [CUR13], [CUR14], [CUR15], [CUR16], [CUR17], [CUR18], [CUR19], [CUR20], [CUR21], [TR01_REF02], [TR02_REF02], [DTM02], [PR_N102], [PR_N103], [PR_N104], [PR_N301], [PR_N302], [PR_N401], [PR_N402], [PR_N403], [PE_N102], [PE_N103], [PE_N104], [PE_N301], [PE_N302], [PE_N401], [PE_N402], [PE_N403], [LoadDTS]
	FROM (SELECT 
t.TransactionID
, f.FunctionalGroupID
, i.SourceMessageChecksum
, f.GS06
, ST01
, ST02
, fb.BPR01
, CAST(NULLIF(fb.BPR02, '') AS numeric(38,2)) as BPR02
, fb.BPR03
, fb.BPR04
, fb.BPR05
, fb.BPR06
, fb.BPR07
, fb.BPR08
, fb.BPR09
, fb.BPR10
, fb.BPR11
, fb.BPR12
, fb.BPR13
, fb.BPR14
, fb.BPR15
, CONVERT(DATETIME2,fb.BPR16,112) as BPR16
, tn.TRN01
, tn.TRN02
, tn.TRN03
, tn.TRN04
, c.CUR01
, c.CUR02
, c.CUR03
, c.CUR04
, c.CUR05
, c.CUR06
, c.CUR07
, c.CUR08
, c.CUR09
, c.CUR10
, c.CUR11
, c.CUR12
, c.CUR13
, c.CUR14
, c.CUR15
, c.CUR16
, c.CUR17
, c.CUR18
, c.CUR19
, c.CUR20
, c.CUR21
, tr1.REF02 AS TR01_REF02
, tr2.REF02 AS TR02_REF02
, td.DTM02
, pr.N102 AS PR_N102
, pr.N103 AS PR_N103
, pr.N104 AS PR_N104
, pr.N301 AS PR_N301
, pr.N302 AS PR_N302
, pr.N401 AS PR_N401
, pr.N402 AS PR_N402
, pr.N403 AS PR_N403
, pe.N102 AS PE_N102
, pe.N103 AS PE_N103
, pe.N104 AS PE_N104
, pe.N301 AS PE_N301
, pe.N302 AS PE_N302
, pe.N401 AS PE_N401
, pe.N402 AS PE_N402
, pe.N403 AS PE_N403
, t.LoadDTS
FROM MirthSource.X12835.TransactionBASE t
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
JOIN MirthSource.X12835.FinancialBASE fb ON t.TransactionID = fb.TransactionID
JOIN MirthSource.X12835.PayerBASE pr ON t.TransactionID = pr.TransactionID
JOIN MirthSource.X12835.PayeeBASE pe ON t.TransactionID = pe.TransactionID
LEFT OUTER JOIN MirthSource.X12835.TraceNumberBASE tn ON t.TransactionID = tn.TransactionID
LEFT OUTER JOIN MirthSource.X12835.CurrencyBASE c ON t.TransactionID = c.TransactionID
LEFT OUTER JOIN MirthSource.X12835.TransactionReferenceBASE tr1 ON t.TransactionID = tr1.TransactionID AND tr1.REF01 = 'EV'
LEFT OUTER JOIN MirthSource.X12835.TransactionReferenceBASE tr2 ON t.TransactionID = tr2.TransactionID AND tr2.REF01 = 'F2'
LEFT OUTER JOIN MirthSource.X12835.TransactionDateBASE td ON t.TransactionID = td.TransactionID AND td.DTM01 = '405'
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Payee]    Script Date: 8/8/2017 9:29:41 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Payee] ([PayeeID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [N101], [N102], [N103], [N104], [N301], [N302], [N401], [N402], [N403], [LoadDTS]) AS
	SELECT [PayeeID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [N101], [N102], [N103], [N104], [N301], [N302], [N401], [N402], [N403], [LoadDTS]
	FROM (SELECT
p.PayeeID
, t.TransactionID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, N101
, N102
, N103
, N104
, N301
, N302
, N401
, N402
, N403
, p.LoadDTS
FROM MirthSource.X12835.PayeeBASE p
JOIN MirthSource.X12835.TransactionBASE t ON p.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[PayeeReference]    Script Date: 8/8/2017 9:29:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[PayeeReference] ([PayeeReferenceID], [PayeeID], [SourceMessageChecksum], [GS06], [ST02], [N101], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]) AS
	SELECT [PayeeReferenceID], [PayeeID], [SourceMessageChecksum], [GS06], [ST02], [N101], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]
	FROM (SELECT
pr.PayeeReferenceID
, p.PayeeID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, N101
, pr.LoadSequenceNBR
, REF01
, REF02
, pr.LoadDTS
FROM MirthSource.X12835.PayeeReferenceBASE pr
JOIN MirthSource.X12835.PayeeBASE p ON pr.PayeeID = p.PayeeID
JOIN MirthSource.X12835.TransactionBASE t ON p.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Payer]    Script Date: 8/8/2017 9:29:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Payer] ([PayerID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [N101], [N102], [N103], [N104], [N301], [N302], [N401], [N402], [N403], [LoadDTS]) AS
	SELECT [PayerID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [N101], [N102], [N103], [N104], [N301], [N302], [N401], [N402], [N403], [LoadDTS]
	FROM (SELECT
p.PayerID
, t.TransactionID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, N101
, N102
, N103
, N104
, N301
, N302
, N401
, N402
, N403
, p.LoadDTS
FROM MirthSource.X12835.PayerBASE p
JOIN MirthSource.X12835.TransactionBASE t ON p.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[PayerContact]    Script Date: 8/8/2017 9:30:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[PayerContact] ([PayerContactID], [PayerID], [SourceMessageChecksum], [GS06], [ST02], [N101], [PER01], [PER02], [PER03], [PER04], [PER05], [PER06], [PER07], [PER08], [PER09], [LoadDTS]) AS
	SELECT [PayerContactID], [PayerID], [SourceMessageChecksum], [GS06], [ST02], [N101], [PER01], [PER02], [PER03], [PER04], [PER05], [PER06], [PER07], [PER08], [PER09], [LoadDTS]
	FROM (SELECT
pc.PayerContactID
, p.PayerID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, N101
, PER01
, PER02
, PER03
, PER04
, PER05
, PER06
, PER07
, PER08
, PER09
, pc.LoadDTS
FROM MirthSource.X12835.PayerContactBASE pc
JOIN MirthSource.X12835.PayerBASE p on pc.PayerID = p.PayerID
JOIN MirthSource.X12835.TransactionBASE t ON p.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[PayerReference]    Script Date: 8/8/2017 9:30:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[PayerReference] ([PayeeReferenceID], [PayeeID], [SourceMessageChecksum], [GS06], [ST02], [N101], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]) AS
	SELECT [PayeeReferenceID], [PayeeID], [SourceMessageChecksum], [GS06], [ST02], [N101], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]
	FROM (SELECT
pr.PayeeReferenceID
, p.PayeeID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, N101
, pr.LoadSequenceNBR
, REF01
, REF02
, pr.LoadDTS
FROM MirthSource.X12835.PayeeReferenceBASE pr
JOIN MirthSource.X12835.PayeeBASE p ON pr.PayeeID = p.PayeeID
JOIN MirthSource.X12835.TransactionBASE t ON p.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ProviderAdjustment]    Script Date: 8/8/2017 9:30:25 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ProviderAdjustment] ([ProviderAdjustmentID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [PLB01], [PLB02], [PLB0301], [PLB0302], [PLB04], [PLB05], [PLB06], [PLB07], [PLB08], [PLB09], [PLB10], [PLB11], [PLB12], [PLB13], [PLB14], [LoadDTS]) AS
	SELECT [ProviderAdjustmentID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [PLB01], [PLB02], [PLB0301], [PLB0302], [PLB04], [PLB05], [PLB06], [PLB07], [PLB08], [PLB09], [PLB10], [PLB11], [PLB12], [PLB13], [PLB14], [LoadDTS]
	FROM (SELECT
a.ProviderAdjustmentID
, t.TransactionID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, PLB01 
, CONVERT(datetime2, PLB02, 112) AS PLB02
, PLB0301
, PLB0302
, CAST(NULLIF(PLB04, '') AS numeric(38,2)) PLB04
, PLB05
, CAST(NULLIF(PLB06, '') AS numeric(38,2)) PLB06
, PLB07
, CAST(NULLIF(PLB08, '') AS numeric(38,2)) PLB08
, PLB09
, CAST(NULLIF(PLB10, '') AS numeric(38,2)) PLB10
, PLB11
, CAST(NULLIF(PLB12, '') AS numeric(38,2)) PLB12
, PLB13
, CAST(NULLIF(PLB14, '') AS numeric(38,2)) PLB14
, a.LoadDTS
FROM MirthSource.X12835.ProviderAdjustmentBASE a
JOIN MirthSource.X12835.TransactionBASE t ON a.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Header]    Script Date: 8/8/2017 9:30:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Header] ([HeaderID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [LoadDTS]) AS
	SELECT [HeaderID], [TransactionID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [LoadDTS]
	FROM (SELECT 
h.HeaderID
, t.TransactionID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, h.LoadDTS
FROM MirthSource.X12835.HeaderBASE h
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.Transactionid
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Claim]    Script Date: 8/8/2017 9:30:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Claim] ([ClaimID], [HeaderID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [CLP01], [CLP02], [CLP03], [CLP04], [CLP05], [CLP06], [CLP07], [CLP08], [CLP09], [CLP10], [CLP11], [CLP12], [CLP13], [CLP14], [PAT_NM102], [PAT_NM103], [PAT_NM104], [PAT_NM105], [PAT_NM106], [PAT_NM107], [PAT_NM108], [PAT_NM109], [INS_NM102], [INS_NM103], [INS_NM104], [INS_NM105], [INS_NM106], [INS_NM107], [INS_NM108], [INS_NM109], [CPAT_NM102], [CPAT_NM103], [CPAT_NM104], [CPAT_NM105], [CPAT_NM106], [CPAT_NM107], [CPAT_NM108], [CPAT_NM109], [PROV_NM102], [PROV_NM103], [PROV_NM104], [PROV_NM105], [PROV_NM106], [PROV_NM107], [PROV_NM108], [PROV_NM109], [CCN_NM102], [CCN_NM103], [CCN_NM104], [CCN_NM105], [CCN_NM106], [CCN_NM107], [CCN_NM108], [CCN_NM109], [CPP_NM102], [CPP_NM103], [CPP_NM104], [CPP_NM105], [CPP_NM106], [CPP_NM107], [CPP_NM108], [CPP_NM109], [OTH_NM102], [OTH_NM103], [OTH_NM104], [OTH_NM105], [OTH_NM106], [OTH_NM107], [OTH_NM108], [OTH_NM109], [MIA01], [MIA02], [MIA03], [MIA04], [MIA05], [MIA06], [MIA07], [MIA08], [MIA09], [MIA10], [MIA11], [MIA12], [MIA13], [MIA14], [MIA15], [MIA16], [MIA17], [MIA18], [MIA19], [MIA20], [MIA21], [MIA22], [MIA23], [MIA24], [MOA01], [MOA02], [MOA03], [MOA04], [MOA05], [MOA06], [MOA07], [MOA08], [MOA09], [STRT_DTM02], [END_DTM02], [EXP_DTM02], [RCV_DTM02], [MRN_REF02], [ORIG_REF02], [LoadDTS]) AS
	SELECT [ClaimID], [HeaderID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [CLP01], [CLP02], [CLP03], [CLP04], [CLP05], [CLP06], [CLP07], [CLP08], [CLP09], [CLP10], [CLP11], [CLP12], [CLP13], [CLP14], [PAT_NM102], [PAT_NM103], [PAT_NM104], [PAT_NM105], [PAT_NM106], [PAT_NM107], [PAT_NM108], [PAT_NM109], [INS_NM102], [INS_NM103], [INS_NM104], [INS_NM105], [INS_NM106], [INS_NM107], [INS_NM108], [INS_NM109], [CPAT_NM102], [CPAT_NM103], [CPAT_NM104], [CPAT_NM105], [CPAT_NM106], [CPAT_NM107], [CPAT_NM108], [CPAT_NM109], [PROV_NM102], [PROV_NM103], [PROV_NM104], [PROV_NM105], [PROV_NM106], [PROV_NM107], [PROV_NM108], [PROV_NM109], [CCN_NM102], [CCN_NM103], [CCN_NM104], [CCN_NM105], [CCN_NM106], [CCN_NM107], [CCN_NM108], [CCN_NM109], [CPP_NM102], [CPP_NM103], [CPP_NM104], [CPP_NM105], [CPP_NM106], [CPP_NM107], [CPP_NM108], [CPP_NM109], [OTH_NM102], [OTH_NM103], [OTH_NM104], [OTH_NM105], [OTH_NM106], [OTH_NM107], [OTH_NM108], [OTH_NM109], [MIA01], [MIA02], [MIA03], [MIA04], [MIA05], [MIA06], [MIA07], [MIA08], [MIA09], [MIA10], [MIA11], [MIA12], [MIA13], [MIA14], [MIA15], [MIA16], [MIA17], [MIA18], [MIA19], [MIA20], [MIA21], [MIA22], [MIA23], [MIA24], [MOA01], [MOA02], [MOA03], [MOA04], [MOA05], [MOA06], [MOA07], [MOA08], [MOA09], [STRT_DTM02], [END_DTM02], [EXP_DTM02], [RCV_DTM02], [MRN_REF02], [ORIG_REF02], [LoadDTS]
	FROM (SELECT
c.ClaimID
, h.HeaderID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, LX01
, ClaimLoadSequenceNBR
, CLP01
, CLP02
, CAST(NULLIF(CLP03, '') AS numeric(38,2)) CLP03
, CAST(NULLIF(CLP04, '') AS numeric(38,2)) CLP04
, CAST(NULLIF(CLP05, '') AS numeric(38,2)) CLP05
, CLP06
, CLP07
, CLP08
, CLP09
, CLP10
, CLP11
, CAST(NULLIF(CLP12, '') AS numeric(38,2)) CLP12
, CAST(NULLIF(CLP13, '') AS numeric(38,2)) CLP13
, CLP14
, cp_patient.NM102 AS PAT_NM102
, cp_patient.NM103 AS PAT_NM103
, cp_patient.NM104 AS PAT_NM104
, cp_patient.NM105 AS PAT_NM105
, cp_patient.NM106 AS PAT_NM106
, cp_patient.NM107 AS PAT_NM107
, cp_patient.NM108 AS PAT_NM108
, cp_patient.NM109 AS PAT_NM109
, cp_insured.NM102 AS INS_NM102
, cp_insured.NM103 AS INS_NM103
, cp_insured.NM104 AS INS_NM104
, cp_insured.NM105 AS INS_NM105
, cp_insured.NM106 AS INS_NM106
, cp_insured.NM107 AS INS_NM107
, cp_insured.NM108 AS INS_NM108
, cp_insured.NM109 AS INS_NM109
, cp_correctedpatient.NM102 AS CPAT_NM102
, cp_correctedpatient.NM103 AS CPAT_NM103
, cp_correctedpatient.NM104 AS CPAT_NM104
, cp_correctedpatient.NM105 AS CPAT_NM105
, cp_correctedpatient.NM106 AS CPAT_NM106
, cp_correctedpatient.NM107 AS CPAT_NM107
, cp_correctedpatient.NM108 AS CPAT_NM108
, cp_correctedpatient.NM109 AS CPAT_NM109
, cp_provider.NM102 AS PROV_NM102 
, cp_provider.NM103 AS PROV_NM103
, cp_provider.NM104 AS PROV_NM104
, cp_provider.NM105 AS PROV_NM105
, cp_provider.NM106 AS PROV_NM106
, cp_provider.NM107 AS PROV_NM107
, cp_provider.NM108 AS PROV_NM108
, cp_provider.NM109 AS PROV_NM109
, cp_crossover.NM102 AS CCN_NM102
, cp_crossover.NM103 AS CCN_NM103
, cp_crossover.NM104 AS CCN_NM104
, cp_crossover.NM105 AS CCN_NM105
, cp_crossover.NM106 AS CCN_NM106
, cp_crossover.NM107 AS CCN_NM107
, cp_crossover.NM108 AS CCN_NM108
, cp_crossover.NM109 AS CCN_NM109
, cp_correctedpriority.NM102 AS CPP_NM102
, cp_correctedpriority.NM103 AS CPP_NM103
, cp_correctedpriority.NM104 AS CPP_NM104
, cp_correctedpriority.NM105 AS CPP_NM105
, cp_correctedpriority.NM106 AS CPP_NM106
, cp_correctedpriority.NM107 AS CPP_NM107
, cp_correctedpriority.NM108 AS CPP_NM108
, cp_correctedpriority.NM109 AS CPP_NM109
, cp_othersubscriber.NM102 AS OTH_NM102
, cp_othersubscriber.NM103 AS OTH_NM103
, cp_othersubscriber.NM104 AS OTH_NM104
, cp_othersubscriber.NM105 AS OTH_NM105
, cp_othersubscriber.NM106 AS OTH_NM106
, cp_othersubscriber.NM107 AS OTH_NM107
, cp_othersubscriber.NM108 AS OTH_NM108
, cp_othersubscriber.NM109 AS OTH_NM109
, CAST(NULLIF(mia.MIA01, '') AS numeric(38,2)) as MIA01
, CAST(NULLIF(mia.MIA02, '') AS numeric(38,2)) as MIA02
, CAST(NULLIF(mia.MIA03, '') AS numeric(38,2)) as MIA03
, CAST(NULLIF(mia.MIA04, '') AS numeric(38,2)) as MIA04
, mia.MIA05
, CAST(NULLIF(mia.MIA06, '') AS numeric(38,2)) as MIA06
, CAST(NULLIF(mia.MIA07, '') AS numeric(38,2)) as MIA07
, CAST(NULLIF(mia.MIA08, '') AS numeric(38,2)) as MIA08
, CAST(NULLIF(mia.MIA09, '') AS numeric(38,2)) as MIA09
, CAST(NULLIF(mia.MIA10, '') AS numeric(38,2)) as MIA10
, CAST(NULLIF(mia.MIA11, '') AS numeric(38,2)) as MIA11
, CAST(NULLIF(mia.MIA12, '') AS numeric(38,2)) as MIA12
, CAST(NULLIF(mia.MIA13, '') AS numeric(38,2)) as MIA13
, CAST(NULLIF(mia.MIA14, '') AS numeric(38,2)) as MIA14
, CAST(NULLIF(mia.MIA15, '') AS numeric(38,2)) as MIA15
, CAST(NULLIF(mia.MIA16, '') AS numeric(38,2)) as MIA16
, CAST(NULLIF(mia.MIA17, '') AS numeric(38,2)) as MIA17
, CAST(NULLIF(mia.MIA18, '') AS numeric(38,2)) as MIA18
, CAST(NULLIF(mia.MIA19, '') AS numeric(38,2)) as MIA19
, mia.MIA20
, mia.MIA21
, mia.MIA22
, mia.MIA23
, CAST(NULLIF(mia.MIA24, '') AS numeric(38,2)) as MIA24
, CAST(NULLIF(moa.MOA01, '') AS numeric(38,2)) as MOA01
, CAST(NULLIF(moa.MOA02, '') AS numeric(38,2)) as MOA02
, moa.MOA03
, moa.MOA04
, moa.MOA05
, moa.MOA06
, moa.MOA07
, CAST(NULLIF(moa.MOA08, '') AS numeric(38,2)) as MOA08
, CAST(NULLIF(moa.MOA09, '') AS numeric(38,2)) as MOA09
, CONVERT(DATETIME2,dt_start.DTM02,112) AS STRT_DTM02
, CONVERT(DATETIME2,dt_end.DTM02,112) AS END_DTM02
, CONVERT(DATETIME2,dt_exp.DTM02,112) as EXP_DTM02
, CONVERT(DATETIME2,dt_rcv.DTM02,112) as RCV_DTM02
, cr_MRN.REF02 AS MRN_REF02
, ISNULL(cr_orig.REF02, CLP07) AS ORIG_REF02
, c.LoadDTS
FROM MirthSource.X12835.ClaimBASE c
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON f.FunctionalGroupID = t.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_patient ON c.ClaimID = cp_patient.ClaimID AND cp_patient.NM101 = 'QC'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_insured ON c.ClaimID = cp_insured.ClaimID AND cp_insured.NM101 = 'IL'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_correctedpatient ON c.ClaimID = cp_correctedpatient.ClaimID AND cp_correctedpatient.NM101 = '74'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_provider ON c.ClaimID = cp_provider.ClaimID AND cp_provider.NM101 = '82'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_crossover ON c.ClaimID = cp_crossover.ClaimID AND cp_crossover.NM101 = 'TT'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_correctedpriority ON c.ClaimID = cp_correctedpriority.ClaimID AND cp_correctedpriority.NM101 = 'PR'
LEFT OUTER JOIN MirthSource.X12835.ClaimPersonBASE cp_othersubscriber ON c.ClaimID = cp_othersubscriber.ClaimID AND cp_othersubscriber.NM101 = 'GB'
LEFT OUTER JOIN MirthSource.X12835.InpatientAdjudicationBASE mia ON c.ClaimID = mia.ClaimID
LEFT OUTER JOIN MirthSource.X12835.OutpatientAdjudicationBASE moa ON c.ClaimID = moa.ClaimID
LEFT OUTER JOIN MirthSource.X12835.ClaimDateBASE dt_start ON c.ClaimID = dt_start.ClaimID AND dt_start.DTM01 = '232'
LEFT OUTER JOIN MirthSource.X12835.ClaimDateBASE dt_end ON c.ClaimID = dt_end.ClaimID AND dt_end.DTM01 = '233'
LEFT OUTER JOIN MirthSource.X12835.ClaimDateBASE dt_exp ON c.ClaimID = dt_exp.ClaimID AND dt_exp.DTM01 = '036'
LEFT OUTER JOIN MirthSource.X12835.ClaimDateBASE dt_rcv ON c.ClaimID = dt_rcv.ClaimID AND dt_rcv.DTM01 = '050'
LEFT OUTER JOIN MirthSource.X12835.ClaimReferenceBASE cr_mrn ON cr_mrn.ClaimID = c.ClaimID AND cr_mrn.REF01	= 'EA'
LEFT OUTER JOIN MirthSource.X12835.ClaimReferenceBASE cr_orig ON cr_orig.ClaimID = c.ClaimID AND cr_orig.REF01 = 'F8'
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimAdjustment]    Script Date: 8/8/2017 9:30:53 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimAdjustment] ([ClaimID], [ClaimAdjustmentID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ClaimAdjustmentLoadSequenceNBR], [CAS01], [CAS02], [CAS03], [CAS04], [CAS05], [CAS06], [CAS07], [CAS08], [CAS09], [CAS10], [CAS11], [CAS12], [CAS13], [CAS14], [CAS15], [CAS16], [CAS17], [CAS18], [CAS19], [LoadDTS]) AS
	SELECT [ClaimID], [ClaimAdjustmentID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ClaimAdjustmentLoadSequenceNBR], [CAS01], [CAS02], [CAS03], [CAS04], [CAS05], [CAS06], [CAS07], [CAS08], [CAS09], [CAS10], [CAS11], [CAS12], [CAS13], [CAS14], [CAS15], [CAS16], [CAS17], [CAS18], [CAS19], [LoadDTS]
	FROM (SELECT
c.ClaimID
, a.ClaimAdjustmentID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, ClaimAdjustmentLoadSequenceNBR
, CAS01
, CAS02
, CAST(NULLIF(CAS03, '') AS numeric(38,2)) CAS03
, CAST(NULLIF(CAS04, '') AS numeric(38,2)) CAS04
, CAS05
, CAST(NULLIF(CAS06, '') AS numeric(38,2)) CAS06
, CAST(NULLIF(CAS07, '') AS numeric(38,2)) CAS07
, CAS08
, CAST(NULLIF(CAS09, '') AS numeric(38,2)) CAS09
, CAST(NULLIF(CAS10, '') AS numeric(38,2)) CAS10
, CAS11
, CAST(NULLIF(CAS12, '') AS numeric(38,2)) CAS12
, CAST(NULLIF(CAS13, '') AS numeric(38,2)) CAS13
, CAS14
, CAST(NULLIF(CAS15, '') AS numeric(38,2)) CAS15
, CAST(NULLIF(CAS16, '') AS numeric(38,2)) CAS16
, CAS17
, CAST(NULLIF(CAS18, '') AS numeric(38,2)) CAS18
, CAST(NULLIF(CAS19, '') AS numeric(38,2)) CAS19
, a.LoadDTS
FROM MirthSource.X12835.ClaimAdjustmentBASE a
JOIN MirthSource.X12835.ClaimBASE c ON a.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimAmount]    Script Date: 8/8/2017 9:31:01 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimAmount] ([ClaimAmountID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [AMT01], [AMT02], [LoadDTS]) AS
	SELECT [ClaimAmountID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [AMT01], [AMT02], [LoadDTS]
	FROM (SELECT
ca.ClaimAmountID
, c.ClaimID
, i.SourceMessageChecksum
, GS06
, ST02
, LX01
, c.ClaimLoadSequenceNBR
, AMT01
, CAST(NULLIF(AMT02, '') AS numeric(38,2)) AMT02
, ca.LoadDTS
FROM MirthSource.X12835.ClaimAmountBASE ca
JOIN MirthSource.X12835.ClaimBASE c ON ca.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON f.FunctionalGroupID = t.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimDate]    Script Date: 8/8/2017 9:31:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimDate] ([ClaimDateID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [DTM01], [DTM02], [LoadDTS]) AS
	SELECT [ClaimDateID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [DTM01], [DTM02], [LoadDTS]
	FROM (SELECT
cd.ClaimDateID
, c.ClaimID
, i.SourceMessageChecksum
, GS06
, ST02
, LX01
, c.ClaimLoadSequenceNBR
, DTM01
, CONVERT(DATETIME2,DTM02,112) as DTM02
, cd.LoadDTS
FROM MirthSource.X12835.ClaimDateBASE cd
JOIN MirthSource.X12835.ClaimBASE c ON cd.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON f.FunctionalGroupID = t.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimPerson]    Script Date: 8/8/2017 9:31:17 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimPerson] ([ClaimPersonID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [NM101], [NM102], [NM103], [NM104], [NM105], [NM106], [NM107], [NM108], [NM109], [LoadDTS]) AS
	SELECT [ClaimPersonID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [NM101], [NM102], [NM103], [NM104], [NM105], [NM106], [NM107], [NM108], [NM109], [LoadDTS]
	FROM (SELECT
p.ClaimPersonID
, c.ClaimID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, NM101
, NM102
, NM103
, NM104
, NM105
, NM106
, NM107
, NM108
, NM109
, p.LoadDTS
FROM MirthSource.X12835.ClaimPersonBASE p
JOIN MirthSource.X12835.ClaimBASE c ON p.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimQuantity]    Script Date: 8/8/2017 9:31:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimQuantity] ([ClaimQuantityID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ClaimQuantityLoadSequenceNBR], [QTY01], [QTY02], [QTY03], [QTY04], [LoadDTS]) AS
	SELECT [ClaimQuantityID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ClaimQuantityLoadSequenceNBR], [QTY01], [QTY02], [QTY03], [QTY04], [LoadDTS]
	FROM (SELECT
q.ClaimQuantityID
, c.ClaimID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, ClaimQuantityLoadSequenceNBR
, QTY01
, CAST(NULLIF(QTY02, '') AS numeric(38,2)) QTY02
, QTY03
, QTY04
, q.LoadDTS
FROM MirthSource.X12835.ClaimQuantityBASE q
JOIN MirthSource.X12835.ClaimBASE c ON q.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ClaimReference]    Script Date: 8/8/2017 9:31:34 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ClaimReference] ([ReferenceID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]) AS
	SELECT [ReferenceID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]
	FROM (SELECT
ReferenceID
, c.ClaimID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, r.LoadSequenceNBR
, REF01
, REF02
, r.LoadDTS
FROM MirthSource.X12835.ClaimReferenceBASE r
JOIN MirthSource.X12835.ClaimBASE c ON r.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[Service]    Script Date: 8/8/2017 9:31:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[Service] ([ServiceID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [SVC0101], [SVC0102], [SVC0103], [SVC0104], [SVC0105], [SVC0106], [SVC0107], [SVC0108], [SVC02], [SVC03], [SVC04], [SVC05], [SVC0601], [SVC0602], [SVC0603], [SVC0604], [SVC0605], [SVC0606], [SVC0607], [SVC0608], [SVC07], [LineItem_RF01], [LineItem_RF02], [DT_STRT], [DT_END], [DT_SRVC], [LoadDTS]) AS
	SELECT [ServiceID], [ClaimID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [SVC0101], [SVC0102], [SVC0103], [SVC0104], [SVC0105], [SVC0106], [SVC0107], [SVC0108], [SVC02], [SVC03], [SVC04], [SVC05], [SVC0601], [SVC0602], [SVC0603], [SVC0604], [SVC0605], [SVC0606], [SVC0607], [SVC0608], [SVC07], [LineItem_RF01], [LineItem_RF02], [DT_STRT], [DT_END], [DT_SRVC], [LoadDTS]
	FROM (SELECT
s.ServiceID
, c.ClaimID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, SVC0101
, SVC0102
, SVC0103
, SVC0104
, SVC0105
, SVC0106
, SVC0107
, SVC0108
, CAST(NULLIF(SVC02, '') AS numeric(38,2)) SVC02
, CAST(NULLIF(SVC03, '') AS numeric(38,2)) SVC03
, SVC04
, CAST(NULLIF(SVC05, '') AS numeric(38,2)) SVC05
, SVC0601
, SVC0602
, SVC0603
, SVC0604
, SVC0605
, SVC0606
, SVC0607
, SVC0608
, CAST(NULLIF(SVC07, '') AS numeric(38,2)) SVC07
, r.REF01 AS LineItem_RF01
, r.REF02 AS LineItem_RF02
, CONVERT(DATETIME2, dt_strt.DTM02, 112) AS DT_STRT
, CONVERT(DATETIME2, dt_end.DTM02, 112) AS DT_END
, CONVERT(DATETIME2, dt_srvc.DTM02, 112) AS DT_SRVC
, s.LoadDTS
FROM MirthSource.X12835.ServiceBASE s
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
LEFT OUTER JOIN (SELECT * FROM MirthSource.X12835.ServiceReferenceBASE WHERE REF01 = '6R') r ON s.ServiceID = r.ServiceID
LEFT OUTER JOIN (SELECT * FROM MirthSource.X12835.ServiceDateBASE WHERE DTM01 = '150') dt_strt ON s.ServiceID = dt_strt.ServiceID
LEFT OUTER JOIN (SELECT * FROM MirthSource.X12835.ServiceDateBASE WHERE DTM01 = '151') dt_end ON s.ServiceID = dt_end.ServiceID
LEFT OUTER JOIN (SELECT * FROM MirthSource.X12835.ServiceDateBASE WHERE DTM01 = '472') dt_srvc ON s.ServiceID = dt_srvc.ServiceID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0


) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ServiceAdjustment]    Script Date: 8/8/2017 9:31:56 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ServiceAdjustment] ([ServiceID], [ServiceAdjustmentID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceAdjustmentLoadSequenceNBR], [CAS01], [CAS02], [CAS03], [CAS04], [CAS05], [CAS06], [CAS07], [CAS08], [CAS09], [CAS10], [CAS11], [CAS12], [CAS13], [CAS14], [CAS15], [CAS16], [CAS17], [CAS18], [CAS19], [LineItem_RF01], [LineItem_RF02], [LoadDTS]) AS
	SELECT [ServiceID], [ServiceAdjustmentID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceAdjustmentLoadSequenceNBR], [CAS01], [CAS02], [CAS03], [CAS04], [CAS05], [CAS06], [CAS07], [CAS08], [CAS09], [CAS10], [CAS11], [CAS12], [CAS13], [CAS14], [CAS15], [CAS16], [CAS17], [CAS18], [CAS19], [LineItem_RF01], [LineItem_RF02], [LoadDTS]
	FROM (SELECT
s.ServiceID
, a.ServiceAdjustmentID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, ServiceAdjustmentLoadSequenceNBR
, CAS01
, CAS02
, CAST(NULLIF(CAS03, '') AS numeric(38,2)) CAS03
, CAST(NULLIF(CAS04, '') AS numeric(38,2)) CAS04
, CAS05
, CAST(NULLIF(CAS06, '') AS numeric(38,2)) CAS06
, CAST(NULLIF(CAS07, '') AS numeric(38,2)) CAS07
, CAS08
, CAST(NULLIF(CAS09, '') AS numeric(38,2)) CAS09
, CAST(NULLIF(CAS10, '') AS numeric(38,2)) CAS10
, CAS11
, CAST(NULLIF(CAS12, '') AS numeric(38,2)) CAS12
, CAST(NULLIF(CAS13, '') AS numeric(38,2)) CAS13
, CAS14
, CAST(NULLIF(CAS15, '') AS numeric(38,2)) CAS15
, CAST(NULLIF(CAS16, '') AS numeric(38,2)) CAS16
, CAS17
, CAST(NULLIF(CAS18, '') AS numeric(38,2)) CAS18
, CAST(NULLIF(CAS19, '') AS numeric(38,2)) CAS19
, r.REF01 AS LineItem_RF01
, r.REF02 AS LineItem_RF02
, a.LoadDTS
FROM MirthSource.X12835.ServiceAdjustmentBASE a
JOIN MirthSource.X12835.ServiceBASE s ON a.ServiceId = s.ServiceID
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
JOIN MirthSource.X12835.ServiceReferenceBASE r on s.ServiceID = r.ServiceID AND r.REF01 = '6R'
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ServiceAmount]    Script Date: 8/8/2017 9:32:04 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ServiceAmount] ([ServiceAmountID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [AMT01], [AMT02], [LoadDTS]) AS
	SELECT [ServiceAmountID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [AMT01], [AMT02], [LoadDTS]
	FROM (SELECT
a.ServiceAmountID
, s.ServiceID
, i.SourceMessageChecksum 
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, AMT01
, CAST(NULLIF(AMT02, '') AS numeric(38,2)) AMT02
, a.LoadDTS
FROM MirthSource.X12835.ServiceAmountBASE a
JOIN MirthSource.X12835.ServiceBASE s ON a.ServiceId = s.ServiceID
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ServiceQuantity]    Script Date: 8/8/2017 9:32:11 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ServiceQuantity] ([ServiceQuantityID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceQuantityLoadSequenceNBR], [QTY01], [QTY02], [QTY03], [QTY04], [LoadDTS]) AS
	SELECT [ServiceQuantityID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceQuantityLoadSequenceNBR], [QTY01], [QTY02], [QTY03], [QTY04], [LoadDTS]
	FROM (SELECT
q.ServiceQuantityID
, s.ServiceID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, ServiceQuantityLoadSequenceNBR
, QTY01
, CAST(NULLIF(QTY02, '') AS numeric(38,2)) QTY02
, QTY03
, QTY04
, q.LoadDTS
FROM MirthSource.X12835.ServiceQuantityBASE q
JOIN MirthSource.X12835.ServiceBASE s ON q.ServiceId = s.ServiceID
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ServiceReference]    Script Date: 8/8/2017 9:32:19 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ServiceReference] ([ServiceReferenceID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]) AS
	SELECT [ServiceReferenceID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [LoadSequenceNBR], [REF01], [REF02], [LoadDTS]
	FROM (SELECT
sr.ServiceReferenceID
, s.ServiceID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, sr.LoadSequenceNBR
, REF01
, REF02
, sr.LoadDTS
FROM MirthSource.X12835.ServiceReferenceBASE sr
JOIN MirthSource.X12835.ServiceBASE s ON sr.ServiceId = s.ServiceID
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

USE [MirthSource]
GO

/****** Object:  View [DiscrepancyX12835].[ServiceRemark]    Script Date: 8/8/2017 9:32:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [DiscrepancyX12835].[ServiceRemark] ([ServiceRemarkID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceRemarkLoadSequenceNBR], [LQ01], [LQ02], [LoadDTS]) AS
	SELECT [ServiceRemarkID], [ServiceID], [SourceMessageChecksum], [GS06], [ST02], [LX01], [ClaimLoadSequenceNBR], [ServiceLoadSequenceNBR], [ServiceRemarkLoadSequenceNBR], [LQ01], [LQ02], [LoadDTS]
	FROM (SELECT
sr.ServiceRemarkID
, s.ServiceID
, i.SourceMessageChecksum
, f.GS06
, t.ST02
, h.LX01
, c.ClaimLoadSequenceNBR
, s.ServiceLoadSequenceNBR
, ServiceRemarkLoadSequenceNBR
, LQ01
, LQ02
, sr.LoadDTS
FROM MirthSource.X12835.ServiceRemarkBASE sr
JOIN MirthSource.X12835.ServiceBASE s ON sr.ServiceId = s.ServiceID
JOIN MirthSource.X12835.ClaimBASE c ON S.ClaimID = c.ClaimID
JOIN MirthSource.X12835.HeaderBASE h ON h.HeaderID = c.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON t.TransactionID = h.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE i.DiscrepancyCD <> 0 OR f.DiscrepancyCD <> 0 OR t.DiscrepancyCD <> 0) AS UserQuery
GO

