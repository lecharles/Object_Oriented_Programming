#Exercise 1: Class Time
class Person
  attr_accessor :name

  def initialize(name) # 5.1
    @name = name
  end

  def greeting # 5.2 The best place to put the greeting method is here.
    p "Hi, my name is #{name}"
  end

end

class Student < Person # 1.1
  def learn # 2.
    p "I feel the OOP force!"
  end
end

class Instructor < Person # 1.2
  def teach # 3.
    p "All in Ruby object is."
  end
end

chris = Instructor.new("Chris") # 6.1
chris.greeting # 6.2

cristina = Student.new("Cristina")# 7.1
cristina.greeting # 7.2

chris.teach # 8.1
cristina.learn # 8.2

cristina.teach # 8.3 Does not cuz .teach method pertains to Instructor class
chris.learn # 8.4 Does not cuz .learn method pertains to Student class
