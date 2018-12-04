require_relative './question'

class PlayerManager # determining which players turn it is

  attr_reader :current_player, :enemy_player

  def initialize(players)
    @players = players.shuffle
    @current_player = nil
    @round = 1
  end

  def get_current_player
    @players.first
  end

  def next_turn
    @current_player = get_current_player
    puts "------ Round##{@round} ------"
    puts ""
    puts "Question for #{@current_player.name}"
    @question = Question.new
    @round += 1
    puts ""
    puts @question.question
    @players.rotate!
  end

  def check_answer(answer)
    if !@question.check_answer(answer)
      @current_player.wrong_answer
    end
  end
  
end