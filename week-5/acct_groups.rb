# In this challenge, you will make your own method to automatically
# create accountability groups from a list of names. You'll want to
# make a list of the People in your cohort. Try to get everyone into
# an accountability group of 4 or 5. Be sure everyone is in a group of
# at least 3 -- It's no fun if someone is in a group by themself or
# with one other person. Input: an array of strings Output: nested
# array of array of strings

list_of_names = ["Syema Ailia","Alan Alcesto","Daniel Andersen","James Artz","Darius Atmar","Brian Bensch","Nicola Beuscher","Kris Bies","Logan Bresnahan","William Brinkert","Scott Chou","Bernice Anne W Chua","Abraham Clark","Jon Clayton","Kevin Corso","Jacob Crofts","Amaar Fazlani","Solomon Fernandez","Edward Gemson","Jamar Gibbs","Chris Gomes","Will Granger","Christopher M. Guard","Ryan Ho","Igor Kazimirov","Walter Kerr","Karla King","Nruthya Lakshminarasimhan pending","Becky Lehmann","Malia Lehrer","Carolina Medellin","Timothy Meixell","Chris Miklius","Joshua Monzon","Shea Munion","Bryan Munroe","Trevor Newcomb","Aleksandra Nowak","Fatma Ocal","Van Phan","Luis Fernando Plaz","Natalie Polen","Alicia Quezada","Jessie Richardson","Nimi Samocha","Zach Schatz","Tal Schwartz","Pratik Shah","Josh Shin","Shawn Spears","Sasha Tailor","Nil Thacker","Natasha Thapliyal","Sabrina Unrein","Brian Wagner","Clinton Weber","Gregory Wehmeier","Michael Whelpley","Alexander Williams","Peter N Wood","Ryan Zell"]



#Refactoring Pseudocode (original code at end)
#input: array of strings
#output: hash with group name and members
# Major change: Only want groups of 3 if absolutely necessary, never less than 3.
# Groups can be composed of all 4s and 5s for lists of 12 and greater, need separate statements for lists of less than 12 students.

#    IF number of names divided by 5 is perfectly divisible
#       split array into groups of 5 names
#    ELSIF
#      num names is 9 then split into groups of 5
#    ELSIF
#      num names is less than 5 then return list as one group
#    ELSIF num of names divided by 4 is perfectly divisible
#       split array into groups of 4 names
#    ELSIF
#      num_names is 7 or 11 split into groups of 4
#    ELSIF
#      num names is 6 then split into groups of 3
#    ELSIF num of names > 12
#       Segment list size into two subset. One containing all of the names that will be split into groups of 4. The relationship between the remainder when dividing by 5 and the number groups of 4 is 5 - remainder of list size/5. Use this number multiplied by 4 to get the size of this subset that you need to segment to create groups of 4. The second subset is the rest of the list, and will make up the groups of 5.
#
#  Convert arrays to a hash and return the hash.
#    end
#  end


# Explanation of relationship between remainder and # of groups of 4:
# => For lists larger than 11 people, the list can be split into groups of all 5s and 4s. The total number of groups is the list size / 5 + 1. Call this number our total containers.
#    Logic: If each container was a group of 5, we would overshoot the list size since none of the lists are perfectly divisible by 5. Since the remainder of the list size by 5 is always a remainder between 1 and 4, we take 1 off of each 5 to bring the total down. For numbers greater than 11, we will always have enough 5s to adjust down since we will always have at least 4 containers. So the number of times we reduce a container is 5 - the remainder when list size is divided by 5. This is equivalent to the number of groups of 4 that we need.
# => Exception: for list sizes less than 11, this does not apply. E.g. for a list size of 11, we would have three containers, i.e. 5, 5, 5 but 15 overshoots 11 by 4. We don't have 4 containers so we can't reduce enough without forcing a group size less than 4.



def accountability_groups(list_of_names)
  num_names = list_of_names.length
  list_of_names.shuffle! if num_names > 1
  rmdr_by_4 = num_names % 4
  rmdr_by_5 = num_names % 5
  div_by_5 = num_names / 5

  if rmdr_by_5 == 0 || num_names < 5 || num_names == 9
    group_array =  list_of_names.each_slice(5).to_a
  elsif rmdr_by_4 == 0 || num_names == 7 || num_names == 11
    group_array =  list_of_names.each_slice(4).to_a
  elsif num_names == 6
    group_array =  list_of_names.each_slice(3).to_a
  elsif num_names > 12
    group_array = list_of_names[0.. (4 * (5 - rmdr_by_5)-1)].each_slice(4).to_a + list_of_names[(4 * (5 - rmdr_by_5))..num_names-1].each_slice(5).to_a
  end
  return group_array.map.with_index {|x, i| ['Group ' + (i+1).to_s, x] }.to_h
