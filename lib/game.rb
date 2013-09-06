require_relative 'game/game_helper'

class Game
  include GameHelper

  def initialize(player1, player2)
    @player1, @player2 = player1, player2
  end

  def players
    [@player1, @player2]
  end

  def your_method_here(player, move)
    "The player #{player.name} picked square #{move}"
  end

end