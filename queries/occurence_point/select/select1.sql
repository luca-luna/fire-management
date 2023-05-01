select count(*)
from occurrence_point as op

inner join class as c
on c."TOTALACRES" = op."TOTALACRES"

where c."SIZECLASS" = 'G'
