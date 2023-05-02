select "UNQIDFIREID"
from fire_info as fi
inner join owner_agency as oa
on (oa."UNITDOWNER" = fi."UNITDOWNER"
and oa."OWNERAGENCY" = 'Tribal' )
