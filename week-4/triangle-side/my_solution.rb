# I worked on this challenge with Bernice.


# Your Solution Below

def valid_triangle?(a, b, c)
  # Check that a, b, c are all greater than 0
  return false if a == 0 || b == 0 || c == 0

  # Check that sum of two sides is greater than third side for all permutations
  return true if (a + b >= c) && (a + c >= b) && (c + b >= a)
end

