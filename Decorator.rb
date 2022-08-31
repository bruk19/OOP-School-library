# create a Decorator class 
require_relative 'Nameable'

#constructor assign a nuameable object
class Decorator < Nameable
    def initialize(nameable)
        @nameable = Nameable
        super()
    end
end