class Person

attr_accessor :name

  def initialize(name)

  end

  def greeting
    puts "Hi my name is #{name}"
  end

end #end for Person class

class Student

  def learn
    puts "I get it!"
  end #end learn method
end #end for Student class

class Instructor

  def teach
    puts "Everything in Ruby is an Object"
  end
end #end for Instructor class

student1 = Student.new

student1.learn

teacher1 = Instructor.new

teacher1.teach
