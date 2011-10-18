require 'spec_helper'
require 'models/order'

describe Bazza do
  describe 'building an object' do
    describe 'resolving builder class [ClassName]Builder' do
      context 'when no class exists' do
        it 'should return nil' do
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
        it 'should create an instance' do
          Order.build.should be_an_instance_of Order
        end
        context 'with defaults' do
          before do
            class OrderBuilder
              def build
                Order.new(:total => 22.34)
              end
            end
          end
          it 'should create instance with defaults' do
            Order.build.total.should == 22.34
          end
        end
      end
    end
  end
end