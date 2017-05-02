CREATE PROCEDURE [ClientAdmin].[MirthSourceAssignDiscrepancyCodes]
	@BatchID int
AS

BEGIN TRY
BEGIN TRANSACTION;

DECLARE @DatamartID int = 424;
DECLARE @SchemaNM varchar(255)
, @EntityNM varchar(255)
, @DelimitedListOfKeyColumns varchar(max)
, @DebugLoggingTypeCode VARCHAR(10) = 'Debug'
, @LogInformationDate datetime2
, @HostNM VARCHAR(255)
, @TaskNM VARCHAR(255);

SELECT
@LogInformationDate = GETDATE(),
@HostNM = HOST_NAME();

-- Interchange discrepancies
SET @SchemaNM = 'X12'
SET @EntityNM = 'Interchange'
SET @DelimitedListOfKeyColumns = NULL

SELECT @DelimitedListOfKeyColumns = COALESCE(@DelimitedListOfKeyColumns + ', ', '') + c.SourceColumnNM
FROM EDWAdmin.CatalystAdmin.TableBASE t
JOIN EDWAdmin.CatalystAdmin.ColumnBASE c ON t.TableID = c.TableID
WHERE t.DatamartID = @DatamartID 
AND t.SchemaNM = @SchemaNM
AND t.TableNM = @EntityNM
AND c.PrimaryKeyFLG = 'Y'
ORDER BY c.OrdinalNBR

