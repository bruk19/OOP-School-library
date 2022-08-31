# create a CapitalizeDecorator class
require_relative 'Decorator'

class CapitalizeDecorator < Decorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end