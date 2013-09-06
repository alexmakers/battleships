class Input

  attr_reader :move
  
  def initialize(move)
    @move = move
    @valid = false
  end

  def valid?
    if move =~ /[A-F]([1-9]|10)/
      return true
    else
      puts "Move needs to be a letter and number - e.g. B3" and return false
    end
  end

end