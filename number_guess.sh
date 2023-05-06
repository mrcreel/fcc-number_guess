#!/bin/bash

# Script for freeCodeCamp's 'Build a Number Guessing Game' project
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

#
echo -e "\nEnter your username:"
read U_NAME
if [[ -z $U_NAME ]]; then
    echo "Goodbye."
else
    U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")
    if [[ -z $U_ID ]]; then
        echo -e "\nWelcome, $U_NAME! It looks like this is your first time here."
        INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$U_NAME');")
        U_ID=$($PSQL "SELECT user_id FROM users WHERE username='$U_NAME'")
    else
        PREV_GAMES_COUNT=$($PSQL "SELECT COUNT(*), MIN(guesses) FROM games WHERE user_id=$U_ID GROUP BY user_id;")
        IFS=' | '
        read -a HISTORY <<< "$PREV_GAMES_COUNT"
        GAMES_PLAYED=${HISTORY[0]}
        BEST_GAME=${HISTORY[1]}
        # echo -e "\nWelcome back, $U_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
        echo -e "Welcome back, $U_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    fi
    # Init guesses
    GUESSES=0
    # set random target
    TARGET=$(( $RANDOM % 1000 + 1 ))
    # Add game to database
    SAVE_GAME=$($PSQL "INSERT INTO games(user_id, target) VALUES($U_ID, $TARGET)")
    # Get ID of current game
    G_ID=$($PSQL "SELECT game_id FROM games WHERE user_id=$U_ID ORDER BY game_id DESC LIMIT 1;")

    # Initiate loop that cycles until $TARGET is entered
    while [[ $GUESS -ne $TARGET ]]; do
        echo -e "\nGuess the secret number between 1 and 1000:"
        read GUESS
        ((GUESSES++))

        # Check if the value is a number
        if [[ $GUESS =~ ^[0-9]+$ ]]; then
            if [[ $TARGET -gt $GUESS ]]; then
                echo "It's higher than that, guess again:"
            elif [[ $TARGET -lt $GUESS ]]; then
                echo "It's lower than that, guess again:"
            else
                RESULT=$($PSQL "UPDATE games SET guesses=$GUESSES WHERE game_id=$G_ID")
                echo -e "\nYou guessed it in $GUESSES tries. The secret number was $TARGET. Nice job!\n"
            fi
        else
            echo -e "That is not an integer, guess again:"
        fi
    done
fi