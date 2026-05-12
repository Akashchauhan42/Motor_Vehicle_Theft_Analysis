create database Motor_vehicle_theft;
use Motor_vehicle_theft;
show tables;
select * from vehicle_theft;
#What types of vehicles are most often and least often stolen? Does this vary by region?
   # Most Stolen
   select vehicle_type, count(vehicle_id) from vehicle_theft group by vehicle_type order by count(vehicle_id) desc limit 5;
   # Least Stolen
   select vehicle_type, count(vehicle_id) from vehicle_theft group by vehicle_type order by count(vehicle_id) limit 5;
   # Regionwise Most Stolen
   with theft_count as (select vehicle_type, region, count(vehicle_id) as "No_of_Vehicle_stolen" from vehicle_theft group by Region, vehicle_type order by count(vehicle_id) desc),
   theft_rank as (select vehicle_type, region, No_of_Vehicle_stolen, dense_rank() over(partition by region order by No_of_Vehicle_stolen desc) as ranking  from theft_count)
   select vehicle_type, region, No_of_Vehicle_stolen from theft_rank where ranking<3;
   # Regionwise Most Stolen
   with theft_count as (select vehicle_type, region, count(vehicle_id) as "No_of_Vehicle_stolen" from vehicle_theft group by Region, vehicle_type order by count(vehicle_id) ),
   theft_rank as (select vehicle_type, region, No_of_Vehicle_stolen, row_number() over(partition by region order by No_of_Vehicle_stolen ) as ranking  from theft_count)
   select vehicle_type, region, No_of_Vehicle_stolen from theft_rank where ranking<3;

#What colors are most and least stolen ?
select color, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by color order by count(vehicle_id) desc;

#In which regions vehicles are most and least stolen ?
select region, population, density, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by Region, population, density order by count(vehicle_id) desc;

# Which make type are more stolen?
select make_type, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by make_type order by count(vehicle_id) desc;
	# Regionwise
    select make_type, region, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by make_type, region order by count(vehicle_id) desc;


# top 10 most stolen make name 
select make_name, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by make_name order by count(vehicle_id) desc limit 10 ;

# Which years recorded the highest and lowest vehicle thefts?
select year, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by year order by year;

#In which month vehicles are most and least stolen?
select month, year, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by month, year order by year,month;

#In which weekday vehicles are most and least stolen?
select week_day, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by week_day order by week_day;

# Does Vehicle Age effect the theft?
select vehicle_age, count(vehicle_id) as "No of Vehicle_stolen" from vehicle_theft group by vehicle_age order by vehicle_age;