describe "Rool::Email" do
  describe '#process' do

  	before :each do
      @data = {
      	email: 'turrysmaf@gmail.com',
        invalEmail: 'rook@gmailcom'
      }
    end

    it 'returns true for valid email address' do
      expect(Rool::Email.new(:email, ).process(@data)).to be(true)
    end
    it 'returns false for invalid email address' do
      expect(Rool::Email.new(:invalEmail, ).process(@data)).to be(false)
    end
  end
end