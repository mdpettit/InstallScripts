select top 10 * from mirthsource.x12.interchangebase where isa05 = 'ZZ' and isa06 = 'B00099996303' and isa07 = 'ZZ' and isa08 = 'CLAIMLYNX' and isa13  = '001474409'  order by isa13

select ISA05, ISA06, ISA07, ISA08, ISA13, count(ISA05) cnt, max(interchangeid)
from mirthsource.x12.InterchangeBASE 
group by ISA05, ISA06, ISA07, ISA08, ISA13
having count(ISA05) > 1
go

--begin tran
--delete mirthsource.x12.InterchangeBASE where isa05 = 'ZZ' and isa06 = 'ENS_EDI' and isa07 = 'ZZ' and isa08 = 'GATE0035' and isa13  = '001411151' and InterchangeID < 3983

--rollback

declare @isa05 varchar(255) = '27', 
@isa06 varchar(255) = '17003', 
@isa07 varchar(255) = '29', 
@isa08 varchar(255) = 'B08230369', 
--@isa09 varchar(255) = '140109',
--@isa10 varchar(255) = '0513' ,
@isa13 varchar(255) = '000000001', 
@gs06 varchar(255) = '1', 
@st02 varchar(255) = '0001', 
@lx01 varchar(255) = '1',
@clp01 varchar(255) = '032817969854',
@clp07 varchar(255) = '13347729375000';
--select * from x12.interchangebase where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa09 = @isa09 and isa10 = @isa10 and isa13 = @isa13 order by loaddts
--select * from x12.functionalgroup where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa09 = @isa09 and isa10 = @isa10 and isa13 = @isa13 order by gs06, loaddts
--select * from x12835.[transaction] where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa09 = @isa09 and isa10 = @isa10 and isa13 = @isa13 order by gs06, st02, loaddts
--select * From x12835.header where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa09 = @isa09 and isa10 = @isa10 and isa13 = @isa13 order by gs06, st02, lx01, loaddts
select * from x12835.claim where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08  and isa13 = @isa13 order by gs06, st02, lx01, clp01, clp02, loaddts
go

　
