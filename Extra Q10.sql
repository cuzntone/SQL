
/****Find the movie(s) with the highest average rating. Return the movie title(s) and average rating. 
(Hint: This query is more difficult to write in SQLite than other systems; 
you might think of it as finding the highest average rating and then choosing the movie(s) with that average rating.) ****/

select title, a.average as highest 
from (select mID, avg(stars) as average 
      from rating group by mID) a, movie
      where movie.mID=a.mID and a.average = (select max(b.average) 
                                             from (select mID, avg(stars) as average from rating group by mID) b
                                            );
