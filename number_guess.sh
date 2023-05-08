#!/bin/bash

# feat/set-file-header
# Script for FCC's Number Guessing Game project

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#fea[t]/generate-random-number
TARGET=$(( RANDOM % 1000 +1 ))
# PASSED: Your script should randomly generate a number that users have to guess

# feat/get-user-username
echo "Enter your username:"
read U_NAME
# PASSED: When you run your script, you should prompt the user for a username with Enter your username:,
# and take a username as input. Your database should allow usernames that are 22 characters

# feat/add-new-user
U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")
if [[ -z $U_ID ]]; then
  NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$U_NAME')")
  U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")
  echo "Welcome, $U_NAME! It looks like this is your first time here."
  # PASSED: If the username has not been used before, you should print
  # Welcome, <username>! It looks like this is your first time here.
else
  # feat/welcome-back
  GANES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$U_ID GROUP BY user_id")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$U_ID GROUP BY user_id")
  echo "Welcome back, $U_NAME! You have played $GANES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

GUESSES=0
# feat/input-first-guess
echo "Guess the secret number between 1 and 1000:"
read GUESS
# PASSED: The next line printed should be Guess the secret number between 1 and 1000:
# and input from the user should be read

# feat/loop-until-correct-answer
while [[ $GUESS -ne $TARGET ]]; do
# feat/if-not-a-number
  if [[ $GUESS =~ ([^0-9]+)$ ]]
  then
    echo "That is not an integer, guess again:"
    ((COUNT++))
    read GUESS
  else
  # If anything other than an integer is input as a guess,
  # it should print That is not an integer, guess again:
    if [[ $GUESS -gt $TARGET ]]; then
      (( GUESSES ++ ))
      echo "It's lower than that, guess again:"
      read GUESS
    else [[ $GUESS -lt $TARGET ]]
      (( GUESSES ++))
      echo "It's higher than that, guess again:"
      read GUESS
    fi
  fi
done
#Until they guess the secret number, it should print It's lower than that, guess again:
# if the previous input was higher than the secret number, and It's higher than that, guess again:
# if the previous input was lower than the secret number.
# Asking for input each time until they input the secret number.

# feat/congrats
(( GUESSES ++ ))
echo "You guessed it in $GUESSES tries. The secret number was $TARGET. Nice job!"
# PASSED: When the secret number is guessed, your script should print You guessed it
# in <number_of_guesses> tries. The secret number was <secret_number>. Nice job! and finish running

# feat/insert-game-into-history
FINISH=$($PSQL "INSERT INTO games(user_id, target, guesses) VALUES($U_ID, $TARGET, $GUESSES)")