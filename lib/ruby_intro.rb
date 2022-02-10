# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else

    if arr[0] > arr[1]
      max1 = arr[0]
      max2 = arr[1]
    else
      max1 = arr[1]
      max2 = arr[0]
    end
    for i in 2..arr.length-1
      if (arr[i] > max1)
        max1 = arr[i]
        max2 = max1
      end
    end
    
    # puts arr.max(2).sum
    return max1+max2
  end
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  len = arr.length
  if len == 0 or len == 1
    return false
  end
  hash = Hash.new
  for n1 in arr
    n2 = hash.fetch(n-n1,nil)
    if n2 != nil and n1 != n2
      return true
    end
    hash[n1] = n1
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  s = s.downcase()
  if not(s[0].match?(/[A-Za-z]/))
    return false
  end
  set = Set['a','e','i','o','u']
  return not(set.include?(s[0]))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.match?(/^[01]+$/))
    return false
  end
  bin = s.to_i(2)
  if bin%4 == 0
    return true
  end 
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbnVal = 0, priceVal = 0)
    raise ArgumentError.new(
      "Empty strings are not valid for isbn"
    ) if isbnVal == ''
    raise ArgumentError.new(
      "Price should be greater than 0"
    ) if priceVal <= 0
    @isbn = isbnVal
    @price = priceVal
  end
  
  attr_reader :isbn
  attr_writer :isbn
  attr_reader :price
  attr_writer :price
  
  def price_as_string()
    return '$%0.2f' %[@price]
  end
end
