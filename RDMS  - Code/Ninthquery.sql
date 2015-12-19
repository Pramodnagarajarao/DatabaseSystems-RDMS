select subquery1.ratio/subquery2.ratio from (select owner_id, count(villa_id)from villa where villa_id in (select DISTINCT villa_id FROM reservation WHERE VILLA_ID NOT IN 
(select villa_id FROM reservation WHERE  '15-AUG-2014'  between start_date and end_date)) group by
owner_id )subquery1, (select owner_id, count(*) as ratio from villa group by owner_id) subquery2 where subquery1.owner_id = subquery2.owner_id ;
