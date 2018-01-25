module Rool
  class Not < Container
  	def process(dataset={})
  		if @children.length > 1
  			raise "Only one child rule may be passed"
  		end
  		if @children[0].process(dataset) == true
  			return false
  		elsif @children[0].process(dataset) == false
  			return true
  		end
  	end
  end
end

