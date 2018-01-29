module Rool
  class LessThan < Basic
  	def process(dataset)
      super
      # return false unless (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      # @operand < dataset[@data_key]

      if (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>) && @operand < dataset[@data_key])
      	self.result = true
      else
      	self.result = false
      	self.message = "#{@operand} is not less than #{dataset[@data_key]}"
      	puts @message
      end
      return @result
    end
  end
end
