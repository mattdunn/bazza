class Order 
  attr_reader :total, :state
  
  def initialize(attrs = {})
    @total = attrs[:total]
    @state = attrs[:state]
  end
end