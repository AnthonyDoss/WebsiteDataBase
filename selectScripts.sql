use project; 


-- First wireframe
select ed.* from eventdetails ed
join eventspage ep ON ed.eventName = ep.eventName
where ep.eventType = 'science';

-- Second wireframe
select m.*,userName,userReviewDescription
from movie m
join moviereviews mr ON m.movieTitle = mr.movieTitle 
where m.movieTitle = 'Sahara';

-- Third wireframe
select mp.theaterName,mp.theaterStreet,mp.theaterCity,mp.theaterPostal,m.*
from moviesPage mp
join moviesdetails md  ON mp.theaterName = md.theaterName
join movie m ON md.movieTitle = m.movieTitle
where mp.theaterName = 'Cineplex Sheridan';

-- Fourth wireframe
SELECT ad.attractionStreet,ad.attractionCity,ad.attractionPostal,ad.attractionwebsite,a.*
FROM attraction a join attractionsdetail ad 
ON a.attractionName = ad.attractionName 
JOIN attractionspage ap ON ad.attractionName = ap.attractionName
where ap.attractiontype = 'museum'; 

-- Fifth Wireframe
select r.restaurantName,r.priceRange,r.rating,
rv.userName,rv.userRating,rv.userReviewDescription
from restaurant r
join restaurantspage rp ON r.restaurantName = rp.restaurantName
join restaurantreviews rv ON rp.restaurantName = rv.restaurantName
where rp.cuisine = 'italian';


