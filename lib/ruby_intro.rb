# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  firstLargest = arr[0]
  secondLargest = arr[1]
  if arr[0] >= arr[1]
    firstLargest = arr[0]
    secondLargest = arr[1]
  else
    firstLargest = arr[1]
    secondLargest = arr[0]
  end
  for i in 2...arr.length
    if arr[i] > firstLargest
      firstLargest = arr[i]
    elsif arr[i] > secondLargest
      secondLargest = arr[i]
    end
  end
  res = firstLargest + secondLargest
  return res
end

def sum_to_n? arr, n
  if arr.length == 1
    return false
  end
  for i in 0...arr.length
    for j in (i+1)...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s == ""
    return false
  elsif s =~ /^[AEIOUaeiou]/
    puts "false#{s}"
    return false
  elsif s =~ /[^A-Za-z]/
    return false
  else
    puts "true#{s}"
    return true
  end
end

def binary_multiple_of_4? s
  puts "#{s}"
  if s == "" 
    return false
  elsif s =~ /^[0|1]([0|1])*(00)$/ || s == "0"
    puts "#true #{s}"
    return true
  else
    puts "false #{s}"
    return false
  end
  
end

# Part 3

class BookInStock
  def initialize(str, price)
    raise ArgumentError if str.length == 0
    raise ArgumentError if price <= 0.0
    @isbn = str
    @price = price
  end
  
  def isbn
    return @isbn
  end
  
  def isbn= str
    @isbn = str
  end
  
  def price
    return @price
  end
  
  def price= num
    @price = num
  end
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
