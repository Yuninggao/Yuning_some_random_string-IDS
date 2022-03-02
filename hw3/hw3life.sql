SET SQL_SAFE_UPDATES=0;
delete from Life_Expectancy where population=0;
use ids8db;
select * from Life_Expectancy;
SET SQL_SAFE_UPDATES=0;
select  @avg_Life_Expectancy :=avg(Life_Expectancy) from Life_Expectancy;
update Life_Expectancy set Life_Expectancy=@avg_Life_Expectancy where Life_Expectancy=null or  Life_Expectancy=0;
select * from Life_Expectancy;
select  @avg_adult_mortality :=avg(adult_mortality ) from Life_Expectancy;
update Life_Expectancy set adult_mortality=@avg_adult_mortality where adult_mortality=null;
select * from Life_Expectancy;
select  @avg_alcohol :=avg(alcohol) from Life_Expectancy;
update Life_Expectancy set alcohol=@avg_alcohol where alcohol=null or alcohol=0;
select * from Life_Expectancy;
select  @avg_percentage_expenditure :=avg(percentage_expenditure) from Life_Expectancy;
update Life_Expectancy set percentage_expenditure=@avg_percentage_expenditure 
where percentage_expenditure=null or percentage_expenditure=0;
select * from Life_Expectancy;
select  @avg_BMI :=avg(BMI) from Life_Expectancy;
update Life_Expectancy set BMI=@avg_BMI where BMI=null or BMI=0;
select * from Life_Expectancy;

select  @avg_total_expenditure :=avg(total_expenditure) from Life_Expectancy;
update Life_Expectancy set total_expenditure=@avg_total_expenditure 
where total_expenditure=null or total_expenditure=0;
select * from Life_Expectancy;

select  @avg_GDP :=avg(GDP) from Life_Expectancy;
update Life_Expectancy set GDP=@avg_GDP where GDP=null or GDP=0;
select * from Life_Expectancy;

select  @avg_schooling :=avg(schooling ) from Life_Expectancy;
update Life_Expectancy set schooling =@avg_schooling  where schooling =null or schooling =0;
select * from Life_Expectancy;

select count(*)countries from Life_Expectancy;

select country,Adult_Mortality from Life_Expectancy
where Adult_Mortality=(select max(adult_mortality) from Life_Expectancy )and(Year between 2010 and 2015);


select country,Adult_Mortality from Life_Expectancy
where Adult_Mortality=(select min(adult_mortality) from Life_Expectancy )and(Year between 2010 and 2015);


select country,population from Life_Expectancy
where population=(select max(population) from Life_Expectancy )and(Year between 2010 and 2015);

select country,population from Life_Expectancy
where population=(select min(population) from Life_Expectancy )and(Year between 2010 and 2015);

select country,GDP from Life_Expectancy
where GDP=(select min(GDP) from Life_Expectancy )and(Year between 2010 and 2015);

select country,Schooling from Life_Expectancy
where Schooling=(select min(Schooling) from Life_Expectancy )and(Year between 2010 and 2015);

select country,alcohol from Life_Expectancy
where alcohol=(select min(alcohol) from Life_Expectancy )and(Year between 2010 and 2015);

select country,population from Life_Expectancy 
where population =(select max(population) from Life_Expectancy );










	

