# Create a class, School, in the lib directory that can be initialized with a name
require 'pry'

class School

    attr_accessor :roster, :grade
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end
   
    def add_student(name, grade)
        if @roster[grade] == nil
            @roster[grade] = []  
        end  
        @roster[grade] << name  
    end

    def grade(num)
        roster.detect do |x, y| 
            if x == num
            return y 
            end 
        end 
    end
    
    def sort 
        new_hash = {}
        roster.each do |x, y| 
          new_hash[x] = y.sort 
        end 
        new_hash
      end 

end