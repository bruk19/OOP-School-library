# create a App class
require_relative './person'
require_relative './book'
require_relative './student'
require_relative './teacher'

class App
  def initialize
    @books = []
    @person = []
    @rentals = []
  end

  # Get user input
  def get_input(text)
    print "#{text} : "
    gets.chomp
  end

  # create student method
  def create_student
    name = get_input('Name')
    age = get_input('Age')

    student = Student.new(age, name)
    @person.push(student)

    puts 'New student created successfully'
  end

  # create teacher method
  def create_teacher
    name = get_input('Name')
    age = get_input('Age')
    specialization = get_input('Specialization')
    teacher = Teacher.new(name, age, specialization)
    @person.push(teacher)
    puts 'New teacher created successfully'
  end

  # Create person method
  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    choice = gets.chomp
    case choice
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Please insert a valid number [1 or 2]'
      return
    end
    puts "\n"
    puts 'Person created successfully'
  end

  # create book method
  def create_book
    print 'Title : '
    title = gets.chomp
    print 'Author : '
    author = gets.chomp
    puts 'Book has been created successfully'

    # book instance
    book = Book.new(title, author)
    @books.push(book)
  end

  # list all books method
  def list_books
    if @books.empty?
      puts 'No book is registered in the library'
      return
    end

    @books.each do |book|
      puts "Title : #{book.title} | Author : #{book.author}"
    end
  end

  def list_people
    if @person.empty?
      puts 'No person is registered in the library'
      puts "\n"
      return
    end
    @person.each do |person|
      puts "[#{person.class}] Name : #{person.name} | ID : #{person.id} | Age : #{person.age}"
    end
  end

  # Create rental method
  def create_rental
    if @books.size.zero?
      puts 'No books in the library'
    elsif @person.size.zero?
      puts 'No People registered in the library'
    else
      puts 'Selecct a book form the following list by number'
      @books.each_with_index do |book, index|
        puts "#{index}) - Book Title : #{book.title} | Author : #{book.author}"
      end
      rent_book = gets.chomp.to_i
      puts 'Select a person form the following list by number (not id)'
      @person.each_with_index do |person, index|
        puts "#{index}) - Name : #{person.name} |ID : #{person.id} | Age : #{person.age}"
      end
      rental_person = gets.chomp.to_i
      print 'Date (YYYY/MM/DD) : '
      date = gets.chomp.to_s

      # Instantiating a rental object
      rental_info = Rental.new(date, @books[rent_book], @person[rental_person])
      @rentals.push(rental_info)
      puts 'Rental created successfully'
      puts "\n"
    end
  end

  # List all rentals method
  def list_rentals
    puts "\n"
    if @rentals.empty?
      puts 'No rent is registered in the library'
    else
      puts 'Select a person form the following list by ID'
      @person.each do |person|
        puts "ID : #{person.id} => #{person.name}"
      end
      puts "\n"
      print "Enter person\'s ID :"
      person = gets.chomp
      puts "\n"
      @rentals.each do |rental|
        if rental.person.id.to_i == person.to_i
          puts "Date : #{rental.date}, Book \"#{rental.book.title}\" by : #{rental.book.author}"
        end
      end
    end
  end
end
