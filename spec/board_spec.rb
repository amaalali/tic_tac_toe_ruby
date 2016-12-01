describe Board do
  describe 'initializtion' do
    let(:board) { Board.new }

    it 'an instance can be created' do
      expect(board).to be_instance_of(Board)
    end

    it '#view' do
      expect(board.view).to eq([[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]])
    end
  end

  describe '#play' do

  end
end
