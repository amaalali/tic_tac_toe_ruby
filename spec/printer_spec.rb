describe Printer do
  it 'prints the table view of the board' do
    board = Board.new
    board.move('X',1,1)
    board.move('O',2,2)
    output = "X| | \n-+-+-\n |O| \n-+-+-\n | | "
    expect(STDOUT).to receive(:puts).with(output)
    Printer.print(board)
  end

end
