# create a person class 
require_relative 'Nameable'
require_relative 'CapitalizeDecorator'
require_relative 'TrimmerDecorator'
require_relative 'Decorator'

class Person < Nameable
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

  #Method correct_name implemented
  def correct_name
    name
  end

end

#checking if managed to decorate person
person = Person.new( name:'maximilianus', age:22)
puts person.correct_name

capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.
