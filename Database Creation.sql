create database mental_health;

use mental_health;

create table employee_mental_health(
	age int,
	gender varchar(100),
    employment_status varchar(100),
	work_environment varchar(100),
	mental_health_history varchar(100),
	seeks_treatment varchar(100),
	stress_level int,
	sleep_hours decimal(10,2),
	physical_activity_days int,  
	depression_score int,  
	anxiety_score int,  
	social_support_score int,  
	productivity_score decimal(10,2),
	mental_health_risk varchar(100) 
);