# Write a function

# which takes in numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.

# If this isn't the case, return 0


def triple_double(num1,num2)
  num1 = num1.to_s
  num2 = num2.to_s
  ((0..9).any? {|i| num1.include?(i.to_s*3) && num2.include?(i.to_s*2) }) ? 1 : 0
end
