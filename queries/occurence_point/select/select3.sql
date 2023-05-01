select "UNIQUEFIREID", "LOCALFIRENUM"
from fire_info as fi
inner join owner_agency as oa
on oa."OWNERAGENCY" = 'Tribal'
