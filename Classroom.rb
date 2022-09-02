# create a Classroom class
class Classroom
  attr_reader :student, :label

  def initialize(label)
    @label = label
    @student = []
  end

  # Method to add student one by one
  def add_student(student)
    @student.push(student)
    student.classroom = self
  end
end
