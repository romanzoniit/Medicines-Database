with RatingStoreAvailMed as(
    select distinct d.id,d.name,sum(am.count)  over (partition by d.id) as med_count
    from drugstore d
    join avail_medicament am on d.id = am.id_drugstore)

select RSAM.*, rank() over (order by RSAM.med_count desc) as ranking
from RatingStoreAvailMed as RSAM
order by ranking;

create view drug_count as (
select d.id, d.name,sum(am.count) as dcount
from drugstore d
    join avail_medicament am on d.id = am.id_drugstore
    group by d.id, d.name
         );

create view drug_count_compare as(
select d1.name as drugstore_name1,
       d1.dcount as left_count,
       d2.dcount as right_count,
       d2.name as drugstore_name2
from drug_count as d1
left join drug_count as d2
on d1.dcount < d2.dcount
);
create view drug_count_rating as
    (
    select dcc.left_count , count(distinct dcc.right_count) as rating
    from drug_count_compare as dcc
    group by dcc.left_count
    );

select dc.id,dc.name,dc.dcount,dcr.rating+1 as ranking
from drug_count dc
join drug_count_rating dcr on dc.dcount=dcr.left_count
order by ranking;

with drug_count as (
    select d.id, d.name, sum(am.count) as dcount
    from drugstore d
             join avail_medicament am on d.id = am.id_drugstore
    group by d.id, d.name
),

     drug_count_compare as (
         select d1.name   as drugstore_name1,
                d1.dcount as left_count,
                d2.dcount as right_count,
                d2.name   as drugstore_name2
         from drug_count as d1
                  left join drug_count as d2
                            on d1.dcount < d2.dcount
     ),

     drug_count_rating as
         (
             select dcc.left_count, count(distinct dcc.right_count) as rating
             from drug_count_compare as dcc
             group by dcc.left_count
         )

select dc.id,dc.name,dc.dcount,dcr.rating+1 as ranking
from drug_count dc
join drug_count_rating dcr on dc.dcount=dcr.left_count
order by ranking;


