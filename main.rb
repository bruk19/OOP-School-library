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
end

def main_call
    Main.new
end
main_call