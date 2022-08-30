# create a Teacher class
class Teacher 
     #initialize a class Teacher
     def initialize(name="Unknown", age, parent_permission="true", specialization)
        super(name, age, parent_permission)
        @specialization = specialization
    end
end 