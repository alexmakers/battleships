class Board

  def initialize(player1, player2)
  end

  def update(player, move)
    "Player #{player.name} shot at square #{move}"
  end

  def display
    [
      %w(_ _ _ _ _ _ _ _ _ _ _ _),
      %w(_ _ _ _ _ _ _ _ _ _ _ _),
      %w(_ X _ _ _ _ o _ _ _ _ _),
      %w(_ X _ _ _ _ _ _ _ _ _ _),
      %w(_ X _ _ _ _ _ _ _ _ _ _),
      %w(_ _ _ _ _ _ X X _ _ _ _),
      %w(_ _ _ _ _ _ _ _ _ _ _ _),
      %w(_ _ _ o _ _ _ _ _ _ _ _),
      %w(_ _ _ _ _ _ _ _ o _ _ _),
      %w(_ _ _ _ _ _ _ _ _ _ _ _)
    ]
  end

end