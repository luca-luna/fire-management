select y."FIREYEAR", (select count(*)
   				from occurrence_point as op
   				where extract(year from op."DISCOVERYDATETIME") =        
y."FIREYEAR") as c

from year as y
group by c, y."FIREYEAR"
