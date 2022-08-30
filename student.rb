# create a student class 
class student < person
    #initialize a class student
    def initialize(name="Unknown", age, parent_permission="true", classroom)
        super(name, age, parent_permission)
        @classroom = classroom
    end

end