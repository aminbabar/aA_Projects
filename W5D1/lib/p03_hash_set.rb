class HashSet
  attr_reader :count, :num_buckets

  def initialize(num_buckets = 8)
    @num_buckets = num_buckets
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(key)
    if !include?(key)
      @count += 1 #O(1)
      resize! if @num_buckets < @count #amortization - the cost of running this opperation is amortized
      self[key] << key #O(1)                           over the extra extra buckets we make which in turn 
                                                      # makes this constant time complexity 
    end
  end

  def include?(key)
    self[key].include?(key) #O(1)
  end

  def remove(key) #O(1)
    if self.include?(key)
      self[key].delete(key)
      @count -= 1
    end
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    i = num.hash % @num_buckets
    @store[i]
  end

  def num_buckets
    @store.length
  end

  def resize! #O(n)
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
