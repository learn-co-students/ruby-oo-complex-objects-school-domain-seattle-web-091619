require 'pry'


class School

    attr_accessor :name, :roster, :grade
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << student.to_s
        @roster[grade]
            #binding.pry
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       roster.each { |grade, students| students.sort! }
    end
end



