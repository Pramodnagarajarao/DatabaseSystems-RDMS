select subquery1.Villa_Id, subquery1.sumvalue from (select Villa_Id, SUM(end_date- start_date)as sumvalue FROM RESERVATION where 
start_date >=('01-JAN-2014') AND end_date <=  ('31-DEC-2014')
GROUP BY villa_id ORDER BY SUM(end_date- start_date) DESC)subquery1 where rownum <=1;