class Board
  def initialize
    @view = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    return self
  end

  def view
    @view.dup
  end

  def play(symbol, row, column)
    if check_inputs(symbol, row, column)
      @view[row - 1][column - 1] = symbol
    end
  end

  private

  def check_inputs(symbol, row, column)
    if symbol == nil or !['x', 'o'].include?(symbol)
      raise ArgumentError.new("Symbol: You must enter an x or o")
      return false
    end

    if row == nil or ![1, 2, 3].include?(row)
      raise ArgumentError.new("Row: You must enter a row in range 1-3")
      return false
    end

    if column == nil or ![1, 2, 3].include?(column)
      raise ArgumentError.new("Column: You must enter a column in range 1-3")
      return false
    end

    return true
  end

end
