/***For each rating that is the lowest (fewest stars) currently in the database, 
return the reviewer name, movie title, and number of stars. ***/

select b.name,c.title,a.stars 
from rating a, reviewer b, movie c
where a.stars = (select min(stars) from rating) and a.rID=b.rID and a.mID=c.mID;
