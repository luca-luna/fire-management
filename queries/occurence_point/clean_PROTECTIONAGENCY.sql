delete from occurence_point as op

--select op."UNITDOWNER", op."OWNERAGENCY"
--from occurence_point as op
where 
(op."UNITDPROTECT" = 'NMN3S'
 or op."UNITDPROTECT" = 'NMN1S'
and op."PROTECTIONAGENCY" != 'State')

or

(op."UNITDPROTECT" = 'IDMIS'
 and op."PROTECTIONAGENCY" != 'DL')
 
or

(op."UNITDPROTECT" = 'NVEFKX'
 and op."PROTECTIONAGENCY" != 'County')
 
or

(op."UNITDPROTECT" = 'CAANF'
 or op."UNITDPROTECT" = 'CACNF'
 or op."UNITDPROTECT" = 'NMCIF'
 or op."UNITDPROTECT" = 'ORCGF'
 or op."UNITDPROTECT" = 'COSJF'
 or op."UNITDPROTECT" = 'CASQF'
 or op."UNITDPROTECT" = 'IDPAF'
 or op."UNITDPROTECT" = 'CALPF'
 or op."UNITDPROTECT" = 'MTFNF'
 or op."UNITDPROTECT" = 'CALNF'
 or op."UNITDPROTECT" = 'ALALF'
 or op."UNITDPROTECT" = 'CAMDF'
 or op."UNITDPROTECT" = 'CAINF'
 or op."UNITDPROTECT" = 'CAENF'
 or op."UNITDPROTECT" = 'CAPNF'
 or op."UNITDPROTECT" = 'WYMRF'
 or op."UNITDPROTECT" = 'AZFHQ'
 or op."UNITDPROTECT" = 'CATMU'
 or op."UNITDPROTECT" = 'CAKNF'
 or op."UNITDPROTECT" = 'CASNF'
 or op."UNITDPROTECT" = 'AZKNF'
 or op."UNITDPROTECT" = 'CASHF'
 or op."UNITDPROTECT" = 'CASRF'
 or op."UNITDPROTECT" = 'IDNCF'
 or op."UNITDPROTECT" = 'CATNF'
 and op."PROTECTIONAGENCY" != 'USFS')
 
or

(op."UNITDPROTECT" = 'MTNWS'
 and op."PROTECTIONAGENCY" != 'DNRC')
 
or

(op."UNITDPROTECT" = 'MTKNF'
 or op."UNITDPROTECT" = 'MTCGF'
 or op."UNITDPROTECT" = 'MTLNF'
 or op."UNITDPROTECT" = 'IDIPF'
 or op."UNITDPROTECT" = 'MTBRF'
 or op."UNITDPROTECT" = 'MTHLF'
 or op."UNITDPROTECT" = 'NDDPF'
 or op."UNITDPROTECT" = 'CAMVU'
 and op."PROTECTIONAGENCY" != 'FS')

or

(op."UNITDPROTECT" = 'COBLX'
 or op."UNITDPROTECT"= 'WYCMX'
 and op."PROTECTIONAGENCY" != 'County')

or

(op."UNITDPROTECT" = 'WAKLCN'
 or op."UNITDPROTECT" = 'ALALS'
 or op."UNITDPROTECT" = 'NMN6S'
 or op."UNITDPROTECT" = 'NMN4S'
 or op."UNITDPROTECT" = 'WANES'
 or op."UNITDPROTECT" = 'CALMU'
 or op."UNITDPROTECT" = 'CARRU'
 or op."UNITDPROTECT" = 'CABDU'
 and op."PROTECTIONAGENCY" != 'State')
 
or

(op."UNITDPROTECT" = 'CACDD'
 and op."PROTECTIONAGENCY" != 'BLM')
 
or

(op."UNITDPROTECT" = 'MTLG25'
 and op."PROTECTIONAGENCY" != 'C&L')






