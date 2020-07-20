require "./turn"
require "./player"
class Game
  def initialize 
    play_again = true
    while play_again
      puts
      puts
      puts
      puts
      puts
      puts "Welcome ladies and gentlemen to the TwO_O_Player Game of Doom!!!!"
      puts "-----------------------------------------------------------------"
      puts
      puts
      puts "Lets start off by getting to know who is playing....."
      puts "Player 1 please step up..."
      puts "What is your name?"
      print "Player 1> "
      name = gets.chomp
      player1 = Player.new(name)
      puts "-----------------------------------------------------------------"
      puts "Player 2 please step up..."
      puts "What is your name?"
      print "Player 2> "
      name = gets.chomp
      player2 = Player.new(name)
      puts "Welcome #{player1.name} and #{player2.name}"
      puts "You both have 3 lives!!! if you answer a question wrong you lose a life."
      puts "Let's start with the weaker vessel, #{player1.name}:"
      p1_turn = Turn.new(player1)
      p2_turn = Turn.new(player2)
      is_p1_turn = true
      while player1.lives > 0 && player2.lives > 0 do 
        puts
        puts
        if(is_p1_turn) 
          p1_turn.new 
          is_p1_turn = false
        else 
          p2_turn.new
          is_p1_turn = true
        end
        p1_lives =  " ❤️ " * player1.lives
        p2_lives =  " ❤️ " * player2.lives
        puts "Stats: #{player1.name}: #{p1_lives} || #{player2.name}: #{p2_lives}"
      end
      winner = player2.name
      if(player1.lives > 0)
        winner = player1.name
      end
      puts "Good job #{winner}! You are a brainiac"
      puts "Do you want to play again? (y/n)"
      print "> "
      valid_input = false
      while !valid_input do
        input = gets.chomp
        if(input == "y")
          play_again = true
          valid_input = true
        elsif (input == "n")
          puts "Bye now!"
          play_again = false
          valid_input = true
        else 
          puts "Please enter a valid command (y/n)"
        end
      end
    end
  end
end