DECLARE @InterchangeScript nvarchar(max) = 
'WITH interchange_dup (rownum, interchangeID) as (SELECT ROW_NUMBER() OVER ( PARTITION BY ' + @DelimitedListOfKeyColumns +' ORDER BY InterchangeID) AS rownum, InterchangeID
FROM MirthSource.X12.InterchangeBASE)
UPDATE i
SET i.discrepancycd = 1, DiscrepancyDSC = ISNULL(DiscrepancyDSC, '''') + ''Duplicate ' + @DelimitedListOfKeyColumns + '; '' 
FROM MirthSource.X12.InterchangeBase i
JOIN interchange_dup d ON i.interchangeid = d.interchangeid
WHERE d.rownum > 1'

-- Functional group discrepancies
SET @SchemaNM = 'X12'
SET @EntityNM = 'FunctionalGroup'
SET @DelimitedListOfKeyColumns = NULL

SELECT @DelimitedListOfKeyColumns = COALESCE(@DelimitedListOfKeyColumns + ', ', '') + c.SourceColumnNM
FROM EDWAdmin.CatalystAdmin.TableBASE t
JOIN EDWAdmin.CatalystAdmin.ColumnBASE c ON t.TableID = c.TableID
WHERE t.DatamartID = @DatamartID 
AND t.SchemaNM = @SchemaNM
AND t.TableNM = @EntityNM
AND c.PrimaryKeyFLG = 'Y'
ORDER BY c.OrdinalNBR

DECLARE @functionalgroupscript nvarchar(max) = 
'WITH functional_dup (rownum, functionalgroupid) AS (SELECT
ROW_NUMBER() OVER (PARTITION BY ' + @DelimitedListOfKeyColumns + ' ORDER BY f.FunctionalGroupID) AS rownum, 
functionalgroupid  
FROM MirthSource.X12.FunctionalGroupBASE f
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE  i.DiscrepancyCD IS NULL OR i.DiscrepancyCD NOT IN (1)
) 
UPDATE f
SET f.DiscrepancyCD = 2, DiscrepancyDSC = ISNULL(DiscrepancyDSC, '''') + ''Duplicate ' + @DelimitedListOfKeyColumns + '; '' 
FROM MirthSource.X12.FunctionalGroupBASE f
JOIN functional_dup d on f.FunctionalGroupID = d.FunctionalGroupID
WHERE d.rownum > 1'

　
-- Transaction discrepancies
SET @SchemaNM = 'X12835'
SET @EntityNM = 'Transaction'
SET @DelimitedListOfKeyColumns = NULL

SELECT @DelimitedListOfKeyColumns = COALESCE(@DelimitedListOfKeyColumns + ', ', '') + c.SourceColumnNM
FROM EDWAdmin.CatalystAdmin.TableBASE t
JOIN EDWAdmin.CatalystAdmin.ColumnBASE c ON t.TableID = c.TableID
WHERE t.DatamartID = @DatamartID 
AND t.SchemaNM = @SchemaNM
AND t.TableNM = @EntityNM
AND c.PrimaryKeyFLG = 'Y'
ORDER BY c.OrdinalNBR

　
DECLARE @TransactionScript nvarchar(max) = 
'WITH transaction_dup (rownum, transactionid) AS (SELECT
ROW_NUMBER() OVER (PARTITION BY ' + @DelimitedListOfKeyColumns + ' ORDER BY i.loaddts) AS ronum,
t.transactionid
FROM MirthSource.X12835.TransactionBASE t
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
WHERE (i.DiscrepancyCD IS NULL OR i.DiscrepancyCD NOT IN (1)) AND (f.DiscrepancyCD IS NULL OR f.DiscrepancyCD NOT IN (2))
)
UPDATE t
SET DiscrepancyCD = 3, DiscrepancyDSC = ISNULL(DiscrepancyDSC, '''') + ''Duplicate ' + @DelimitedListOfKeyColumns + '; '' 
FROM MirthSource.X12835.TransactionBASE t
JOIN transaction_dup d on t.TransactionID = d.TransactionID
WHERE rownum > 1'

--SELECT @InterchangeScript
--SELECT @FunctionalGroupScript
--SELECT @TransactionScript

EXECUTE sp_executesql @InterchangeScript;
--Log interchange script
EXEC EDWAdmin.CatalystAdmin.etlSetSSISEventLog 
@BatchID = @BatchID
, @TableID = NULL
, @BindingHistoryID = NULL
, @EventTypeCD = @DebugLoggingTypeCode
, @TaskNM = 'Assign Interchange Discrepancy Codes'
, @EventDSC = 'Extensibility Stored Procedure Execution'
, @EventDTS = @LogInformationDate
, @HostNM = @HostNM
, @ProcedureNM = 'ClientAdmin.MirthSourceAssignDiscrepancyCodes'
, @ExecStatment = @InterchangeScript;

EXECUTE sp_executesql @FunctionalgroupScript;
--Log functional group script
EXEC EDWAdmin.CatalystAdmin.etlSetSSISEventLog 
@BatchID = @BatchID
, @TableID = NULL
, @BindingHistoryID = NULL
, @EventTypeCD = @DebugLoggingTypeCode
, @TaskNM = 'Assign Functional Group Discrepancy Codes'
, @EventDSC = 'Extensibility Stored Procedure Execution'
, @EventDTS = @LogInformationDate
, @HostNM = @HostNM
, @ProcedureNM = 'ClientAdmin.MirthSourceAssignDiscrepancyCodes'
, @ExecStatment = @functionalgroupscript;

EXECUTE sp_executesql @TransactionScript;
--Log transaction script
EXEC EDWAdmin.CatalystAdmin.etlSetSSISEventLog 
@BatchID = @BatchID
, @TableID = NULL
, @BindingHistoryID = NULL
, @EventTypeCD = @DebugLoggingTypeCode
, @TaskNM = 'Assign Transaction Discrepancy Codes'
, @EventDSC = 'Extensibility Stored Procedure Execution'
, @EventDTS = @LogInformationDate
, @HostNM = @HostNM
, @ProcedureNM = 'ClientAdmin.MirthSourceAssignDiscrepancyCodes'
, @ExecStatment = @transactionscript;

UPDATE MirthSource.X12.interchangebase SET DiscrepancyCD = 6, DiscrepancyDSC = 'Invalid date format: ISA09 [' + ISA09 + ']', ISA09 = '' WHERE discrepancycd is NULL AND LEN(isa09) <> 6;
UPDATE MirthSource.X12.interchangebase SET DiscrepancyCD = 7, DiscrepancyDSC = 'Invalid time format: ISA10 [' + ISA10 + ']', ISA10 = '' WHERE discrepancycd is NULL AND LEN(isa10) <> 4;

UPDATE MirthSource.X12.InterchangeBASE SET DiscrepancyCD = 0 WHERE DiscrepancyCD IS NULL;
UPDATE MirthSource.X12.FunctionalGroupBASE SET DiscrepancyCD = 0 WHERE DiscrepancyCD IS NULL;
UPDATE MirthSource.X12835.TransactionBASE SET DiscrepancyCD = 0 WHERE DiscrepancyCD IS NULL;

COMMIT

END TRY
BEGIN CATCH
ROLLBACK
END CATCH
