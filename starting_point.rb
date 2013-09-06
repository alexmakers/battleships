require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/input'
require_relative 'lib/ui'

player1 = Player.new('Alex')
player2 = Player.new('Enrique')

game = Game.new(player1, player2)
board = Board.new

game.each_players_turn do |player|

  until(player.move_valid?) do
    player.input_move
  end

  move = player.make_move!

  board.update(player, move)

  UI.display(board.display)

end