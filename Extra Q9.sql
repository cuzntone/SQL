/***Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, 
along with the director name. Sort by director name, then movie title. 
(As an extra challenge, try writing the query both with and without COUNT.) ***/

select a.title,a.director
from movie a 
where a.director in (select director
                     from movie 
                     where mID <> a.mID)
order by a.director, a.title;
