insert into owner_agency ("UNITDOWNER", "OWNERAGENCY")

select distinct op."UNITDOWNER", op."OWNERAGENCY"
from occurence_point as op
where op."UNITDOWNER" is not null 
and op."OWNERAGENCY" is not null 
