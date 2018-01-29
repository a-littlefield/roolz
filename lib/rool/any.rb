module Rool
  class Any < Container
  	require 'json'
  	def to_json
  		@children.all?.to_json
  	end
  end
end
