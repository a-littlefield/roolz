module Rool
  class True < Basic
    def process(dataset={})
      # don't call super since this is an absolute answer
      self.result = true
      true
    end
  end
end
