require_relative 'person'
require_relative 'student'
require_relative 'teacher'

# Person
person = Person.new(1, 24)
puts person.id
puts person.age
puts person.name
puts person.can_use_services?

# Student
student = Student.new(1, 22, 'Math')
puts student.id
puts student.age
puts student.name
puts student.the_classroom
puts student.play_hooky

# Teacher
teacher = Teacher.new(1, 32, 'Mathematic')
puts teacher.id
puts teacher.name
puts teacher.age
puts teacher.can_use_services?

def welcome_message
  puts 'Welcome to School Library App!'
  puts 'Please choose an option by enterin a number: '
end

def menu_options
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person by id'
  puts '7 - Exit'
end

def the_user_input
  gets.chomp
end

def handle_user_selection(user_input)
  case user_input
  when '3'
    puts 'Do you want to create a student (1) or teacher (2)?'
  when '4'
    print 'Title: '
    gets.chomp
    print 'Author: '
    gets.chomp
    puts 'Book created successfully!'
  else
    exit_program
  end
end

def the_user_choice
  gets.chomp
end

def handle_user_input(user_choice)
  case user_choice
  when '1'
    print 'Age: '
    gets.chomp
    print 'Name: '
    gets.chomp
    print 'Has parent permission? [Y/N]: '
    gets.chomp
    puts 'The person created successfully!'
  when '2'
    print 'Age: '
    gets.chomp
    print 'Name: '
    gets.chomp
    puts 'The person created successfully!'
  end
end

def exit_program
  puts 'Good bye!'
  exit
end

loop do
  welcome_message
  menu_options
  user_input = the_user_input
  handle_user_selection(user_input)
  user_choice = the_user_choice
  handle_user_input(user_choice)
end
