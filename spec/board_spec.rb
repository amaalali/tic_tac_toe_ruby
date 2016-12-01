describe Board do
  let(:board) { Board.new }

  describe 'initializtion' do
    it 'an instance can be created' do
      expect(board).to be_instance_of(Board)
    end

    it '#view' do
      expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
    end
  end

  describe '#play' do
    context 'invalid inputs' do
      it 'playing any symbol expect x or o results in an error message' do
        expect {board.play('z',1,1)}.to raise_error(ArgumentError, 'Symbol: You must enter an x or o')
        expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'specififying a row that is out of range' do
        expect {board.play('x',4,1)}.to raise_error(ArgumentError, 'Row: You must enter a row in range 1-3')
        expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'specififying a row that is not a number' do
        expect {board.play('x','x',1)}.to raise_error(ArgumentError, 'Row: You must enter a row in range 1-3')
        expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'specififying a column that is out of range' do
        expect {board.play('x',1,4)}.to raise_error(ArgumentError, 'Column: You must enter a column in range 1-3')
        expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end

      it 'specififying a column that is not a number' do
        expect {board.play('x',1,'x')}.to raise_error(ArgumentError, 'Column: You must enter a column in range 1-3')
        expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end
    end

    context 'valid inputs' do
      it 'playing x in (1,1)' do
        board.play('x',1,1)
        expect(board.view).to eq([['x', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end
      it 'playing o in (1,1)' do
        board.play('o',1,1)
        expect(board.view).to eq([['o', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end
      it 'playing in s field that is already claimed' do
        board.play('x',1,1)
        expect {board.play('x',1,1)}.to raise_error(StandardError, 'That field is already claimed')
        expect(board.view).to eq([['x', nil, nil], [nil, nil, nil], [nil, nil, nil]])
      end
    end
  end
end
