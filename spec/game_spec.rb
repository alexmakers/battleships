require 'game'

describe Game do
  
  #supress command line output
  before { Game.stub(:puts) }

  let(:player1) { double(:player, name: 'Alex') }
  let(:player2) { double(:player, name: 'Enrique') }

  let(:game) { Game.new(player1, player2) }
  let(:game_with_one_turn) { Game.new(player1, player2, 1) }
  let(:game_with_many_turns) { Game.new(player1, player2, 2) }

  it 'has two players' do
    expect(game.players).to eq [player1, player2]
  end

  it 'requires two players' do
    expect { Game.new(player1) }.to raise_error
  end

  it 'starts with player 1' do
    expect { |b| game_with_one_turn.each_players_turn(&b) }
      .to yield_with_args(player1)
  end

  it 'alternates between players' do
    expect { |b| game_with_many_turns.each_players_turn(&b) }
      .to yield_successive_args(player1, player2)
  end

  it 'outputs the name of each player' do
    expect($stdout).to receive(:puts).with(/Alex/)

    game_with_one_turn.each_players_turn {}
  end

end