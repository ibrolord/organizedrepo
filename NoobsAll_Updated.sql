/*RUN THESE DROP STATEMENTS IF YOU HAVE PRACTICE TABLES CREATED*/

DROP TABLE HIGHSCORES;
DROP TABLE PLAYER;
DROP TABLE CONTEST_TEAM;
DROP TABLE CONTEST;
DROP TABLE VIDEOGAME;
DROP TABLE TEAM;


/*TEAM CREATE STATEMENT*/
CREATE TABLE TEAM
(
  teamID 			INT 			AUTO_INCREMENT,
  teamName 			VARCHAR(50) 	NOT NULL,
  teamRank 			INT 			NOT NULL,
  
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
  gameReleaseYear 	YEAR 			NOT NULL,
  gameDeveloper 	VARCHAR(30) 	NOT NULL,
  gameVotes			INT				DEFAULT 0,
  
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


/*PLAYER CREATE STATEMENT*/
CREATE TABLE PLAYER 
(
  playerID 			INT 			AUTO_INCREMENT,
  playerFirstName 	VARCHAR(30) 	NOT NULL,
  playerLastName 	VARCHAR(30) 	NOT NULL,
  playerEmail 		VARCHAR(100) 	NOT NULL,
  teamID 			INT 			NOT NULL,
  playerDOB			DATE,
  playerAlias		VARCHAR(50),
  playerPass		CHAR(32)		NOT NULL,
  playerGender		CHAR(1)			NOT NULL,
  playerRole		VARCHAR(20)		NOT NULL,
  playerPoints		INT				DEFAULT 0,

  CONSTRAINT pk_player_playerID PRIMARY KEY(playerID),
  CONSTRAINT fk_player_team FOREIGN KEY(teamID) REFERENCES team(teamID)

);

/*PLAYER INSERTS*/
INSERT INTO PLAYER (playerFirstName, playerLastName, playerEmail, teamID,playerPass,playerGender,playerRole ) VALUES
('Kenzel', 'Corvan', 'kcor@mail.abc', 3, MD5('Pass1234'), 'M', 'Captain'),
('Breen', 'Esryn', 'meanbreen@mail.abc', 6, MD5('Pass1234'), 'F', 'Captain'),
('Deveron', 'Lacroix', 'dev@mail.abc', 7, MD5('Pass1234'), 'M', 'Captain'),
('Esme', 'Torosa', 'etoro@mail.abc', 1, MD5('Pass1234'), 'F','Captain'),
('Frank', 'Haute', 'fh@mail.abc', 1, MD5('Pass1234'), 'M', 'Assistant Captain'),
('Braxton', 'Hunch', 'brax@mail.abc', 1, MD5('Pass1234'), 'M', 'Pion'),
('Qualin', 'Monroe', 'monroeq@mail.abc', 2, MD5('Pass1234'), 'F', 'Captain'),
('Rymon', 'Smith', 'rymonsmith@mail.abc', 2, MD5('Pass1234'), 'M','Assistant Captain'),
('Torin', 'Johnson', 'torinj@mail.abc', 2, MD5('Pass1234'), 'M', 'Pion'),
('Zeric', 'Williams', 'zwills@mail.abc', 3, MD5('Pass1234'), 'M','Assistant Captain'),
('Talut', 'Jones', 'tjones123@mail.abc', 3, MD5('Pass1234'), 'M', 'Pion'),
('Rizi', 'Brown', 'brownie@mail.abc', 4, MD5('Pass1234'), 'F', 'Captain'),
('Kaius', 'Davis', 'whatup@mail.abc', 4, MD5('Pass1234'), 'M', 'Assistant Captain'),
('Jaliber', 'Miller', 'jaliber@mail.abc', 4, MD5('Pass1234'), 'M', 'Pion'),
('Donita', 'Wilson', 'dwilson@mail.abc', 5, MD5('Pass1234'), 'F','Captain'),
('Evza', 'Wilson', 'ewilson@mail.abc', 5, MD5('Pass1234'), 'F','Assistant Captain'),
('Jayala', 'Wilson', 'jwilson@mail.abc', 5, MD5('Pass1234'), 'F', 'Pion'),
('Zevlin', 'Taylor', 'talktozev@mail.abc', 6, MD5('Pass1234'), 'M','Assistant Captain'),
('Devries', 'Anderson', 'dandy@mail.abc', 6, MD5('Pass1234'), 'M', 'Pion'),
('London', 'Thomas', 'cheerio@mail.abc', 7, MD5('Pass1234'), 'M','Assistant Captain'),
('Alera', 'Jackson', 'ally@mail.abc', 7, MD5('Pass1234'), 'F', 'Pion'),
('Bronte', 'White', 'brontewhite@mail.abc', 8, MD5('Pass1234'), 'M', 'Captain'),
('Dodie', 'Harris', 'dodo@mail.abc', 8, MD5('Pass1234'), 'F','Assistant Captain'),
('Remington', 'Martin', 'remymartin@mail.abc', 8, MD5('Pass1234'), 'M', 'Pion'),
('Test', 'Person1', 'tp1@mail.abc', 3, MD5('Pass1234'), 'M', 'Pion'),
('Test', 'Person2', 'tp2@mail.abc', 6, MD5('Pass1234'), 'M', 'Pion'),
('Test', 'Person3', 'tp3@mail.abc', 7, MD5('Pass1234'), 'M', 'Pion');

/*HIGHSCORES CREATE STATEMENT*/
CREATE TABLE HIGHSCORES 
(
  playerID 			INT	 		NOT NULL,
  gameID 			CHAR(4) 	NOT NULL,
  score 			INT 		NOT NULL,

  CONSTRAINT pk_highscores_playergameID PRIMARY KEY(playerID, gameID),
  CONSTRAINT fk_highscore_player FOREIGN KEY(playerID) REFERENCES player(playerID),
  CONSTRAINT fk_highscore_game FOREIGN KEY(gameID) REFERENCES videogame(gameID)
 
);

/*HIGHSCORES INSERTS*/
INSERT INTO HIGHSCORES (playerID, gameID, score) VALUES
(1, 'BRKT', 1344),
(1, 'GALA', 14563365),
(1, 'SPAC', 55150),
(2, 'BRKT', 1340),
(2, 'KONG', 1090300),
(3, 'BRKT', 1300),
(3, 'PACM', 3172997),
(3, 'SPAC', 50269),
(4, 'GALA', 15877482),
(4, 'TETR', 12567),
(5, 'BRKT', 1108),
(5, 'KONG', 651800),
(6, 'BRKT', 859),
(6, 'PACM', 3271871),
(6, 'SPAC', 51987),
(7, 'GALA', 12879665),
(8, 'BRKT', 1240),
(8, 'KONG', 984500),
(8, 'PACM', 2894891),
(8, 'TETR', 25074),
(9, 'SPAC', 55000),
(10, 'BRKT', 1101),
(10, 'GALA', 15784166),
(11, 'FROG', 896979),
(11, 'KONG', 789000),
(11, 'PACM', 3333359),
(12, 'PACM', 3117110),
(12, 'SPAC', 49872),
(12, 'TETR', 18591),
(13, 'GALA', 14965872),
(14, 'KONG', 982100),
(15, 'FROG', 834811),
(15, 'SPAC', 51239),
(16, 'FROG', 836484),
(16, 'GALA', 15987124),
(17, 'KONG', 994500),
(17, 'PACM', 3254848),
(18, 'SPAC', 52041),
(18, 'TETR', 20459),
(19, 'FROG', 897841),
(19, 'GALA', 15785018),
(19, 'TETR', 18796),
(20, 'FROG', 761851),
(20, 'KONG', 999900),
(21, 'FROG', 876918),
(21, 'SPAC', 53989),
(22, 'GALA', 15999990),
(23, 'FROG', 715869),
(23, 'KONG', 781200),
(23, 'TETR', 19218),
(24, 'SPAC', 54698);

/*CONTEST_TEAM CREATE STATEMENT*/
CREATE TABLE CONTEST_TEAM 
(
  contestID 	INT,
  teamID 		INT,
  CONSTRAINT pk_conTeam_IDs PRIMARY KEY (contestID,teamID)
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
