class GameMaster
  attr_reader     :which_round, :active_player
  attr_accessor   :question_limit

  def initialize
    @active_player = nil
    @players = []
    @which_round = 0
    @question_limit = 20
  end
  
  #starts the game
  def run_game
     puts "Welcome to the addition game!"

    print "Player 1, enter your name > "
    player1 = Player.new(gets.chomp)
    @players.push(player1)

    print "Player 2, enter your name > "
    player2 = Player.new(gets.chomp)
    @players.push(player2)

    puts "Welcome, #{player1.name} and #{player2.name}!\n\n"

    @active_player = @players[rand(0..1)]
    puts "According to my coin-flip, #{@active_player.name} is going... SECOND!\n\n\n"

    while (@active_player.lives > 0)
      run_round
    end

    end_game
  end

  def increment_round
    @which_round += 1
  end
  
  # Checks the active player against @players and changes @active_player to the other
  def switch_player
    if (@active_player == @players[0])
      @active_player = @players[1]
    else
      @active_player = @players[0]
    end
  end

   #concludes the game, reporting the winner
  def end_game
    puts "\n\n------- GAME OVER -------"
    puts "#{@active_player.name}, you've run out of lives.\n\n"
    switch_player
    puts "#{@active_player.name}, you win with #{@active_player.lives} #{(@active_player.lives) == 1 ? "life" : "lives"} remaining"
  end

  
  
end