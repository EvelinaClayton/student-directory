# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november, COB: "USA", age: 65},
#   {name: "Darth Vader", cohort: :november, COB: "Sweden", age: 55},
#   {name: "Nurse Ratched", cohort: :november, COB: "Italy", age: 38},
#   {name: "Michael Corleone", cohort: :november, COB: "UK", age: 29},
#   {name: "Alex DeLarge", cohort: :november, COB: "Norway", age: 32},
#   {name: "The Wicked Witch of the West", cohort: :november, COB: "Spain", age: 43},
#   {name: "Terminator", cohort: :november, COB: "USA", age: 40},
#   {name: "Freddy Krueger", cohort: :november, COB: "USA", age: 58},
#   {name: "The Joker", cohort: :november, COB: "Mexico", age: 35},
#   {name: "Joffrey Baratheon", cohort: :november, COB: "Portugal", age: 28},
#   {name: "Norman Bates", cohort: :november, COB: "Denmark", age: 25},
# ]
#
# def print_header
#   puts "The students of Villains Academy"
#   puts "--------------------------------"
# end
#
# def print(students)
#    students.each do |student|
#     puts "#{student[:name]} (#{student[:cohort]} cohort) (Country of Birth: #{student[:COB]}) (Age: #{student[:age]})".center(500, ' ')
#   end
# end
#
# def print_footer(names)
#   puts "--------------------------------"
#   puts "Overall, we have #{names.count} great students"
# end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []

  puts "name:"
  name = gets.chomp
  puts "cohort:"
  cohort_month = gets.chomp

  while !name.empty? do
    students << {
      name: name,
      cohort: cohort_month == "" ? 'default_cohort_value' : cohort_month.to_sym
    }
    puts "Now we have #{students.count} students"
    puts

    puts "name:"
    name = gets.chomp
    puts "cohort:"
    cohort_month = gets.chomp
  end
  students
end

students = input_students
puts students
# print_header
# print(students)
# print_footer(students)
