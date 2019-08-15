DROP DATABASE IF EXISTS project;
CREATE DATABASE project;
use project;

DROP TABLE IF EXISTS RestaurantReviews;
DROP TABLE IF EXISTS Restaurant;
DROP TABLE IF EXISTS RestaurantDetails;
DROP TABLE IF EXISTS RestaurantsPage;
DROP TABLE IF EXISTS Attraction;
DROP TABLE IF EXISTS AttractionsDetail;
DROP TABLE IF EXISTS AttractionsPage;
DROP TABLE IF EXISTS MoviesReviews;
DROP TABLE IF EXISTS MoviesDetails;
DROP TABLE IF EXISTS MoviesPage;
DROP TABLE IF EXISTS Movie;
DROP TABLE IF EXISTS eventPage;
DROP TABLE IF EXISTS eventDetails;
DROP TABLE IF EXISTS userinfo;

CREATE TABLE userinfo
(
 userName  VARCHAR(20) PRIMARY KEY
);

CREATE TABLE eventDetails
(
eventName VARCHAR(250) PRIMARY KEY,
eventLocation VARCHAR(250),
eventDescription VARCHAR(250),
eventOpDateFrom  date,
eventOpDateTo date,
eventOpDay VARCHAR(250),
eventOpHrsFrom time,
eventOpHrsTo time,
eventAdmission decimal(5,2)
);
CREATE TABLE eventsPage
(
eventType VARCHAR(250) PRIMARY KEY,
eventName VARCHAR(250),
FOREIGN KEY (eventName) REFERENCES eventDetails(eventName)
);

CREATE TABLE Movie
(
movieTitle VARCHAR(250) PRIMARY KEY,
movieGenre VARCHAR(250) ,
movieCast VARCHAR(250),
movieYear VARCHAR(20),
movieDirector VARCHAR(250),
movieLanguage VARCHAR(20),
moveShowTimes VARCHAR(250),
movieRating VARCHAR(20)
);


CREATE TABLE MoviesPage
(
theaterName VARCHAR(250) PRIMARY KEY,
theaterStreet VARCHAR(250),
theaterCity VARCHAR(250),
theaterPostal VARCHAR(250)
);


CREATE TABLE MoviesDetails
(
theaterName VARCHAR(250),
movieTitle VARCHAR(250) PRIMARY KEY ,
FOREIGN KEY (theaterName) REFERENCES MoviesPage(TheaterName),
FOREIGN KEY (movieTitle) REFERENCES Movie(movieTitle)
);


CREATE TABLE MovieReviews
(
movieTitle VARCHAR(250) ,
userName VARCHAR(20),
userReviewDescription VARCHAR(2000),
FOREIGN KEY (userName) REFERENCES userinfo(userName),
FOREIGN KEY (movieTitle) REFERENCES Movie(movieTitle)
);


CREATE TABLE Attraction
(
attractionName VARCHAR(250) PRIMARY KEY,
attractionDesc VARCHAR(2000),
attractionOpsDay VARCHAR(250),
attractionOpsHrsFrom time,
attractionOpsHrsTo time,
attractionAdmission decimal(5,2)
);



CREATE TABLE AttractionsPage
(
attractionType VARCHAR(250) PRIMARY KEY,
attractionName VARCHAR(250),
FOREIGN KEY (attractionName) REFERENCES Attraction(attractionName)
);


CREATE TABLE AttractionsDetail
(
attractionName VARCHAR(250) PRIMARY KEY  ,
attractionStreet VARCHAR(250),
attractionCity VARCHAR(250),
attractionPostal VARCHAR(250),
attractionWebsite VARCHAR(250)
);



CREATE TABLE RestaurantsPage
(
cuisine VARCHAR(250) PRIMARY KEY,
restaurantName VARCHAR(250)
);



CREATE TABLE RestaurantDetails
(
restaurantName VARCHAR(250) PRIMARY KEY,
restaurantWebsite VARCHAR(250),
restaurantStreet VARCHAR(250),
restaurantCity VARCHAR(250),
restaurantPostal VARCHAR(250)
);


CREATE TABLE Restaurant
(
restaurantName VARCHAR(250) PRIMARY KEY,
priceRange VARCHAR(250),
rating VARCHAR(250),
FOREIGN KEY (restaurantName) REFERENCES RestaurantDetails(restaurantName)
);


CREATE TABLE RestaurantReviews
(
restaurantName VARCHAR(250),
userName VARCHAR(20) PRIMARY KEY,
userRating VARCHAR(20),
userReviewDescription VARCHAR(2000),
FOREIGN KEY (restaurantName) REFERENCES RestaurantDetails(restaurantName),
FOREIGN KEY (userName) REFERENCES userinfo(userName)
);

