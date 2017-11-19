require 'board'

describe Board do
  describe '#field' do
    it 'returns the field' do
      board = Board.new

      expect(board.field).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
    end
  end

  describe '#play' do
    context 'valid moves' do
      it 'playing X' do
        board = Board.new
        result = board.move(symbol: 'X', row: 1, column: 1)


        expect(result).to eq(true)
        expect(board.field).to eq([['X', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'playing O' do
        board = Board.new
        result = board.move(symbol: 'O', row: 1, column: 1)

        expect(result).to eq(true)
        expect(board.field).to eq([['O', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'playing in space that is already claimed' do
        board = Board.new
        board.move(symbol: 'X', row: 1, column: 1)

        expect { board.move(symbol: 'O', row: 1, column: 1) }.to raise_error(StandardError, 'That field is already claimed')
        expect(board.field).to eq([['X', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end
    end
  end
end
