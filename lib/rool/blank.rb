module Rool
  class Blank < Basic
  	def process(dataset)
      super
     	if (dataset[@data_key].nil? || dataset[@data_key].empty?)
        self.result = true
     	else
        self.message = "value of -#{@data_key}- is not empty or nil"
        puts @message
        self.result = false
     	end
      return @result
	  end
  end
end