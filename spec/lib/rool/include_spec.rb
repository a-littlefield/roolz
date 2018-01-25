describe "Rool::Include" do
  describe '#process' do

  	before :each do
      @data = {
      	someArray: ['Books', 'Movies', 'Games', 'Food', 'Drinks']
      }
    end

    it 'returns true if operand belongs to array' do
      expect(Rool::Include.new(:someArray, 'Books').process(@data)).to eq(true)
    end
  end
end