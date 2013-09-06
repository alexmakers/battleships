require 'player'

describe Player do

  let(:player) { Player.new('Alex')}
  let(:input) { double(:input) }
  
  it 'has a name' do
    expect(player.name).to eq('Alex')
  end

  it 'cannot be created without a name' do
    expect { Player.new }.to raise_error
  end

  context 'making moves' do

    let(:input) { double(:input, move: true) }

    before do
      stub_const("Input", double(:input_class, new: input))
      player.stub(gets: 'A1')

      player.input_move
    end

    it 'can input a move' do
      expect(player.input).to_not be_nil
    end

    it 'clears inputted moves between turns' do
      player.make_move!

      expect(player.input).to be_nil
    end

    it 'remembers previous moves' do
      player.make_move!

      expect(player.previous_moves).to have(1).item
    end

    it 'checks the inputted move is valid' do
      expect(input).to receive :valid?

      player.make_move!
    end

    it 'only allows moves to be made once' do
      player.make_move!

      player.input_move
      player.make_move!

      expect(player.move_valid?).to be_false
    end

  end

end