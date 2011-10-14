require 'spec_helper'

describe Bob do
  describe 'building an object' do
    it 'will create an instance' do
      Order.build.should be_an_instance_of Order
    end
  end
end