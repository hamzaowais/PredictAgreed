use mimiciiiv13;
SELECT * FROM mimiciiiv13.D_ITEMS;


select  label, count(*) from D_ITEMS where label like '%heart rate%' group by label;
select * from D_ITEMS where label like '%heart rate%';



select  label, count(*) from D_ITEMS where label group by label order by count(*) desc;