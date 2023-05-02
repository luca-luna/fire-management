select "UNIQFIREID"
from fire_info as fi
inner join protection_agency as pa
on (pa."UNITIDPROTECT" = fi."UNITIDPROTECT"
and pa."PROTECTIONAGENCY" = 'USFS' )
