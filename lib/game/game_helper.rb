module GameHelper

  def each_players_turn
    1.upto(max_turns) do |turn_number|
      player = player_for(turn_number)

      puts "#{player.name}'s turn:"
      yield player
    end
  end

  private

  def player_for(turn_number)
    return @player1 if turn_number.odd?
    @player2 if turn_number.even?
  end

  def max_turns
    Float::INFINITY
  end

end