# When done, submit this entire file to the autograder.

# Part 1

# Method takes in an integer array and returns the sum of its elements, returns 0 for empty array.
def sum arr
  if arr.size == 0
    return 0
  else
    elem_sum = 0
    arr.each do |int|
      elem_sum += int
    end
    return elem_sum
  end
end

# Method takes an array of integers as an argument and returns the sum of its two largest elements.
def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    return arr.sort.last(2).sum
  end
end

# takes an array of integers and an additional integer, n, as arguments and returns true if any two elements
# in the array of integers sum to n, should return false for any value of n, by definition.
def sum_to_n? arr, n
  if arr.size == 0
    return false
  end
  size = arr.size
  for i in 0...size do
    for j in (i + 1)...size do
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

# Method takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
  return "Hello, #{name}"
end

# Method takes a string and returns true if it starts with a consonant and false otherwise.
def starts_with_consonant? s
  s = s.downcase
  answer = s.start_with?("b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z")
  return answer
end

# Method takes a string and returns true if the string represents a binary number that is a multiple of 4.
def binary_multiple_of_4? s
  if s.size == 0
    return false
  end

  size = s.size
  s = s.reverse
  s = s.chars

  sum = 0
  for i in 0...size do
    if s[i] != "1" and s[i] != "0"
      return false
    end
    sum = sum + (2 ** i) * s[i].to_i
  end
  return (sum % 4 == 0)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.size == 0
      raise ArgumentError
    elsif price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$#{('%.2f' % @price)}"
  end
end

book = BookInStock.new("book", 10.2)
puts book.price_as_string