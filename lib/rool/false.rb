module Rool
  class False < Basic
    def process(dataset={})
      # don't call super since this is an absolute answer
      # self.message = "False will always return false"
      self.result = false
      false
    end
  end
end
