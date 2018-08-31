class MaxIntSet
  
  def initialize(max)
    @max = max 
    @store = Array.new(max, false)
  end
  
  def insert(el)
    within_range?(el)
    @store[el] = true 
  end
  
  def remove(el)
    within_range?(el)
    @store[el] = false
  end
  
  def include?(el)
    within_range?(el)
    @store[el]
  end
  
  private 
  
  def within_range?(el)
    raise ArgumentError unless el >= 0 && el < @max 
  end 
  
end 

class IntSet
  
  def initialize
    @store = Array.new(20) { Array.new }
  end
  
  def include?(el)
    self[el].include?(el)
  end
  
  def insert(el)
    self[el] << el unless include?(el)
  end
  
  def remove(el)
    self[el].delete(el) unless include?(el)
  end
  
  def [](el)
    @store[el % 20]
  end 
  
end 

class ResizingIntSet
  
  
end 
