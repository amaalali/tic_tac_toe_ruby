class Printer
  def self.print(board)
    field = []
    board.field.each do |x|
      field << x.map { |y| y.nil? ? ' ' : y }
    end
    output = "#{field[0][0]}|#{field[0][1]}|#{field[0][2]}\n-+-+-\n#{field[1][0]}|#{field[1][1]}|#{field[1][2]}\n-+-+-\n#{field[2][0]}|#{field[2][1]}|#{field[2][2]}"
    puts output
  end
end
