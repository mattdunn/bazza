require 'spec_helper'
require 'models/order'

describe Bazza do
  describe 'building' do
    describe 'resolves builder class named #{ClassName}Builder' do
      context 'when class doesn\'t exist' do
        it 'raises an exception' do
          expect { Order.build }.should raise_exception(Exception, "OrderBuilder class not found")
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
        it 'creates instance' do
          Order.build.should be_an_instance_of Order
        end
      end
    end
  end  
        
  describe 'defaulting' do
    before do
      class OrderBuilder
        def initialize(attrs = {})
          @defaults = attrs
        end
        def build
          Order.new(@defaults)
        end
      end
    end
    context 'when default exists' do
      before do
        class OrderBuilder
          def initialize(attrs = {})
            @defaults = {:total => 22.34}
            @defaults.merge!(attrs)
          end
        end
      end
      it 'creates instance with default' do
        Order.build.total.should == 22.34
      end
      context 'when overriding default' do
        it 'creates instance with overidden default' do
          Order.with(:total => 33.56).build.total.should == 33.56
        end
      end
    end
  end
end