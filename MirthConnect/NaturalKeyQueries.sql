select ISA05, ISA06, ISA07, ISA08, ISA13, count(ISA05) cnt
from mirthsource.x12.InterchangeBASE 
group by ISA05, ISA06, ISA07, ISA08, ISA13
having count(ISA05) > 1
go

select ISA05, ISA06, ISA07, ISA08, ISA09, ISA10, ISA13, count(ISA05) cnt
from mirthsource.x12.InterchangeBASE 
group by ISA05, ISA06, ISA07, ISA08, ISA09, ISA10, ISA13
having count(ISA05) > 1
go

declare @isa05 varchar(255) = 'ZZ', 
@isa06 varchar(255) = 'B00099996303', 
@isa07 varchar(255) = 'ZZ', 
@isa08 varchar(255) = 'CLAIMLYNX',
@isa09 varchar(255) = '140128',
@isa10 varchar(255) = '1302' ,
@isa13 varchar(255) = '001474409';
select * From x12.interchangebase where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa09 = @isa09 and isa10 = @isa10 and isa13 = @isa13
go

select ISA05, ISA06, ISA07, ISA08, ISA13, GS06, ST02, LX01, CLP01, CLP07,count(ISA05) cnt
from mirthsource.x12835.claim 
group by ISA05, ISA06, ISA07, ISA08, ISA13, GS06, ST02, LX01, CLP01, CLP07
having count(ISA05) > 1
go

declare @isa05 varchar(255) = '27', 
@isa06 varchar(255) = '17003', 
@isa07 varchar(255) = '29', 
@isa08 varchar(255) = 'B08230369', 
@isa13 varchar(255) = '000000001', 
@gs06 varchar(255) = '1', 
@st02 varchar(255) = '0001', 
@lx01 varchar(255) = '1',
@clp01 varchar(255) = '032817969854',
@clp07 varchar(255) = '13347729375000';
select * from x12.interchangebase where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa13 = @isa13
--select * from x12.functionalgroup where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa13 = @isa13-- and gs06 = @gs06
--select * from x12835.[transaction] where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa13 = @isa13 order by st02-- and gs06 = @gs06 and st02 = @st02
--select * From x12835.header where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa13 = @isa13 order by lx01-- and gs06 = @gs06 and st02 = @st02 and lx01 = @lx01
select * from x12835.claim where isa05 = @isa05 and isa06 = @isa06 and isa07 = @isa07 and isa08 = @isa08 and isa13 = @isa13 and gs06 = @gs06 and st02 = @st02 and lx01 = @lx01 and clp01 = @clp01
go
