-- This file will bulk load the dataset from both csv files, insert into the appropriate tables, and clean the appropriate tuples

-- Be sure to update the correct paths for the csv files

copy fire_perimeter
from 'C:\Users\Junqi\Desktop\Untitled Folder/National_USFS_Fire_Perimeter_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;

copy occurrence_point
from 'C:\Users\Junqi\Desktop\Untitled Folder/National_USFS_Fire_Occurrence_Point_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;

-- General cleaning of empty tuples in the dataset
delete from occurrence_point as op
where op."UNIQFIREID" is null
or op."UNIQFIREID" = ' '
or op."FIREOCCURID" is null
or op."LOCALFIRENUM" is null
or op."PROTECTIONAGENCY" is null
or op."UNITIDOWNER" is null
or op."UNITIDPROTECT" is null   
or op."OWNERAGENCY" is null
or op."GLOBALID" is null;

-- Clean multiple entries of the same fire in occurrence_point
delete from occurrence_point
where "FIREOCCURID" in 
(select op."FIREOCCURID"
from occurrence_point as op
group by op."FIREOCCURID"
having count(*) > 1);

-- Remove dates which were entered incorrectly
delete from occurrence_point as op
where extract(year from op."DISCOVERYDATETIME") <> cast(op."FIREYEAR" as double precision);


-- Clean uniqfireid related stuff
delete from occurrence_point as op
where op."UNIQFIREID" not like '%-%-%'
or op."UNIQFIREID" not like concat('%', op."LOCALFIRENUM")
or op."UNIQFIREID" not like concat('%', op."UNITIDPROTECT", '%');


-- Remove size classes which were entered incorrectly
delete from occurrence_point as op
where op."TOTALACRES" is null
or op."SIZECLASS" is null
or (op."TOTALACRES" <= .25 and op."SIZECLASS" <> 'A')
or (.25 < op."TOTALACRES" and op."TOTALACRES" < 10 and op."SIZECLASS" <> 'B')
or (10 <= op."TOTALACRES" and op."TOTALACRES" < 100 and op."SIZECLASS" <> 'C')
or (100 <= op."TOTALACRES" and op."TOTALACRES" < 300 and op."SIZECLASS" <> 'D')
or (300 <= op."TOTALACRES" and op."TOTALACRES"< 1000 and op."SIZECLASS" <> 'E')
or (1000 <= op."TOTALACRES" and op."TOTALACRES" < 5000 and op."SIZECLASS" <> 'F')
or (5000 <= op."TOTALACRES" and op."SIZECLASS" <> 'G');

-- Clean owner agency IDs which have changed
delete from occurrence_point as op
where (op."UNITIDOWNER" = 'NMN3S'
 or op."UNITIDOWNER" = 'UTBRS'
 or op."UNITIDOWNER" = 'IDPOS'
 or op."UNITIDOWNER" = 'IDCAS'
 or op."UNITIDOWNER" = 'CAGEO'
 or op."UNITIDOWNER" = 'NMN5S'
 or op."UNITIDOWNER" = 'MTSWS'
 or op."UNITIDOWNER" = 'CABDU'
 or op."UNITIDOWNER" = 'MTSOS'
and op."OWNERAGENCY" != 'State')
or
(op."UNITIDOWNER" = 'AZTNF'
 or op."UNITIDOWNER" = 'CABDF'
 or op."UNITIDOWNER" = 'MTBDF'
 or op."UNITIDOWNER" = 'NMLNF'
 or op."UNITIDOWNER" = 'CASTF'
 or op."UNITIDOWNER" = 'MTKNF'
 or op."UNITIDOWNER" = 'NMCIF'
 or op."UNITIDOWNER" = 'NMCAF'
 or op."UNITIDOWNER" = 'NVHTF'
 or op."UNITIDOWNER" = '0114'
 or op."UNITIDOWNER" = 'CATCU'
 or op."UNITIDOWNER" = 'COWRF'
 or op."UNITIDOWNER" = 'NMGNF'
 or op."UNITIDOWNER" = '0116'
 or op."UNITIDOWNER" = 'IDIPF'
 or op."UNITIDOWNER" = 'WYWYS'
 or op."UNITIDOWNER" = '0102'
 or op."UNITIDOWNER" = 'UTUWF'
 or op."UNITIDOWNER" = 'AZASF'
 or op."UNITIDOWNER" = 'IDSCF'
 or op."UNITIDOWNER" = 'AZPNF'
 or op."UNITIDOWNER" = '0103'
 or op."UNITIDOWNER" = 'MTHNF'
 or op."UNITIDOWNER" = 'IDNCF'
and op."OWNERAGENCY" != 'USFS')
or
(op."UNITIDOWNER" = 'PRPRI'
 or op."UNITIDOWNER" = 'AZA4S'
 or op."UNITIDOWNER" = 'IDCDT'
 or op."UNITIDOWNER" = 'UTSWS'
 or op."UNITIDOWNER" = 'CALNF'
 or op."UNITIDOWNER" = 'NMN1S'
 or op."UNITIDOWNER" = 'IDSJS'
 or op."UNITIDOWNER" = 'NDNDS'
 or op."UNITIDOWNER" = 'MTLG04'
 or op."UNITIDOWNER" = 'MTLG14'
 or op."UNITIDOWNER" = 'MTNWS'
 or op."UNITIDOWNER" = 'MTLG24'
 or op."UNITIDOWNER" = 'MTPLN'
 or op."UNITIDOWNER" = 'UTSCS'
 or op."UNITIDOWNER" = 'AZFTA'
 or op."UNITIDOWNER" = 'NMN2S'
 or op."UNITIDOWNER" = 'UTNWS'
and op."OWNERAGENCY" != 'Private')
or
(op."UNITIDOWNER" = 'MTAST'
 or op."UNITIDOWNER" = 'NDTMA'
 or op."UNITIDOWNER" = 'SDSDS'
 or op."UNITIDOWNER" = 'MTCRA'
and op."OWNERAGENCY" != 'BIA')
or
(op."UNITIDOWNER" = 'MTNCD'
 or op."UNITIDOWNER" = 'AZCRD'
 or op."UNITIDOWNER" = 'MTMCD'
 and op."OWNERAGENCY" != 'BLM')
