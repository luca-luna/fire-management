insert into year ("DISCOVERYDATETIME", "FIREYEAR")

select distinct op."DISCOVERYDATETIME", op."FIREYEAR"
from occurence_point as op
where op."DISCOVERYDATETIME" is not null and op."FIREYEAR" is not null
