# create a App class
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
end
