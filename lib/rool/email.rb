module Rool
  class Email < Basic
  	def process(dataset)
      super
       valid = '[A-Za-z\d.+-]+' #Commonly encountered email address characters
       (dataset[@data_key] =~ /#{valid}@#{valid}\.#{valid}/) == 0
	  end
  end
end