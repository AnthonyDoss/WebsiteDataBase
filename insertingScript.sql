use project;
-- inserting user info  
INSERT INTO userinfo (userName) VALUES ('Nice Glasses');
INSERT INTO userinfo (userName) VALUES ('Pierre');
INSERT INTO userinfo (userName) VALUES ('Leah');

-- inserting event details
INSERT INTO eventDetails (eventName, eventLocation, eventDescription, eventOpDateFrom, eventOpDateTo, EventOpDay, eventOpHrsFrom, eventOpHrsTo, eventAdmission)
VALUES (
'Dinosaur Exhibition', 
'Museum of Natural History', 
'this exhibition is coming from the museum of Natural History in London, UK and it has the most recent discovery of the oldest dinosaur speciment',
'2013-09-01',
'2013-11-30',
'Mon - Friday',
'10:00',
'22:00',
13);

INSERT INTO eventDetails (eventName, eventLocation, eventDescription, eventOpDateFrom, eventOpDateTo, EventOpDay, eventOpHrsFrom, eventOpHrsTo, eventAdmission)
VALUES (
'DaVinci Exhibition', 
'Oakville Museum', 
'this exhibition is coming from the museum of Art Musesum in London, UK',
'2013-10-01',
'2013-12-31',
'Mon - Friday',
'10:00',
'22:00',
15);

INSERT INTO eventDetails (eventName, eventLocation, eventDescription, eventOpDateFrom, eventOpDateTo, EventOpDay, eventOpHrsFrom, eventOpHrsTo, eventAdmission)
VALUES (
'Oakville Soccer League', 
'Oakville Soccer Club', 
'Soccer league for kids in Oakville',
'2013-05-01',
'2013-11-30',
'Every Friday',
'18:00',
'20:00',
3);

INSERT INTO eventDetails (eventName, eventLocation, eventDescription, eventOpDateFrom, eventOpDateTo, EventOpDay, eventOpHrsFrom, eventOpHrsTo, eventAdmission)
VALUES (
'Summer Splash', 
'Issac Park', 
'Splash Festival for Kides',
'2013-06-01',
'2013-08-31',
'Mon - Friday',
'10:00',
'18:00',
5);

-- inserting eventPage info
INSERT INTO eventsPage (eventType, eventName) VALUES ('Science', 'Dinosaur Exhibition');
INSERT INTO eventsPage (eventType, eventName) VALUES ('Art', 'DaVinci Exhibition');
INSERT INTO eventsPage (eventType, eventName) VALUES ('Sport', 'Oakville Soccer League');
INSERT INTO eventsPage (eventType, eventName) VALUES ('Family', 'Summer Splash');

-- inserting movies
INSERT INTO Movie (movieTitle, movieGenre, movieCast, movieYear, movieDirector, movieLanguage, moveShowTimes, movieRating)
VALUES ('Sahara', 'Comedy', 'Matt Damon, Angelina', 2018, 'Walid Belal', 'French', '12:30, 15:45, 18:00', '99%');
INSERT INTO Movie (movieTitle, movieGenre, movieCast, movieYear, movieDirector, movieLanguage, moveShowTimes, movieRating)
VALUES ('The Nice Guys', 'Comedy', 'Russell Crowe, Ryan Gosling', 2016, 'Shane Black', 'English', '14:30, 16:45, 21:00', '95%');
INSERT INTO Movie (movieTitle, movieGenre, movieCast, movieYear, movieDirector, movieLanguage, moveShowTimes, movieRating)
VALUES ('Sherlock Holmes', 'Mystery', 'Robert DowneyJr., Jude Law', 2009, 'Joel Silver', 'English', '9:30, 12:45, 18:00', '75%');
INSERT INTO Movie (movieTitle, movieGenre, movieCast, movieYear, movieDirector, movieLanguage, moveShowTimes, movieRating)
VALUES ('Sunset', 'Horror', 'Jukab Juli, Vlad Ivanov', 2019, 'Laszlo Nemes', 'Russian', '7:30, 10:45, 13:00', '80%');

-- inserting moviePage
INSERT INTO MoviesPage (theaterName, TheaterStreet, theaterCity, theaterPostal) 
VALUES ('Cineplex Sheridan', '231 my street', 'Toronto', 'L6H 0P6');
INSERT INTO MoviesPage (theaterName, TheaterStreet, theaterCity, theaterPostal) 
VALUES ('Cineplex Cinemas Winston Churchill', '2091 Winston Park Dr.', 'Oakville', 'L6H 6P5');

