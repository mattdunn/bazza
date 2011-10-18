bazza - the builder
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

<a rel="license" href="http://creativecommons.org/licenses/by/3.0/">
  <img src="http://i.creativecommons.org/l/by/3.0/88x31.png" alt="Creative Commons License" style="border:none;" height="31" width="88">
</a>


TODO
----

  * Reusing builders
  * Replace String>>#to_class implementation from stack overflow article with a spec'd/tested version

Notes
-----

* Old school way:
<pre>
orderBuilder = OrderBuilder.new.with(:total => 22.21).makeActive
customer = CustomerBuilder.with(:orderBuilder => orderBuilder).build
</pre>
* Aim:

Customer.with.Order.with(:total => 22.21).thats.active
