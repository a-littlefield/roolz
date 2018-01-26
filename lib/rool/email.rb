module Rool
  class Email < Basic
  	def process(dataset)
      super
     	if (dataset[@data_key].nil?)
     		return true
     	else
     		return false
     	end
	  end
  end
end