module Rool
  class Subset < Basic
  	def process(dataset)
      super
      if (dataset[@data_key].all? { |e| @operand.include?(e) })
      	self.result = true
      else
      	self.message = "#{@operand} is not a complete subset of #{dataset[data_key]}"
      	puts @message
      	self.result = false
      end
      return @result
      # (@operand & dataset[@data_key]) == dataset[@data_key]
	  end
  end
end