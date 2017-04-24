
--reset the entire collection
--update mirthsource.x12.interchangebase set discrepancycd = null, DiscrepancyDSC = null
--update mirthsource.x12.functionalgroupbase set discrepancycd = null, discrepancydsc = null
--update mirthsource.x12835.transactionbase set discrepancycd = null, DiscrepancyDSC = null

-- Handle Interchange Duplicates
with interchange_dup (rownum, interchangeID) as (select row_number() over ( partition by i.ISA05, i.ISA06, i.ISA07, i.ISA08, i.ISA13 order by i.loaddts) as rownum, i.InterchangeID
from mirthsource.x12.InterchangeBASE i)
update i
set i.discrepancycd = 1
from mirthsource.x12.interchangebase i
join interchange_dup d on i.interchangeid = d.interchangeid
where d.rownum > 1

-- Handle Functional Group Duplicates
with functional_dup (rownum, InterchangeID, functionalgroupid, ISA05, ISA06, ISA07, ISA08, ISA13, GS06) as (SELECT
row_number() over (partition by ISA05, ISA06, ISA07, ISA08, ISA13, GS06 order by i.loaddts) as rownum,
i.InterchangeID, functionalgroupid, ISA05, ISA06, ISA07, ISA08, ISA13, GS06
FROM MirthSource.X12.FunctionalGroupBASE f
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
where i.DiscrepancyCD is null or i.DiscrepancyCD not in (1)
) 
--select count(*) from functional_dup where rownum > 1
update f
set f.discrepancycd = 2, f.DiscrepancyDSC = isnull(f.DiscrepancyDSC,'') + 'Duplicate functional group: ISA05 [' + d.ISA05 + '], ISA06 ' + d.ISA06 + ', ISA07 ' + d.ISA07 + ', ISA08 ' + d.ISA08 + ', ISA13 ' + d.ISA13 + ', GS06 ' + d.GS06 + ', ' 
from mirthsource.x12.functionalgroupbase f
join functional_dup d on f.functionalgroupid = d.functionalgroupid
where d.rownum > 1

　
-- Handle Transaction Duplicates
with transaction_dup (rownum, interchangeid, transactionid) as (select
row_number() over (partition by isa05, isa06, isa07, isa08, isa13, gs06, st02 order by i.loaddts) as ronum,
i.interchangeid, t.transactionid
from MirthSource.X12835.TransactionBASE t
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
where i.DiscrepancyCD is null or i.DiscrepancyCD not in (1,2)
)
--select count(*) from transaction_dup where rownum > 1
update t
set DiscrepancyCD = 3, DiscrepancyDSC = ISNULL(DiscrepancyDSC, '') + 'Duplicate transaction: ST02 [' + st02 + ']; '
from mirthsource.x12835.transactionbase t
join transaction_dup d on t.transactionid = d.transactionid
where rownum > 1

　
-- Handle Claim Duplicates
with claim_dup (rownum, interchangeid, transactionid, lx01, clp01, clp02, clp07) as (select
row_number() over (partition by isa05, isa06, isa07, isa08, isa13, gs06, st02, lx01, clp01, clp02, clp07 order by i.loaddts) as rownum
, i.interchangeid, t.transactionid, lx01, clp01, clp02, clp07
from MirthSource.X12835.ClaimBASE c
JOIN MirthSource.X12835.HeaderBASE h ON c.HeaderID = h.HeaderID
JOIN MirthSource.X12835.TransactionBASE t ON h.TransactionID = t.TransactionID
JOIN MirthSource.X12.FunctionalGroupBASE f ON t.FunctionalGroupID = f.FunctionalGroupID
JOIN MirthSource.X12.InterchangeBASE i ON f.InterchangeID = i.InterchangeID
where i.DiscrepancyCD is null or i.DiscrepancyCD not in (1,2,3)
)
--select * from claim_dup where rownum > 1
update t 
set DiscrepancyCD = 4, DiscrepancyDSC = ISNULL(DiscrepancyDSC,'') + 'Duplicate claim: LX01 [' + lx01 + '], CLP01 [' + clp01 + '], CLP02 [' + clp02 + '], CLP07 [' + clp07 + ']; '
from mirthsource.x12835.transactionbase t
join claim_dup d on t.transactionid = d.transactionid
where rownum > 1

update mirthsource.x12.interchangebase set DiscrepancyCD = 0 where DiscrepancyCD is null
update mirthsource.x12.functionalgroupbase set DiscrepancyCD = 0 where DiscrepancyCD is null
update mirthsource.x12835.transactionbase set DiscrepancyCD = 0 where DiscrepancyCD is null
