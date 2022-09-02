# create a App class
require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'

class App
  def initialize
    @book = []
    @person = []
    @rental = []
  end

  # create student method
  def create_student
    print "Name : "
    name = gets.chomp
    print "Age : "
    age = gets.chomp

    student = Student.new(age, nil, name)
    @people.push(student)

    puts "New student created successfully"
  end

  # create teacher method
  def create_teacher
    print "Name : "
    name = gets.chomp
    print "Age : "
    age = gets.chomp
    print "Specialization : "
    specialization = gets.chomp
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
    puts "New teacher created successfully"
  end

  # Create person method
  def create_person
    print "Do you want to create a student (1) or a teacher (2)? [Input the number]: "
    choice = gets.chomp
    case choice
    when "1"
      puts "Student"
    when "2"
      puts "Teacher"
    else
      puts "Please insert a valid number [1 or 2]"
      return
    end
    puts "Person created successfully"
  end

  # create book method
  def create_book
    print "Title : "
    title = gets.chomp
    print "Author : "
    author = gets.chomp

    # book instance
    books = Book.new(title, author)
    @book.push(books)
  end

  # list all books method
  def list_books
    @book.each do |books|
      puts "Title : #{books.title} | Author : #{books.author}"
    end

    if @book.empty?
      puts "No books found in the library"
      return
    end
  end

  def list_people
    if @people.empty?
      puts "No person is registered in the library"
      puts "\n"
      return
    end
    @people.each do |person|
      puts "[#{person.class}] Name : #{person.name} | ID : #{persom.id} | Age : #{person.age}"
    end
  end

  # Create rental method
  def create_rental
    if @books.size.zero?
      puts "No books in the library"
    elsif @people.size.zero?
      puts "No People registered in the library"
    else
      puts "Selecct a book form the following list by number"
      @books.each_with_index do |book, index|
        puts "#{index} - Book Title : #{book.title} | Author : #{book.author}"
      end
      rent_book = gets.chomp.to_i
      puts "Select a person form the following list by number (not id)"
      @people.each_with_index do |person, index|
        puts "#{index} - Name : #{person.name} |ID : #{person.id} | Age : #{person.age}"
      end
      rental_person = gets.chomp.to_i
      print "Date (YYYY/MM/DD) : "
      date = gets.chomp.to_s

      # Instantiating a rental object
      rental_info = Rental.new(date, @books[rent_book], @people[rental_person])
      @rentals.push(rental_info)
      puts "Rental created successfully"
    end
  end

  # List all rentals method
  def list_rentals
    puts "Select a person form the following list by ID"
    @people.each do |person|
      puts "ID : #{person.id} | Name : #{person.name}"
    end
    print "Enter person\'s ID :"
    person = gets.chomp
    @rentals.each do |rental|
      puts "Date : #{rental.date}, Book \"#{rental.book.title}\" by : #{rental.book.author}"
       if rental.person.id.to_i == person.to_i
    end
  end
end
