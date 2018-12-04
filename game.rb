require_relative './player'
require_relative './playerManager'
require_relative './question'

class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players=[@player1, @player2]
    @turn = PlayerManager.new(@players)
  end

  def run

    while(!game_over?)
      @turn.next_turn
      answer = gets.to_i
      @turn.check_answer(answer)
      puts ""
      summary
      sleep 0.7
    end

    end_game

  end


  def summary 
    puts "----- Summary ------"
    puts ""
    puts @players.map{|player| player.status}.join("\n")
    puts ""
  end

  def game_over?
    @players.any?{|player| player.dead?}
  end

  def end_game
    puts "====== Game Over! ======="
    puts ""
    loser = @players.select{|player| player.dead?}.first
    puts "#{loser.name} has become an INFINITE LOOP MU HA HA HA HA"
  end

end