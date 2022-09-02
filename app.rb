# create a App class
require_relative 'person'
require_relative 'book'

class App
    def initialize
        @book = []
        @person = []
        @rental = []
    end

    #Create person method
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

    #create book method
    def create_book
        print "Title : "
        title = gets.chomp
        print "Author : "
        author = gets.chomp

        #book instance
        books = Book.new(title, author)
        @book.push(books)
    end

    #list all books method
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
end
