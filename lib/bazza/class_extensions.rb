class Class
  def build
    klass = "#{self.name}Builder".to_class
    return klass.nil? ? (raise "#{self.name}Builder class not found") : klass.new.build
  end 
  
  def with(args)
    builderClass = "#{self.name}Builder".to_class
    return builderClass.nil? ? nil : builderClass.new(args)
  end
end