delete from occurence_point as op

--select * from occurence_point as op

where op."UNIQUEFIREID" is null
or op."UNIQUEFIREID" = ' '
or op."UNIQUEFIREID" not like '%%%%-%%%%%-%%%%%%'
or op."FIREOCCURID" is null
or op."LOCALFIRENUM" is null
or op."PROTECTIONAGENCY" is null
or op."UNITDOWNER" is null
or op."UNITDPROTECT" is null
or op."OWNERAGENCY" is null
or op."GLOBALID" is null