end

puts 'Test 1'
accountability_groups(list_of_names).each{|i| p i}
puts
puts 'Test 2'
accountability_groups(list_of_names[1..11]).each{|i| p i}
puts
puts 'Test 3'
accountability_groups(list_of_names[1..4]).each{|i| p i}
puts
puts 'Test 4'
accountability_groups(list_of_names[1..6]).each{|i| p i}
puts
puts 'Test 5'
accountability_groups(list_of_names[1..2]).each{|i| p i}
puts
puts 'Test 6'
accountability_groups(list_of_names[3..40]).each{|i| p i}

#Reflection
#What was the most interesting and most difficult part of this challenge?
  #The interesting part of the challenge was figuring out a pattern to determine how to break the list down into groups while using mostly group sizes of 4 and 5, avoiding 3s unless absolutely necessary.
#Do you feel you are improving in your ability to write pseudocode and break the problem down?
  #I am getting better at this. I've had a lot of practice in logic problems and breaking down problems. It's an advantage to have a background in this, and I don't think it's something you can really learn in a bootcamp, so I hope we're provided more resources to practice this. I'm surprised things like Project Euler hasn't been introduced yet to encourage us to practice.
#Was your approach for automating this task a good solution? What could have made it even better?
  #I think I have a good solution that has been refactored well. I'm not happy with the exceptions that I had to put in for the smaller group sizes under 12, and haven't figured out a better way of doing this yet.
#What data structure did you decide to store the accountability groups in and why?
  #I first stored the accountability groups into a nested array because I could simply break up the array into subsets to get the groups. I then created a hash for the arrays to make it more intuitive to a user.
#What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  #I used the shuffle method for the first time to vary the groups each turn. I practiced using each_slice and applied each_slice to a subset of the array. I used map for the first time in sending the array to a hash.



######ORIGINAL SOLUTION BELOW
#input: array of strings
#output: 2D array of strings
#Count the number of people in the cohort and divide by 5 to get number of groups
  #IF number of people < 5, return one cohort
  #ELSIF size of last cohort is 4 or 5 then return groups
  #ELSIF (number of groups - 1) >= 4 - remainder group size
      #pop a member of each group of 5 and add to last group until you get to size of 4
    #ELSIF (number of groups - 1) < 4 - remainder group size
      #test again with groups of 4
      #IF size of last cohort is 3 or 4 then return groups
      #ELSIF (number of groups - 1) >= 3 - remainder group size
        #pop a member of each group of 5 and add to last group until you get to size of 4
      #ELSIF (number of groups - 1) < 3 - remainder group size
        #run again with groups of 3
    #end
  #end
=begin
Solution 1 (before refactoring)
def accountability_groups(list_of_names)

#randomize the group
list_of_names.shuffle!
number_names = list_of_names.length


  # if list of names is less than 5, you have one cohort
  remainder_five = number_names % 5
  remainder_four = number_names % 4

  if number_names <= 5 || remainder_five >= 4 || remainder_five == 0
    return cohort_list = list_of_names.each_slice(5).to_a
  elsif remainder_four >= 3 || remainder_four == 0
    return cohort_list = list_of_names.each_slice(4).to_a
  elsif (number_names / 5 - 1) >= (4 - remainder_five)
    cohort_list = list_of_names.each_slice(5).to_a #split into groups of 5
    loop_num = (4 - remainder_five) #get number of loops
    loop_num.times {|i| cohort_list[-1] << cohort_list[i].pop} #pop number of loops
    return  cohort_list
  elsif (number_names / 4 - 1) >= (3 - remainder_four)
      cohort_list = list_of_names.each_slice(5).to_a
      loop_num = (3 - remainder_four)
      loop_num.times {|i| cohort_list[-1] << cohort_list[i].pop}
      return  cohort_list
  else
      return cohort_list = list_of_names.each_slice(3).to_a
  end
end
=end