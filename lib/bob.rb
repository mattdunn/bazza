require "bob/version"

class Order
  class << self
    def build
      new
    end 
  end
end

module Bob
end
