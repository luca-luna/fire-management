insert into class ("SIZECLASS", "TOTALACRES")

select distinct op."SIZECLASS", op."TOTALACRES"
from occurence_point as op
