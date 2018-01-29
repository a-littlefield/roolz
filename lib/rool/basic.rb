class Rool::Basic

  attr_accessor :data_key, :operand, :result, :message
  def initialize(data_key = nil, operand = nil, result = nil, message = nil)
    @data_key = data_key
    @operand = operand
    @result = result
    @message = message
  end

  def process(dataset = {})
    raise ArgumentError.new("Expected the dataset to be a ruby Hash") unless dataset.kind_of?(Hash)
    return false unless dataset.key?(@data_key)
  end

end
