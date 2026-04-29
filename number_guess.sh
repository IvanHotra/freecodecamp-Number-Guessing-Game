#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo Enter your username:
read NAME

#welcome new or old user
USERNAME=$($PSQL "SELECT username FROM number_guess WHERE username='$NAME'")
if [[ -z $USERNAME  ]]
then
  USERNAME=$NAME
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

  #games played
GAMES_PLAYED=$($PSQL "SELECT games_played FROM number_guess WHERE username='$USERNAME'")
  #best game
BEST_GAME=$($PSQL "SELECT best_game FROM number_guess WHERE username='$USERNAME'")
 

SECRET_NUMBER=$(( RANDOM % 10 + 1 ))
echo "Guess the secret number between 1 and 1000:"
USER_GUESS=0
GUESS_COUNT=0
until [[  $USER_GUESS -eq $SECRET_NUMBER  ]]
do 
  read USER_GUESS
  if [[  ! $USER_GUESS =~ ^[0-9]+$  ]]
  then
    echo "That is not an integer, guess again:"
  elif [[  $USER_GUESS -gt $SECRET_NUMBER  ]]
  then
    echo "It's lower than that, guess again:"
  elif  [[  $USER_GUESS -lt $SECRET_NUMBER  ]]
  then
    echo "It's higher than that, guess again:"
  (( GUESS_COUNT++ ))
  fi
done
echo "You guessed it in $GUESS_COUNT tries. The secret number was $USER_GUESS. Nice job!"


if [[ -z $GAMES_PLAYED ]]
then
  GAMES_PLAYED=1
else
(( GAMES_PLAYED++ ))
fi

if [[ -z $BEST_GAME  ]]
then
  UPDATE_RESULT=$($PSQL "INSERT INTO number_guess(username,best_game,games_played) VALUES ('$USERNAME',$GUESS_COUNT,$GAMES_PLAYED)")
elif [[ $GUESS_COUNT -lt $BEST_GAME ]]
then
  UPDATE_RESULT=$($PSQL "UPDATE number_guess SET games_played=$GAMES_PLAYED, best_game=$GUESS_COUNT WHERE username = '$USERNAME' ")
else
  UPDATE_RESULT=$($PSQL "UPDATE number_guess SET games_played=$GAMES_PLAYED WHERE username = '$USERNAME' ")  
fi

