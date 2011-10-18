# Rather than introducing a dependency on ActiveSupports#constantize,
# using implementation from http://stackoverflow.com/questions/1448670/ruby-stringto-class
class String
  def to_class(parent = Kernel)
    chain = self.split "::"
    klass = parent.const_get chain.shift
    return chain.size < 1 ? (klass.is_a?(Class) ? klass : nil) : chain.join("::").to_class(klass)
    rescue
      nil
  end  
end