class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def name
    @name
  end
  
  def calories
    @calories
  end
  
  def name=(value)
    @name = value
  end
  
  def calories=(value)
    @calories = value
  end
  
  def healthy?
    @calories < 200
  end
  
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = "#{flavor} jelly bean"
  end
  
  def flavor
    @flavor
  end
  
  def flavor=(value)
    @flavor = value
  end
  
  def delicious?
    @flavor != 'licorice'
  end
  
end
