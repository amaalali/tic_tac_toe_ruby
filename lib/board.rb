class Board
  def initialize
    @field = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
    return self
  end

  def field
    (@field.each {|x| x.dup}).dup
  end

  def move(symbol, row, column)
    if check_inputs(symbol, row, column) && check_free(row, column)
      @field[row - 1][column - 1] = symbol
    end
    return self
  end

  private

  def check_inputs(symbol, row, column)
    if symbol == nil or !['X', 'O'].include?(symbol)
      raise ArgumentError.new("Symbol: You must enter an X or O")
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

  def check_free(row, column)
    unless @field[row - 1][column - 1] == nil
      raise StandardError.new('That field is already claimed')
      return false
    end
    return true
  end
end
