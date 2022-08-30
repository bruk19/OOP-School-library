# create a person class 

class Person
  #initialize a class person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(name="Unknown", age, parent_permission="true")
    @id = Random.rand(1...1000)
    @name = name 
    @age = age 
    @parent_permission = parent
  end

  #private method is_of_age?
  private
  def is_of_age?
    @age >= 18
  end

  #public method can_use_service?
  public
  def can_use_serivce?
    is_of_age? || @parent_permission
  end

end
