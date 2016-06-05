#Created Person class that creates an instance variable name, and method for greeting of teacher and instructor
class Person

  attr_accessor :name

   def initialize(name)
     @name = name
   end #end initialize method

  def greeting
    puts "Hi my name is #{@name}"
  end #end greeting method

end #end for Person class

#Created Student class that contains learn method, and inherits Person class attributes

class Student < Person # < 'Person' helps Student inherit People class attributes

  def learn
    puts "I get it!"
    puts " "
  end #end learn method

end #end for Student class

class Instructor < Person # < 'Person' helps Instructor inherit People class attributes

  def teach
    puts "Everything in Ruby is an Object"
  end #end for teach method

end #end for Instructor class



christina = Student.new("Christina")
christina.greeting
christina.learn


chris = Instructor.new('Chris')
chris.greeting
chris.teach

#when you run the teach method on christina or learn method on chris, each will give an error

#christina.teach

#chris.learn

#the following message will display in command line when running people.rb
#this is due in part to the fact that instructor class and student class only inherit from people class, and not from each other.

#people.rb:48:in `<main>': undefined method `teach' for #<Student:0x007fb16b8557b8 @name="Christina"> (NoMethodError)
