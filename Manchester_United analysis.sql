-- =========================================================================
-- Q1 Who are Man Utd's top 5 goal scorers last season and what position do they play?
-- =========================================================================
select player,
pos,
Gls
 from man_united_stats
 order by Gls desc
 limit 5;
 
 -- ===============================================================================
 -- Q2 Which players ranked the highest in combined goals and assists last season 
-- =================================================================================
select player,
`G+A`,
rank() over(order by `G+A` desc) as Ranking
from man_united_stats;

-- =============================================================================================================
-- Q3 Which players attempted the most shots but scored the fewest goal 
-- ===============================================================================================================
select player,
Sh,
Gls
from man_united_shooting
order by sh desc, GlS asc;

-- ==============================================================================================
-- Q4 Does dominating possession actually improve Manchester United's chances of winning 
-- ==============================================================================================
select
 result,
 round(avg(poss),2) as Avg_posession
 from man_united_fixtures
 group by result;
 
 -- ==============================================================================
 -- Q5 Did manchester united perform better at home or away?
 -- ===============================================================================
 select venue,
 result,
 count(*) as Total
from man_united_fixtures
group by venue, result
order by venue;
  
-- =====================================================================================
-- Q6 Which opponents did Manchester United concede the most goals against
-- ===================================================================================== 
select opponent,
sum(ga) as Total_Goal_Conceded
from man_united_fixtures
group by opponent
order by Total_Goal_Conceded desc;

-- ==============================================================================
-- Q7 Which opponents did Manchester United fail to score against 
-- ==============================================================================
select opponent,
gf
from man_united_fixtures
where gf =0;

-- ===============================================================================================================
-- Q8 Which goalkeeper was more reliable last season in terms of save percentage, goals conceded per 90 minutes
-- ==================================================================================================================
select
player,
ga90,
save_pct
from man_united_goalkeeping;

-- ====================================================================================================================
-- Q9 Which Manchester United players with at least 20 shots were the most clinical finishers based on goals per shot?
-- ======================================================================================================================
select
man_united_stats.player,
man_united_stats.Gls,
man_united_shooting.Sh,
man_united_shooting.`G/Sh`
from man_united_stats
join man_united_shooting
on man_united_stats.player=man_united_shooting.player
where man_united_shooting.sh>=20
order by man_united_shooting.`G/Sh` desc;

-- ==================================================================================================================
-- Q10 Which home matches attracted the highest attendance,and how did manchester united perform in those games 
-- ==================================================================================================================
select 
round,
venue,
result,
opponent,
attendance
from man_united_fixtures
where venue = 'Home'
order by attendance desc;



 
 



 






