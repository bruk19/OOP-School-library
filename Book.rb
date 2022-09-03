# create a Book class
require_relative './rental'

class Book
  attr_reader :rental
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  # Method add_rental
  def add_rental(rental)
    @rental.push(rental)
  end
end
