describe GameStatus do
  let(:board) { Board.new }

  it 'returns false if game is not finished' do
    expect(GameStatus.check(board)).to eq false
  end

  it 'returns true if game is finished' do
    board.move("X", 1, 1)
    board.move("X", 1, 2)
    board.move("X", 1, 3)
    expect(GameStatus.check(board)).to eq true
  end
end
