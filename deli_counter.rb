# Write your code here.
require "pry"

def line(deli)
    if deli.empty?
      puts "The line is currently empty."
    else
      line = "The line is currently:"
      # Set number starting with 1 
      deli.each.with_index(1) do |person, i|
        # For each person add number.
        line << " #{i}. #{person}"
      end
      puts line
    end
end

def take_a_number(deli, name)
    # put new person in line
    deli << name
    puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
    if deli.empty?
        puts "There is nobody waiting to be served!"
    else
        # Get first person in line
        puts "Currently serving #{deli.first}."
        # Delete first person in line after getting it.
        deli.shift
    end
end
