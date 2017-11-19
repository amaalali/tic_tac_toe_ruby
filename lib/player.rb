class Player
  SYMBOLS = ['X', 'O']

  def initialize(name, symbol)
    @name = name
    @symbol = assign_symbol(symbol)
  end

  attr_reader :name, :symbol

  private

  def assign_symbol(symbol)
    return symbol if SYMBOLS.include?(symbol)
    raise ArgumentError.new('User Symbol is invalid')
  end
end