or
(op."UNITIDOWNER" = 'IDNPT'
 and op."OWNERAGENCY" != 'Tribal')
or
(op."UNITIDOWNER" = ' ');


-- Clean protection agency IDs which have changed
delete from occurrence_point as op
where 
(op."UNITIDPROTECT" = 'NMN3S'
 or op."UNITIDPROTECT" = 'NMN1S'
 or op."UNITIDPROTECT" = 'CASHU'
and op."PROTECTIONAGENCY" != 'State')
or
(op."UNITIDPROTECT" = 'IDMIS'
 and op."PROTECTIONAGENCY" != 'DL')
or
(op."UNITIDPROTECT" = 'NVEFKX'
 and op."PROTECTIONAGENCY" != 'County')
or
(op."UNITIDPROTECT" = 'CAANF'
 or op."UNITIDPROTECT" = 'CACNF'
 or op."UNITIDPROTECT" = 'NMCIF'
 or op."UNITIDPROTECT" = 'ORCGF'
 or op."UNITIDPROTECT" = 'COSJF'
 or op."UNITIDPROTECT" = 'CASQF'
 or op."UNITIDPROTECT" = 'IDPAF'
 or op."UNITIDPROTECT" = 'CALPF'
 or op."UNITIDPROTECT" = 'MTFNF'
 or op."UNITIDPROTECT" = 'CALNF'
 or op."UNITIDPROTECT" = 'ALALF'
 or op."UNITIDPROTECT" = 'CAMDF'
 or op."UNITIDPROTECT" = 'CAINF'
 or op."UNITIDPROTECT" = 'CAENF'
 or op."UNITIDPROTECT" = 'CAPNF'
 or op."UNITIDPROTECT" = 'WYMRF'
 or op."UNITIDPROTECT" = 'AZFHQ'
 or op."UNITIDPROTECT" = 'CATMU'
 or op."UNITIDPROTECT" = 'CAKNF'
 or op."UNITIDPROTECT" = 'CASNF'
 or op."UNITIDPROTECT" = 'AZKNF'
 or op."UNITIDPROTECT" = 'CASHF'
 or op."UNITIDPROTECT" = 'CASRF'
 or op."UNITIDPROTECT" = 'IDNCF'
 or op."UNITIDPROTECT" = 'CATNF'
 or op."UNITIDPROTECT" = 'ORMAF'
 or op."UNITIDPROTECT" = 'UTUWF'
 or op."UNITIDPROTECT" = 'AZCNF'
 or op."UNITIDPROTECT" = 'NMFAD'
 or op."UNITIDPROTECT" = 'OROCF'
 and op."PROTECTIONAGENCY" != 'USFS')
or
(op."UNITIDPROTECT" = 'MTNWS'
 and op."PROTECTIONAGENCY" != 'DNRC')
