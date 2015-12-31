/***For each director, return the director's name together with the title(s) of the movie(s) they directed that received the 
highest rating among all of their movies, and the value of that rating. Ignore movies whose director is NULL. ***/

select n.director, n.title, n.mx 
from (select director, title, movie.mID, b.star as mx 
       from (select mID, max(stars) as star from rating group by mID) b, movie
       where movie.mID=b.mID and director is not NULL ) n
group by n.director
having n.mx = max(n.mx);
