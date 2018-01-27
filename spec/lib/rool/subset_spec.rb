describe "Rool::Subset" do
  describe '#process' do

  	before :each do
      @data = {
      	someArray: ['Books', 'Movies', 'Games', 'Food', 'Drinks']
      }
    end

    it 'returns true if operand contains is a complete subset of given array' do
      expect(Rool::Subset.new(:someArray, ['Books', 'Games', 'Movies', 'Food', 'Drinks']).process(@data)).to eq(true)
    end
    it 'returns false if operand contains an incomplete subset of given array' do
      expect(Rool::Subset.new(:someArray, ['Books', 'Games', 'Food',]).process(@data)).to eq(false)
    end

  end
end