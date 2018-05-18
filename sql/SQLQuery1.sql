CREATE TABLE PERSON (

personID INT IDENTITY,
personFirstName VARCHAR(50),
personLastName VARCHAR(50),
personParentID INT,

CONSTRAINT pk_PERSON_personID PRIMARY KEY(personID),

CONSTRAINT fk_PERSON_personParentID FOREIGN KEY(personParentID) REFERENCES PERSON(personID)

);

DVD_MOVIE
movieID
movieName
moviePrice
movieFormat
movieRunTime
movieDirector
movieAspectRatio
movieNoDisk