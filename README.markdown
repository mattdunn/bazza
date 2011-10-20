bazza - the builder [![Build Status](https://secure.travis-ci.org/mattdunn/bazza.png)](http://travis-ci.org/mattdunn/bazza)
=======

Build objects easily:

  * specify defaults
    * tailor defaults within tests at build time with optional hash or block
  * chain builders
  * reuse builder instances to create multiple objects
  * specialise builders
  * Readable usage

```ruby
customer = Customer.with.Order.with(:total => 22.21).thats.active.build
```

Why not a use factory?

  * Common for consumers of builders to:
    * specialise defaults; provide a readable way to accommodate this;
    * build several objects of the same type; 

An Example
----------

```ruby
customer = Customer.with.Order.with(:total => 22.21).thats.active.build
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

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/">
  <img src="http://i.creativecommons.org/l/by/3.0/88x31.png" alt="Creative Commons License" style="border:none;" height="31" width="88">
</a>


TODO
----
  
  * Specialisation of defaults
  * #initialize and #build should be already available to builder 
  * #with and #thats can't be combined at present
  * Association: single/many
    * Many: Customer.with.two.Orders
  * Reusing builders
  * Replace String>>#to_class implementation from stack overflow article with a spec'd/tested version
  * Order.thats.active.build: Alternative syntax => Build.order.thats.active
    * Advantage is Class extension no longer needed
    * How to know when to build the instance?
  