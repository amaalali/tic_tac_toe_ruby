class Board
  def initialize
    @view = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    return self
  end

  def view
    @view.dup
  end

  def play(symbol, row, column)
    check_inputs(symbol, row, column)
  end

  private

  def check_inputs(symbol, row, column)
    if symbol == nil or !['x', 'o'].include?(symbol)
      raise ArgumentError.new("Symbol: You must enter an x or o")
    end

    if row == nil or ![1, 2, 3].include?(row)
      raise ArgumentError.new("Row: You must enter a row in range 1-3")
    end

    if column == nil or ![1, 2, 3].include?(column)
      raise ArgumentError.new("Column: You must enter a column in range 1-3")
    end
  end

end
