--insert into fire_info ("UNIQUEFIREID", "FIREYEAR", "UNITDOWNER","UNITDPROTECT")
insert into fire_info ("UNIQUEFIREID", "FIREYEAR", "LOCALFIRENUM","UNITDPROTECT")

select distinct op."UNIQUEFIREID", op."FIREYEAR", op."LOCALFIRENUM", op."UNITDPROTECT"
from occurence_point as op
where op."UNIQUEFIREID" is not null and op."UNITDOWNER" is not null and op."UNITDPROTECT" is not null
