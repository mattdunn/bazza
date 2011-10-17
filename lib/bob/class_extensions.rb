class Class
  def build
    klass = (self.name + 'Builder').to_class
    return klass.nil? ? nil : klass.build
  end 
end