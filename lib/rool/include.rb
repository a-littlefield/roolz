module Rool
  class Include < Basic
  	def process(dataset)
      super
     	if dataset[@data_key].include?(@operand)
     		self.result = true
     	else
     		self.message = "Value passed does not belong in data array"
     		puts message
     		self.result = false
     	end
     	return @result
	  end
  end
end
