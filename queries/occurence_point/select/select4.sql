select oa."OWNERAGENCY", (select count(*) from occurrence_point as op
							where op."UNITDOWNER" = oa."UNITDOWNER")
from owner_agency as oa
