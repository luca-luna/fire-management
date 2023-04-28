delete from occurence_point as op

--select op."UNITDOWNER", op."OWNERAGENCY"
--from occurence_point as op
where (op."UNITDOWNER" = 'NMN3S'
 or op."UNITDOWNER" = 'UTBRS'
 or op."UNITDOWNER" = 'IDPOS'
and op."OWNERAGENCY" != 'State')

or

(op."UNITDOWNER" = 'AZTNF' 
 or op."UNITDOWNER" = 'CABDF'
 or op."UNITDOWNER" = 'MTBDF'
 or op."UNITDOWNER" = 'NMLNF'
 or op."UNITDOWNER" = 'CASTF'
 or op."UNITDOWNER" = 'MTKNF'
 or op."UNITDOWNER" = 'NMCIF'
 or op."UNITDOWNER" = 'NMCAF'
 or op."UNITDOWNER" = 'NVHTF'
 or op."UNITDOWNER" = '0114'
 or op."UNITDOWNER" = 'CATCU'
and op."OWNERAGENCY" != 'USFS')

or 

(op."UNITDOWNER" = 'PRPRI' 
 or op."UNITDOWNER" = 'AZA4S'
 or op."UNITDOWNER" = 'IDCDT'
 or op."UNITDOWNER" = 'UTSWS'
 or op."UNITDOWNER" = 'CALNF'
 or op."UNITDOWNER" = 'NMN1S'
 or op."UNITDOWNER" = 'IDSJS'
 or op."UNITDOWNER" = 'NDNDS'
and op."OWNERAGENCY" != 'Private')

or 

(op."UNITDOWNER" = 'MTAST' 
and op."OWNERAGENCY" != 'BIA')
