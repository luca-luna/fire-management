select oa."OWNERAGENCY", (select count(*) from occurrence_point as op
   				where op."UNITIDOWNER" = oa."UNITIDOWNER")
from owner_agency as oa
