delete from occurence_point as op
where extract(year from op."DISCOVERYDATETIME") <> cast(op."FIREYEAR" as double precision)
