bazza - the builder [![Build Status](https://secure.travis-ci.org/mattdunn/bazza.png)](http://travis-ci.org/mattdunn/bazza)
=======

Build up objects close to where they're being used. 

```ruby
customer = Customer.with.Order.with(:total => 22.21).thats.active.build
```

You can:

  * specify defaults
    * can be overridden
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
  <img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" />
</a>
<br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.


TODO
----
  
  * Association: 
    * single
      * implement responds_to whereever method_missing implemented
      * ponder adding default hash param to #with
      * dynamically add the methods to builder, based on instance being built?
    * many
      * Build multiple: Customer.with.two.Orders
      * linguistics gem for text to number conversion
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
  