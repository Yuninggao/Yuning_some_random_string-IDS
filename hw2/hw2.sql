use ids8db;
select * from USArrests;
desc USArrests;
SET SQL_SAFE_UPDATES=0;
select @avg_Assault :=avg(Assault)from USArrests;
update USArrests set Assault = @avg_Assault where Assault = 0;

select * from USArrests;

select min(Assault),MAX(Assault),AVG(Assault),variance(Assault)
from USArrests;
select min(Murder),MAX(Murder),AVG(Murder),variance(Murder)
from USArrests;

select min(UrbanPop), MAX(UrbanPop),AVG(UrbanPop),variance(UrbanPop) 
from USArrests;

select state, MAX(Murder) from USArrests;

select UrbanPop from USArrests 
order by UrbanPop asc ;

select state from USArrests 
where Murder > (select Murder from USArrests where state = 'Arizona' );

select * from child_mortality;
desc child_mortality;

SET SQL_SAFE_UPDATES=0;
select @avg_underFive :=format(avg(underFive),1)
from child_mortality;


update child_mortality set underFive = @avg_underFive where underFive =0;

select * from child_mortality;

SET SQL_SAFE_UPDATES=0;
select @avg_infant :=format(avg(infant),1)
from child_mortality;
update child_mortality set infant = @avg_infant where infant =0;

select * from child_mortality;

SET SQL_SAFE_UPDATES=0;
select @avg_Neo :=format(avg(Neo),1)
from child_mortality;

update child_mortality set Neo = @avg_Neo where Neo= 0;

select * from child_mortality;

select year, infant from child_mortality 
where infant= (select min(infant) from child_mortality);

select year, infant from child_mortality 
where infant= (select max(infant) from child_mortality);

select year, underFive from child_mortality 
where underFive= (select min(underFive) from child_mortality);


select year, underFive from child_mortality 
where underFive= (select max(underFive) from child_mortality);


select year, Neo from child_mortality 
where Neo= (select max(Neo) from child_mortality);

select year from child_mortality 
where Neo > (select avg(Neo) from child_mortality);

select infant from child_mortality
order by infant  desc;



select format(min(infant),1),format(MAX(infant),1),format(AVG(infant),1),format(variance(infant),1),format(std(infant),1)
from child_mortality;

select format(min(underFive),1),format(MAX(underFive),1),format(AVG(underFive),1),format(variance(underFive),1),format(std(underFive),1)
from child_mortality;

select format(min(Neo),1),format(MAX(Neo),1),format(AVG(Neo),1),format(variance(Neo),1),format(std(Neo),1)
from child_mortality;

alter table child_mortality add column aboveFive varchar(50)after underFive;
select * from child_mortality;












