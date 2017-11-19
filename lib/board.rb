class Board
  SYMBOLS = ['X', 'O']
  ROW_COLUMN_RANGE = (1..3).to_a

  attr_reader :field

  def initialize
    @field = [
      [nil, nil, nil],
      [nil, nil, nil],
      [nil, nil, nil]
    ]

    return self
  end

  def move(symbol:, row:, column:)
    return unless check_inputs(symbol, row, column) && check_free(row, column)

    @field[row - 1][column - 1] = symbol
    return true
  end

  private

  attr_reader :row_1, :row_2, :row_3

  def check_inputs(symbol, row, column)
    unless SYMBOLS.include?(symbol)
      raise ArgumentError.new("Symbol: You must enter an X or O")
    end

    unless ROW_COLUMN_RANGE.include?(row)
      raise ArgumentError.new("Row: You must enter a row in range 1-3")
    end

    unless ROW_COLUMN_RANGE.include?(column)
      raise ArgumentError.new("Column: You must enter a column in range 1-3")
    end

    return true
  end

  def check_free(row, column)
    if position(row, column)
      raise StandardError.new('That field is already claimed')
    end

    return true
  end

  def position(row, column)
    @field[row - 1][column - 1] 
  end
end
