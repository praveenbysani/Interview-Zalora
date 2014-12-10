select year(date) as year,count(*) from reporting.items group by year(date)
