module MyEnumerable
  def initialize(*args)
    @list = [*args]
  end

  def all?
    @list.each do |element|
      return false unless yield element
    end
    true
  end

  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end

  def filter
    array = []
    @list.each do |element|
      array << element if yield element
    end
    array
  end
end
