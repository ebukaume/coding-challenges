# Hash Data Structure

# The Hash's basic operations (adding, removing and finding keys) can be done in constant time. The Hash's performance is useful for finding optimal solutions to many different problems.

# Dictionary Data Structure
# Many projects involve matching keys and values so the Map data type is often a natural fit for implementing them:

# When Not to use Hash
# Q: If the Hash can do everything so quickly, why would I ever use another data structure for quickly looking up items?

# A: It's great for quickly looking up keys and values, but it doesn't store the items in order. Sometimes an application needs to get the next elements in order on a list, or display all the elements in order at once. For example, you could use a Hash for a simple PhoneBook-lookup app, but it wouldn't be able to display the Phonebook contacts in alphabetical order. For such an app, you would want to use a sorted data structure instead, such as the TreeMap (a type of Search Tree).

# Challenge
# The "Prime Prime" is a prime number that is the factor of the most numbers in a given list. Can you find the Prime prime in each list?
# For example, for the list {2, 3, 5, 6, 9}, the answer is 3, since 3 is a factor of 3, 6, and 9, which is more than any other number in the list.
# Note: Unlike the prime challenge, here each number N in a list will be in the range 2 to 10,000.

# Guideline

# Get all the prime numbers that you need like in the previous challenge. Then use a Hash to keep track of the number of times each prime number is factor of a number in the list.

# Example
# puts prime_prime([2, 3, 5, 6, 9])
# # => 3



require 'prime'
def prime_factor(number)
  prime_numbers = Prime.first(1230).select { |num| num <= number}
  prime_numbers.each_with_object([]) { |num, result| result << num if number % num == 0 }
end

def prime_prime(array)
  # write your code here
  factors = array.each_with_object([]) {|el, list| list << prime_factor(el)}
                 .flatten
  factors.each_with_object(Hash.new(0)) {|el, hash| hash[el] += 1}
         .max_by {|k ,v| v}
         .first
end

prime_prime([221, 2787, 121, 169, 6503, 289, 4645])

puts prime_prime([2, 3, 5, 6, 9])
# => 3

puts prime_prime([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 11

puts prime_prime([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 7
