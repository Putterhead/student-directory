@students = [] # an empty array accessible to all methods

def input_students # The input_students() method doesn't need to return a list
                   # of students since it will work with the @students variable now.
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # students = [] we could remove this once we added the instance variable of it
  # get the first name
  name = gets.delete "\n"
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
      puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # students return the array of students is no longer necessary
end

def interactive_menu
  loop do # access the following methods in a loop (infinite until 9/Exit)
    # 1. print the menu and ask the user what to do
    print_menu # accesses the method of same name showing the available input options
    process(gets.chomp) # user selection is being passed as an argument to the respective method(selection)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students # We don't need to pass the list of students to show_students() for the same reason.
  print_header
  print_student_list #print(students), as this argument is no longer needed, better to rename it so that its clear
  print_footer #(students) no longer needed as an argument
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print_student_list # also no longer needs (students) as an argument thanks to the use of the @students instance variable
  @students.each do |student| #_with_index do |student, i|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer # (students) no longer needed as an argument
    puts "Overall, we have #{@students.count} great students".center(50) # the instance variable can be accessed directly
end

interactive_menu
# def select(students)
#   puts "Please enter the first letter of the student's name:"
#   letter = gets.chomp.upcase
#   select_students = @students.select { |student| student[:name][0] == letter }
#   select_students.each_with_index do |student, i|
#     puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end
#
# def short_name(students)
#     short = @students.select { |student| student[:name].length < 12 }
#     short.each_with_index do |student, i|
#       puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)"
#     end
# end







# select(students)
# short_name(students)

# students = [
#   {name: "Dr. Hanibal Lecter", cohort: :november},
#   {name: "Darth Vader", cohort: :november},
#   {name: "Nurse Ratched", cohort: :november},
#   {name: "Michael Corleone", cohort: :november},
#   {name: "Alex Delarge", cohort: :november},
#   {name: "The Wicked Witch of the West", cohort: :november},
#   {name: "Terminator", cohort: :november},
#   {name: "Freddy Krueger", cohort: :november},
#   {name: "The Joker", cohort: :november},
#   {name: "Joffrey Baratheon", cohort: :november},
#   {name: "Norman Bates", cohort: :november},
# ]
# # and then print them

# nothing happens until we call the methods
