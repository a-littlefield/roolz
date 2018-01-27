module Rool
  class Subset < Basic
  	def process(dataset)
      super
      puts dataset
      puts @operand
      dataset[@data_key].all? { |e| @operand.include?(e) }
      # (@operand & dataset[@data_key]) == dataset[@data_key]
	  end
  end
end