# create a person class 
require_relative 'Nameable'

class Person < Nameable
  #initialize a class person
  attr_reader :id, :rentals
  attr_accessor :name, :age, :parent_permission

  def initialize(age, parent_permission= true, name='Unknown')
    @id = rand(1...1000)
    @name = name 
    @age = age 
    @parent_permission = parent_permission
    @rentals = []
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
    @name
  end

   # Public method add_rental
  def add_rental
    @rental.push(rental)
  end
end
