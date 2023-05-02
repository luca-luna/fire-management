delete from occurence_point as op
where op."UNIQUEFIREID" not like concat('%', op."LOCALFIRENUM")
or op."UNIQUEFIREID" not like concat('%', op."UNITDPROTECT", '%');
