/*TEAM CREATE STATEMENT*/
CREATE TABLE TEAM
(
  teamID 			INT 		AUTO_INCREMENT,
  teamName 			VARCHAR(50) 	NOT NULL,
  teamRank 			INT 		NOT NULL,
  
  CONSTRAINT pk_team_teamID PRIMARY KEY(teamID),
  CONSTRAINT uq_team_teamRank UNIQUE(teamRank)	
);

/*TEAM INSERTS*/
INSERT INTO TEAM (teamName, teamRank) VALUES
('The One Ups', 4),
('Retronomous', 2),
('Bazinga', 6),
('Captain Sweatpants', 5),
('Underachievers', 3),
('The Slipnuts', 8),
('Frenemies', 7),
('Super Starman', 1);


/*VIDEOGAME CREATE STATEMENT*/
CREATE TABLE VIDEOGAME (
  gameID 			CHAR(4),
  gameName 			VARCHAR(30) 	NOT NULL,
  gameReleaseYear 		YEAR 		NOT NULL,
  gameDeveloper 		VARCHAR(30) 	NOT NULL,
  
  CONSTRAINT pk_videogame_gameID PRIMARY KEY(gameID)
); 

/*VIDEOGAME INSERTS*/
INSERT INTO videogame (gameID, gameName, gameReleaseYear, gameDeveloper) VALUES
('BRKT', 'Breakout', 1976, 'Atari'),
('FROG', 'Frogger', 1981, 'Konami'),
('GALA', 'Galaga', 1981, 'Namco'),
('KONG', 'Donkey Kong', 1981, 'Nintendo'),
('PACM', 'Pac-Man', 1980, 'Namco'),
('SPAC', 'Space Invaders', 1978, 'Taito'),
('TETR', 'Tetris', 1991, 'Video System');

/*CONTEST CREATE STATEMENT*/
CREATE TABLE CONTEST
(
  contestID 			INT,
  contestDate 			DATE 		NOT NULL,
  contestGameID 		CHAR(4) 	NOT NULL,
  contestWinner 		INT,
 
  CONSTRAINT pk_contest_contestID PRIMARY KEY(contestID),
  CONSTRAINT fk_contest_videogame FOREIGN KEY(contestGameID) REFERENCES videogame(gameID),
  CONSTRAINT fk_contest_team FOREIGN KEY(contestWinner) REFERENCES team(teamID)
);

/*CONTEST INSERTS*/
INSERT INTO CONTEST (contestID, contestDate, contestGameID, contestWinner) VALUES
(1, '2013-01-14', 'KONG', 1),
(2, '2013-01-14', 'FROG', 3),
(3, '2013-01-14', 'GALA', 1),
(4, '2013-01-14', 'PACM', 2),
(5, '2013-01-14', 'PACM', 5),
(6, '2013-01-14', 'SPAC', 6),
(7, '2013-01-14', 'BRKT', 5),
(8, '2013-01-14', 'KONG', 8),
(9, '2013-01-15', 'FROG', 1),
(10, '2013-01-15', 'TETR', 5),
(11, '2013-01-15', 'KONG', 5);

/*CONTEST_TEAM CREATE STATEMENT*/
CREATE TABLE CONTEST_TEAM 
(
  contestID 	INT,
  teamID 	INT,
  CONSTRAINT pk_conTeam_IDs PRIMARY KEY (contestID,teamID),
  CONSTRAINT fk_ct_contest FOREIGN KEY(contestID) REFERENCES contest(contestID),
  CONSTRAINT fk_ct_team FOREIGN KEY(teamID) REFERENCES team(teamID)
);

/*CONTEST_TEAM INSERTS*/
INSERT INTO CONTEST_TEAM (contestID, teamID) VALUES
(1, 1),
(3, 1),
(9, 1),
(11, 1),
(2, 2),
(4, 2),
(9, 2),
(2, 3),
(3, 3),
(1, 4),
(4, 4),
(5, 5),
(7, 5),
(10, 5),
(11, 5),
(6, 6),
(8, 6),
(6, 7),
(7, 7),
(5, 8),
(8, 8),
(10, 8);






