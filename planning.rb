

GAME(name1, name2): Initialize 2 PLAYERS, CURRENT PLAYER = player1, GAME LOOP
  
PLAYERS: Initialize 3 lives each
  PLAYER 1:
    Lives = 3
  PLAYER 2:
    Lives = 3

TURN: Initializes question
  GET CURRENT PLAYER
  puts current player + QUESTION
  puts current score
  sets -1 life from player
  SETS CURRENT PLAYER to other

QUESTION: 
  get x2 random nums
  puts what does... x + y equal?
  chomps: answer
  if correct: puts yay!
  if incorrect: puts boo!

  
GAME LOOP:
      while lives of player 1 or player 2 DO NOT equal 0
        get TURN >> get QUESTION >> change players >> repeat

        When 0: game over, puts score/winner
        
    