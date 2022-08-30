# create a person class 

#initialize a class person
class person
    def initialize(name="Unknown", age, parent_permission="true")
        @id = Random.rand(1...1000)
        @name = name 
        @age = age 
        @parent_permission = parent_permission
end