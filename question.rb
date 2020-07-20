class Question 
  attr_reader :answer
  def initialize 
    num_one = rand(21)
    num_two = rand(21)
    @answer = num_one + num_two
    @question = "What does #{num_one} plus #{num_two} equal?"
  end
  def to_s 
    @question
  end
end