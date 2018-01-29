module Rool
  class Email < Basic
  	def process(dataset)
      super
      valid = '[A-Za-z\d.+-]+' #Commonly encountered email address characters
      if((dataset[@data_key] =~ /#{valid}@#{valid}\.#{valid}/) == 0)
        self.result = true
      else
        self.message = "#{dataset[@data_key]} is an invalid email address}"
        puts @message
        self.result = false
      end
      return @result
	  end
  end
end