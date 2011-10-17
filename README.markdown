bob - the builder
=======

Build objects easily:

    * specify defaults
        * tailor defaults within tests at build time with optional hash or block
    * chain builders
    * reuse builder instances to create multiple objects
    * specialise builders
    * Readable usage
         ```ruby
         customer = Customer.with.Order.with(:total => 22.21).thats.active
         ```

Why not a use factory?

    * Common for consumers of builders to:
        * specialise defaults; provide a readable way to accommodate this;
        * build several objects of the same type; 

An Example
----------

```ruby
customer = Customer.with.Order.with(:total => 22.21).thats.active
```

class Customer
end

class Order
end

class CustomerBuilder
end

class OrderBuilder
end


License
-------

http://creativecommons.org/licenses/by/3.0/


TODO
----

  * Replace String>>#to_class implementation from stack overflow article with a spec'd/tested version

Notes
-----

* Old school way:

orderBuilder = OrderBuilder.new.with(:total => 22.21).makeActive
customer = CustomerBuilder.with(:orderBuilder => orderBuilder).build

* Aim:

Customer.with.Order.with(:total => 22.21).thats.active

- #with
  - no args: assumes next token is class name of associated attribute
    - no-op, return self
    - next message expected to be class name, resolve via method missing?  
      - What about other method missing handlers? Better to return instance of class rather than self that permits chaining.
    - attributeBuilder
    
  - args: attributes of target being built

