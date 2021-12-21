-- Create Podcasts table


CREATE TABLE Podcasts
(
  pod_id           char(10)        NOT NULL,
  pod_name         VARCHAR(50)     NOT NULL,
  pod_genre_id     char(50)        NOT NULL,
  country_id  	   char(50)        NOT NULL,
  author_id    	   char(50)        NOT NULL,
  pod_viewers_id   char(10)            NULL,
  pod_rating_id    char(10)            NULL 
  
);

-- Create Quantity table

CREATE TABLE Quantity
(
  pod_viewers_id 	   char(10)        NOT NULL,
  pod_id               char(10)        NOT NULL,
  viewers_quantity     int                 NULL,
  date_quantity        date            NOT NULL

);

-- Create Rating table

CREATE TABLE Rating
(
  pod_rating_id 	   char(10)        NOT NULL,
  pod_id               char(10)        NOT NULL,
  rating               decimal(8,2)        NULL,
  date_quantity        date            NOT NULL

);

-- Create Genre table

CREATE TABLE Genres
(
  genre_id     	   char(50)        NOT NULL,
  genre_name  	   VARCHAR(50)     NOT NULL

);

-- Create Pod Genre table

CREATE TABLE PodGenres
(
  pod_genre_id 	   char(10)        NOT NULL,
  pod_id           char(10)        NOT NULL,
  genre_name  	   VARCHAR(50)     NOT NULL

);

-- Create Countries table

CREATE TABLE Countries
(
  country_id  	       char(50)        NOT NULL,
  country_name    	   VARCHAR(50)     NOT NULL
  
);

-- Create Author table

CREATE TABLE Authors
(
  author_id    	       char(50)        NOT NULL,
  author_name    	   VARCHAR(50)     NOT NULL

);

-- Define primary keys

ALTER TABLE Podcasts ADD CONSTRAINT PK_Podcasts PRIMARY KEY (pod_id);
ALTER TABLE Genres ADD CONSTRAINT PK_Genres PRIMARY KEY (genre_id);
ALTER TABLE PodGenres ADD CONSTRAINT PK_PodGenres PRIMARY KEY (pod_genre_id);
ALTER TABLE Countries ADD CONSTRAINT PK_Countries PRIMARY KEY (country_id);
ALTER TABLE Authors ADD CONSTRAINT PK_Authors PRIMARY KEY (author_id);
ALTER TABLE Quantity ADD CONSTRAINT PK_Quantity PRIMARY KEY (pod_viewers_id);
ALTER TABLE Rating ADD CONSTRAINT PK_Rating PRIMARY KEY (pod_rating_id);


-- Define foreign keys

ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_PodGenres FOREIGN KEY (pod_genre_id) REFERENCES PodGenres (pod_genre_id);
ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_Countries FOREIGN KEY (country_id) REFERENCES Countries (country_id);
ALTER TABLE Podcasts
ADD CONSTRAINT FK_Podcasts_Authors FOREIGN KEY (author_id) REFERENCES Authors (author_id);
ALTER TABLE Quantity
ADD CONSTRAINT FK_Podcasts_Quantity FOREIGN KEY (pod_viewers_id) REFERENCES Quantity (pod_viewers_id);
ALTER TABLE Rating
ADD CONSTRAINT FK_Podcasts_Rating FOREIGN KEY (pod_rating_id) REFERENCES Rating (pod_rating_id);