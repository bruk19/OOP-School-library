# create a student class 
class student < person
    #initialize a class student
    def initialize(name="Unknown", age, parent_permission="true", classroom)
        super(name, age, parent_permission)
        @classroom = classroom
    end

    #add method play_hooky
    def play_hooky
        return "¯\(ツ)/¯"
    end

end