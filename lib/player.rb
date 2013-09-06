class Player

  attr_reader :name, :input, :previous_moves

  def initialize(name)
    @name = name
    @previous_moves = []
  end

  def input_move
    @input = Input.new(gets)
  end

  def make_move!
    move = @input.move

    @previous_moves << move
    @input = nil
    return move
  end

  def move_valid?
    return unless @input
    @input.valid? and move_hasnt_been_made?
  end

  private

  def move_hasnt_been_made?
    if @previous_moves.include?(@input.move)
      puts "You already made that move" and return false
    else
      return true
    end
  end

end