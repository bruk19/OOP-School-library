# create a Main class
require './app'

class Main
    def self.options
        puts "Well Come to School Library App!"
        puts "\n"
        puts "Please chooce an option by entering a number:"

        #menu
        @menu = {
            "1" => "List all books",
            "2" => "List all people",
            "3" => "Create a person",
            "4" => "Create a book",
            "5" => "Create a rental",
            "6" => "List all rentals for a given person id",
            "7" => "Exit"
        }

        # Display all menu options
        @menu.each do |key, menu|
            puts "#{key} - #{menu}"
        end
        Integer(gets.chomp)
    end
    
    #display for selected list
    selected_option = App.new

    loop do 
        case options
        when 1
            selected_option.list_books
        when 2
            puts "List all people"
        when 3
            puts "Create a person"
        when 4
            selected_option.create_book
        when 5
            puts "Create rental"
        when 6
            puts "List all rentals for a given person\'s id"
        when 7
            puts "Thank you for using this app!"
            exit
        else
            puts "Invalid option."
            puts "Enter a number between 1 and 7"
            puts "\n"
        end
    end
end

def main_call
    Main.new
end
main_call