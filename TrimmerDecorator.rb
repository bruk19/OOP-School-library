# create a TrimmerDecorator class
require_relative 'Decorator'

class TrimmerDecorator < Decorator
    def correct_name
        @nameable.correct_name[0...10]
    end
end