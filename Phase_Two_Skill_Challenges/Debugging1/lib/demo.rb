def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    p "loop starts, n is #{n}"
    n -= 1
    p "we subtract 1 from n to get #{n}"
    p "we multiply product #{product} by n #{n}"
    product *= n
    p "we get the product #{product}"
  end
  p "we get the product #{product}"
  product
end

puts factorial(5)

# Intended output:

# > factorial(5)
# => 120