-- inserting movieDetials
INSERT INTO MoviesDetails (theaterName, movieTitle) VALUES ('Cineplex Sheridan','Sahara');
INSERT INTO MoviesDetails (theaterName, movieTitle) VALUES ('Cineplex Sheridan','The Nice Guys');
INSERT INTO MoviesDetails (theaterName, movieTitle) VALUES ('Cineplex Cinemas Winston Churchill','Sherlock Holmes');
INSERT INTO MoviesDetails (theaterName, movieTitle) VALUES ('Cineplex Cinemas Winston Churchill','Sunset');

-- inserting movieReviews
INSERT INTO MovieReviews (movieTitle, userName, userReviewDescription)
VALUES ('The Nice Guys', 'Leah', 'Amazing Moview will see it again I like depth of the characters bla bla bla');
INSERT INTO MovieReviews (movieTitle, userName, userReviewDescription)
VALUES ('Sherlock Holmes', 'Pierre', 'Do not recommend it');
INSERT INTO MovieReviews (movieTitle, userName, userReviewDescription)
VALUES ('Sherlock Holmes', 'Leah', 'Great Movie!!');
INSERT INTO MovieReviews (movieTitle, userName, userReviewDescription)
VALUES ('Sahara', 'Nice Glasses', 'Amazing Movie will see it again, i like depth of the characters');

INSERT INTO Attraction (attractionName, attractionDesc, attractionOpsDay, attractionOpsHrsFrom, attractionOpsHrsTo, attractionAdmission)
VALUES (
'Museum of Natural History', 
'This museum has the biggest mammals speciment collection bla bla bla...',
'Mon - Friday',
'10:00',
'22:00',
23
);
-- inserting Attractions
INSERT INTO Attraction (attractionName, attractionDesc, attractionOpsDay, attractionOpsHrsFrom, attractionOpsHrsTo, attractionAdmission)
VALUES (
'Oakville Gallery', 
'Oakville Galleries is driven by a belief in the singular power of art and artists to deepen our understanding of ourselves and our communities and move us toward a better world.',
'Tue - Friday',
'11:00',
'21:00',
0
);
INSERT INTO Attraction (attractionName, attractionDesc, attractionOpsDay, attractionOpsHrsFrom, attractionOpsHrsTo, attractionAdmission)
VALUES (
'Square One', 
'It is the largest shopping centre in Ontario and the second largest shopping centre in Canada',
'Mon - Friday',
'09:00',
'21:00',
0
);

INSERT INTO Attraction (attractionName, attractionDesc, attractionOpsDay, attractionOpsHrsFrom, attractionOpsHrsTo, attractionAdmission)
VALUES (

'Sixteen Miles Complex', 
'The biggest arena in Oakville',
'Mon - Sunday',
'07:00',
'21:00',
3.5
);

-- inserting Attraction Page
INSERT INTO AttractionsPage (attractionType, attractionName)
VALUES ('Museum', 'Museum of Natural History');
INSERT INTO AttractionsPage (attractionType, attractionName)
VALUES ('Gallery', 'Oakville Gallery');
INSERT INTO AttractionsPage (attractionType, attractionName)
VALUES ('Shopping', 'Square One');
INSERT INTO AttractionsPage (attractionType, attractionName)
VALUES ('Arenas', 'Sixteen Miles Complex');

INSERT INTO AttractionsDetail 
(attractionName, attractionStreet, attractionCity, attractionPostal, attractionWebsite)
VALUES ('Museum of Natural History', '235 Dynosaur rd', 'Toronto', 'L6H 0P6', 'www.abc.com');

INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Italian', "Ivar's");
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Mediterranean', 'Osmows Shawarma');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Middle Eastern', 'Montfort');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Greek', 'Colossus Greek Taverna');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('American', "Turtle Jack's Oakville");
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Canadian', 'Big Taste Pizza');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('French', 'Noble Bistro');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Chinese', 'Dragon House');
INSERT INTO RestaurantsPage (cuisine, restaurantName) VALUES ('Indian', 'Bonanza');

INSERT INTO RestaurantDetails (restaurantName, restaurantWebsite, restaurantStreet, restaurantCity, restaurantPostal)
VALUES ("Ivar's", 'www.ivars.com', '1001 Alaskan Way', 'Seattle', '98104');

INSERT INTO Restaurant (restaurantName, priceRange, rating)
VALUES ("Ivar's", '$35 - $75', '95%');

INSERT INTO RestaurantReviews (restaurantName, userName, userRating, userReviewDescription)
VALUES ("Ivar's", 'Nice Glasses', '95%', 'Great Food');

INSERT INTO RestaurantReviews (restaurantName, userName, userRating, userReviewDescription)
VALUES ("Ivar's", 'Pierre', '100%', 'Good Price');
