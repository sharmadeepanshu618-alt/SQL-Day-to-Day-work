show databases;
use world;

describe country;

select * from country;

select name,continent from country;
select continent,name,continent from country;
select name,continent,population,population+500 from country;
select *
from
country;

select name,population,population+1000 asnwpopulation from country;

select * from country
where continent='asia';

select * from country
where name='bahrain';

select name,continent,population from country
where name='india';

select * from country where population=1013662000;

select * from country where continent='europe'
and IndepYear>1900;

select * from country where continent='europe'
or IndepYear>1900;

select code,name from country where SurfaceArea>1900;
select code,name from country where Region='Southern Europe';
select code,name from country where Continent='africa' and region='central africa';
select name,continent,population from country 
where Continent='asia' or Continent='africa';
select name,population,region,population+(population*10/100) from country
where IndepYear>1950;
select name,localname from country where name=localname;

-- like opretor
select * from city where name like 'new%';
select * from city where name like 'a%';
select * from country where name like '%a%';

-- in opretor ka matlab hai in values mai se koi v match ho jaye
select * from country where name in ('japan');
select * from country where name in ('india','china','japan');

-- between opretor
select name,population from country
where population between 10000000 and 50000000; 
show tables;

select*from city;
select district,population from city; 

-- rows filter ke liye where clause
select* from city where name='kabul';
select district,population from city where name='kabul';
select district,population,countrycode from city where countrycode='ind' and population>2000000;

select district,population,countrycode from city where countrycode='ind' or population>2000000;

select *from city where countrycode='afg' and countrycode='ind';

select *from city where countrycode='afg' and district='kabol';


select * from city where population>100000 and population<150000;
select * from city where population between 100000 and 150000;

select * from city where population=129170 or population= 117196;
select * from city where population in (129170 , 117196);

select*from city where name='breda';
select*from city where name like 'ka%';
select*from city where name like '%a';
select*from city where name like 'b%a';
select*from city where name like '%a%';

select * from city where name like 't___%';
select * from city where name like 'a%__';
select * from city where name like '_ a%__';

select name,population from city where name like '%e%';
select name, population from city where name like '%b_';
select name ,population from city where name like '_a%r_';
select name ,population from city where name like '%aa%';
select name ,population from city where name like '_%e_e%_';