or
(op."UNITIDPROTECT" = 'MTKNF'
 or op."UNITIDPROTECT" = 'MTCGF'
 or op."UNITIDPROTECT" = 'MTLNF'
 or op."UNITIDPROTECT" = 'IDIPF'
 or op."UNITIDPROTECT" = 'MTBRF'
 or op."UNITIDPROTECT" = 'MTHLF'
 or op."UNITIDPROTECT" = 'NDDPF'        
 or op."UNITIDPROTECT" = 'CAMVU'
 and op."PROTECTIONAGENCY" != 'FS')
or
(op."UNITIDPROTECT" = 'COBLX'
 or op."UNITIDPROTECT"= 'WYCMX'
 or op."UNITIDPROTECT" = 'CALAC'
 or op."UNITIDPROTECT" = 'MTLG01'
 and op."PROTECTIONAGENCY" != 'County')
or
(op."UNITIDPROTECT" = 'WAKLCN'
 or op."UNITIDPROTECT" = 'ALALS'
 or op."UNITIDPROTECT" = 'NMN6S'
 or op."UNITIDPROTECT" = 'NMN4S'
 or op."UNITIDPROTECT" = 'WANES'
 or op."UNITIDPROTECT" = 'CALMU'
 or op."UNITIDPROTECT" = 'CARRU'
 or op."UNITIDPROTECT" = 'CABDU'
 or op."UNITIDPROTECT" = 'OR950S'
 or op."UNITIDPROTECT" = 'CASKU'
 or op."UNITIDPROTECT" = 'NMN2S'
 and op."PROTECTIONAGENCY" != 'State')
or
(op."UNITIDPROTECT" = 'CACDD'
 and op."PROTECTIONAGENCY" != 'BLM')
or
(op."UNITIDPROTECT" = 'MTLG25'
 and op."PROTECTIONAGENCY" != 'C&L')
or
(op."UNITIDPROTECT" = 'MTCES'
 and op."PROTECTIONAGENCY" != 'DNRC');


-- Decompose out year table
insert into year ("DISCOVERYDATETIME", "FIREYEAR")
select distinct op."DISCOVERYDATETIME", op."FIREYEAR"
from occurrence_point as op
where op."DISCOVERYDATETIME" is not null and op."FIREYEAR" is not null;


-- Decompose out fire_info table
insert into fire_info ("UNIQFIREID", "FIREYEAR", "UNITIDPROTECT", "LOCALFIRENUM")
select distinct op."UNIQFIREID", op."FIREYEAR", op."UNITIDPROTECT", op."LOCALFIRENUM"
from occurrence_point as op;

-- Decompose out class table
insert into class ("SIZECLASS", "TOTALACRES")
select distinct op."SIZECLASS", op."TOTALACRES"
from occurrence_point as op
where op."SIZECLASS" is not null and op."TOTALACRES" is not null;

-- Decompose out owner_agency table
insert into owner_agency ("UNITIDOWNER", "OWNERAGENCY")
select distinct op."UNITIDOWNER", op."OWNERAGENCY"
from occurrence_point as op
where op."UNITIDOWNER" is not null 
and op."OWNERAGENCY" is not null;

-- Decompose out protection_agency table
insert into protection_agency ("UNITIDPROTECT", "PROTECTIONAGENCY")
select distinct op."UNITIDPROTECT", op."PROTECTIONAGENCY"
from occurrence_point as op
where op."UNITIDPROTECT" is not null 
and op."PROTECTIONAGENCY" is not null ;


-- Drop the old columns
alter table occurrence_point
    drop column "X",
    drop column "Y",
    drop column "GLOBALID",
    drop column "FIREYEAR",
    drop column "UNITIDPROTECT",
    drop column "LOCALFIRENUM",
    drop column "SIZECLASS",
    drop column "OWNERAGENCY",
    drop column "PROTECTIONAGENCY";

-- Drop old columns from fire_perimeter
alter table fire_perimeter
    drop column "CN",
    drop column "FIRENAME",
    drop column "COMPLEXNAME",
    drop column "FIREYEAR",
    drop column "UNIQFIREID",
    drop column "SOFIRENUM",
    drop column "LOCALFIRENUM",
    drop column "REPORTINGUNIT",
    drop column "DISCOVERYDATETIME",
    drop column "SIZECLASS",
    drop column "TOTALACRES",
    drop column "STATCAUSE",
    drop column "COMMENTS",
    drop column "DATASOURCE",
    drop column "OWNERAGENCY",
    drop column "UNITIDOWNER",
    drop column "PROTECTIONAGENCY",
    drop column "UNITIDPROTECT",
    drop column "FEATURECAT",
    drop column "FIRESTATQC",
    drop column "DBSOURCEID",
    drop column "DBSOURCEDATE";
