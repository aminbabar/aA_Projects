class MaxIntSet
  attr_reader :max, :store
  def initialize(max)
    @store = Array.new(max, false)
    @max = max 
  end

  def insert(num)
    raise "Out of bounds" if !is_valid?(num)
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return true if @store[num]
    false
  end

  private

  def is_valid?(num)
    return false if (num > @max) || (num < 0)
    true 
  end

end


class IntSet
  attr_reader :num_buckets
  def initialize(num_buckets = 20)
    @num_buckets = num_buckets
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    i = num % @num_buckets
    @store[i]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count, :num_buckets

  def initialize(num_buckets = 20)
    @num_buckets = num_buckets
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    if !include?(num)
      @count += 1 
      resize! if @num_buckets < @count
      self[num] << num 
    end 
  end

  def remove(num)
    if include?(num)
      self[num].delete(num)
      @count -= 1 
    end 
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    i = num % @num_buckets
    @store[i]
  end

  def num_buckets
    @store.length
  end


  def resize!
    prev_store = deep_dup(@store)
    @count = 0 
    @store = Array.new(@num_buckets * 2) { Array.new }
    prev_store.flatten.each { |ele| self.insert(ele) }
    @count += 1 
  end

  def deep_dup(arr)
    dup_arr = arr.dup
    dup_arr.map { |sub| sub.dup }
  end
end
