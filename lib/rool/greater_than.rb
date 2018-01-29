module Rool
  class GreaterThan < Basic
    def process(dataset)
      super
      # return false unless (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      # @operand > dataset[@data_key]

      if (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>) && @operand > dataset[@data_key])
      	self.result = true
      else
      	self.message = "#{@operand} is not greater than #{dataset[data_key]}"
      	puts message
      	self.result = false
      end 
      return @result
    end
  end
end
