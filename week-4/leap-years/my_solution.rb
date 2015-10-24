# Leap Years

# I worked on this challenge with Bernice.

# Your Solution Below

=begin
def leap_year?(year)
  if (year % 400 == 0)
    return true
  elsif (year % 4 != 0)
    return false
  elsif (year % 100 == 0)
    return false
  else
    return true
  end
end
=end


def leap_year?(year)
    return true if (year % 400 == 0)
    return false if (year % 4 != 0) || (year % 100 == 0)
    return true
end