bazza - the builder [![Build Status](https://secure.travis-ci.org/mattdunn/bazza.png)](http://travis-ci.org/mattdunn/bazza)
=======

Build up objects close to where they're being used. 

```ruby
customer = Customer.with.Order.with(:total => 22.21).thats.active.build
```

You can:

  * specify defaults
    * override defaults with optional hash
  * reuse builders
  * chain builders
  * specialise builders

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
  
  * Association: 
    * single
      * implement responds_to whereever method_missing implemented
      * dynamically add the methods to builder, based on instance being built?
    * many
      * Build multiple: Customer.with.two.Orders
  * Specialisation
    * infer #make#{Something} method convention for specialisation methods on builder?
  * #initialize and #build should be already available to builder 
  * #with and #thats can't be combined at present
  * Reusing builders
  * Replace String>>#to_class implementation from stack overflow article with a spec'd/tested version
  * Alternative syntax:
    * Order.thats.active.build => Build.order.thats.active
    * Advantage is Class extension no longer needed
    * How to know when to build the instance?
  