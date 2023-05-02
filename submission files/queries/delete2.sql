delete from owner_agency as oa
where (select count(*) from occurrence_point as op
  		where op."UNITIDOWNER" = oa."UNITIDOWNER") <= 10
