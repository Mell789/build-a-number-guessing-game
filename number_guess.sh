#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guessing_game -t --no-align -c"

echo "Enter your username:"
read USERNAME

# if the username has been used
USERNAME_EXISTENCE=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
if [[ ! -z $USERNAME_EXISTENCE ]]
then
  GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
  BEST_GUESS=$($PSQL "SELECT best_game_guess FROM users WHERE username='$USERNAME'")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GUESS guesses."
else
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  if [[ ! -z $INSERT_USER_RESULT ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else  
    echo "New user could not have been added to database"
  fi
fi

echo "Guess the secret number between 1 and 1000:"

RANDOM_NUMBER=$(( 1 + $RANDOM % 1000 ))
GUESS_COUNT=1

while read NUMBER
do
  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $NUMBER == $RANDOM_NUMBER ]]
    then
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMBER. Nice job!"
      USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
      GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME'")
      NEW_GAMES_PLAYED=$(($GAMES_PLAYED + 1))
      UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played=$(($GAMES_PLAYED+1))")

      INSERT_INTO_GAMES_RESULT=$($PSQL "INSERT INTO games(user_id,guess_count) VALUES($USER_ID,$GUESS_COUNT)")
      BEST_GUESS=$($PSQL "SELECT MIN(guess_count) FROM users INNER JOIN games USING(user_id) WHERE user_id='$USER_ID'")
      UPDATE_BEST_GAME_GUESS_RESULT=$($PSQL "UPDATE users SET best_game_guess=$BEST_GUESS WHERE user_id=$USER_ID")

      break;
    else
      if [[ $NUMBER -gt $RANDOM_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
        GUESS_COUNT=$(( $GUESS_COUNT + 1 ))
      elif [[ $NUMBER -lt $RANDOM_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        GUESS_COUNT=$(( $GUESS_COUNT + 1 ))
      fi
    fi
  fi
done
