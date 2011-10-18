require 'spec_helper'
require 'models/order'

describe Bazza do
  describe 'building' do
    describe 'resolves builder class named #{ClassName}Builder' do
      context 'but when class doesn\'t exist' do
        it 'returns nil' do
          Order.build.should be_nil
        end
      end
      context 'when class exists' do
        before do
          class OrderBuilder
            def build
              Order.new({}) 
            end
          end
        end
        it 'creates an instance' do
          Order.build.should be_an_instance_of Order
        end
      end
    end
  end  
        
  describe 'defaulting' do
    context 'when defaults exist' do
      before do
        class OrderBuilder
          def build
            Order.new(:total => 22.34)
          end
        end
      end
      it 'creates instance with defaults' do
        Order.build.total.should == 22.34
      end
    end
  end
end