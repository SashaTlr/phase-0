# Calculate a Grade

# I worked on this challenge by myself.
# Inputs: Integer
# Outputs: String (A, B, C, D, F)
# "A" if the average is >= 90
# "B" if the average is >= 80
# "C" if the average is >= 70
# "D" if the average is >= 60
# "F" if the average is < 60


# Your Solution Below
def get_grade(num_grade)

  if num_grade >= 90
    return "A"
  elsif num_grade >= 80
    return "B"
  elsif num_grade >= 70
    return "C"
  elsif num_grade >= 60
    return "D"
  else
    return "F"
  end
end
