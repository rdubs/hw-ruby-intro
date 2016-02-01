# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |result, element| result + element }
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  arr.sort.last(2).reduce(:+)
end

def sum_to_n? arr, n
  if arr.length == 0 and n == 0
    return true
  end
  if arr.empty?
    return false
  end
  # return false if arr.empty? || arr.size == 1
  l_index = 0
  r_index = arr.length - 1
  arr.sort!
  while l_index < r_index do
    target = arr[l_index] + arr[r_index]
    if target == n
      return true
    elsif arr[l_index] + arr[r_index] < n
      l_index = l_index + 1
    else
      r_index = r_index - 1
    end
  end
  return false
end 
# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  /[a-zA-Z]/.match(/\A[^aeiouAEIOU\d]/.match(s).to_s)
end

def binary_multiple_of_4? s
  if /\A[01]+/.match(s)
    num = s.to_i(2)
    return num % 4 == 0
  else 
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.empty? or price <= 0
      raise ArgumentError.new("Price must be >= 0 and isbn must not be empty string")
      return
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
