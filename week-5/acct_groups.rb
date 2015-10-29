# In this challenge, you will make your own method to automatically create accountability groups from a list of names. You'll want to make a list of the People in your cohort. Try to get everyone into an accountability group of 4 or 5. Be sure everyone is in a group of at least 3 -- It's no fun if someone is in a group by themself or with one other person.
# Input: an array of strings
# Output: 2D array of strings

list_of_names = ["Syema Ailia","Alan Alcesto","Daniel Andersen","James Artz","Darius Atmar","Brian Bensch","Nicola Beuscher","Kris Bies","Logan Bresnahan","William Brinkert","Scott Chou","Bernice Anne W Chua","Abraham Clark","Jon Clayton","Kevin Corso","Jacob Crofts","Amaar Fazlani","Solomon Fernandez","Edward Gemson","Jamar Gibbs","Chris Gomes","Will Granger","Christopher M. Guard","Ryan Ho","Igor Kazimirov","Walter Kerr","Karla King","Nruthya Lakshminarasimhan pending","Becky Lehmann","Malia Lehrer","Carolina Medellin","Timothy Meixell","Chris Miklius","Joshua Monzon","Shea Munion","Bryan Munroe","Trevor Newcomb","Aleksandra Nowak","Fatma Ocal","Van Phan","Luis Fernando Plaz","Natalie Polen","Alicia Quezada","Jessie Richardson","Nimi Samocha","Zach Schatz","Tal Schwartz","Pratik Shah","Josh Shin","Shawn Spears","Sasha Tailor","Nil Thacker","Natasha Thapliyal","Sabrina Unrein","Brian Wagner","Clinton Weber","Gregory Wehmeier","Michael Whelpley","Alexander Williams","Peter N Wood","Ryan Zell"]



#Refactoring Pseudocode
#input: array of strings
#output: 2D array of strings
# Major change: Only want groups of 3 if absolutely necessary
#    IF number of names divided by 5 is perfectly divisible
#       split array into groups of 5 names
#    ELSEIF num of names divided by 4 is perfectly divisible
#       split array into groups of 4 names
#    ELSIF num of names > 12
#      number of groups is num of names + 1, this will store sequence of group sizes
#      number of groups of 4 names is (5 - remainder of num of names divided by 5)
#      number of groups of 5s is number of groups - number of groups of 4
#        Split array into 2 chunks: names in groups of 4s and names in groups of 5s
#        Split 2 arrays into groups of 4 and 5 and concatenate
#    ELSIF
#      num names is 6 then split into groups of 3
#    ELSIF
#      num_names is 7 or 11 split into groups of 4
#    elsif
#      num names is 9 then split into groups of 5
#    end
#  end

def accountability_groups(list_of_names)
  list_of_names.shuffle! if list_of_names.length > 1
  num_names = list_of_names.length
  rmdr_by_4 = num_names % 4
  rmdr_by_5 = num_names % 5
  div_by_5 = num_names / 5

  if rmdr_by_5 == 0 || num_names < 5 || num_names == 9 #note special case
    return list_of_names.each_slice(5).to_a
  elsif rmdr_by_4 == 0 || num_names == 7 || num_names == 11 #note special case
    return list_of_names.each_slice(4).to_a
  elsif num_names == 6
    return list_of_names.each_slice(3).to_a
  elsif num_names > 12
    grouping_fours = 5 - rmdr_by_5 #number of fours 13 = 5 - 3 = 2
    grouping_fives = div_by_5 + 1 - grouping_fours # 3 - 2 = 1
    #split into two arrays
    return list_of_names[0.. (4 * grouping_fours -1)].each_slice(4).to_a + list_of_names[(4 * grouping_fours)..num_names-1].each_slice(5).to_a
  end
end

puts 'Test 1'
accountability_groups(list_of_names).each{|i| p i}
puts
puts 'Test 2'
accountability_groups(list_of_names[1..10]).each{|i| p i}
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