# create a Nameable class
class Classroom
    attr_accessor :label
    attr_reader :student

    def initialize(label)
        @label = label
        @stunet = []
    end

    #Method to add student one by one
    def add_student(student)
        @student.push(student)
    end
end