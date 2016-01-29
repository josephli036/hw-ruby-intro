# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  total = 0
  array.each{|x| total+=x}
  return total
end

def max_2_sum(array)
  if array == nil or array.size == 0
    return 0
  elsif array.size == 1
    return array[0]
  end
  largest = array.index(array.max)
  i = 0
  while i == largest do
    i += 1
  end
  second = array[i]
  array.each_with_index do |val, i|
    if val > second and i != largest
      second = val
    end
  end
  
  return second + array.max
end

def sum_to_n?(array, n)
  array.each_with_index do |val, i|
    array.each_with_index do |val2, i2|
      if (val + val2) == n and i != i2
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  if s == '' or s[0].match(/\w/).nil?
    return false
  end
  return s[0].match(/[aeiou]/i).nil?
end

def binary_multiple_of_4?(s)
  if s == "0"
    return true
  elsif s.match(/^[10]*$/).nil?
    return false
  elsif s.match(/1[10]*00$/).nil?
    return false
  end
  return true
end

# Part 3

class BookInStock
  
  def initialize(i, p)
    if i == "" or p <= 0
      raise ArgumentError
    end
    @isbn = i
    @price = p
  end
  
  def isbn
    return @isbn
  end
  def isbn= s
    @isbn = s
  end
  def price
    return @price
  end
  def price= p
    @price = p
  end
  
  def price_as_string
    if @price.to_s.match(/(\d*)\.(\d*)/).nil?
      return "$#{@price}.00"
    elsif $2.to_i > 9
      return "$#{$1}.#{$2}"
    else
      return "$#{$1}.#{$2}0"
    end
  end
end
