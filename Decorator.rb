# create a Decorator class 
require_relative 'Nameable'

#constructor assign a nuameable object
class Decorator < Nameable
    def initialize(nameable)
        @nameable = Nameable
        super()
    end
    
    #implement the correct_name method return the result of correct_name
    def correct_name
        @nameable = correct_name.new
    end
end