delete from occurence_point

where "FIREOCCURID" in 

					(select fp."FIREOCCURID"--, fp."FIRENAME", count(*)
					from occurence_point as fp
					group by fp."FIREOCCURID"
					having count(*) > 1)
