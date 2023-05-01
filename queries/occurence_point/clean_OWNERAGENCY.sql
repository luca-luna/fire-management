delete from occurence_point as op

where (op."UNITDOWNER" = 'NMN3S'
 or op."UNITDOWNER" = 'UTBRS'
 or op."UNITDOWNER" = 'IDPOS'
 or op."UNITDOWNER" = 'IDCAS'
 or op."UNITDOWNER" = 'CAGEO'
 or op."UNITDOWNER" = 'NMN5S'
 or op."UNITDOWNER" = 'MTSWS'
 or op."UNITDOWNER" = 'CABDU'
 or op."UNITDOWNER" = 'MTSOS'
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
 or op."UNITDOWNER" = 'COWRF'
 or op."UNITDOWNER" = 'NMGNF'
 or op."UNITDOWNER" = '0116'
 or op."UNITDOWNER" = 'IDIPF'
 or op."UNITDOWNER" = 'WYWYS'
 or op."UNITDOWNER" = '0102'
 or op."UNITDOWNER" = 'UTUWF'
 or op."UNITDOWNER" = 'AZASF'
 or op."UNITDOWNER" = 'IDSCF'
 or op."UNITDOWNER" = 'AZPNF'
 or op."UNITDOWNER" = '0103'
 or op."UNITDOWNER" = 'MTHNF'
 or op."UNITDOWNER" = 'IDNCF'
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
 or op."UNITDOWNER" = 'MTLG04'
 or op."UNITDOWNER" = 'MTLG14'
 or op."UNITDOWNER" = 'MTNWS'
 or op."UNITDOWNER" = 'MTLG24'
 or op."UNITDOWNER" = 'MTPLN'
 or op."UNITDOWNER" = 'UTSCS'
 or op."UNITDOWNER" = 'AZFTA'
 or op."UNITDOWNER" = 'NMN2S'
 or op."UNITDOWNER" = 'UTNWS'
and op."OWNERAGENCY" != 'Private')

or

(op."UNITDOWNER" = 'MTAST'
 or op."UNITDOWNER" = 'NDTMA'
 or op."UNITDOWNER" = 'SDSDS'
 or op."UNITDOWNER" = 'MTCRA'
and op."OWNERAGENCY" != 'BIA')


or

(op."UNITDOWNER" = 'MTNCD'
 or op."UNITDOWNER" = 'AZCRD'
 or op."UNITDOWNER" = 'MTMCD'
 and op."OWNERAGENCY" != 'BLM')
 
or

(op."UNITDOWNER" = 'IDNPT'
 and op."OWNERAGENCY" != 'Tribal')
 
or

(op."UNITDOWNER" = ' ')
