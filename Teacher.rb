# create a Teacher class
class Teacher < person
   #initialize a class Teacher
   def initialize(name="Unknown", age, parent_permission="true", specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  # Method can_use_services?
  def can_use_services?
    return true
  end
end 