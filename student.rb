# create a student class 
class Student < Person
  attr_reader :classroom
  
  #initialize a class student
  def initialize(name="Unknown", age, parent_permission="true", classroom)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  #add method play_hooky
  def play_hooky
    return "¯\(ツ)/¯"
  end

  #aMethod to add studento to classroom
  def classroom(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end

end