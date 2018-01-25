module Rool
  class Include < Basic
  	def process(dataset)
      super
      puts dataset[@data_key].include?(@operand)
      puts dataset
      puts @operand
     	if dataset[@data_key].include?(@operand)
     		return true
     	else
     		return false
     	end
	  end
  end
end
