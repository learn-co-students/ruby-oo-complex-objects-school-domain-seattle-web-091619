require 'pry'

class School
    attr_accessor :school, :roster
    
    def initialize(school)
       @school = school

       @roster = {}
    end
    # binding.pry 
    def add_student(student, age)
        if roster[age] == nil
            @roster[age] = []
        end
        @roster[age] << student.to_s
        @roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        i = 0
        while i < (@roster.keys).max
            if @roster[i]!= nil
                @roster[i].sort!
            end
            i += 1
    end
    @roster
end
end
