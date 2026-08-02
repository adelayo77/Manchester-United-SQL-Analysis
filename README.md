## Manchester United 2025-26 Season Analysis Using SQL

## Project Overview
This project analyzes Manchester United's 2025-26 Premier League season using real data sourced from FBref. The analysis covers player performance, shooting efficiency, goalkeeping reliability, match results, and opponent patterns, answering questions that fans and club stakeholders genuinely care about.

## Dataset

**Source:** FBref.com/ Sports Reference LLC

**Type:** Real match and player data

**Tables Used:** player stats, shooting, fixtures, goalkeeping


## SQL Skills Demonstrated 

-SELECT

-WHERE

-GROUP BY

-ORDER BY 

-Aggregate Functions (SUM, AVG, COUNT)

-ROUND

-LIMIT 

-JOIN

-Window Functions (RANK)

## Business Questions & Insights
Q1. Who are Manchester United's top 5 goal scorers and what position do they play?


Insight: Bryan Mbeumo and Benjamin Seško lead with 11 goals each, followed by Matheus Cunha with 10, and Bruno Fernandes and Casemiro both on 9, which shows that goals are spread evenly across the attack.

Q2. Which players ranked highest in combined goals and assists?


Insight: Bruno Fernandes dominated with 30 goal contributions (G+A), ranking first by a large margin with more than twice the goal contributions of second-placed Bryan Mbeumo on 14. This confirms Bruno was the team's primary attacking player and also the most important chance creator.

Q3. Which players attempted the most shots but scored the fewest goals?


Insight: Matheus Cunha took the most shots (90) but only scored 10, while Bruno Fernandes took 85 shots and scored 9, despite their high shot volumes, both players' conversion rates were low.

Q4. Does dominating possession actually improve Manchester United's chances of winning?


Insight: Manchester United averaged 47.85% possession in wins, 55.45% in draws, and 58% in losses, which means Manchester United actually won more when they had less possession, indicating that higher possession did not necessarily lead to better results.

Q5. Did Manchester United perform better at home or away?


Insight: At home, Manchester United won 13, drew 3 and lost 3, a strong home record while away they won only 7, drew 8 and lost 4, showing the impact of home advantage.

Q6. Which opponents did Manchester United concede the most goals against?


Insight: Bournemouth were Manchester United's most difficult defensive opponent with 6 goals conceded, followed by Burnley, Brentford and Nottingham Forest all on 4, highlighting the matches where the team's defensive performance was the weakest.

Q7. Which opponents did Manchester United fail to score against?


Insight: Manchester United failed to score in four matches: Arsenal (L), Manchester City (L), Everton (L), and Sunderland (D). Three of the four blanks came in defeats.

Q8. Which goalkeeper was more reliable last season in terms of save percentage and goals conceded per 90 minutes?


Insight: Senne Lammens recorded the highest save percentage of 66.9% and GA90 of 1.22, while Altay Bayındır had a lower save percentage of 54.2% and GA90 of 1.83, which shows Lammens was the more reliable option based on the available data.

Q9. Which Manchester United players with at least 20 shots were the most clinical finishers based on goals per shot?


Insight: Benjamin Seško was the most clinical finisher with a goals per shot ratio of 0.18, followed by Casemiro at 0.17 and Patrick Dorgu at 0.16. Despite taking the most shots (90), Matheus Cunha recorded only a 0.11 goals per shot.

Q10. Which home matches attracted the highest attendance?


Insight: The Burnley match (Matchweek 3) attracted the highest attendance (74,257) and ended in a win, followed by the Everton match with 74,158 attendees but ended in a defeat. Old Trafford consistently attracted large crowds regardless of the opponent or match result.

## Recommendations

-Manchester United's over-dependence on Bruno Fernandes for chance creation is a significant risk. The club should invest in a second creative midfielder to reduce reliance on one player.

-Manchester United won more with less possession, the club should continue using the style of play that produces better results rather than focusing on dominating possession.

-Matheus Cunha took 90 shots last season but only scored 10, the coaching staff should work on improving his finishing efficiency.

-Senne Lammens should remain the first-choice goalkeeper based on his stronger performances.

## How to Use

-Download the datasets from FBref.com (Manchester United 2025-26 player stats, shooting, goalkeeping and fixtures)

-Import each CSV into MySQL Workbench as separate tables

-Run Manchester_United_analysis.sql to reproduce all queries and results

## Author
 Adewumi Lateefat Adelayo  
