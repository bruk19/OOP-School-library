# create a student class
require_relative './Person'

class Student < Person
  attr_reader :classroom

  # initialize a class student
  def initialize(age, classroom, name = 'Unknown')
    super(age, name)
    @classroom = classroom
  end

  # add method play_hooky
  def play_hooky
    "¯\(ツ)/¯"
  end

  # aMethod to add studento to classroom
  def add_to_classroom(classroom)
    @classroom = classroom
    classroom.student.push << self unless classroom.student.include?(self)
  end
end
