=begin
Challenge

Create a program that solves the tower of Hanoi. You will be given one number as input - the number of disks on Peg 1. 
Create a method that prints a string with the correct steps to solve the puzzle.


Output Format

Print the peg to move from, an arrow "->", and the peg to move to. For example, to move from peg 1 to peg 3, print:
1->3.
Print a string with all the steps, each step on its own line.
=end

def hanoi_steps(number_of_discs, start=1, aux=2, goal=3)
    return if number_of_discs.zero?
    hanoi_steps(number_of_discs - 1, start, goal, aux)
    puts "#{start}->#{goal}"
    hanoi_steps(number_of_discs-1, aux, start, goal)
  end
  
  hanoi_steps(2)
  # => 1->2 
  #    1->3 
  #    2->3
  
  hanoi_steps(3)
  # => 1->3 
  #    1->2
  #    3->2
  #    1->3
  #    2->1
  #    2->3
  #    1->3
  
  hanoi_steps(4)
  # => 1->2
  #    1->3
  #    2->3
  #    1->2
  #    3->1
  #    3->2
  #    1->2
  #    1->3
  #    2->3
  #    2->1
  #    3->1
  #    2->3
  #    1->2
  #    1->3
  #    2->3