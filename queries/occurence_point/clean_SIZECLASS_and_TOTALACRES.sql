delete from occurence_point as op

where op."TOTALACRES" is null
or op."SIZECLASS" is null
or (op."TOTALACRES" <= .25 and op."SIZECLASS" <> 'A')
or (.25 < op."TOTALACRES" and op."TOTALACRES" < 10 and op."SIZECLASS" <> 'B')
or (10 <= op."TOTALACRES" and op."TOTALACRES" < 100 and op."SIZECLASS" <> 'C')
or (100 <= op."TOTALACRES" and op."TOTALACRES" < 300 and op."SIZECLASS" <> 'D')
or (300 <= op."TOTALACRES" and op."TOTALACRES"< 1000 and op."SIZECLASS" <> 'E')
or (1000 <= op."TOTALACRES" and op."TOTALACRES" < 5000 and op."SIZECLASS" <> 'F')
or (5000 <= op."TOTALACRES" and op."SIZECLASS" <> 'G')
