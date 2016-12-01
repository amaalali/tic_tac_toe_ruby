describe Printer do
  it 'prints the table view of the board' do
    printer = Printer.new
    input = [['X', nil, nil], [nil, 'O', nil], [nil, nil, nil]]
    output = "X| | \n--+--+--\n |O| \n--+--+--\n | | "
    expect(STDOUT).to receive(:puts).with(output)
    printer.print(input)
  end
end
