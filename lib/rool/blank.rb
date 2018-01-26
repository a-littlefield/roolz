module Rool
  class Blank < Basic
  	def process(dataset)
      super
     	if (dataset[@data_key].nil? || dataset[@data_key].empty?)
     		return true
     	else
     		return false
     	end
	  end
  end
end