---------- INSERT INTO DIM TEAM
insert into world_cup.dim_team (
team_name,confederation
)
select distinct 
"Player Country",-- using player country as team name
confederation
from stg_world_cup_goals swcg 
order by "Player Country"

---------- INSERT INTO DIM PLAYER
insert into world_cup.dim_player (
	player_name,
	first_name,
	age,
	position,
	team_id)
	
---------- INSERT INTO DIM VENUE
insert into world_cup.dim_venue  (
stadium_name,city,country
)
select distinct 
"Stadium Name",
"City Venue",
"Country Venue"
from stg_world_cup_goals swcg 
order by "Stadium Name"

------------------------------------------------------

select * from dim_team dt ;
select * from dim_venue dv ;
select * from dim_player dp ;




