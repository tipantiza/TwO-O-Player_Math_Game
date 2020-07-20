require './question'
class Turn
  def initialize(player)
    @player = player
    
  end
  def new
    puts "-----#{@player.name}'s TURN-----"
    question = Question.new
    puts question
    print "#{@player.name}> "
    guess = gets.chomp.to_i
    if(guess == question.answer)
      puts "good job"
    else 
      puts "Wow you're bad at this."
      @player.lose_a_life
    end
  end
end
