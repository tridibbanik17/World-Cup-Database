#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # Insert into teams table
  if [[ $WINNER != "winner" || $OPPONENT != "opponent" ]] 
  then
    # get team_id
    TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    # if not found
    if [[ -z $TEAM_ID_WINNER || -z $TEAM_ID_OPPONENT ]] 
    then 
      # insert name
      INSERT_TEAM_NAME_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      INSERT_TEAM_NAME_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")

      if [[ $INSERT_TEAM_NAME == "INSERT 0 1" || $INSERT_TEAM_NAME == "INSERT 0 2" ]]
      then
        echo Inserted into teams, $WINNER, $OPPONENT
      fi
      # get new team_id
      TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")    
    fi
  fi

  # Insert into games table
  if [[ $YEAR != "year" ]]
  then
    # get game_id
    GAME_ID=$($PSQL "SELECT game_id FROM games where year='$YEAR' AND round='$ROUND' AND winner_id='$TEAM_ID_WINNER'")
    # if not found
    if [[ -z $GAME_ID ]]
    then 
      # insert year, round, winner_id, opponent_id, winner_goals, opponent_goals
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS)")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then 
        echo "Inserted into games, $YEAR $ROUND $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS"
      fi
      # get new game_id
      GAME_ID=$($PSQL "SELECT game_id FROM games where year='$YEAR' AND round='$ROUND' AND winner_id='$TEAM_ID_WINNER'")
    fi
  fi
done
