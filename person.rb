# create a person class 

class person
    #initialize a class person
    attr_reader :id

    def initialize(name="Unknown", age, parent_permission="true")
        @id = Random.rand(1...1000)
        @name = name 
        @age = age 
        @parent_permission = parent
end