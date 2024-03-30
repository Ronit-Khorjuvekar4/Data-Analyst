use car;

/*Read Data*/
select * from cars.car;

/*get count of total records*/
select count(*) from car;

/* cars available in 2020*/
select * from car where year=2020;

/* how many cars availabe in 2020,2021,2022 */
select year, count(*) from car where year in (2020,2021,2022) group by year;

/* Cars available in all years */
select year, count(*) from car group by year;

/* how manny diesel car will be there in 2020 */
select count(*) from car where fuel='diesel' and year=2020;

/* how manny petrol car will be there in 2020 */
select count(*) from car where fuel='petrol' and year=2020;

/* */
select year, count(*) from car where fuel in ("petrol","diesel","cng") group by year;

/* more than 100 cars in given year, which year?? */
select count(*) as ok ,year  from car group by year having ok>=100;
select count(*) as ok ,year  from car group by year having ok<=100;

/* all cars count details between 2015-2023 */
select * from car where year between 2015 and 2023;

/* End */


