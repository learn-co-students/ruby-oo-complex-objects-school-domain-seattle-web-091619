class School
    attr_accessor :school, :roster, :student
    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster_set(grade)
        @roster[grade] = Array.new
    end

    def add_student(student, grade)
        sg = @roster.any?{|k, v| k == grade}
        if sg == true
            s_list =  @roster[grade]
            s_list << student
        else
            roster_set(grade)
            s_list =  @roster[grade]
            s_list << student
        end

    end
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster[10].sort!
        @roster[7].sort!
        @roster[9].sort!
        @roster
    end
end

school = School.new("Test School")
school.add_student("Homer Simpson", 9)
school.add_student("Bart Simpson", 9)
school.add_student("Avi Flombaum", 10)
school.add_student("Jeff Baird", 10)
school.add_student("Blake Johnson", 7)
school.add_student("Jack Bauer", 7)
p school.roster.sort
p school.roster