class School
    attr_accessor :roster, :add_student
    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.key?(grade)
        else
        @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each { |key, value| 
         @roster[key]= value.sort
        }
     end
end