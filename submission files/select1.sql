select count(*), sum(c."TOTALACRES")
from occurrence_point as op
inner join class as c
on c."TOTALACRES" = op."TOTALACRES"

where c."SIZECLASS" = 'G'
