use mental_health;

select * from employee_mental_health;

select
mental_health_risk,
round(avg(productivity_score),2) as Average_productivity_score,
round(avg(sleep_hours),2) as average_sleep_hours
from employee_mental_health
group by mental_health_risk
order by mental_health_risk;

select
age,
gender,
round(avg(social_support_score), 2) as Average_social_support_score
from employee_mental_health
where employment_status = 'Unemployed'
group by age,gender
order by Average_social_support_score desc
limit 5;

select
work_environment,
seeks_treatment,
count(work_environment) as count_work_environment
from employee_mental_health
group by seeks_treatment,work_environment;

select
gender,
mental_health_history,
round(avg(physical_activity_days), 2) as average_physical_activity_days,
round(avg(stress_level), 2) as average_stress_level
from employee_mental_health
group by  gender, mental_health_history
order by gender;

select
employment_status,
round(avg(depression_score), 2) as average_depression_score
from employee_mental_health
where anxiety_score > 15 and productivity_score > 60
group by employment_status
order by average_depression_score asc
limit 1;

select
mental_health_risk,
seeks_treatment,
round((avg(physical_activity_days) / avg(social_support_score) ), 3) as Ratio
from employee_mental_health
group by mental_health_risk, seeks_treatment;

with ranked_client as (
select
work_environment,
depression_score,
row_number() over(partition by work_environment order by depression_score desc) as client_rank
from employee_mental_health
)

select
work_environment,
depression_score,
client_rank
from ranked_client
where client_rank <=5
order by work_environment,client_rank;

select
gender,
work_environment,
avg(anxiety_score) as avg_anxiety_score
from employee_mental_health
group by gender, work_environment
having avg(anxiety_score) > (select avg(anxiety_score) from employee_mental_health ) +20
order by avg_anxiety_score desc;

select
case
	when sleep_hours < 5.0 then 'Short Sleep'
    when sleep_hours > 5.1 and sleep_hours > 8.0 then 'Adequate Sleep'
    when sleep_hours < 8.1 then 'Long Sleep'
end as Sleep_bins,
round(avg(stress_level) ,2) as average_stress_level,
round(avg(productivity_score) ,2) as average_productivity_score
from employee_mental_health
group by Sleep_bins;

WITH DecileRankedData AS (
    SELECT
	employment_status,
	work_environment,
	social_support_score,
	NTILE(10) OVER (ORDER BY social_support_score ASC) AS decile_group
    FROM employee_mental_health
)
SELECT
employment_status,
work_environment
FROM DecileRankedData
WHERE decile_group = 1;