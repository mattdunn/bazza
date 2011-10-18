class Order 
  attr_reader :total
  
  def initialize(attrs = {})
    @total = attrs[:total]
  end
end