# create a Rental class
class Rental
    attr_reader :book
    attr_accessor :date

    def initialize(date, book)
        @date = date

        @book = book
        book.rental << self
    end
end