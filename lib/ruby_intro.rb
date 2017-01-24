# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) {|sum,a| sum + a.to_i }
end

def max_2_sum arr
  if arr.length == 0
  	return 0
  else
  	arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  arr.combination(2).any? {|a, b| (a + b) == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  n = "Hello, " + name
end

def starts_with_consonant? s
  # We check for empty input
  if s == ""
  	return false
  end

  # We check if it is a non-letter
  if s[0][/[a-zA-Z]+/] != s[0]
  	return false
  end
  
  # We check if it is a vowel or a consonant
  if s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u' || 
  	s[0] == 'A' || s[0] == 'E' || s[0] ==  'I' || s[0] ==  'O' || s[0] == 'U' 
  	return false
  else  	
  	return true
  end	
end

def binary_multiple_of_4? s
  # Helpful snippet from stackoverflow
  def number_or_nil(string)
  	Integer(string || '')
  rescue ArgumentError
  	nil
  end

  # Converting and checking if input is a number
  n = number_or_nil(s)
  if n == nil
  	return false
  end

  # Checking whether not divisible by 4
  if n%4 != 0
  	return false
  end

  # Since valid number, and divisible by therefore it is true
  return true
end

# Part 3
class BookInStock
	# Getters and Setters for class variable isbn
	attr_reader :isbn
	attr_writer :isbn

	# Getters and Setters for class variable price
	attr_reader :price
	attr_writer :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = price

		# Checking if ISBN number is empty
		if isbn == ""
		    raise ArgumentError, "ISBN number is invalid, it must not be empty"
		    return
		end

		# Checking if price is a valid number
		p = number_or_nil(price)
		if p == nil 
			raise ArgumentError, "Price is invalid, it should only contain digits"
			return
		end

		# Checking if price is less than 1
		if p <= 0
			raise ArgumentError, "Price is invalid, it should be greater than 0"
			return
		end
	end

	def price_as_string()
		sprintf "$%.2f" % @price
	end

	# Helpful snippet from stackoverflow
  	def number_or_nil(string)
  		Integer(string || '')
  	rescue ArgumentError
  		nil
  	end
end