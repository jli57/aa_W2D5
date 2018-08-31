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

