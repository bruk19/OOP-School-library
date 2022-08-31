#checking if managed to decorate person
require_relative 'Nameable'
require_relative 'CapitalizeDecorator'
require_relative 'TrimmerDecorator'
require_relative 'Decorator'

person = Person.new( name:'maximilianus', age:22)
puts person.correct_name

capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.
