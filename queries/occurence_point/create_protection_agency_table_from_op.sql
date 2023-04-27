insert into protection_agency ("UNITDPROTECT", "PROTECTIONAGENCY")

select distinct op."UNITDPROTECT", op."PROTECTIONAGENCY"
from occurence_point as op
where op."UNITDPROTECT" is not null 
and op."PROTECTIONAGENCY" is not null 
