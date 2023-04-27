insert into fire_info ("UNIQUEFIREID", "FIREYEAR", "UNITDOWNER","UNITDPROTECT")

select distinct op."UNIQUEFIREID", op."FIREYEAR", op."UNITDOWNER", op."UNITDPROTECT"
from occurence_point as op
where op."UNIQUEFIREID" is not null and op."UNITDOWNER" is not null and op."UNITDPROTECT" is not null
