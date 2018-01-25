module Rool
  class Include < Basic
  	def process(dataset)
      super
     	if dataset[@data_key].include?(@operand)
     		return true
     	else
     		return false
     	end
	  end
  end
end
