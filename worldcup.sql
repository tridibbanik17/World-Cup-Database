--Log into the psql interactive terminal with psql --username=freecodecamp --dbname=postgres
--Create database named worldcup
CREATE DATABASE worldcup;

--Connect database
\c worldcup

--Create two tables: teams and games
CREATE TABLE teams(); 
CREATE TABLE games();

--teams table should have a team_id column that is a type of SERIAL and is the primary key.
ALTER TABLE teams ADD column team_id SERIAL PRIMARY KEY;

--teams table should have a name column that has to be UNIQUE.
ALTER TABLE teams ADD COLUMN name TEXT UNIQUE NOT NULL;

--games table should have a game_id column that is a type of SERIAL and is the primary key.
ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY;

--games table should have a year column of type INT.
ALTER TABLE games ADD COLUMN year INT;

--games table should have a round column of type VARCHAR.
ALTER TABLE games ADD COLUMN round VARCHAR(60);

--games table should have winner_id foreign key column that references team_id from the teams table.
ALTER TABLE games ADD COLUMN winner_id INT;
ALTER TABLE games ADD FOREIGN KEY(winner_id) REFERENCES teams(team_id);

--games table should have opponent_id foreign key column that references team_id from the teams table.
ALTER TABLE games ADD COLUMN opponent_id INT;
ALTER TABLE games ADD FOREIGN KEY(opponent_id) REFERENCES teams(team_id);

--games table should have winner_goals and opponent_goals columns that are type INT.
ALTER TABLE games ADD COLUMN winner_goals INT;
ALTER TABLE games ADD COLUMN opponent_goals INT;

--All columns should have the NOT NULL constraint
ALTER TABLE games ALTER COLUMN year SET NOT NULL;
ALTER TABLE games ALTER COLUMN round SET NOT NULL;
ALTER TABLE games ALTER COLUMN winner_id SET NOT NULL;
ALTER TABLE games ALTER COLUMN opponent_id SET NOT NULL;
ALTER TABLE games ALTER COLUMN winner_goals SET NOT NULL;
ALTER TABLE games ALTER COLUMN opponent_goals SET NOT NULL;

