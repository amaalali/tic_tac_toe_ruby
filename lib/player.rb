class Player
  def initialize(name,symbol)
    check_symbol(symbol)
    @name = name
    @symbol = symbol
  end

  def name
    @name.dup
  end

  def symbol
    @symbol.dup
  end

  private

  def check_symbol(symbol)
    raise ArgumentError.new('User Symbol is invalid') if !['X', 'O'].include?(symbol)
  end
end
