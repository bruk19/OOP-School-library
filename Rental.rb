# create a Rental class
require_relative './Book'
require_relative './person'

class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(date, book, person)
    @date = date

    @book = book
    book.rental << self

    @person = person
    person.rental << self
  end
end
