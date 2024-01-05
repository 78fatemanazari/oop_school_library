class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person)
    rental = Rental.new(self, person)
    @rentals << rental
    person.rentals << rental
    rental
  end
end