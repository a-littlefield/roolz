module Rool
  class Equal < Basic
  	def process(dataset)
      super
      # return false unless (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      # @operand == dataset[@data_key]

      if (dataset[@data_key].respond_to?(:>) && @operand.respond_to?(:>))
      	@operand == dataset[@data_key]
      	self.result = true
      else
      	self.message = "Value does not meet rule requirments"
      	puts @message
      	self.result = false
      end
      return @result
    end
  end
end
