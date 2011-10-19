class Class
  def build
    builderClass.new.build
  end 
  
  def with(args)
    builderClass.new(args)
  end
  
  def thats
    with({})
  end
  
  private 
  
  def builderClass
    builderClass = "#{self.name}Builder".to_class
    raise "#{self.name}Builder class not found" if builderClass.nil?
    return builderClass
  end
end