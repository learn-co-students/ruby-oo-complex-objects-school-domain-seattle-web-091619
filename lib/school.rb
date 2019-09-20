class School
  attr_accessor :roster, :name, :grade
  
  def initialize(model)
    @roster = []
    @name = name
    @grade = grade
  end
  
  def add_student(name, grade)
    roster << name(grade)
  end
  
  def grade(grade)
    @grade = grade
  end
end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.grade(9)
school.roster









