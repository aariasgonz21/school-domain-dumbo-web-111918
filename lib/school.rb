# code here!
require "pry"

class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    name_arr = []
    name_arr << name

    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = name_arr
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade|
      #binding.pry
      grade[1].sort!
    end
  end
end
