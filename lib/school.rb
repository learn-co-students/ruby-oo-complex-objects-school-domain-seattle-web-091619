# code here!
#require "pry"
class School 

  attr_accessor :school, :roster
  
  
  def initialize(school)
     @school = school
  
      @roster = {}
  
  end
  
  
  def grade(grades)
  @roster[grades]
  end
  
  def add_student (student, age)
   #   @roster = {}
      c =@roster[age]
      if (c == nil) 
     @roster[age] = []
     #binding.pry
      end
      @roster[age].push(student.to_s)
  return @roster
  end 
  
  def sort
      @roster[7].sort!
      @roster[9].sort!
      @roster[10].sort!
      @roster
  end
  
  
  
  end
  
  k = School.new("Degeissdt - school of hard knocks")
  puts k.roster