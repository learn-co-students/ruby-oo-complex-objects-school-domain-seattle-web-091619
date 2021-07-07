require 'pry'

class School

    attr_accessor :roster, :student, :grade
    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade]== nil
            @roster[grade] = []
        end
        @roster[grade] << student.to_s
        @roster
    end
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.each { |grade, students| students.sort! }
    end
end    