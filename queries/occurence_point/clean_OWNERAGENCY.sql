delete from occurence_point as op

--select op."UNITDOWNER", op."OWNERAGENCY"
--from occurence_point as op
where (op."UNITDOWNER" = 'NMN3S'
and op."OWNERAGENCY" != 'State')

or

(op."UNITDOWNER" = 'AZTNF' 
 or op."UNITDOWNER" = 'CABDF'
 or op."UNITDOWNER" = 'MTBDF'
 or op."UNITDOWNER" = 'NMLNF'
 or op."UNITDOWNER" = 'CASTF'
 or op."UNITDOWNER" = 'MTKNF'
 or op."UNITDOWNER" = 'NMCIF'
and op."OWNERAGENCY" != 'USFS')

or 

(op."UNITDOWNER" = 'PRPRI' 
 or op."UNITDOWNER" = 'AZA4S'
and op."OWNERAGENCY" != 'Private')

or 

(op."UNITDOWNER" = 'MTAST' 
and op."OWNERAGENCY" != 'BIA')
