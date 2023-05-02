insert into year("DISCOVERYDATETIME", "FIREYEAR")
select now(), extract(year from now())
