# create a Rental class
class Rental
    attr_reader :book
    attr_accessor :date, :person

    def initialize(date, book, person)
        @date = date

        @book = book
        book.rental << self

        @person = person
        person.rental << self
    end
end