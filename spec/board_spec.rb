describe Board do
  describe 'initial' do
    it 'an instance can be created' do
      board = Board.new
      expect(board).to be_instance_of(Board)
    end
  end
end
