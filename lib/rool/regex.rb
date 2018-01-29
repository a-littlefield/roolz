module Rool
  class Regex < Basic
  	def process(dataset)
      super
      # return false unless (dataset[@data_key].respond_to?(:<) && @operand.respond_to?(:match))
	     #  @operand.match?(dataset[@data_key])

	    if (dataset[@data_key].respond_to?(:<) && @operand.respond_to?(:match) && @operand.match?(dataset[@data_key]))
	    	self.result = true
	    else
	    	self.message = "#{@operand} does not belong to data set"
	    	puts @message
	    	self.result = false
	    end
	    return @result
	  end
  end
end

