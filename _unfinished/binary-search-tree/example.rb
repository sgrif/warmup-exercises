# first iteration
class Bst
  attr_accessor :data, :left, :right

  def initialize(data)
    self.data = data
  end

  def insert(new_data)
    if new_data <= data
      insert_left new_data
    else
      insert_right new_data
    end
  end

  def insert_left(data)
    if left
      left.insert data
    else
      self.left = Bst.new data
    end
  end

  def insert_right(data)
    if right
      right.insert data
    else
      self.right = Bst.new data
    end
  end

  def each(&block)
    left && left.each(&block)
    block.call data
    right && right.each(&block)
  end
end

__END__

# maybe refactor to this
class Bst
  Null = Object.new

  def Null.insert(data)
    Bst.new data
  end

  def Null.each
  end

  attr_accessor :data, :left, :right

  def initialize(data)
    self.data  = data
    self.left = self.right = Null
  end

  def insert(new_data)
    if new_data <= data
      self.left = left.insert new_data
    else
      self.right = right.insert new_data
    end
    self
  end

  def each(&block)
    left.each(&block)
    block.call data
    right.each(&block)
  end
end
