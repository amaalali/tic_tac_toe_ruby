class GameStatus
  WINNING_BOARDS = [[["X", nil, nil], ["X", nil, nil], ["X", nil, nil]],
                    [[nil, "X", nil], [nil, "X", nil], [nil, "X", nil]],
                    [[nil, nil, "X"], [nil, nil, "X"], [nil, nil, "X"]],
                    [["X", "X", "X"], [nil, nil, nil], [nil, nil, nil]],
                    [[nil, nil, nil], ["X", "X", "X"], [nil, nil, nil]],
                    [[nil, nil, nil], [nil, nil, nil], ["X", "X", "X"]],
                    [["X", nil, nil], [nil, "X", nil], [nil, nil, "X"]],
                    [[nil, nil, "X"], [nil, "X", nil], ["X", nil, nil]],
                    [["O", nil, nil], ["O", nil, nil], ["O", nil, nil]],
                    [[nil, "O", nil], [nil, "O", nil], [nil, "O", nil]],
                    [[nil, nil, "O"], [nil, nil, "O"], [nil, nil, "O"]],
                    [["O", "O", "O"], [nil, nil, nil], [nil, nil, nil]],
                    [[nil, nil, nil], ["O", "O", "O"], [nil, nil, nil]],
                    [[nil, nil, nil], [nil, nil, nil], ["O", "O", "O"]],
                    [["O", nil, nil], [nil, "O", nil], [nil, nil, "O"]],
                    [[nil, nil, "O"], [nil, "O", nil], ["O", nil, nil]]]

  def self.check(board)
    field = board.field
    WINNING_BOARDS.include?(field)
  end
end
