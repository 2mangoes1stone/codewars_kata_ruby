# Task

# A masked number is a string that consists of digits and one asterisk (*) that should be replaced by exactly one digit. Given a masked number s, find all the possible options to replace the asterisk with a digit to produce an integer divisible by 6.

# Input/Output

# [input] string s

# A masked number.

# 1 ≤ inputString.length ≤ 10000.

# [output] a string array

# Sorted array of strings representing all non-negative integers that correspond to the given mask and are divisible by 6.

# Example

# For s = "1*0", the output should be ["120", "150", "180"].

# For s = "*1", the output should be [].

# For s = "1234567890123456789012345678*0",

# the output should be

# [
# "123456789012345678901234567800",
# "123456789012345678901234567830",
# "123456789012345678901234567860",
# "123456789012345678901234567890"]
# As you can see, the masked number may be very large ;-)

def is_divisible_by_6(s)
  numbers =  ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  output = []
  numbers.each do |i|
    replacement = s.gsub('*', i)
    output << replacement.to_i if replacement.to_i % 6 == 0 && replacement != '0'
  end
  output.map(&:to_s)
end



