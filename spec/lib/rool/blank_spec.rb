describe "Rool::Blank" do
  describe '#process' do

  	before :each do
      @data = {
      	nothing: '',
      	nilVal: nil,
      	goodIdeas: [],
      	governmentInfo: {}
      }
    end

    it 'returns true for empty string' do
      expect(Rool::Blank.new(:nothing, ).process(@data)).to be(true)
    end
    it 'returns true for empty array' do
      expect(Rool::Blank.new(:goodIdeas, ).process(@data)).to be(true)
    end
    it 'returns true for emty hash' do
      expect(Rool::Blank.new(:governmentInfo, ).process(@data)).to be(true)
    end
    it 'returns true for nil' do
      expect(Rool::Blank.new(:nilVal, ).process(@data)).to be(true)
    end
  end
end