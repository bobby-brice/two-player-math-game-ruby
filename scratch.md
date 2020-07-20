# Two-Player Math Game

### Planned classes:

#### Player

- the name of each player
- tracks the lives of each player

@name
@lives

- name
- lives
- name=
- lose_life

#### Question

- randomly generate 2 numbers
- store the correct answer

- display a new question
- was the guess correct

@first_number
@second_number
@correct_answer

- display_question
- correct?

#### GameMaster

- Starts the game by initializing players and collecting player names
- While a players lives are > 0 - loop through each round

- each round - switch players, increment the round #, generate a new question
- question logic - isCorrect? or lose a life

@active_player
@players (array)
@which_round

- initialize_players
- run_game
- which_round
- increment_round
- active_player
- switch_player
- next_round
- end_game
