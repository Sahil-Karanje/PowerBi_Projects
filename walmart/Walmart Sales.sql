Create Database Walmart;

use Walmart;

select * from sales_data;

alter table sales_data
modify column Date Date;

select dayname(Date) from sales_data;

alter table sales_data
add column day_name varchar(10);

update sales_data
set day_name = DAYNAME(Date);

select 
case
	when `time` between "00:00:00" and "12:00:00" THEN "Morning"
    when `time` between "12:00:00" and "16:00:00" THEN "Afternoon"
    ELSE "Evening"
end as DayTime from sales_data;

alter table sales_data
add column day_time varchar(15);

update sales_data
set day_time = (
case
	when `time` between "00:00:00" and "12:00:00" THEN "Morning"
    when `time` between "12:00:00" and "16:00:00" THEN "Afternoon"
    ELSE "Evening"
end
);

select date, monthname(Date) from sales_data;

alter table sales_data
add column month_name varchar(10);

update sales_data
set month_name = monthname(Date);

show columns from sales_data;

select * from sales_data;

alter table sales_data
rename column `Invoice ID` to Invoice_ID;

select count(distinct(Invoice_ID)) from sales_data;

select distinct(monthname(date)) from sales_data;