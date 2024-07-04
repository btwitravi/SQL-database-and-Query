create database Car;
use car;

-- View table and Cleaning data 
select*from Car_price;
-- Delte Unknown Column
alter table car_price drop column MyUnknownColumn;
-- Change Column Name
ALTER TABLE car_price 
CHANGE `max_power (in bph)` max_power FLOAT;

ALTER TABLE car_price 
CHANGE `Engine (CC)`  Engine FLOAT;

-- Describe the table 
desc Car_price;


-- Problem and Solution

-- Q1. Find the average selling price of cars for each year.
select year,avg(Selling_Price)as Average_Price from car_Price
group by year
order by year asc;

-- Q2. List all diesel cars with mileage greater than 20 kmpl.
select*from car_price
where fuel = "Diesel"
and mileage>20;

-- Q3. Count the number of cars sold by each seller type.
select Seller_type ,count(*) as Count from car_Price
group by Seller_type;

-- Q4. Find the most common car brand in the dataset.
select name, count(*) as Count from Car_Price
group by name
order by Count desc
Limit 1;

-- Q5. Retrieve all cars with more than 100,000 km driven.
select*from Car_price
where km_Driven>100000;

-- Q6. Calculate the average max power of cars based on their fuel type.
select Fuel, avg(max_power) as Average_Power_Max from Car_Price
group by Fuel;

-- Q7. Find the oldest car in the dataset.
select*from car_Price 
order by year asc
limit 1;

-- Q8. Get the total number of manual and automatic transmission cars.
 select transmission, count(transmission)as Count from Car_Price
 group by transmission;
 
 -- Q9. Find the average selling price of first owner cars vs second owner cars.
 select Owner, avg(Selling_Price) as Avg_Price from car_Price
 where Owner in ("first Owner", "Second Owner")
 group by Owner;
 
 -- Q10. List the cars with the highest engine capacity (CC):
 select*from Car_price
 order by Engine Desc
 limit 10;
 